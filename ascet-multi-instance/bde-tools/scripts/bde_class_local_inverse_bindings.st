[:component :mode |
 component handleExceptionsIn: [
 | roots registry key diagram ids scopes seen objects managers refFor managerRef checked walk addRow addCollection bindCollection bindMember aliasKey encode out result checkpoint generation counter collections collectionKeys memberCount pinOwners edgeEndpoints nativeCheckpoint sameOrder checkCollections verifyNative owner specification savedIds nativeScopes scopeObjects hierarchyContents checkScopes scopeParents scopeParentWrappers checkParents collectionBindings memberKeys nativeByKey nodeBasics nodePorts checkCollectionBindings verifyKeyed keyedBaseline keyedNativeBaseline keyedCollectionBaseline |
 (#('registry' 'fresh' 'empty_ids' 'capture') includes: mode) ifFalse: [component error: 'Unknown binding observation mode'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [component error: 'Current structure registry unavailable'].
 key := component getOID, '/Main'.
 registry := roots at: key ifAbsent: [component error: 'Current owner registry unavailable'].
 (registry at: 'owner') == component item ifFalse: [component error: 'Current native owner binding changed'].
 generation := registry at: 'generation'. checkpoint := registry at: 'checkpoint'. counter := registry at: 'counter'.
 ids := mode = 'empty_ids' ifTrue: [IdentityDictionary new] ifFalse: [registry at: 'ids'].
 diagram := mode = 'fresh' ifTrue: [component getDiagram: 'Main'] ifFalse: [registry at: 'diagram'].
 diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary BDE bindings required'].
 diagram specification == (registry at: 'specification') ifFalse: [component error: 'Current specification binding changed'].
 ((registry at: 'sameSource') value: diagram specification specSourceInternalOrNil value: checkpoint)
   ifFalse: [component error: 'Current graphics source changed'].
 checked := [:v | (v isKindOf: EtasAPIError) ifTrue: [component error: v errorMessage]. v].
 managers := IdentityDictionary new. objects := IdentityDictionary new. scopes := OrderedCollection new.
 collections := OrderedCollection new. collectionKeys := IdentityDictionary new. memberCount := 0.
 pinOwners := OrderedCollection new. edgeEndpoints := OrderedCollection new.
 nativeScopes := Dictionary new. hierarchyContents := OrderedCollection new.
 scopeParents := Dictionary new. scopeParentWrappers := Dictionary new.
 collectionBindings := Dictionary new. memberKeys := IdentityDictionary new. nativeByKey := Dictionary new.
 nodeBasics := OrderedCollection new. nodePorts := OrderedCollection new.
 owner := component item. specification := diagram specification. savedIds := ids copy.
 refFor := [:native :prefix |
   | id ref number |
   id := native identifier.
   (id isInteger and: [id >= 0]) ifTrue: [prefix, id printString] ifFalse: [
     prefix = 'e' ifFalse: [component error: 'Stable native node/pin identifier required'].
     ref := ids at: native ifAbsent: [component error: 'BDE_EDGE_BINDING_UNAVAILABLE: exact native edge absent from registry'].
     ((ref isString and: [ref size >= 2]) and: [ref first = $e])
       ifFalse: [component error: 'Invalid registered edge identity'].
     number := (ref copyFrom: 2 to: ref size) asNumber.
     (number isInteger and: [number > 0 and: [ref = ('e', number printString)]])
       ifFalse: [component error: 'Noncanonical registered edge identity'].
     ref
   ]
 ].
 managerRef := [:manager | managers at: manager ifAbsentPut: [
   managers size >= 16384 ifTrue: [component error: 'Native manager binding bound exceeded'].
   'manager', (managers size + 1) printString]].
 aliasKey := [:alias | | aliasStream digits |
   alias isNil ifTrue: ['nil'] ifFalse: [alias isString ifTrue: ['string:', alias] ifFalse: [
     (alias isKindOf: ByteArray) ifFalse: [component error: ('Unsupported exact native method alias: ', alias class name asString)].
     aliasStream := WriteStream on: String new. digits := '0123456789abcdef'.
     alias do: [:byte | aliasStream nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
     'bytes:', aliasStream contents]]
 ].
 bindMember := [:native :name |
   (nativeByKey includesKey: name) ifTrue: [
     (nativeByKey at: name) == native ifFalse: [component error: 'Ambiguous keyed native member']
   ] ifFalse: [
     nativeByKey size >= 100000 ifTrue: [component error: 'Keyed native member bound exceeded'].
     (memberKeys includesKey: native) ifTrue: [component error: 'Native member has multiple scoped keys'].
     nativeByKey at: name put: native. memberKeys at: native put: name]
 ].
 addCollection := [:manager :collection |
   | members |
   (manager respondsTo: collection asSymbol) ifFalse: [component error: 'Unsupported native collection selector'].
   managerRef value: manager. members := manager perform: collection asSymbol.
   ((collectionKeys at: manager ifAbsentPut: [Set new]) includes: collection) ifFalse: [
     | order links unique |
     (collectionKeys at: manager) add: collection.
     order := members asArray copy. links := OrderedCollection new. unique := IdentityDictionary new.
     memberCount := memberCount + order size.
     (collections size >= 16384 or: [memberCount > 100000]) ifTrue: [component error: 'Complete native collection bound exceeded'].
     order do: [:member |
       (unique includesKey: member) ifTrue: [component error: 'Duplicate native parent collection member'].
       unique at: member put: true.
       (member respondsTo: #manager) ifFalse: [component error: 'Unsupported native collection member link'].
       links add: (Array with: member with: member manager)
     ].
     collections add: (Dictionary new at: 'manager' put: manager; at: 'selector' put: collection asSymbol;
       at: 'collection' put: members; at: 'order' put: order; at: 'links' put: links asArray; yourself)
   ]. members
 ].
 bindCollection := [:manager :selector :binding | | matches entry name slot |
   name := binding first. slot := binding last.
   addCollection value: manager value: selector asString.
   matches := collections select: [:row | (row at: 'manager') == manager and: [(row at: 'selector') = selector]].
   matches size = 1 ifFalse: [component error: 'Exact native collection binding unavailable'].
   entry := matches first.
   (collectionBindings includesKey: name) ifTrue: [
     (collectionBindings at: name) == entry ifFalse: [component error: 'Ambiguous keyed native parent']
   ] ifFalse: [
     collectionBindings size >= 16384 ifTrue: [component error: 'Keyed native collection bound exceeded'].
     entry at: 'bindingKey' put: name; at: 'slot' put: slot.
     collectionBindings at: name put: entry]
 ].
 addRow := [:rows :native :kind |
   | ref row manager members collection occurrences token |
   objects size >= 100000 ifTrue: [component error: 'Native object binding bound exceeded'].
   (objects includesKey: native) ifTrue: [component error: 'Repeated native graphical object occurrence'].
   ref := refFor value: native value: (kind = 'pin' ifTrue: ['p'] ifFalse: [kind = 'edge' ifTrue: ['e'] ifFalse: ['n']]).
   (seen includes: ref) ifTrue: [component error: 'Ambiguous native ref within scope'].
   seen add: ref. objects at: native put: ref.
   scopeObjects at: ref put: native.
   manager := native manager. token := managerRef value: manager.
   collection := kind = 'pin' ifTrue: ['interfaceGOs'] ifFalse: ['children'].
   members := addCollection value: manager value: collection.
   occurrences := 0. members do: [:member | member == native ifTrue: [occurrences := occurrences + 1]].
   occurrences = 1 ifFalse: [component error: 'Native parent membership missing or ambiguous'].
   row := Dictionary new at: 'ref' put: ref; at: 'kind' put: kind;
     at: 'native_class' put: native class name asString; at: 'native_id' put: native identifier;
     at: 'manager' put: token; at: 'manager_class' put: manager class name asString;
     at: 'collection' put: collection; at: 'index' put: (members indexOf: native);
     at: 'collection_size' put: members size; at: 'native_membership_matches' put: true; yourself.
   rows add: row. row
 ].
 walk := [:scope :name :depth |
   | rows nodes localPins parent wrapper |
   (depth > 16 or: [scopes size >= 64]) ifTrue: [component error: 'Native binding scope bound exceeded'].
   rows := OrderedCollection new. seen := Set new. localPins := IdentityDictionary new.
   (nativeScopes includesKey: name) ifTrue: [component error: 'Duplicate exact native scope'].
   scopeObjects := Dictionary new. nativeScopes at: name put: scopeObjects.
   wrapper := scope == diagram ifTrue: [diagram topGraphicalHierarchy] ifFalse: [scope diagramElement].
   parent := wrapper contents.
   scopeParentWrappers at: name put: wrapper. scopeParents at: name put: parent.
   bindCollection value: parent value: #children value: (Array with: (name, '|children')
     with: (Dictionary new at: 'scope' put: name; at: 'role' put: 'scope_children';
       at: 'ownerKey' put: (scope == diagram ifTrue: [nil] ifFalse: [memberKeys at: wrapper]);
       at: 'owner' put: wrapper; yourself)).
   nodes := checked value: scope getAllDiagramElements.
   nodes do: [:node |
     | native row pins basic ports portKey pinKey |
     native := node diagramElement. row := addRow value: rows value: native value: 'node'.
     bindMember value: native value: (name, '/', (row at: 'ref')).
     basic := native basicGraphObject. nodeBasics add: (Array with: native with: basic).
     (basic respondsTo: #interfaceGOs) ifTrue: [
       bindCollection value: basic value: #interfaceGOs value: (Array with: (name, '/', (row at: 'ref'), '|ports')
         with: (Dictionary new at: 'scope' put: name; at: 'role' put: 'node_ports';
           at: 'ownerKey' put: (name, '/', (row at: 'ref')); at: 'owner' put: native; yourself)).
       ports := basic interfaceGOs.
       ports do: [:port |
         (port isKindOf: SGMethodInterfacePortGO) ifFalse: [component error: 'Unsupported keyed native port kind'].
         port manager == basic ifFalse: [component error: 'Native method port owner changed'].
         portKey := name, '/', (row at: 'ref'), '/port/', (aliasKey value: port methodAliasName).
         bindMember value: port value: portKey.
         bindCollection value: port value: #interfaceGOs value: (Array with: (portKey, '|pins')
           with: (Dictionary new at: 'scope' put: name; at: 'role' put: 'port_pins';
             at: 'ownerKey' put: portKey; at: 'owner' put: port; yourself)).
         port interfaceGOs do: [:member |
           (member isKindOf: SGBlockInterfaceElementGO) ifFalse: [component error: 'Unsupported native interface member kind'].
           member manager == port ifFalse: [component error: 'Native interface member owner changed'].
           bindMember value: member value: (name, '/', (refFor value: member value: 'p'))
         ].
         nodePorts add: (Array with: port with: basic with: port methodAliasName copy)
       ]
     ].
     pins := OrderedCollection new.
     (checked value: node getAllPins) do: [:pin |
       | entry |
       entry := addRow value: rows value: pin diagramElement value: 'pin'.
       pinKey := name, '/', (entry at: 'ref'). bindMember value: pin diagramElement value: pinKey.
       localPins at: pin diagramElement put: true.
       (checked value: pin getBlockDiagramElement) diagramElement == native
         ifFalse: [component error: 'Native pin owner identity changed'].
       pinOwners add: (Array with: pin with: native).
       entry at: 'owner' put: (row at: 'ref'); at: 'native_owner_matches' put: true;
         at: 'input' put: (checked value: pin isInputPin); at: 'output' put: (checked value: pin isOutputPin).
       pins add: (entry at: 'ref')
     ]. row at: 'pins' put: pins asArray
   ].
   (checked value: scope getAllDiagramConnections) do: [:edge |
     | row source target endpoints |
     row := addRow value: rows value: edge diagramElement value: 'edge'.
     bindMember value: edge diagramElement value: (name, '/', (row at: 'ref')).
     source := (checked value: edge getOutputPin) diagramElement.
     target := (checked value: edge getInputPin) diagramElement.
     ((localPins includesKey: source) and: [localPins includesKey: target])
       ifFalse: [component error: 'Native edge endpoint outside collected graph'].
     endpoints := edge diagramElement connectionPoints.
     (endpoints size = 2 and: [
       (endpoints includes: source getExternalConnectorGO connectionPoint) and: [
       endpoints includes: target getExternalConnectorGO connectionPoint]])
       ifFalse: [component error: 'Native edge connection-point identity changed'].
     edgeEndpoints add: (Array with: edge with: source with: target with: endpoints asArray copy).
     row at: 'source' put: (refFor value: source value: 'p');
       at: 'target' put: (refFor value: target value: 'p'); at: 'native_endpoint_matches' put: true
   ].
   (checked value: scope getAllDiagramComments) do: [:comment |
     | entry |
     entry := addRow value: rows value: comment diagramElement value: 'node'. entry at: 'pins' put: #().
     bindMember value: comment diagramElement value: (name, '/', (entry at: 'ref'))
   ].
   scopes add: (Dictionary new at: 'diagram' put: name; at: 'entries' put: rows asArray; yourself).
   nodes do: [:node | node isBlockDiagramHierarchy ifTrue: [
     hierarchyContents add: (Array with: node diagramElement with: node diagramElement contents).
     walk value: node value: (name, '/h', node diagramElement identifier printString) value: depth + 1]]
 ].
 walk value: diagram value: 'Main' value: 0.
 collectionBindings size = collections size ifFalse: [component error: 'Unkeyed native parent collection'].
 keyedBaseline := Dictionary new.
 collectionBindings keysAndValuesDo: [:name :entry | | slot |
   slot := entry at: 'slot'.
   (entry at: 'order') do: [:member |
     (memberKeys includesKey: member) ifFalse: [component error: 'Unkeyed native parent member']].
   keyedBaseline at: name put: (Array with: entry with: slot copy)
 ].
 nativeByKey size = memberCount ifFalse: [component error: 'Native keyed member coverage differs'].
 keyedNativeBaseline := nativeByKey copy. keyedCollectionBaseline := collectionBindings copy.
 ((roots at: key) == registry and: [(registry at: 'generation') = generation and: [
   (registry at: 'checkpoint') == checkpoint and: [(registry at: 'counter') = counter and: [
   (registry at: 'sameSource') value: diagram specification specSourceInternalOrNil value: checkpoint]]]])
   ifFalse: [component error: 'Native bindings changed during observation'].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 checkCollections := [:expected |
   expected size = collections size and: [((1 to: expected size) anySatisfy: [:i |
     | entry baseline current |
     entry := expected at: i. baseline := collections at: i.
     ((entry at: 'manager') == (baseline at: 'manager') and: [
       (entry at: 'selector') = (baseline at: 'selector') and: [
       current := (entry at: 'manager') perform: (entry at: 'selector').
       current == (entry at: 'collection') and: [
         (sameOrder value: current value: (entry at: 'order')) and: [
         (entry at: 'links') size = current size and: [
         ((entry at: 'links') anySatisfy: [:link | link first manager ~~ link last]) not]]]
     ]]) not
   ]) not]
 ].
 checkScopes := [:expected |
   expected size = nativeScopes size and: [(nativeScopes keys anySatisfy: [:name |
     | current baseline |
     current := expected at: name ifAbsent: [nil]. baseline := nativeScopes at: name.
     (current notNil and: [current size = baseline size and: [
       (baseline keys anySatisfy: [:ref | (current at: ref ifAbsent: [nil]) ~~ (baseline at: ref)]) not]]) not
   ]) not]
 ].
 checkParents := [:expected |
   diagram topGraphicalHierarchy == (scopeParentWrappers at: 'Main') and: [
   expected size = scopeParents size and: [(scopeParents keys anySatisfy: [:name |
     ((expected at: name ifAbsent: [nil]) == (scopeParents at: name) and: [
       (scopeParentWrappers at: name) contents == (scopeParents at: name)]) not]) not]]
 ].
 checkCollectionBindings := [:expected |
   expected size = keyedCollectionBaseline size and: [(keyedCollectionBaseline keys anySatisfy: [:name |
     (expected at: name ifAbsent: [nil]) ~~ (keyedCollectionBaseline at: name)]) not]
 ].
 verifyKeyed := [:candidate | | candidateBindings candidateKeys candidateNative |
   candidateBindings := candidate at: 'collectionBindings' ifAbsent: [Dictionary new].
   candidateKeys := candidate at: 'memberKeys' ifAbsent: [IdentityDictionary new].
   candidateNative := candidate at: 'nativeByKey' ifAbsent: [Dictionary new].
   ((candidate at: 'keyedProfile' ifAbsent: ['']) = 'native_keyed_collections_v1' and: [
     (candidate at: 'owner' ifAbsent: [nil]) == owner and: [
     (candidate at: 'specification' ifAbsent: [nil]) == specification and: [
     (candidate at: 'diagram' ifAbsent: [nil]) == diagram and: [
     (candidate at: 'registry' ifAbsent: [nil]) == registry and: [
     (candidate at: 'generation' ifAbsent: [nil]) = generation and: [
     (checkCollectionBindings value: candidateBindings) and: [
       candidateKeys size = keyedNativeBaseline size and: [candidateNative size = keyedNativeBaseline size]]]]]]]]) ifFalse: [false] ifTrue: [
     ((keyedNativeBaseline keys anySatisfy: [:name | | native |
       native := keyedNativeBaseline at: name.
       ((candidateNative at: name ifAbsent: [nil]) == native and: [
         (candidateKeys at: native ifAbsent: [nil]) = name]) not]) not) and: [
       (keyedBaseline keys anySatisfy: [:name | | baseline slot saved |
         baseline := keyedBaseline at: name. slot := baseline first at: 'slot'. saved := baseline last.
         ((baseline first at: 'bindingKey') = name and: [slot size = saved size and: [
           (saved keys anySatisfy: [:field |
             field = 'owner' ifTrue: [(slot at: field ifAbsent: [nil]) ~~ (saved at: field)]
               ifFalse: [(slot at: field ifAbsent: [nil]) ~= (saved at: field)]]) not]]) not
       ]) not]
   ]
 ].
 verifyNative := [
   component item == owner and: [diagram specification == specification and: [
   ((checkCollections value: collections) and: [(checkParents value: scopeParents) and: [(checkScopes value: nativeScopes) and: [
     (hierarchyContents anySatisfy: [:pair | pair first contents ~~ pair last]) not]]]) and: [
   (nodeBasics anySatisfy: [:pair | pair first basicGraphObject ~~ pair last]) not and: [
   (nodePorts anySatisfy: [:port | port first manager ~~ (port at: 2) or: [port first methodAliasName ~= port last]]) not and: [
   (pinOwners anySatisfy: [:pair | pair first getBlockDiagramElement diagramElement ~~ pair last]) not and: [
   (edgeEndpoints anySatisfy: [:edge |
     ((edge first getOutputPin diagramElement == (edge at: 2) and: [
       edge first getInputPin diagramElement == (edge at: 3)]) and: [
       sameOrder value: edge first diagramElement connectionPoints value: edge last]) not
   ]) not]]]]]]
 ].
 mode = 'capture' ifTrue: [
   nativeCheckpoint := Dictionary new at: 'profile' put: 'native_collections_v1';
     at: 'owner' put: owner; at: 'specification' put: specification; at: 'diagram' put: diagram;
     at: 'registry' put: registry; at: 'generation' put: generation; at: 'ids' put: savedIds;
     at: 'checkpoint' put: checkpoint; at: 'counter' put: counter;
     at: 'scopeEpoch' put: (registry at: 'scopeEpoch');
     at: 'issuedGeneration' put: (registry at: 'issuedGeneration');
     at: 'objects' put: objects copy; at: 'managers' put: managers copy;
     at: 'objectsByScope' put: nativeScopes; at: 'verifyScopes' put: checkScopes;
     at: 'scopeParents' put: scopeParents; at: 'scopeParentWrappers' put: scopeParentWrappers;
     at: 'verifyScopeParents' put: checkParents;
     at: 'collectionBindings' put: collectionBindings; at: 'verifyCollectionBindings' put: checkCollectionBindings;
     at: 'keyedProfile' put: 'native_keyed_collections_v1'; at: 'verifyKeyed' put: verifyKeyed;
     at: 'memberKeys' put: memberKeys; at: 'nativeByKey' put: nativeByKey;
     at: 'nodeBasics' put: nodeBasics asArray; at: 'nodePorts' put: nodePorts asArray;
     at: 'edgeEndpoints' put: edgeEndpoints asArray;
     at: 'scopes' put: scopes asArray; at: 'collections' put: collections asArray;
     at: 'collectionCount' put: collections size; at: 'memberCount' put: memberCount;
     at: 'verifyCollections' put: checkCollections;
     at: 'verify' put: [verifyNative value and: [verifyKeyed value: nativeCheckpoint]];
     at: 'verifyCurrent' put: [
       | matches |
       matches := verifyNative value and: [verifyKeyed value: nativeCheckpoint].
       matches := matches and: [(roots at: key ifAbsent: [nil]) == registry].
       matches := matches and: [(registry at: 'diagram') == diagram].
       matches := matches and: [(registry at: 'generation') = generation].
       matches := matches and: [(registry at: 'sameSource') value: (registry at: 'checkpoint') value: checkpoint].
       matches := matches and: [(registry at: 'counter') = counter].
       matches := matches and: [(registry at: 'ids') size = savedIds size and: [
         (savedIds keys anySatisfy: [:object | ((registry at: 'ids') at: object ifAbsent: [nil]) ~= (savedIds at: object)]) not]].
       matches and: [(registry at: 'sameSource') value: specification specSourceInternalOrNil value: checkpoint]
     ]; yourself.
   verifyNative value ifFalse: [component error: 'Native checkpoint changed during capture'].
   (verifyKeyed value: nativeCheckpoint) ifFalse: [component error: 'Native keyed checkpoint changed during capture'].
   nativeCheckpoint
 ] ifFalse: [
 result := Dictionary new at: 'profile' put: 'class_graph_bindings_v1'; at: 'oid' put: component getOID;
   at: 'generation' put: generation; at: 'mode' put: mode; at: 'scopes' put: scopes asArray;
   at: 'registry_unchanged' put: true; at: 'write_authorized' put: false;
   at: 'native_merge_executor_available' put: false; yourself.
 out := WriteStream on: String new.
 encode := [:v |
   v isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   v isString ifTrue: [out nextPutAll: '{"$s":['. v asCebraString doWithIndex: [:b :i |
     i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'] ifFalse: [
   ((v == true or: [v == false]) or: [v isInteger]) ifTrue: [out nextPutAll: v printString] ifFalse: [
   (v isKindOf: Dictionary) ifTrue: [out nextPutAll: '{"$d":['.
     v keys asSortedCollection doWithIndex: [:k :i | i > 1 ifTrue: [out nextPut: $,].
       out nextPut: $[. encode value: k. out nextPut: $,. encode value: (v at: k). out nextPut: $]]. out nextPutAll: ']}']
     ifFalse: [v isCollection ifFalse: [component error: 'Unsupported native binding field'].
       out nextPut: $[. v doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]]]]].
   out position > 33554432 ifTrue: [component error: 'Native binding byte bound exceeded']
 ]. encode value: result. out contents]
 ] ifFail: [:error | 'BDE_CLASS_BINDINGS_ERROR: ', error messageText]
]
