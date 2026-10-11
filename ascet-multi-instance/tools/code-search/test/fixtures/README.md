# Native regression controls

`legacy-bde-source-reader.st` freezes the six-argument reader from before the cold-source fix. `scripts/verify-cold-read.ts` uses it only with detached source copies to reproduce ASCET's lazy display-default mutations and compare complete output with the production reader. Do not replace it when updating production code.

Run through `npm.cmd run verify:cold-read` so the shared live-model lock is held. See `experiments/cold-read/REPORT.md` for evidence and test boundaries.
