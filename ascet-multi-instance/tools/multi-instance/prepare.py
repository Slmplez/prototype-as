"""Prepare isolated, fixed-port ASCET runtime copies without changing installation."""

import argparse
import configparser
import json
from pathlib import Path
import shutil
import stat
import subprocess
import tempfile
from xml.dom import minidom
import zlib

from image_patch import ROOT, patch_image, sha256


def write_json(path, value):
    path.write_text(json.dumps(value, indent=2), encoding="utf-8")


def configure_private_options(data):
    files = [data / "stationSettings.xml", *(data / "USER").rglob("userSettings.xml")]
    overrides = {"DatabasePath": str(data / "Database") + "\\",
                 "TempPath": str(data / "Temp") + "\\",
                 "ImportPath": str(data / "Import") + "\\",
                 "WebServiceActive": "false"}
    for file in files:
        document = minidom.parse(str(file))
        for option in document.getElementsByTagName("Option"):
            name = option.getAttribute("name")
            if name in overrides:
                for child in list(option.childNodes):
                    option.removeChild(child)
                option.appendChild(document.createTextNode(overrides[name]))
        body = document.documentElement.toxml().replace("\n", "\r\n").encode("ascii", "xmlcharrefreplace")
        checksum = zlib.crc32(body)
        header = ('<?xml version="1.0" encoding="US-ASCII"?>\r\n'
                  '<?checksum type="CRC-32" value="0x%08X"?>\r\n' % checksum)
        file.write_bytes(header.encode("ascii") + body)


def compile_host(directory, sdk):
    compiler = Path("C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe")
    subprocess.run([str(compiler), "/nologo", "/platform:x86", "/r:" + str(sdk),
                    "/r:System.Web.Extensions.dll", "/out:" + str(directory / "EndpointHost.exe"),
                    str(Path(__file__).with_name("EndpointHost.cs"))], check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--installation", type=Path, default=Path("E:/ETAS/ASCET6.4"))
    parser.add_argument("--data", type=Path, default=Path("E:/ETASData/ASCET6.4"))
    parser.add_argument("--database", type=Path,
                        default=Path("D:/ETASData/ASCET6.4/Database/AEB_1"))
    parser.add_argument("--ports", type=int, nargs=2, default=[32611, 32612])
    args = parser.parse_args()
    output = args.output.resolve()
    if not output.is_relative_to(ROOT / "analysis") or output.exists():
        parser.error("Output must be a new directory under the workspace analysis directory")
    if len(set(args.ports)) != 2 or any(not 1024 <= p <= 65535 for p in args.ports):
        parser.error("Two distinct non-privileged ports are required")
    installation, data_root, database = (p.resolve() for p in
                                        (args.installation, args.data, args.database))
    source_image = installation / "icsrun/ASDBase.ic"
    from image_patch import SOURCE_HASH
    if sha256(source_image.read_bytes()) != SOURCE_HASH:
        parser.error("Unsupported installed image")
    if not (database / "sobjects.dat").exists():
        parser.error("Database directory must contain sobjects.dat")
    database_hashes = {str(p.relative_to(database)): sha256(p.read_bytes())
                       for p in database.rglob("*") if p.is_file()}
    sdk = installation / "cebra/Etas.AscetNET.dll"
    with tempfile.TemporaryDirectory() as temporary:
        compiled = Path(temporary)
        compile_host(compiled, sdk)
        output.mkdir(parents=True)
        shutil.copy2(compiled / "EndpointHost.exe", output / "EndpointHost.exe")
        shutil.copy2(sdk, output / sdk.name)
    write_json(output / "experiment.json", {"kind": "ascet-private-multi-instance",
               "installation": str(installation), "database_source": str(database),
               "database_source_hashes": database_hashes})
    for name, port in zip(("agent-a", "agent-b"), args.ports):
        base = output / name
        runtime, data, logs = base / "runtime", base / "data", base / "logs"
        print("Copying runtime for " + name, flush=True)
        shutil.copytree(installation, runtime)
        data.mkdir()
        logs.mkdir()
        for p in data_root.iterdir():
            if p.is_file() and p.suffix.lower() in (".xml", ".ini"):
                shutil.copy2(p, data / p.name)
        for folder in ("USER", "cebra"):
            if (data_root / folder).is_dir():
                shutil.copytree(data_root / folder, data / folder)
        for folder in ("Database", "Workspaces", "Import", "Export", "Docu", "Temp"):
            (data / folder).mkdir(exist_ok=True)
        target_database = data / "Database" / name
        shutil.copytree(database, target_database)
        for p in target_database.rglob("*"):
            if p.is_file():
                p.chmod(stat.S_IREAD | stat.S_IWRITE)
        configure_private_options(data)
        configuration = configparser.ConfigParser()
        configuration.optionxform = str
        configuration.read(runtime / "ASCET.ini")
        configuration["Ic path"]["IC_ROOT"] = str(runtime / "icsrun") + "\\"
        configuration["NLS Config"]["nlspath"] = str(runtime / "nls") + ";"
        configuration["Xml"]["DefaultResourceQualifier"] = str(runtime / "xml") + "\\"
        with (runtime / "ASCET.ini").open("w", encoding="ascii") as stream:
            configuration.write(stream, space_around_delimiters=False)
        original = runtime / "icsrun/ASDBase.ic"
        backup = original.with_suffix(".ic.original")
        original.rename(backup)
        patch = patch_image(backup, original, port, runtime, data, logs, installation)
        write_json(base / "patch.json", patch)
        write_json(base / "instance.json", {"instance_id": name, "port": port,
                   "runtime": str(runtime), "data": str(data), "logs": str(logs),
                   "database": str(target_database), "source_image_sha256": patch["source_sha256"],
                   "patched_image_sha256": patch["patched_sha256"]})
    if database_hashes != {str(p.relative_to(database)): sha256(p.read_bytes())
                          for p in database.rglob("*") if p.is_file()}:
        raise RuntimeError("Source database changed while copies were prepared")
    print(str(output), flush=True)


if __name__ == "__main__":
    main()
