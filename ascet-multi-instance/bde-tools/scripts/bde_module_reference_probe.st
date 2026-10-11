"Fixed read-only serializer for the same Module collector used by connect.
 No retained edit token is created, rebound or inferred from these observations."
[:snapshotReader | [:component |
 component handleExceptionsIn: [
 | image answer out encode |
 image := snapshotReader value: component.
 answer := Dictionary new at: 'profile' put: 'native_module_inbound_snapshot_v1';
   at: 'component_oid' put: component getOID; at: 'image' put: image;
   at: 'complete' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'inverse_authorized' put: false; at: 'full_commit_resource_closure' put: false; yourself.
 out := WriteStream on: (String new: 4096).
 encode := [:x |
   x isString ifTrue: [
     out nextPutAll: '{"$s":['. x asCebraString doWithIndex: [:b :i |
       i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
   (x isKindOf: Dictionary) ifTrue: [| first |
     first := true. out nextPutAll: '{"$d":['.
     x keys asSortedCollection do: [:key | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: key. out nextPut: $,. encode value: (x at: key). out nextPut: $]].
     out nextPutAll: ']}'
   ] ifFalse: [x isCollection ifTrue: [| first |
     first := true. out nextPut: $[. x do: [:value | first ifFalse: [out nextPut: $,].
       first := false. encode value: value]. out nextPut: $]
   ] ifFalse: [component error: 'Unsupported Module reference probe value']]]]
 ].
 encode value: answer. out contents
 ] ifFail: [:error | 'BDE_MODULE_REFERENCE_ERROR: ', error messageText]
]]
