# ASCET BDE Agent Tools

This directory contains the portable source package for the ASCET Block Diagram
agent tools. It is intentionally kept beside the multi-instance connector so a
Doge host can overlay the `Doge/src/tools/BlockDiagramTool` directory and run
the Python/Cebra backend from the same package root.

## Layout

- `scripts/` — Python contracts, read/write journal, diff/WAL, recovery code,
  fixed Smalltalk resources, and the C# Cebra bridge sources.
- `Doge/src/tools/BlockDiagramTool/` — Doge `bd_read`, `bd_find`, `bd_inspect`,
  `bd_edit`, `bd_diff`, and `bd_revert` schemas, paging, cancellation, and
  tests.
- `tests/` — offline Python contract and journal tests copied from the working
  ASCET tool tree.
- `docs/` — task nodes, architecture, edit journal, evaluation gates, and
  current evidence/limitations.

The Doge files use the original repository-relative imports. When integrating
them into a full Doge checkout, copy this directory's `Doge/src/tools` content
into that checkout and keep the backend at the path expected by
`BlockDiagramTool.ts`, or update the `backend` URL in that file.

## Verification

Offline verification from this package root:

```powershell
python -X utf8 .\run-portable-tests.py
python -X utf8 .\verify-package.py
```

The portable runner explicitly selects tests with self-contained fixtures.
Other archived tests under `tests/` require historical JSON/native evidence
from the original `analysis/` directory; that process-specific material is
not included. Running broad discovery does not produce a passing portable
suite. Those historical controls are retained for development, not relabeled
as package acceptance.

The native bridge requires a licensed ASCET 6.4 process, Cebra, an isolated
`Trial_*` component, and the local ETAS SDK. No native process is started by
the package and no production database is modified by the offline tests.

## Delivery status

The source package is a working checkpoint, not a claim that every T0–T9
acceptance gate has passed. The status and failed/blocked evidence are kept in
`docs/bde-delivery-status.md` and `docs/bde-tools-experiment-report.md`.
In particular, the full message topology matrix and general persistent
resource closure remain open; fixture results must not be treated as online
ASCET evidence. The new `native_connect_material_v2` path is enabled only by
`ASCET_BD_CONNECT_REFERENCES=module_inbound_v1` together with the fixed retained
Main connection profiles. It records Module inbound references in the existing
material dispatch and rejects graphical-only history until a persistent
reference inverse is implemented. Its Smalltalk runtime compilation and
execution remain unverified.
