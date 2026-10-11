[:component :roots |
 component handleExceptionsIn: [
 | snapshots terminalSnapshots tokens afterTokens kindFor isDictionary capture describe sameOrder sameContents image diff verify verifyImages freezeTerminalSubset encode out rows makeRows diagnostics |
 snapshots := IdentityDictionary new. tokens := IdentityDictionary new.
 isDictionary := [:value | #('Dictionary' 'IdentityDictionary') includes: value class name asString].
 kindFor := [:value | | name | name := value class name asString.
   (value isNil or: [value isNumber or: [(value isKindOf: Symbol) or: [value == true or: [value == false]]]])
     ifTrue: ['constant'] ifFalse: [
   (value == component item or: [((value isKindOf: DBBaseObject) or: [value isKindOf: DBProxy]) or: [
     (value isKindOf: SGDBObject) or: [value isKindOf: SGAliasMethod]]]) ifTrue: ['boundary'] ifFalse: [
   (#('CgFont' 'CgDeviceIndependentImage' 'EtasIcon') includes: name) ifTrue: ['boundary'] ifFalse: [
   (value isString or: [value isKindOf: ByteArray]) ifTrue: ['value'] ifFalse: [
   (#('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: name)
     ifTrue: ['collection'] ifFalse: [
   ((value isKindOf: RBGraphicObject) or: [(value isKindOf: RBGraphicObjectCollection) or: [
     #('Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor' 'RBConnectionPointBranch') includes: name]])
     ifTrue: ['fields'] ifFalse: [component error: ('Unsupported CURRENT class ', name)]]]]]]
 ].
 capture := [:anchors :images :bindings | | walk |
 walk := [:value :depth | | kind saved |
   depth > 128 ifTrue: [component error: 'CURRENT graph depth bound exceeded'].
   kind := kindFor value: value.
   kind = 'constant' ifFalse: [bindings at: value ifAbsentPut: [
     bindings size >= 100000 ifTrue: [component error: 'CURRENT token bound exceeded'].
     'v', (bindings size + 1) printString].
     (images includesKey: value) ifFalse: [
       kind = 'boundary' ifTrue: [saved := nil] ifFalse: [
       kind = 'value' ifTrue: [saved := value copy] ifFalse: [
       kind = 'collection' ifTrue: [
         value size > 100000 ifTrue: [component error: 'CURRENT collection bound exceeded'].
         saved := value copy
       ] ifFalse: [
         value class isVariable ifTrue: [component error: 'Unsupported indexed CURRENT graphical object'].
         saved := ((1 to: value class instSize) collect: [:i | value instVarAt: i]) asArray]]].
       images at: value put: (Array with: kind with: saved).
       kind = 'collection' ifTrue: [
         (isDictionary value: value) ifTrue: [value keysAndValuesDo: [:key :member |
           walk value: key value: depth + 1. walk value: member value: depth + 1]]
         ifFalse: [value do: [:member | walk value: member value: depth + 1]]
       ].
       kind = 'fields' ifTrue: [saved do: [:member | walk value: member value: depth + 1]]
     ]
   ]
 ]. anchors do: [:root | walk value: root value: 0]
 ].
 roots size > 100000 ifTrue: [component error: 'CURRENT root bound exceeded'].
 capture value: roots value: snapshots value: tokens.
 afterTokens := tokens copy.
 describe := [:value :bindings | | kind | kind := kindFor value: value.
   kind = 'constant' ifTrue: [
     Dictionary new at: 'class' put: value class name asString;
       at: 'value' put: ((value isKindOf: Float) ifTrue: [value asCebraString asArray] ifFalse: [value printString]); yourself
   ] ifFalse: [Dictionary new at: 'class' put: value class name asString;
       at: 'ref' put: (bindings at: value ifAbsent: [component error: 'CURRENT introduced an unbound object']); yourself]
 ].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 sameContents := [:left :right | left size = right size and: [
   (isDictionary value: left) ifTrue: [(right keys anySatisfy: [:key |
     ((left keys anySatisfy: [:savedKey | savedKey == key]) and: [(left at: key) == (right at: key)]) not]) not]
   ifFalse: [((left isKindOf: Set) or: [left isKindOf: IdentitySet]) ifTrue: [(right anySatisfy: [:member |
     (left anySatisfy: [:value | value == member]) not]) not]
   ifFalse: [sameOrder value: left value: right]]]].
 image := [:object :entry :bindings | | kind saved |
   kind := entry first. saved := entry last.
   kind = 'boundary' ifTrue: [nil] ifFalse: [
   kind = 'value' ifTrue: [saved asCebraString asArray] ifFalse: [
   kind = 'fields' ifTrue: [saved collect: [:member | describe value: member value: bindings]] ifFalse: [
     (isDictionary value: object) ifTrue: [saved keys collect: [:key |
       Array with: (describe value: key value: bindings) with: (describe value: (saved at: key) value: bindings)]]
     ifFalse: [saved collect: [:member | describe value: member value: bindings]]]]]
 ].
 makeRows := [:objects :images :bindings | objects collect: [:object | | entry |
   entry := images at: object.
   Dictionary new at: 'ref' put: (bindings at: object); at: 'class' put: object class name asString;
     at: 'kind' put: entry first;
     at: 'value' put: (image value: object value: entry value: bindings); yourself]].
 diagnostics := [:images :bindings | Dictionary new
   at: 'profile' put: 'native_graphical_fields_v1'; at: 'complete' put: true;
   at: 'objects' put: (images keys collect: [:object | | entry names |
     entry := images at: object. names := #().
     entry first = 'fields' ifTrue: [
       names := (object class allInstVarNames collect: [:name | name asString]) asArray.
       names size = entry last size ifFalse: [component error: 'Native field schema size differs']].
     Dictionary new at: 'ref' put: (bindings at: object); at: 'class' put: object class name asString;
       at: 'kind' put: entry first; at: 'field_names' put: names; yourself]); yourself].
 diff := [| differences afterImages |
   differences := OrderedCollection new.
   "Capture new references separately; the immutable CURRENT image remains intact."
   afterImages := IdentityDictionary new.
   capture value: snapshots keys value: afterImages value: afterTokens.
   snapshots keysAndValuesDo: [:object :entry | | kind saved current |
     kind := entry first. saved := entry last.
     kind = 'fields' ifTrue: [1 to: saved size do: [:i |
       current := object instVarAt: i.
       (saved at: i) ~~ current ifTrue: [differences add: (Dictionary new
         at: 'object' put: (tokens at: object); at: 'kind' put: kind; at: 'index' put: i;
         at: 'before' put: (describe value: (saved at: i) value: tokens);
         at: 'after' put: (describe value: current value: afterTokens); yourself)]]
     ] ifFalse: [kind = 'boundary' ifFalse: [
       ((kind = 'value' ifTrue: [object = saved] ifFalse: [sameContents value: object value: saved]) not)
         ifTrue: [differences add: (Dictionary new at: 'object' put: (tokens at: object); at: 'kind' put: kind;
           at: 'before' put: (image value: object value: entry value: tokens);
           at: 'after' put: (image value: object value: (afterImages at: object) value: afterTokens); yourself)]
     ]]
   ]. terminalSnapshots := afterImages.
   Dictionary new at: 'profile' put: 'native_graphical_diff_v1'; at: 'complete' put: true;
     at: 'changes' put: differences;
     at: 'new_objects' put: (makeRows value: (afterImages keys reject: [:object | snapshots includesKey: object])
       value: afterImages value: afterTokens);
     at: 'after_object_count' put: afterImages size; yourself
 ].
 verifyImages := [:images | | matches | matches := true.
   images keysAndValuesDo: [:object :entry | | kind saved |
     kind := entry first. saved := entry last.
     kind = 'fields' ifTrue: [matches := matches and: [
       ((1 to: saved size) anySatisfy: [:i | (object instVarAt: i) ~~ (saved at: i)]) not]]
     ifFalse: [kind = 'boundary' ifFalse: [matches := matches and: [
       kind = 'value' ifTrue: [object = saved] ifFalse: [sameContents value: object value: saved]]]]
   ]. matches
 ].
 verify := [verifyImages value: snapshots].
 freezeTerminalSubset := [:anchors :boundaries | | selected walk |
   terminalSnapshots isNil ifTrue: [component error: 'Terminal graphical image unavailable'].
   (anchors isEmpty or: [anchors size > 100000 or: [boundaries size > 100000]])
     ifTrue: [component error: 'Terminal subset anchor bound exceeded'].
   (anchors anySatisfy: [:anchor | boundaries anySatisfy: [:boundary | boundary == anchor]])
     ifTrue: [component error: 'Terminal subset root cannot be a boundary'].
   selected := IdentityDictionary new.
   walk := [:object :depth | | entry kind saved |
     depth > 128 ifTrue: [component error: 'Terminal subset depth bound exceeded'].
     ((kindFor value: object) = 'constant' or: [boundaries anySatisfy: [:boundary | boundary == object]])
       ifFalse: [(selected includesKey: object) ifFalse: [
         entry := terminalSnapshots at: object ifAbsent: [component error: 'Terminal subset material unavailable'].
         selected size >= 100000 ifTrue: [component error: 'Terminal subset object bound exceeded'].
         selected at: object put: entry. kind := entry first. saved := entry last.
         kind = 'fields' ifTrue: [saved do: [:member | walk value: member value: depth + 1]].
         kind = 'collection' ifTrue: [
           (isDictionary value: object) ifTrue: [saved keysAndValuesDo: [:key :member |
             walk value: key value: depth + 1. walk value: member value: depth + 1]]
           ifFalse: [saved do: [:member | walk value: member value: depth + 1]]]
       ]]
   ].
   "Select from the frozen terminal image, never from potentially altered objects."
   anchors do: [:anchor | walk value: anchor value: 0].
   Dictionary new at: 'snapshots' put: selected; at: 'objectCount' put: selected size;
     at: 'verify' put: [verifyImages value: selected]; yourself
 ].
 rows := makeRows value: snapshots keys value: snapshots value: tokens.
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [out nextPutAll: '{"$s":['.
     value asCebraString doWithIndex: [:byte :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString]. out nextPutAll: ']}'] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [out nextPutAll: '{"$d":['.
     value keys asSortedCollection doWithIndex: [:key :i | i > 1 ifTrue: [out nextPut: $,].
       out nextPut: $[. encode value: key. out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}']
   ifFalse: [out nextPut: $[. value asArray doWithIndex: [:member :i | i > 1 ifTrue: [out nextPut: $,]. encode value: member]. out nextPut: $]]]]]
 ].
 encode value: (Dictionary new at: 'profile' put: 'native_graphical_current_v1';
   at: 'complete' put: true; at: 'objects' put: rows; yourself).
 out position > 33554432 ifTrue: [component error: 'CURRENT descriptor byte bound exceeded'].
 Dictionary new at: 'profile' put: 'native_graphical_current_v1'; at: 'descriptor' put: out contents;
   at: 'tokens' put: tokens; at: 'snapshots' put: snapshots; at: 'verify' put: verify;
   at: 'captureImages' put: [:anchors | | images | images := IdentityDictionary new.
     capture value: anchors value: images value: afterTokens. images];
   at: 'verifyImages' put: verifyImages;
   at: 'originalImage' put: (Dictionary new at: 'profile' put: 'native_graphical_current_v1';
     at: 'complete' put: true; at: 'objects' put: rows; yourself);
   at: 'imageFor' put: [:images | Dictionary new at: 'profile' put: 'native_graphical_current_v1';
     at: 'complete' put: true; at: 'objects' put: (makeRows value: images keys value: images value: afterTokens); yourself];
   at: 'diagnosticsFor' put: [:images | diagnostics value: images value: afterTokens];
   at: 'fieldDiagnostics' put: [diagnostics value: snapshots value: tokens];
   at: 'terminalSnapshots' put: [terminalSnapshots];
   at: 'terminalImage' put: [terminalSnapshots isNil ifTrue: [component error: 'Native terminal image unavailable'].
     Dictionary new at: 'profile' put: 'native_graphical_current_v1'; at: 'complete' put: true;
       at: 'objects' put: (makeRows value: terminalSnapshots keys value: terminalSnapshots value: afterTokens); yourself];
   at: 'terminalFieldDiagnostics' put: [terminalSnapshots isNil ifTrue: [component error: 'Native terminal schema unavailable'].
     diagnostics value: terminalSnapshots value: afterTokens];
   at: 'verifyAfter' put: [terminalSnapshots notNil and: [verifyImages value: terminalSnapshots]];
   at: 'freezeTerminalSubset' put: freezeTerminalSubset;
   at: 'diff' put: diff; at: 'encode' put: [:value | out := WriteStream on: String new. encode value: value.
     out position > 33554432 ifTrue: [component error: 'CURRENT encoded byte bound exceeded']. out contents]; yourself
 ] ifFail: [:error | 'BDE_GRAPH_CURRENT_ERROR: ', error messageText]
]
