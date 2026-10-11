# Changed source record checkpoint

`result.json` freezes the actual isolated source-record lifecycle and its independent restoration confirmation. It is an incremental research result, not full BDE delivery.

The private source clone changed Operator logic_id=1 position.x from 300 to 311. Native serialization produced 4,424 bytes; an independent native loader checked all 58 projected objects and sharing relations. The clone coordinate was then restored. The actual changed payload was written to the isolated source record, completely read back, and restored with the exact original raw record: two writes, zero deletes. Independent fresh owner/reference reads and public bookends confirmed the original state, and only this experiment's pending marker was cleared.

The graphical semantic diff is one coordinate. The physical 4,554-byte source record differs in 792 bytes, including serialization addresses; this does not establish the cause of every differing byte. The fixed identity/version/state header is preserved.

Validation: 77 targeted offline controls executed from 165 frozen source files, 116 archived source hashes checked. The source lifecycle used one connection, 74 request and 73 response frames, 43,889 request and 1,218,221 response bytes; wire errors were empty. Reproduce the frozen report offline with `scripts/bde_source_payload_increment.py --help` and the evidence inputs recorded in this directory. Live material has been consumed and must not be replayed.

No live model setter, graphical cache reload, Store, or Commit was used. Crash durability, production move/connect/inverse, full model/source/cache/owner journal closure, Message 60-case lifecycle, and final delivery remain unverified or incomplete. `full_delivery=false`.

Local evidence: `../bde-private-layout-after-live-01`, `../bde-private-layout-after-fresh-01`, `../bde-private-layout-after-confirm-01`, `../bde-source-payload-lifecycle-live-01`, `../bde-source-payload-lifecycle-fresh-01`, and `../bde-source-payload-lifecycle-confirm-01`. Their frozen SHA-256 values are recorded in `result.json`.
