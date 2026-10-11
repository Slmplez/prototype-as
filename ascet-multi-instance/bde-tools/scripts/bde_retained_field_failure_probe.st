"Fixed readonly diagnostic. Never invokes the structural reader or rebuilds its scope."
[:component :token |
 component handleExceptionsIn: [
 | record root diagram native material source fresh point describe routes out current |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [
   #('set_literal' 'set_comment' 'move_node' 'set_edge_route') includes: (record at: 'operation')]]])
   ifFalse: [component error: 'Exact retained ordinary Main field failure required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated retained diagnostic required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. native := record at: 'fieldNativeBefore'.
 ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification]])
   ifFalse: [component error: 'Retained scope identity expired; no rebinding'].
 material := record at: 'fieldSourceMaterialBefore'.
 source := diagram specification specSourceInternalOrNil.
 source == (material at: 'sourceRoot') ifFalse: [component error: 'Original source root identity expired'].
 point := [:p | Array with: p x with: p y].
 describe := [:edge | | graph |
   graph := edge diagramElement basicGraphObject.
   Dictionary new at: 'native_id' put: edge diagramElement identifier;
     at: 'native_class' put: edge diagramElement class name asString;
     at: 'source_owner' put: edge getOutputPin getBlockDiagramElement identifier;
     at: 'source_pin' put: edge getOutputPin diagramElement identifier;
     at: 'target_owner' put: edge getInputPin getBlockDiagramElement identifier;
     at: 'target_pin' put: edge getInputPin diagramElement identifier;
     at: 'route' put: (edge getAllConnectionPoints collect: [:p | point value: p]) asArray;
     at: 'storage' put: (graph storageCornerPoints collect: [:p | point value: p]) asArray;
     at: 'corners' put: (graph cornerPoints collect: [:p | point value: p]) asArray;
     at: 'raster_route' put: (edge getAllConnectionPoints collect: [:p |
       point value: (SGDefaultPaneCtrl ascetDefaultRaster rasterPoint: p)]) asArray; yourself
 ].
 routes := diagram getAllDiagramConnections collect: [:edge | describe value: edge].
 fresh := component getDiagram: 'Main'.
 fresh specification == diagram specification ifFalse: [component error: 'Fresh specification differs'].
 current := (native at: 'captureImages') value: (native at: 'snapshots') keys.
 out := Dictionary new at: 'profile' put: 'retained_field_failure_probe_v1';
   at: 'native_token' put: token; at: 'native_state' put: (record at: 'state');
   at: 'operation' put: (record at: 'operation'); at: 'component_oid' put: component getOID;
   at: 'record_keys' put: record keys asSortedCollection asArray;
   at: 'generation' put: (root at: 'generation'); at: 'issued_generation' put: (root at: 'issuedGeneration');
   at: 'counter' put: (root at: 'counter'); at: 'identity_count' put: (root at: 'ids') size;
   at: 'checkpoint_present' put: (root includesKey: 'checkpoint');
   at: 'retained_routes' put: routes asArray;
   at: 'fresh_routes' put: (fresh getAllDiagramConnections collect: [:edge | describe value: edge]) asArray;
   at: 'original_native_unchanged' put: (native at: 'verify') value;
   at: 'original_source_images_unchanged' put: (material at: 'verify') value;
   at: 'source_root_preserved' put: true;
   at: 'current_native' put: ((native at: 'imageFor') value: current);
   at: 'field_execution' put: ((record at: 'fieldStatusReader') value: component value: record value: token);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 (record at: 'operation') = 'set_edge_route' ifTrue: [out
   at: 'old_storage' put: ((record at: 'oldRoute') collect: [:p | point value: p]) asArray;
   at: 'requested_storage' put: ((record at: 'newRoute') collect: [:p | point value: p]) asArray].
 (native at: 'encode') value: out
 ] ifFail: [:error | 'BDE_RETAINED_FIELD_FAILURE_PROBE_ERROR: ', error messageText]
]
