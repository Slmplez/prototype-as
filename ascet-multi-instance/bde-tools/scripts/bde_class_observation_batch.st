[:graphReader :structureReader :configurationReader | [:component :target :mode |
 component handleExceptionsIn: [
 | pieces text checked checkedText add cached cachedError fresh tree seen walk out |
 (#('caller' 'scopes' 'configuration') includes: mode)
   ifFalse: [component error: 'Unsupported fixed observation batch mode'].
 pieces := OrderedCollection new.
 text := [:value |
   | stream |
   value isString ifFalse: [component error: 'Observation batch string required'].
   stream := WriteStream on: String new. stream nextPutAll: '{"$s":['.
   value asCebraString doWithIndex: [:byte :index |
     index > 1 ifTrue: [stream nextPut: $,]. stream nextPutAll: byte printString].
   stream nextPutAll: ']}'. stream contents
 ].
 checked := [:value |
   (value isNil or: [value isKindOf: EtasAPIError])
     ifTrue: [component error: 'Observation batch public wrapper unavailable'].
   value
 ].
 checkedText := [:value |
   value isString ifFalse: [component error: 'Observation batch fixed reader did not return text'].
   (value startsWith: 'BDE_') ifTrue: [component error: value]. value
 ].
 add := [:key :value | pieces add: (Array with: key with: value)].
 mode = 'caller' ifTrue: [
   cached := structureReader value: component value: 'Main' value: #().
   cachedError := nil.
   (cached startsWith: 'BDE_') ifTrue: [
     ((cached includesSubstring: 'BDE_SHARED_INTERFACE_CHANGED:') or: [
       cached includesSubstring: 'BDE_UNSTORED_PIN:'])
       ifFalse: [component error: cached].
     cachedError := cached. cached := 'null'
   ].
   fresh := checked value: (component getDiagram: 'Main').
   add value: 'component' value: (text value: component getFolderPathName).
   add value: 'cached' value: cached.
   add value: 'cached_error' value: (cachedError isNil ifTrue: ['null'] ifFalse: [text value: cachedError]).
   add value: 'public_fresh' value: (checkedText value:
     (graphReader value: component value: fresh value: 'graph')).
   add value: 'public_retained' value: (checkedText value:
     (graphReader value: component value: (checked value: target) value: 'graph')).
   tree := checked value: (component getDiagram: 'Main').
   add value: 'public_tree' value: (checkedText value:
     (graphReader value: component value: tree value: 'tree'))
 ].
 mode = 'scopes' ifTrue: [
   tree := checked value: (component getDiagram: 'Main'). seen := Set new.
   walk := [:scope :name :depth |
     | elements |
     (depth > 16 or: [seen size >= 64])
       ifTrue: [component error: 'Observation batch hierarchy bound exceeded'].
     (seen includes: name) ifTrue: [component error: 'Duplicate observation batch scope'].
     seen add: name.
     elements := checked value: scope getAllDiagramElements.
     add value: name value: (checkedText value:
       (structureReader value: component value: name value: #())).
     elements do: [:node |
       node class name asString = 'EtasAPIBlockDiagramHierarchy' ifTrue: [
         walk value: node value: (name, '/h', node identifier printString) value: depth + 1
       ]
     ]
   ]. walk value: tree value: 'Main' value: 0
 ].
 mode = 'configuration' ifTrue: [
   add value: component getOID value: (checkedText value: (configurationReader value: component))
 ].
 out := WriteStream on: String new. out nextPutAll: '{"$d":['.
 pieces doWithIndex: [:piece :index |
   index > 1 ifTrue: [out nextPut: $,]. out nextPut: $[.
   out nextPutAll: (text value: piece first); nextPut: $,; nextPutAll: piece last; nextPut: $].
   out position > 33554432 ifTrue: [component error: 'Observation batch payload bound exceeded']
 ].
 out nextPutAll: ']}'. out contents
 ] ifFail: [:error | 'BDE_OBSERVATION_BATCH_ERROR: ', error messageText]
]]
