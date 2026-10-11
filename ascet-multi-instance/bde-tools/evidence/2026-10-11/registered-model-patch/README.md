# Registered SG model patch prerequisite

Retained v6 preflight: 271 original and CURRENT objects, zero candidate cells; no execution. The native three-part SG image adapter reuses the audited field/index/key/member/order primitive planner. Original schema and identity guards remain intact. CURRENT is not an applied-edit after receipt.

The separate native private control executes undo, redo and second undo (7 primitives each) on six newly allocated object types. It preserves independent field/key/member/order changes, rejects touched overlap without a primitive, and verifies five original/schema/value/boundary/introduced guards. The initial shared-member reorder control failed; that restriction remains.

Full independent public/native bookends remain identical in both passed runs. No Store/Commit, registered model mutation, restart or production inverse. Model/source/cache/control and persistent Store closure remain incomplete. Message 0/60, 43 required, T3.1/T5.1 and full_delivery=false are not upgraded.

Reproduce from the existing no-write v6 preparation with `bde_registered_model_patch_study.py --preparation <original-dir> --mode preflight|private --output <new-dir>`; do not rebind old materials. Offline replay: `bde_registered_model_patch_increment.py --output <new-dir>`.
The initial frozen replay failed an eager live-only `image_patch` import; moving the experiment builder import into main made the validators standalone. That failed checkpoint is retained.
