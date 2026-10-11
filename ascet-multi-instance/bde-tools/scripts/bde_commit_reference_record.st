"Decode only audited tag-1 reference payloads from retained complete raw record bytes."
[:row :ownerKey |
 | role attribute raw fixed count semantic declared bytes entries profile expectedKey |
 role := row at: 'role'.
 (#('owner_references' 'owner_referenced_by') includes: role)
   ifFalse: [row error: 'Fixed original reference record role required'].
 attribute := role = 'owner_references' ifTrue: ['DBReferenceList'] ifFalse: ['DBReferencedByList'].
 raw := row at: 'allocated_bytes'. fixed := row at: 'fixed_size'. declared := fixed + (row at: 'blob_size').
 expectedKey := ownerKey, attribute asCebraString asArray.
 ((row at: 'read_status') = 'record' and: [(row at: 'record_class') = 'CTreeVariableAttributeRecord' and: [
   (row at: 'record_attribute') = attribute and: [(row at: 'attribute') = attribute and: [
   fixed = 60 and: [ownerKey size = 20 and: [(row at: 'global_id') = ownerKey and: [
   (row at: 'query_key') = expectedKey and: [(row at: 'actual_file_key') = expectedKey]]]]]]]])
   ifFalse: [row error: 'Exact retained owner/reference route and fixed header required'].
 (raw size = (row at: 'allocated_size') and: [raw size >= 64])
   ifFalse: [row error: 'Complete original reference record buffer required'].
 count := (raw at: 61) + ((raw at: 62) * 256) + ((raw at: 63) * 65536) + ((raw at: 64) * 16777216).
 (count <= 4096 and: [(row at: 'blob_size') = (count * 21)])
   ifFalse: [row error: 'Audited bounded tag-1 reference payload size required'].
 semantic := 64 + (count * 21).
 semantic <= raw size ifFalse: [row error: 'Reference payload extends beyond retained raw bytes'].
 profile := row at: 'length_profile' ifAbsent: [nil].
 profile notNil ifTrue: [
   (profile = 'reference_payload_v2' and: [(row at: 'declared_size') = declared and: [(row at: 'logical_size') = semantic]])
     ifFalse: [row error: 'Complete reference semantic length profile differs']
 ] ifFalse: [(row at: 'logical_size') = declared ifFalse: [row error: 'Original legacy declared record extent differs']].
 bytes := row at: 'bytes'.
 (bytes size = (row at: 'logical_size') and: [bytes = (raw copyFrom: 1 to: bytes size)])
   ifFalse: [row error: 'Original reference prefix was changed or truncated'].
 entries := (1 to: count) collect: [:index | | start |
   start := 65 + ((index - 1) * 21).
   (raw at: start) = 1 ifFalse: [row error: 'Unsupported reference proxy tag; original raw bytes retained'].
   Dictionary new at: 'tag' put: 1; at: 'global_id' put: (raw copyFrom: start + 1 to: start + 20); yourself].
 Dictionary new at: 'semantic_size' put: semantic; at: 'semantic_bytes' put: (raw copyFrom: 1 to: semantic);
   at: 'entries' put: entries asArray; at: 'raw_tail' put: (semantic = raw size ifTrue: [#()] ifFalse: [raw copyFrom: semantic + 1 to: raw size]); yourself
]
