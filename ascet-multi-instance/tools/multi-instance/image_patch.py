"""Version-checked offline patches for private ASCET 6.4 runtime copies."""

import hashlib
from pathlib import Path
import struct
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "scripts"))
from smalltalk_image import Image, scan_methods
from decompile_smalltalk import decode

SOURCE_HASH = "b4dff51f53463f2053ad7163f6afaf7a9a24dfdfd0d538eceec22432fadb5237"
TARGETS = {
    "tool_enabled": (0x20226064, 0x121DFDCC),
    "port": (0x2011D4B4, 0x121DFDCC),
    "active": (0x201188DC, 0x1209042C),
    "inactive": (0x20104734, 0x1209042C),
    "com": (0x20571A78, 0x120F3464),
    "register": (0x2044EE38, 0x122ECEE8),
    "program_path": (0x2027004C, 0x12257B80),
    "data_path": (0x20270078, 0x12257B80),
    "log_path": (0x203F2A7C, 0x12257B80),
}


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def make_record(identity, literals, code):
    decode(code)
    return (struct.pack("<II", identity & 0x7FFFFFFF,
                        len(code) << 16 | len(literals) * 4)
            + struct.pack("<" + "I" * len(literals), *literals)
            + code + bytes((-len(code)) % 4))


def patch_image(source, output, port, program_path, data_path, log_path,
                installation_path=Path("E:/ETAS/ASCET6.4")):
    source, output = Path(source).resolve(), Path(output).resolve()
    if source == output:
        raise ValueError("The original image must not be overwritten")
    if output.exists():
        raise FileExistsError(output)
    if not 1024 <= port <= 65535:
        raise ValueError("Use a non-privileged TCP port")
    image = Image(source)
    if sha256(image.data) != SOURCE_HASH:
        raise ValueError("Unsupported ASDBase.ic SHA256")
    if image.data_end != len(image.data):
        raise ValueError("Unrecognized image trailer")
    image.scan_objects()
    methods, errors = scan_methods(image)
    if errors or image.object_errors:
        raise ValueError("Source image failed structural validation")
    for name, (address, dictionary) in TARGETS.items():
        if address not in methods or dictionary not in image.objects:
            raise ValueError("Missing target: " + name)

    data = bytearray(image.data)
    data_segment = image.segments[2]
    new_objects, changes = bytearray(), []
    sample = image.objects[methods[TARGETS["active"][0]]["literals"][1]]
    if data[sample["offset"] + 12:sample["offset"] + 23] != b"ToolApiPort":
        raise ValueError("String prototype mismatch")

    def add_string(value):
        payload = str(value).encode("ascii")
        address = data_segment.base + data_segment.used + len(new_objects)
        new_objects.extend(struct.pack("<III", sample["clazz"],
                                       sample["flags"] & 0xFFFF, len(payload)))
        new_objects.extend(payload + bytes((-len(payload)) % 4))
        return address

    def replace(name, literals, code):
        old_address, dictionary = TARGETS[name]
        old = methods[old_address]
        space = old["total"] - 8 - len(literals) * 4
        if len(code) > space:
            raise ValueError("Replacement exceeds original record: " + name)
        padding = space - len(code)
        code += bytes.fromhex("3e0e") * (padding // 2) + bytes.fromhex("3e") * (padding % 2)
        record = make_record(old["identity"], literals, code)
        if len(record) != old["total"]:
            raise ValueError("Replacement record size changed: " + name)
        data[old["offset"]:old["offset"] + old["total"]] = record
        obj = image.objects[dictionary]
        begin, end = obj["offset"] + 12, obj["offset"] + 12 + obj["size"]
        matches = [pos for pos in range(begin, end, 4)
                   if struct.unpack_from("<I", data, pos)[0] == old_address | 1]
        if len(matches) != 1:
            raise ValueError("Ambiguous method dictionary: " + name)
        changes.append({"name": name, "old_address": hex(old_address),
                        "new_address": hex(old_address), "dictionary": hex(dictionary),
                        "identity": old["identity"] & 0x7FFFFFFF,
                        "code_hex": code.hex(), "literals": literals})

    gate = bytearray.fromhex(methods[TARGETS["tool_enabled"][0]]["code_hex"])
    if gate[18:20] != b"\x3d\x46":
        raise ValueError("ToolServer gate bytes changed")
    gate[18:20] = b"\x3e\x0e"
    replace("tool_enabled", methods[TARGETS["tool_enabled"][0]]["literals"], bytes(gate))
    replace("port", [port * 2 + 1], bytes.fromhex("00001010250744"))
    replace("active", [], bytes.fromhex("0000101040161844"))
    replace("inactive", [], bytes.fromhex("000010103d161844"))
    replace("com", [], bytes.fromhex("0001101044"))
    # DLL registration also initializes product identity. Supply the installed
    # path so native discovery does not publish the private runtime directory.
    registration = methods[TARGETS["register"][0]]["literals"]
    replace("register", [registration[10], add_string("ASCET"),
                         add_string(str(Path(installation_path).resolve()) + "\\"),
                         registration[14]],
            bytes.fromhex("000010101f07250b250f67133f44"))
    pathname_selector = methods[TARGETS["data_path"][0]]["literals"][6]
    for name, path in (("program_path", program_path), ("data_path", data_path)):
        replace(name, [add_string(str(Path(path).resolve())), pathname_selector],
                bytes.fromhex("000010102507620b44"))
    replace("log_path", [add_string(str(Path(log_path).resolve()) + "\\")],
            bytes.fromhex("00001010250744"))

    # Grow segments in address gaps, preserving every original object's address.
    additions = {2: bytes(new_objects)}
    chunks = [data[:image.segments[0].file_offset]]
    for segment in image.segments:
        extra = additions.get(segment.index, b"")
        if extra:
            following = [s.base for s in image.segments if s.base > segment.base]
            if following and segment.base + segment.used + len(extra) >= min(following):
                raise ValueError("Segment expansion would overlap another segment")
            pos = image.segment_table_offset + segment.index * 64
            struct.pack_into("<I", chunks[0], pos + 4, segment.capacity + len(extra))
            # All four serialized end boundaries cover the appended objects.
            # Leaving the traversal boundaries at the old end makes GC/linking
            # skip the added strings and literal tables.
            for word in (4, 5, 9, 10):
                if segment.words[word] != segment.base + segment.used:
                    raise ValueError("Unsupported segment boundary layout")
                struct.pack_into("<I", chunks[0], pos + word * 4,
                                 segment.words[word] + len(extra))
        chunks.append(data[segment.file_offset:segment.file_offset + segment.used] + extra)
    patched = b"".join(chunks)
    output.parent.mkdir(parents=True, exist_ok=True)
    temporary = output.with_suffix(output.suffix + ".pending")
    with temporary.open("xb") as stream:
        stream.write(patched)
    check = Image(temporary)
    check.scan_objects()
    checked_methods, errors = scan_methods(check)
    if errors or check.object_errors or check.data_end != len(check.data):
        temporary.unlink()
        raise ValueError("Patched image failed structural validation")
    for address, old in methods.items():
        if address in {value[0] for value in TARGETS.values()}:
            continue
        preserved = ("identity", "literal_bytes", "code_bytes", "literals", "code_hex",
                     "total", "shared_code")
        if any(checked_methods[address][key] != old[key] for key in preserved):
            temporary.unlink()
            raise ValueError("An original method was modified")
    for change in changes:
        address = int(change["new_address"], 16)
        if checked_methods[address]["code_hex"] != change["code_hex"]:
            raise ValueError("Replacement bytecode mismatch")
        dictionary = check.objects[int(change["dictionary"], 16)]
        words = struct.unpack_from("<" + "I" * (dictionary["size"] // 4),
                                   check.data, dictionary["offset"] + 12)
        if words.count(address | 1) != 1:
            raise ValueError("Replacement dictionary mismatch")
    temporary.rename(output)
    return {"source_sha256": SOURCE_HASH, "patched_sha256": sha256(patched),
            "source_bytes": len(image.data), "patched_bytes": len(patched),
            "source_method_count": len(methods),
            "original_methods_preserved": len(methods) - len(TARGETS), "changes": changes,
            "fixed_port": port}
