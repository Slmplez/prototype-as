import { ToolError } from './bridge.js';

type Channel = { channelId: string; name: string; unit: string; time: number[]; values: number[]; metrics?: any; transitions?: any[]; transitionsTruncated?: boolean };
const fail = (message: string): never => { throw new ToolError('INVALID_MDF', message); };
// MDF 2/3 linked blocks. Unsupported layouts/conversions are rejected, never approximated.
export function parseMdf(b: Buffer) {
  const bounds = (p: number, n: number) => { if (p < 0 || n < 0 || p + n > b.length) fail('Truncated block or records.'); };
  const u16 = (p: number) => { bounds(p, 2); return b.readUInt16LE(p); };
  const u32 = (p: number) => { bounds(p, 4); return b.readUInt32LE(p); };
  const f64 = (p: number) => { bounds(p, 8); return b.readDoubleLE(p); };
  const str = (p: number, n: number) => { bounds(p, n); return b.toString('latin1', p, p + n).split('\0')[0].trim(); };
  bounds(0, 64);
  const version = str(8, 8);
  if (str(0, 8) !== 'MDF' || !/^[23]\.\d+$/.test(version)) throw new ToolError('UNSUPPORTED_MDF', 'Only MDF 2.x / 3.x are supported.');
  if (u16(24) !== 0) throw new ToolError('UNSUPPORTED_MDF', 'Big endian MDF is unsupported.');
  if (u16(26) !== 0) throw new ToolError('UNSUPPORTED_MDF', 'Only IEEE floating representation is supported.');
  const metadataRanges = new Map<number, number>();
  const dataRanges: [number, number][] = [];
  const block = (p: number, tag: string, min: number) => { bounds(p, 4); const n = u16(p + 2); if (p < 64 || str(p, 2) !== tag || n < min) fail('Invalid ' + tag + ' block.'); bounds(p, n); metadataRanges.set(p, p + n); return n; };
  const chain = (first: number, tag: string, min: number) => {
    const rows: number[] = [], seen = new Set<number>();
    for (let p = first; p; p = u32(p + 4)) { if (seen.has(p) || rows.length >= 4096) fail('Cyclic or excessive block chain.'); seen.add(p); block(p, tag, min); rows.push(p); }
    return rows;
  };
  const conversion = (p: number) => {
    if (!p) return { unit: '', convert: (x: number) => x };
    const n = block(p, 'CC', 46), type = u16(p + 42);
    const unit = str(p + 22, 20);
    if (type === 65535) return { unit, convert: (x: number) => x };
    if (type === 0 && n >= 62 && u16(p + 44) === 2) { const offset = f64(p + 46), factor = f64(p + 54); return { unit, convert: (x: number) => offset + factor * x }; }
    throw new ToolError('UNSUPPORTED_MDF_CONVERSION', 'Conversion type ' + type + ' is unsupported.');
  };
  block(64, 'HD', 164);
  const channels: Channel[] = []; let decodedCells = 0;
  const groups: any[] = [];
  for (const dg of chain(u32(68), 'DG', 24)) {
    const recordIds = u16(dg + 22); if (recordIds > 2) fail('Unsupported record ID layout.');
    const cgs = chain(u32(dg + 8), 'CG', 26);
    if (!recordIds && cgs.length !== 1) fail('Multiple groups require record IDs.');
    if (u16(dg + 20) !== cgs.length) fail('Channel group count mismatch.');
    const descriptors = cgs.map(cg => {
      const count = u32(cg + 22), size = u16(cg + 20), id = u16(cg + 16);
      const cns = chain(u32(cg + 8), 'CN', 218);
      if (cns.length !== u16(cg + 18) || !size) fail('Invalid channel group shape.');
      decodedCells += count * cns.length;
      if (decodedCells > 2_000_000 || channels.length + cns.length > 512) throw new ToolError('WAVEFORM_TOO_LARGE', 'Limit: 2 million decoded cells and 512 channels.');
      const ds = cns.map(cn => {
        const start = u16(cn + 186) + (u16(cn + 2) >= 228 ? u16(cn + 226) * 8 : 0);
        const bits = u16(cn + 188), type = u16(cn + 190), conv = conversion(u32(cn + 8));
        if (!bits || bits > 64 || start + bits > size * 8 || ![0, 1, 2, 3, 9, 10, 11, 12, 13, 14, 15, 16].includes(type)) throw new ToolError('UNSUPPORTED_MDF_CHANNEL', 'Unsupported channel encoding.');
        const floating = [2, 3, 11, 12, 15, 16].includes(type), big = [9, 10, 11, 12].includes(type), signed = [1, 10, 14].includes(type);
        if (floating && (start % 8 || ![32, 64].includes(bits))) fail('Invalid floating channel.');
        if (big && (start % 8 || bits % 8)) fail('Unaligned big endian channel.');
        let name = str(cn + 26, 32);
        const long = u16(cn + 2) >= 222 ? u32(cn + 218) : 0;
        if (long) { const n = block(long, 'TX', 5); name = str(long + 4, n - 4); }
        const channel: Channel = { channelId: 'cn-' + cn, name, unit: conv.unit, time: [], values: [] };
        channels.push(channel);
        return { channel, master: u16(cn + 24) === 1, decode: (p: number) => {
          let value: number; const offset = p + Math.floor(start / 8);
          if (floating) value = bits === 32 ? (big ? b.readFloatBE(offset) : b.readFloatLE(offset)) : (big ? b.readDoubleBE(offset) : b.readDoubleLE(offset));
          else {
            let raw = 0n;
            if (big) for (let j = 0; j < bits / 8; j++) raw = (raw << 8n) | BigInt(b[offset + j]);
            else for (let j = 0; j < Math.ceil(((start % 8) + bits) / 8); j++) raw |= BigInt(b[offset + j]) << BigInt(j * 8);
            if (!big) raw >>= BigInt(start % 8);
            raw &= (1n << BigInt(bits)) - 1n;
            if (signed && (raw & (1n << BigInt(bits - 1)))) raw -= 1n << BigInt(bits);
            value = Number(raw); if (!Number.isSafeInteger(value)) throw new ToolError('MDF_PRECISION_LOSS', 'Integer exceeds JS exact precision.');
          }
          value = conv.convert(value); if (!Number.isFinite(value)) fail('Nonfinite physical value.'); return value;
        } };
      });
      if (ds.filter(d => d.master).length !== 1) fail('Exactly one time master per group is required.');
      const master = ds.find(d => d.master)!;
      if (master.channel.unit !== 's') throw new ToolError('UNSUPPORTED_TIME_UNIT', 'Time master must use seconds.');
      groups.push({ recordId: id, recordCount: count, recordBytes: size, channels: ds.length });
      return { count, size, id, ds, master, read: 0 };
    });
    if (new Set(descriptors.map(d => d.id)).size !== descriptors.length) fail('Duplicate record IDs.');
    let cursor = u32(dg + 16); const dataStart = cursor;
    const total = descriptors.reduce((n, d) => n + d.count, 0);
    for (let i = 0; i < total; i++) {
      bounds(cursor, 1); const id = recordIds ? b[cursor++] : descriptors[0].id;
      const d = descriptors.find(d => d.id === id); if (!d || d.read >= d.count) throw new ToolError('INVALID_MDF', 'Unexpected record ID or count.');
      bounds(cursor, d.size + (recordIds === 2 ? 1 : 0));
      const time = d.master.decode(cursor);
      if (time < 0 || (d.master.channel.time.length && time < d.master.channel.time.at(-1)!)) fail('Nonmonotonic time.');
      for (const c of d.ds) { c.channel.time.push(time); c.channel.values.push(c.decode(cursor)); }
      cursor += d.size;
      if (recordIds === 2 && b[cursor++] !== id) fail('Record ID trailer mismatch.');
      d.read++;
    }
    if (total) dataRanges.push([dataStart, cursor]);
  }
  if (!channels.length) fail('No channels.');
  for (const [start, end] of dataRanges) {
    if (start < 64 || [...metadataRanges].some(([p, q]) => start < q && end > p)) fail('Records overlap metadata blocks.');
  }
  for (const c of channels) {
    let sum = 0, sumSquares = 0, min = Infinity, max = -Infinity, integral = 0, transitionCount = 0;
    const transitions: any[] = [];
    for (let i = 0; i < c.values.length; i++) {
      const x = c.values[i]; sum += x; sumSquares += x * x; min = Math.min(min, x); max = Math.max(max, x);
      if (i) { integral += (x + c.values[i - 1]) / 2 * (c.time[i] - c.time[i - 1]); if (x !== c.values[i - 1]) { transitionCount++; if (transitions.length < 1000) transitions.push({ timeSeconds: c.time[i], from: c.values[i - 1], to: x }); } }
    }
    const count = c.values.length;
    if (![sum, sumSquares, integral].every(Number.isFinite)) throw new ToolError('MDF_METRIC_OVERFLOW', 'Numeric metric overflow.');
    c.metrics = { count, min: count ? min : null, max: count ? max : null, mean: count ? sum / count : null, rms: count ? Math.sqrt(sumSquares / count) : null, integralTrapezoidal: integral, transitionCount, firstTimeSeconds: c.time[0] ?? null, lastTimeSeconds: c.time.at(-1) ?? null, final: c.values.at(-1) ?? null };
    c.transitions = transitions;
    c.transitionsTruncated = transitionCount > transitions.length;
  }
  return { format: 'MDF', version, completeFile: true, completenessScope: 'all_declared_records_and_channels', completeSimulation: false, groups, channels };
}
export function previewWaveform(waveform: ReturnType<typeof parseMdf>, maxPoints: number) {
  return { ...waveform, channels: waveform.channels.map(c => {
    const n = c.values.length, indices = n <= maxPoints ? Array.from({ length: n }, (_, i) => i) : maxPoints === 1 ? [n - 1] : Array.from({ length: maxPoints }, (_, i) => Math.round(i * (n - 1) / (maxPoints - 1)));
    return { ...c, time: indices.map(i => c.time[i]), values: indices.map(i => c.values[i]), totalSamples: n, downsampled: n > maxPoints };
  }) };
}
