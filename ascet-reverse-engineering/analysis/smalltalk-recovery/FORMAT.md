# ASCET / ESVM40 Smalltalk recovery notes

These findings apply to the supplied ASCET 6.4 images and ESVM40.dll. They are not a general VA Smalltalk image specification. All offsets and addresses below refer to serialized image data or static VM code, not a running ASCET process.

## Image layout

The header consists of eight little-endian DWORDs: magic `0x4f54491a`, version (1 or 4), endian marker `0x12345678`, dependency count for version 4, global-root-block count, segment count, flags and identity. A root block occupies 128 bytes.

Each dependency descriptor is 272 bytes: a 256-byte name followed by four DWORDs. The last four contain identity, imported-segment-record count, saved-dependency-record count and runtime state. The native loader at `0x487690` reads both record arrays for each dependency before proceeding to the next dependency. Each record is 32 bytes.

The live `ascet.icx` snapshot has 131 imported-segment records and 180 saved-dependency records. Only the imported records end in the `0xabcdabcd` sentinel. Splitting by the dependency counts explains all 311 records, instead of assuming every record is a static relocation. The segment-descriptor table begins at `0x3cc0`, and segment data begins at `0x4cc0`.

Segment descriptors contain 16 DWORDs. Word 0 contains flags, word 1 capacity, words 2 and 3 base, word 4 allocation boundary, word 5 used end, word 12 component identity and word 15 original segment number. Serialized size is `word5 - word2`. Ordinary objects contain a class pointer, flags/hash and byte length, followed by data padded to four-byte alignment.

Foreign references map a relocation's start/end range into the named dependency's exported segment. Relocation flags with upper word 9 identify a class-table slot, which must be dereferenced. Local pointers are checked first. Snapshot imported ranges hold the runtime addresses of static dependency segments.

## Classes and compact methods

The class hierarchy is checked through actual Metaclass objects. Class slot 1 (object address +16) is the superclass; slot 2 (+20) is the method dictionary; slot 3 (+24) is tagged instance-variable count; slot 9 (+48) contains local instance-variable names; slot 11 (+56) holds the name or, for a metaclass, its ordinary class. Instance-variable layouts concatenate superclass variables before locally declared variables.

Method dictionary pairs hold a selector and a tagged compact-method address. Compact-method references are decoded explicitly; an odd value in this field is not a SmallInteger. Methods live in segments whose low flags byte is `0x84`.

A compact record contains two DWORDs and a literal vector. The low half of the second DWORD is the literal-vector byte count. For ordinary records the high half is bytecode length, and the inline bytecodes follow the vector. Record data is padded to four bytes.

If bit 31 of the first DWORD is set, bytecodes are shared rather than absent. The second DWORD's high half then locates the bytecode header at `record_file_offset + 1 + high16`. The record has no inline code. Every one of the 105,925 such references resolves to a normal method's bytecode block. The rule is independently visible in `EsSendMessage` at `0x472b74` and lookup code at `0x4411a4`.

## Bytecode execution

The dispatch table at `0x42fd00` has 256 entries, 187 unique native handlers. `opcode-handlers/` preserves the recovered assembly excerpts. Unsupported table slots are not treated as one-byte instructions. Operands, including padding before some 16-bit operands, must not be confused with opcodes.

Interpreter registers are ESI (instruction pointer), EBX (tagged compact method), EDX (frame), ESP (operand stack) and EBP (VM state). Literal operands address bytes relative to EBX: literal i is at offset `7 + 4*i`.

The four-byte code header contains temporary count (byte 0), argument count (byte 1), entry handler selector (byte 2) and another entry field (byte 3). Entry selectors `0x10` and `0x11` use stack frames without and with temporary slots. `0x12` and `0x13` use context frames. The optimized entry selectors `0xac`, `0xc1`, `0xc2`, `0xc3` correspond to returning self, an instance-variable getter, setter, and immediate-value return. Other entry selectors are conservatively excluded as primitive/special entry methods.

In a stack frame, temporaries occupy positive slots from EDX+4, followed by arguments in reverse order. Context-frame locals begin at context+32 with the same temporary/reversed-argument ordering. Ordinary method execution begins with self already on the operand stack. Treating the initial stack as empty or argument slots as declaration order is incorrect.

Send continuation modes are verified both from native code and emulation:

| Mode | Handler | Effect after receiver/arguments are consumed |
|---|---|---|
| `0x20` | `0x45bda4` | Push the message result |
| `0x24` | `0x45da44` | Discard the result |
| `0x28` | `0x45da60` | Duplicate the next lower pre-existing stack entry |

In particular, `0x65` is a send with discarded result, not a tail return. `ASDTopApp class>>loaded` sends `EtasMainDatabaseWindow checkDBInterface` and then returns self.

Super-send operands include an Association with key `super` whose value is the lexical class. The VM begins lookup at that class's superclass. Reconstruction checks the lexical class and proves the operand receiver is self before emitting a `super` send.

EsPoolAssociation stores a shared NUL-separated string table in its key field. The key's one-based start index is `(object_flags >> 16) & 0x7fff`; this follows its recovered `key` method and native `stringIndex` handler at `0x445d78`. The source renderer does not substitute the pool's current value for the variable name.

The old Abt extension images also contain a few scalar constants with stale
serializer class tags. `Bag` records with low format byte `0x07` and an
eight-byte payload are signed 64-bit integers; `Color` records with low format
byte `0xfb` and an eight-byte payload are IEEE-754 doubles. The payload is
authoritative, so the source renderer emits the numeric literal rather than
trying to interpret the legacy class name as a collection or color object.

LargeInteger data consists of signed little-endian words; an extra zero word keeps an unsigned high-bit value positive. See `EsMakeSignedInteger`/`EsMakeUnsignedInteger`. Float data is an eight-byte IEEE double (`EsMakeDouble`/`EsGetDouble`). Non-finite floating literals are excluded.

EsAtom uses `##'text'` syntax, as shown by its recovered `storeOn:` method. Plain Symbols use `#'text'`.

## Blocks and conservative exclusions

Simple EsCompactBlockContextTemplate literals carry a method reference, receiver, method-relative entry offset and packed argument/temporary/flag fields. This revision supports straight-line templates with flags 7 and nil receiver, plus EsEmptyBlock. It reconstructs and verifies their byte ranges separately. Unreachable bytes in a containing method are accepted only when fully covered by such reconstructed block ranges.

Inline block creation opcodes `0x4b`/`0x4c`, captured contexts, nonlocal block returns and several optimized loops remain unsupported. No guessed method bodies are emitted for these records. Native primitives are not translated into fabricated Smalltalk implementations.

## Validation scope

The Python suite checks every image's object boundaries and every shared-code target. Generated methods require valid selector arities, literal and variable offsets, branch targets, consistent operand-stack heights, proven super receiver origin and complete reachable instruction coverage. The report verifies source-file method counts, duplicate selectors and file SHA-256.

Independent Unicorn tests execute copied x86 instruction bytes in isolated memory. They cover signed integer operations, division/remainder, interval comparison, branch polarity, the three send continuation modes, and method-frame argument order. They do not start ASCET or load the DLL into the host.

These are static reconstructions, not original source. The entire program has not been rebuilt or checked for runtime equivalence. Compiler dialect compatibility, generated temporary-variable limits and complete runtime dependencies remain unverified.
