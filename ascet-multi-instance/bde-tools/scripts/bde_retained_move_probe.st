[:component :token |
 component handleExceptionsIn: [
 | edits source roots root key diagram target point routes out classStudies material bindings rootMatches describeFrame verifyBlock frameRows checkpointFrame candidates afterSource |
 edits := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [component error: 'Retained edit registry unavailable'].
 source := edits at: token ifAbsent: [component error: 'Exact retained edit unavailable'].
 ((source at: 'owner') == component item and: [(source at: 'component') = component getOID and: [
   (source at: 'diagramName') = 'Main' and: [(source at: 'operation') = 'move_node' and: [
   (source at: 'state') = 'started']]]]) ifFalse: [component error: 'Exact unresolved Main move required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Disposable retained inspection required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [component error: 'Structural registry unavailable'].
 key := component getOID, '/Main'. root := roots at: key.
 (root at: 'owner') == component item ifFalse: [component error: 'Current root owner mismatch'].
 diagram := source at: 'diagram'. target := source at: 'target'.
 target diagramElement class name asString = 'SGLiteralGO'
   ifFalse: [component error: 'Retained literal move required'].
 diagram specification == (root at: 'specification') ifFalse: [component error: 'Retained specification expired'].
 point := [:value | Array with: value x with: value y].
 routes := (source at: 'oldRoutes') collect: [:saved |
   | matches edge g row |
   g := saved first.
   matches := diagram getAllDiagramConnections select: [:candidate | candidate diagramElement basicGraphObject == g].
   matches size = 1 ifFalse: [component error: 'Retained route binding missing or ambiguous'].
   edge := matches first.
   row := Dictionary new at: 'source' put: edge getOutputPin diagramElement identifier;
     at: 'target' put: edge getInputPin diagramElement identifier;
     at: 'old_storage' put: ((saved at: 2) collect: [:p | point value: p]) asArray;
     at: 'old_corners' put: ((saved at: 3) collect: [:p | point value: p]) asArray;
     at: 'current_storage' put: (g storageCornerPoints collect: [:p | point value: p]) asArray;
     at: 'current_corners' put: (g cornerPoints collect: [:p | point value: p]) asArray;
     at: 'wrapper_attached' put: (edge diagramElement manager children includes: edge diagramElement); yourself.
   row
 ].
 classStudies := Smalltalk at: #DogeBDEClassMaterializeV1 ifAbsent: [component error: 'Class caller material unavailable'].
 material := classStudies at: key ifAbsent: [component error: 'Exact Class caller material unavailable'].
 (material at: 'state') = 'applied' ifFalse: [component error: 'Applied Class caller checkpoint required'].
 bindings := material at: 'afterBindings'.
 (bindings at: 'diagram') == diagram ifFalse: [component error: 'Class after and move retained diagrams differ'].
 rootMatches := (root at: 'diagram') == diagram.
 describeFrame := [:frame |
   Dictionary new at: 'native_class' put: frame class name asString;
     at: 'field_names' put: frame class allInstVarNames asArray;
     at: 'field_classes' put: ((1 to: frame class instSize) collect: [:index |
       (frame instVarAt: index) class name asString]) asArray;
     at: 'indexed_size' put: frame basicSize; yourself
 ].
 verifyBlock := bindings at: 'verifyCurrent'.
 frameRows := OrderedCollection new. frameRows add: (describeFrame value: verifyBlock).
 (verifyBlock respondsTo: #parent) ifTrue: [frameRows add: (describeFrame value: verifyBlock parent)].
 checkpointFrame := verifyBlock parent. afterSource := material at: 'afterSource'.
 candidates := OrderedCollection new.
 1 to: checkpointFrame basicSize do: [:index |
   | value |
   value := checkpointFrame basicAt: index.
   (value class == afterSource class and: [(root at: 'sameSource') value: value value: afterSource]) ifTrue: [
     candidates add: (Dictionary new at: 'index' put: index;
       at: 'following_generation' put: (checkpointFrame basicAt: index + 1);
       at: 'following_counter' put: (checkpointFrame basicAt: index + 2); yourself)
   ]
 ].
 out := Dictionary new at: 'profile' put: 'retained_unknown_move_probe_v1';
   at: 'source_token' put: token; at: 'native_state' put: (source at: 'state');
   at: 'target' put: target diagramElement identifier;
   at: 'old_anchor' put: (point value: (source at: 'oldAnchor'));
   at: 'requested_anchor' put: (point value: (source at: 'value'));
   at: 'retained_anchor' put: (point value: target diagramElement getPosition);
   at: 'retained_target_attached' put: (diagram getAllDiagramElements anySatisfy: [:node | node diagramElement == target diagramElement]);
   at: 'root_matches_retained_diagram' put: rootMatches;
   at: 'class_after_native_bindings_match' put: (bindings at: 'verify') value;
   at: 'class_after_current_bindings_match' put: (bindings at: 'verifyCurrent') value;
   at: 'retained_generation' put: (bindings at: 'generation');
   at: 'current_generation' put: (root at: 'generation');
   at: 'edit_registry_size' put: edits size;
   at: 'verification_frame_shapes' put: frameRows asArray;
   at: 'captured_checkpoint_candidates' put: candidates asArray;
   at: 'routes' put: routes asArray; at: 'model_setters_called' put: 0; yourself.
 (root at: 'encodeObservation') value: out
 ] ifFail: [:error | 'BDE_RETAINED_MOVE_PROBE_ERROR: ', error messageText]
]
