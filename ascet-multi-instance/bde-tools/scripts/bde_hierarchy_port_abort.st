[:component :token |
 component handleExceptionsIn: [
 | registry record hierarchy interfaces child extras internal sameOrder |
 component getOID = '040ts00000001qg7180gki3t9j306' ifFalse: [component error: 'Exact isolated fixture required'].
 token = 'edit_a35a47f9224146379f9b6d746782ee26eed04182ee25011632dabe6199714621'
   ifFalse: [component error: 'Exact unstored failed creation required'].
 registry := Smalltalk at: #DogeBDEStructureEditsV3. record := registry at: token.
 ((record at: 'owner') == component item and: [(record at: 'state') = 'started' and: [
   (record at: 'operation') = 'create_hierarchy_port' and: [(record includesKey: 'portChildAfter') not]]])
   ifFalse: [component error: 'Failed private operation state changed'].
 sameOrder := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 hierarchy := (record at: 'target') diagramElement.
 interfaces := hierarchy basicGraphObject interfaceGOs. child := record at: 'portChildParent'.
 extras := interfaces reject: [:pin | (record at: 'portBeforeInterfaceOrder') includes: pin].
 (extras size = 1 and: [extras first connectorName = 'EvalPort_0'])
   ifFalse: [component error: 'Unstored port has unexpected changes'].
 internal := extras first getInternalConnectorGO.
 (sameOrder value: (record at: 'portParent') children value: (record at: 'portBeforeParentOrder'))
   ifFalse: [component error: 'Private parent order changed'].
 (sameOrder value: (child children reject: [:node | node == internal]) value: (record at: 'portBeforeChildOrder'))
   ifFalse: [component error: 'Private child order changed'].
 (sameOrder value: (interfaces reject: [:pin | pin == extras first]) value: (record at: 'portBeforeInterfaceOrder'))
   ifFalse: [component error: 'Private interface order changed'].
 (internal getConnectorGO getExternalConnectorGO connectionPoint connections isEmpty and: [extras first getExternalConnectorGO connectionPoint connections isEmpty])
   ifFalse: [component error: 'Unstored boundary has connections'].
 internal removeConnections. child removeGO: internal display: false.
 (sameOrder value: child children value: (record at: 'portBeforeChildOrder'))
   ifFalse: [component error: 'Private child restoration failed'].
 (sameOrder value: interfaces value: (record at: 'portBeforeInterfaceOrder'))
   ifFalse: [component error: 'Private interface restoration failed'].
 registry removeKey: token.
 'unstored_private_graph_restored'
 ] ifFail: [:error | 'BDE_PORT_ABORT_ERROR: ', error messageText]
]
