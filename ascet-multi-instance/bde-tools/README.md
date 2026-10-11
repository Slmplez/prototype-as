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
reference inverse is implemented. Fixed Smalltalk runtime compilation, the
shared read-only reference collector and production v2 prepare/inspect/discard
have now passed inside an existing private ASCET session. Actual attached v2
capture and persistent reference inverse remain unverified. The semantic
three-way inverse planner is bound to confirmed original journals, preserves
unrelated memberships and rejects overlaps, but grants no database write or
inverse authority. See `evidence/2026-10-11/module-reference-preflight/`.

The latest v3 preparation-only profile is
`ASCET_BD_CONNECT_REFERENCES=module_persistent_v1`. It additionally freezes finite
Module/source raw outgoing/inbound records and existing reciprocal targets in
the prepared native record, including distinct absence results and full raw
tails. Production prepare/inspect/discard and both Python/C# no-mutation refusals
passed in the existing session; two isolated Module read observations passed.
Compact actual WAL/diff and journal-bound raw inverse proposals are implemented,
but the persistent writer/inverse and actual attached capture remain unverified.
Any raw conflict or missing original target capture suppresses all candidates.
See `evidence/2026-10-11/finite-module-references/` for results and failures.

Fresh v3 preparation can now freeze up to 16 explicit new target identities,
including original existing records or exact absence. Actual isolated research
proved an existing record no-op write and absent empty-record create/delete,
with complete raw equality and fresh independent confirmations. The original
failed verifier results remain preserved; no writer was replayed for recovery.
Only one explicitly approved private recovery restart occurred, and old epoch
pending evidence remains. Production apply/inverse still refuses because
nonempty/resized references and general durable inverse remain open. See
`evidence/2026-10-11/requested-reference-leaf-lifecycle/`.

The selected portable suite passes 183 tests, including the new fixed-handshake,
full raw/absence and zero-leaf refusal controls. Its actual result is saved in
`portable-controls.log` and `portable-controls-result.json`.
It is offline package validation, separate from live native evidence and
complete T0–T9 lifecycle acceptance. The hourly automation is paused; active
development continues directly in the existing task.
