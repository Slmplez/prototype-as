import tempfile
from pathlib import Path
import unittest

from image_patch import SOURCE_HASH, patch_image, sha256, Image, scan_methods, TARGETS
from decompile_smalltalk import decode


class ImagePatchTests(unittest.TestCase):
    def test_private_patch_preserves_original_methods(self):
        source = Path("E:/ETAS/ASCET6.4/icsrun/ASDBase.ic")
        original = source.read_bytes()
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "ASDBase.ic"
            result = patch_image(source, output, 32611, directory, directory, directory)
            self.assertEqual(result["source_sha256"], SOURCE_HASH)
            self.assertEqual(len(result["changes"]), 9)
            self.assertEqual(source.read_bytes(), original)
            image = Image(output)
            for index in (2, 12):
                segment = image.segments[index]
                self.assertEqual([segment.words[i] for i in (4, 5, 9, 10)],
                                 [segment.base + segment.used] * 4)
            methods, errors = scan_methods(image)
            self.assertEqual(errors, [])
            segment = image.segments[12]
            ordinals = [m["identity"] & 0x7FFFFFFF for address, m in methods.items()
                        if segment.base <= address < segment.base + segment.used]
            source_methods, _ = scan_methods(Image(source))
            self.assertEqual(ordinals,
                             [m["identity"] & 0x7FFFFFFF for address, m in source_methods.items()
                              if segment.base <= address < segment.base + segment.used])
            port = next(c for c in result["changes"] if c["name"] == "port")
            self.assertEqual(methods[int(port["new_address"], 16)]["literals"], [65223])
            self.assertTrue(source_methods[TARGETS["port"][0]]["shared_code"])
            self.assertFalse(methods[int(port["new_address"], 16)]["shared_code"])
            registration = next(c for c in result["changes"] if c["name"] == "register")
            sends = [i for i in decode(bytes.fromhex(registration["code_hex"])) if i["kind"] == "send"]
            self.assertEqual([i["args"][1] for i in sends], [2])
            with self.assertRaises(FileExistsError):
                patch_image(source, output, 32611, directory, directory, directory)

    def test_refuses_original_and_invalid_port(self):
        source = Path("E:/ETAS/ASCET6.4/icsrun/ASDBase.ic")
        with self.assertRaises(ValueError):
            patch_image(source, source, 32611, "x", "x", "x")
        with tempfile.TemporaryDirectory() as directory:
            with self.assertRaises(ValueError):
                patch_image(source, Path(directory) / "bad.ic", 0, "x", "x", "x")
            bad = Path(directory) / "source.ic"
            changed = bytearray(source.read_bytes())
            changed[-1] ^= 1
            bad.write_bytes(changed)
            with self.assertRaisesRegex(ValueError, "SHA256"):
                patch_image(bad, Path(directory) / "bad.ic", 32611, "x", "x", "x")


if __name__ == "__main__":
    unittest.main()
