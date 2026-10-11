[:component :token :head | [:inverseId :expectedState |
 component handleExceptionsIn: [
 | registry record execution reader fresh root actual sameOrder |
 registry := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [Dictionary new].
 record := registry at: token ifAbsent: [component error: 'Retained native material unavailable'].
 ((record at: 'component') = component getOID and: [(record at: 'owner') == component item])
   ifFalse: [component error: 'Managed material native owner differs'].
 (#('applied' 'reverted') includes: expectedState) ifFalse: [component error: 'Managed terminal state required'].
 ((record at: 'materialProtocol' ifAbsent: [nil]) = 'retained_inverse_v1' and: [
   (record at: 'managedInverseId' ifAbsent: [nil]) = head and: [(record at: 'state') = expectedState]])
   ifFalse: [component error: 'Material history head or state changed; inspect instead of replaying'].
 execution := record at: 'managedExecution' ifAbsent: [component error: 'No actual managed execution to hand off'].
 ((execution at: 'head') = head and: [(execution at: 'result') = inverseId and: [
   (execution at: 'afterState') = expectedState and: [inverseId ~= head and: [inverseId ~= token]]]])
   ifFalse: [component error: 'Material owner differs from actual managed execution'].
 reader := record at: 'materialObservationReader'.
 fresh := component getDiagram: ((record at: 'diagramName') subStrings: $/) first.
 fresh specification == (record at: 'diagram') specification ifFalse: [component error: 'Managed specification expired'].
 actual := reader value: component value: (record at: 'diagramName')
   value: (record at: 'lastObservedTargets' ifAbsent: [record at: 'targets']).
 (actual startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: actual].
 actual = (record at: 'lastObserved') ifFalse: [component error: 'Managed terminal changed before handoff'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 sameOrder := [:a :b | a size = b size and: [(1 to: a size) allSatisfy: [:i | (a at: i) == (b at: i)]]].
 ((root at: 'owner') == component item and: [(root at: 'diagram') == (record at: 'diagram') and: [
   sameOrder value: (root at: 'activeScopeChain') value: (record at: 'scopeChain')]])
   ifFalse: [component error: 'Managed scope lineage expired'].
 (record includesKey: 'fieldLocalProfile') ifTrue: [| completed |
   completed := record at: 'fieldLocalExecutedHead' ifAbsent: [component error: 'Actual managed local inverse head material unavailable'].
   ((completed at: 'previousHead') = head and: [(record at: 'fieldLocalHeadId') = head and: [(completed at: 'result') = inverseId]])
     ifFalse: [component error: 'Managed local handoff does not own its actual patch'].
   #('Native' 'Source' 'Values') do: [:kind |
     record at: ('fieldLocalHeadBefore', kind) put: (completed at: ('before', kind));
       at: ('fieldLocalHeadAfter', kind) put: (completed at: ('after', kind))].
   record at: 'fieldLocalHeadId' put: inverseId.
   record at: 'fieldLocalPreflight' put: Dictionary new.
   record removeKey: 'fieldLocalExecutedHead'
 ].
 (record includesKey: 'topologyHeadHandoffReader') ifTrue: [| ownership |
   ownership := (record at: 'topologyHeadHandoffReader') value: component value: record
     value: (Array with: 'commit' with: head with: inverseId with: expectedState).
   (ownership isKindOf: Dictionary) ifFalse: [component error: ownership asString]].
 record at: 'managedInverseId' put: inverseId.
 'handed_off'
 ] ifFail: [:error | 'BDE_MANAGED_HANDOFF_ERROR: ', error messageText]
]]
