"""Read a recovered Smalltalk method with source coordinates; never executes it."""
import argparse
import hashlib
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "unpacked" / "smalltalk-source" / "ASDBase.ic"
METHOD = re.compile(r"^![^\n]+ methodsFor: [^\n]+!\n([^\n]+)\n(.*?)^! !", re.M | re.S)


def methods(path):
    text = path.read_text(encoding="utf-8")
    for match in METHOD.finditer(text):
        signature = match.group(1)
        keywords = re.findall(r"(?:^|\s)([A-Za-z_]\w*:)", signature)
        selector = "".join(keywords) if keywords else signature.split()[0]
        yield {"selector": selector, "signature": signature,
               "line": text[:match.start()].count("\n") + 2,
               "body": match.group(2), "sha256": hashlib.sha256(match.group(0).encode()).hexdigest()}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("class_name")
    parser.add_argument("selectors", nargs="*")
    parser.add_argument("--calls", action="store_true", help="Filtered reading aid only; not a control-flow equivalent")
    args = parser.parse_args()
    path = SOURCE / (args.class_name + ".st")
    entries = list(methods(path))
    selected = [m for m in entries if not args.selectors or m["selector"] in args.selectors]
    if args.selectors and {m["selector"] for m in selected} != set(args.selectors):
        parser.error("Missing selector(s): " + repr(set(args.selectors) - {m["selector"] for m in selected}))
    for method in selected:
        print(f"{path}:{method['line']} {method['signature']}")
        if not args.selectors:
            continue
        for line in method["body"].splitlines():
            if not args.calls or re.search(r"\) [A-Za-z]|:= [A-Z]|^    [a-z]\w* :=|\^|<primitive", line):
                print(line)


if __name__ == "__main__":
    main()
