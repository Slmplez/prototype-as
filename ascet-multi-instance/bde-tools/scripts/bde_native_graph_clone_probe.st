[:bindingReader :cloneReader :projectionReader | [:component :action :checkpoint |
 component handleExceptionsIn: [
 | result out encode before after copied candidate table names rejected reject clones originalFields |
 (#('capture' 'audit' 'clone' 'material' 'material_with_projection') includes: action) ifFalse: [component error: 'Unknown private clone observation action'].
 action = 'capture' ifTrue: [
   checkpoint isNil ifFalse: [component error: 'Private clone capture cannot replace retained material'].
   result := bindingReader value: component value: 'capture'.
   (result isKindOf: Dictionary) ifFalse: [component error: result]. result
 ] ifFalse: [
   (#('clone' 'material' 'material_with_projection') includes: action) ifTrue: [
     before := projectionReader value: component value: (checkpoint at: 'diagram').
     (before startsWith: 'BDE_') ifTrue: [component error: before]
   ].
   result := cloneReader value: component value: checkpoint value: ((#('clone' 'material' 'material_with_projection') includes: action) ifTrue: ['clone'] ifFalse: ['inspect']).
   (result isKindOf: Dictionary) ifFalse: [component error: result].
   ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Native graph changed during clone inspection'].
   (#('clone' 'material' 'material_with_projection') includes: action) ifTrue: [
     after := projectionReader value: component value: (result at: 'diagram').
     after = before ifFalse: [component error: 'Private clone public field projection differs from original'].
     ((result at: 'verifyInitialGraph') value) ifFalse: [component error: 'Private clone fields changed during projection'].
     rejected := 0. reject := [:value |
       ((result at: 'verifyCorrespondence') value: value) ifTrue: [component error: 'Wrong private clone correspondence accepted'].
       rejected := rejected + 1].
     candidate := result copy. candidate at: 'root' put: (checkpoint at: 'diagram') topGraphicalHierarchy. reject value: candidate.
     candidate := result copy. candidate at: 'originalCheckpoint' put: checkpoint copy. reject value: candidate.
     candidate := result copy. candidate at: 'diagram' put: (checkpoint at: 'diagram'). reject value: candidate.
     table := (result at: 'nativeByKey') copy. names := table keys asArray.
     table at: names first put: ((checkpoint at: 'nativeByKey') at: names first).
     candidate := result copy. candidate at: 'nativeByKey' put: table. reject value: candidate.
     table := (result at: 'memo') copy. table removeKey: table keys asArray first.
     candidate := result copy. candidate at: 'memo' put: table. reject value: candidate.
     table := (result at: 'memo') copy. names := table keys asArray.
     table at: names first put: names first.
     candidate := result copy. candidate at: 'memo' put: table. reject value: candidate.
     originalFields := projectionReader value: component value: (checkpoint at: 'diagram').
     originalFields = before ifFalse: [component error: 'Original public fields changed during private clone'].
     ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Original native bindings changed during private clone'].
     clones := (result at: 'nativeByKey') size.
     result := result copy.
     (#('material' 'material_with_projection') includes: action) ifFalse: [
       #('root' 'memo' 'nativeByKey' 'originalCheckpoint' 'diagram' 'verifyInitialGraph' 'verifyCorrespondence')
         do: [:name | result removeKey: name]].
     result at: 'correspondence_negatives' put: rejected;
       at: 'cloned_keyed_members' put: clones; at: 'initial_graph_fields_match' put: true;
       at: 'public_projection_matches' put: true; at: 'original_unchanged' put: true;
       at: 'model_store_calls' put: 0; at: 'clone_kept_private' put: true
   ].
   (#('material' 'material_with_projection') includes: action) ifTrue: [
     action = 'material_with_projection' ifTrue: [result at: 'original_projection_json' put: before]. result
   ] ifFalse: [
   out := WriteStream on: String new.
   encode := [:value |
     value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
     value isString ifTrue: [out nextPutAll: '{"$s":['. value asCebraString doWithIndex: [:byte :index |
       index > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString]. out nextPutAll: ']}'] ifFalse: [
     ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
     (value isKindOf: Dictionary) ifTrue: [out nextPutAll: '{"$d":['.
       value keys asSortedCollection doWithIndex: [:key :index | index > 1 ifTrue: [out nextPut: $,].
         out nextPut: $[. encode value: key. out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}']
       ifFalse: [value isCollection ifFalse: [component error: 'Unsupported private clone inspection field'].
         out nextPut: $[. value doWithIndex: [:entry :index | index > 1 ifTrue: [out nextPut: $,]. encode value: entry]. out nextPut: $]]]]].
     out position > 2097152 ifTrue: [component error: 'Private clone inspection byte bound exceeded']
   ]. encode value: result. out contents]
 ]
 ] ifFail: [:error | 'BDE_GRAPH_CLONE_PROBE_ERROR: ', error messageText]
]]
