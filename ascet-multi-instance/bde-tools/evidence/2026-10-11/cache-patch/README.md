# Cache inverse prerequisite checkpoint

Complete retained v6 cache: 15 entries, fourteen 20-byte keys and one 32-byte AccessRights key. Read-only preflight dispatches zero writes. Original key bytes and entry identities remain exact; CURRENT is never an applied-edit after image.

Fresh private native cache undo/redo/second undo execute three membership primitives each; the joint version adds two direct dirty-state field primitives each. Seven stages check exact membership and modification census. Independent cache insertion and proxy name are preserved; five actual execution conflicts complete zero primitives. Two preparation/replay refusals are retained. Native modification census returns DBCacheObject, then exact shell/proxy identity is read directly. Whole direct field terminal validation passes.

Full actual public/native and complete live cache membership bookends remain identical. Only newly allocated private objects are mutated; registered cache writes, Store/Commit and persisted BDE edits are not tested. The original failure used equality-based identity labels and misidentified modification return types; its verdict is preserved. The initial 20-byte-only offline rejection is also retained.

Original proxy before images are not complete in v6; never backfill them with CURRENT. A new same-dispatch original capture is required before applying this executor to registered caches. Backend metadata, model/source/owner-record joint recovery and production journal bindings remain incomplete. Message 0/60, 43 required, T3.1/T5.1, business restoration hold and full_delivery=false remain unchanged.

Reproduce offline: `bde_cache_patch_increment.py --output <fresh-dir>`. Live, existing original token only: `bde_cache_membership_study.py --preparation <v6-dir> --mode preflight|private|state_private --output <fresh-dir>`. Unknown results are never replayed.
