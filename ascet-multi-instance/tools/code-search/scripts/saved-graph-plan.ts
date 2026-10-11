import { crc32 } from 'node:zlib';

const HEADER = Buffer.from([0, 20, 31, 160, 4, 3, 2, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
const ALLOWED = new Set(['SGTopGraphicsBlockDB', 'SGGraphicsBlockDB', 'SGHierarchyGODB', 'SGCodeGODB',
  'SGDataGODB', 'SGLiteralGODB', 'SGOperatorGODB', 'SGInOutPortGODB', 'SGSwitchGODB', 'SGCommentGODB',
  'SGConnectionGODB', 'Point', 'RBAreaStyle', 'RBLineStyle', 'CgRGBColor', 'DBObject']);
interface StoredObject { classId: number; flags: number; size: number; position: number }
interface Layout { name: string; fields: string[] }
interface Node { kind: number; layout: number; bytes?: Buffer; references?: number[] }

/** A request-owned allocation plan. Native class layouts and current bytes are checked again before use. */
export function savedGraphPlan(record: Buffer, offset: number): Buffer {
  const require = (condition: boolean, reason: string): void => { if (!condition) throw new Error('Unsupported saved graph: ' + reason); };
  require(record.length <= 16 * 1024 * 1024 && Number.isSafeInteger(offset) && offset >= 0 && offset + 40 <= record.length, 'record bounds');
  const word = (position: number): number => {
    require(Number.isSafeInteger(position) && position >= 0 && position + 4 <= record.length, 'word bounds');
    return record.readUInt32LE(position);
  };
  require(record.subarray(offset, offset + HEADER.length).equals(HEADER), 'header');
  const objects = new Map<number, StoredObject>(), ranges: { first: number; last: number }[] = [];
  let segment = offset + 20, last = false, rootBase: number | undefined;
  while (!last) {
    require(segment + 20 <= record.length && ranges.length < 1024, 'segment header bounds');
    require(record[segment] === 55 && (record[segment + 1] === 0 || record[segment + 1] === 1) &&
      record[segment + 2] === 0 && record[segment + 3] === 0 && word(segment + 12) === 0 && word(segment + 16) === 0, 'segment header');
    last = record[segment + 1] === 1;
    const length = word(segment + 4), start = segment + 20, end = start + length;
    require(length >= 32 && length % 4 === 0 && end <= record.length, 'segment bounds');
    require(crc32(record.subarray(start, end)) === word(segment + 8), 'segment checksum');
    const base = word(start); rootBase ??= base;
    require(base % 4 === 0 && base + length < 0x1_0000_0000 && ranges.every(range => base >= range.last || base + length <= range.first), 'segment address range');
    ranges.push({ first: base, last: base + length });
    require(word(start + 4) === 0 && word(start + 8) === 0 && word(start + 12) === 0, 'segment prefix');
    let position = start + 16;
    while (position < end) {
      require(position + 12 <= end && objects.size < 100_000, 'object bounds');
      const classId = word(position), flags = word(position + 4) & 65535, size = word(position + 8);
      const next = position + 12 + Math.ceil(size / 4) * 4, address = base + position - start - 16;
      require(next <= end && !objects.has(address), 'object payload bounds');
      objects.set(address, { classId, flags, size, position: position + 12 });
      position = next;
    }
    require(position === end, 'object alignment'); segment = end;
  }
  require(segment === record.length, 'trailing bytes');
  const lookup = (address: number): StoredObject => {
    const object = objects.get(address); require(object !== undefined, 'missing object'); return object!;
  };
  const pointers = (address: number, classId: number): number[] => {
    const object = lookup(address);
    require(object.classId === classId && object.flags === 9 && object.size % 4 === 0, 'pointer array');
    return Array.from({ length: object.size / 4 }, (_, index) => word(object.position + index * 4));
  };
  const string = (address: number, classId: number): string => {
    const object = lookup(address); require(object.classId === classId && object.flags === 11, 'class string');
    return record.subarray(object.position, object.position + object.size).toString('latin1');
  };
  const layouts = new Map<number, Layout>(), layoutTable: Layout[] = [], layoutIds = new Map<number, number>();
  const layout = (object: StoredObject): Layout => {
    require(object.flags === 8 && object.size % 4 === 0, 'instance format');
    let value = layouts.get(object.classId);
    if (!value) {
      const descriptor = lookup(object.classId);
      require(descriptor.classId === 9 && descriptor.flags === 0 && (descriptor.size === 56 || descriptor.size === 64), 'class descriptor');
      const fields = pointers(word(descriptor.position + 36), 25).map(address => string(address, 27));
      const name = string(word(descriptor.position + 44), 27);
      require(new Set(fields).size === fields.length && (descriptor.size === 56 || name === 'CgRGBColor'), 'class layout');
      value = { name, fields }; layouts.set(object.classId, value);
    }
    require(object.size === value.fields.length * 4, 'instance size'); return value;
  };
  const instance = (address: number, name: string, fields: string[]): StoredObject => {
    const object = lookup(address), actual = layout(object);
    require(actual.name === name && JSON.stringify(actual.fields) === JSON.stringify(fields), name + ' layout'); return object;
  };
  const nodes: Node[] = [], memo = new Map<number, number>(), activeDictionaries = new Set<number>();
  let visits = 0;
  const resolve = (address: number, depth: number): number => {
    require(depth <= 128 && ++visits <= 1_000_000, 'graph bounds');
    if (address % 2 === 1 || address === 14 || address === 30 || address === 46) return address;
    require(!activeDictionaries.has(address), 'recursive dictionary');
    const existing = memo.get(address); if (existing !== undefined) return existing;
    const object = lookup(address), node: Node = { kind: 0, layout: 0 };
    const id = nodes.length; nodes.push(node); const reference = (id + 4) * 16; memo.set(address, reference);
    if (object.classId === 7) {
      node.kind = 4; node.references = pointers(address, 7).map(value => resolve(value, depth + 1));
    } else if ([3, 5, 23].includes(object.classId)) {
      require(object.flags === (object.classId === 5 ? 3 : 11), 'byte format');
      node.kind = object.classId === 3 ? 1 : object.classId === 5 ? 2 : 3;
      node.bytes = record.subarray(object.position, object.position + object.size);
    } else {
      const actual = layout(object);
      if (actual.name === 'Dictionary') {
        instance(address, 'Dictionary', ['elementCount', 'elements']); node.kind = 6;
        const encodedCount = word(object.position); require(encodedCount % 2 === 1 && encodedCount >= 1, 'dictionary count');
        activeDictionaries.add(address); const entries: number[] = [], keys = new Set<string>();
        for (const entryAddress of pointers(word(object.position + 4), 7)) {
          if (entryAddress === 14) continue;
          const entry = instance(entryAddress, 'Association', ['key', 'value']);
          const key = word(entry.position), keyObject = key % 2 ? undefined : lookup(key);
          require(key % 2 === 1 || (keyObject !== undefined && [3, 23].includes(keyObject.classId) && keyObject.flags === 11), 'dictionary key');
          const keyIdentity = keyObject ? `${keyObject.classId}:${record.subarray(keyObject.position, keyObject.position + keyObject.size).toString('hex')}` : `integer:${key}`;
          require(!keys.has(keyIdentity), 'duplicate dictionary key'); keys.add(keyIdentity);
          entries.push(resolve(key, depth + 1), resolve(word(entry.position + 4), depth + 1));
        }
        require(entries.length === (encodedCount >>> 1) * 2, 'dictionary entry count');
        node.references = entries; activeDictionaries.delete(address);
      } else {
        require(ALLOWED.has(actual.name), 'class ' + actual.name);
        let layoutId = layoutIds.get(object.classId);
        if (layoutId === undefined) { layoutId = layoutTable.length; layoutTable.push(actual); layoutIds.set(object.classId, layoutId); }
        node.layout = layoutId;
        if (actual.name === 'DBObject') {
          instance(address, 'DBObject', ['istate', 'globalId', 'interface', 'firstVersionId', 'className', 'name', 'version', 'objectState', 'referenceState']);
          node.kind = 7; node.references = [];
        } else {
          node.kind = 5; node.references = actual.fields.map((_, index) => resolve(word(object.position + index * 4), depth + 1));
        }
      }
    }
    return reference;
  };
  const root = pointers(rootBase!, 33); require(root.length === 1, 'one graph root');
  instance(root[0], 'SGTopGraphicsBlockDB', layout(lookup(root[0])).fields);
  const rootReference = resolve(root[0], 0);
  const parts: Buffer[] = [];
  const put = (...values: number[]): void => {
    const part = Buffer.alloc(values.length * 4); values.forEach((value, index) => part.writeUInt32LE(value, index * 4)); parts.push(part);
  };
  const putBytes = (bytes: Buffer): void => { put(bytes.length); parts.push(bytes); if (bytes.length % 4) parts.push(Buffer.alloc(4 - bytes.length % 4)); };
  put(0x47504153, 1, rootReference, layoutTable.length, nodes.length);
  for (const value of layoutTable) {
    putBytes(Buffer.from(value.name, 'latin1')); put(value.fields.length);
    for (const field of value.fields) putBytes(Buffer.from(field, 'latin1'));
  }
  for (const node of nodes) {
    put(node.kind, node.layout);
    if (node.bytes) putBytes(node.bytes); else { put(node.references!.length); put(...node.references!); }
  }
  const plan = Buffer.concat(parts); require(plan.length <= 32 * 1024 * 1024, 'plan bounds'); return plan;
}
