[:helpers | [:component :roots |
 component handleExceptionsIn: [
 | root diagram graphical material |
 (helpers isArray and: [(#(3 4 5 6 7) includes: helpers size) and: [roots size = 1]])
   ifFalse: [component error: 'Fixed topology native/source capture context required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/', (helpers at: 3)).
 diagram := root at: 'diagram'.
 ((root at: 'owner') == component item and: [diagram topGraphicalHierarchy == roots first
   and: [diagram isStateMachineDiagram not]])
   ifFalse: [component error: 'Exact ordinary topology capture identity required'].
 graphical := helpers first value: component value: roots.
 (graphical isKindOf: Dictionary) ifFalse: [component error: graphical asString].
 material := (helpers at: 2) value: component value:
   (Array with: diagram specification specSourceInternalOrNil with: #()).
 (material isKindOf: Dictionary) ifFalse: [component error: material asString].
 (((graphical at: 'verify') value) and: [(material at: 'verify') value])
   ifFalse: [component error: 'Topology capture changed before preparation'].
 graphical at: 'topologyCaptureProfile' put: 'ordinary_topology_material_v1';
   at: 'topologySourceMaterial' put: material;
   at: 'topologySourceMaterialReader' put: (helpers at: 2);
   at: 'topologyGraphicalReader' put: helpers first.
 helpers size >= 4 ifTrue: [
   (helpers at: 4) class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Fixed topology exact inverse factory required'].
   graphical at: 'topologyExactInverseFactory' put: (helpers at: 4)].
 helpers size >= 5 ifTrue: [
   (helpers at: 5) class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Fixed topology forward source normalizer required'].
   graphical at: 'topologyForwardSourceNormalizer' put: (helpers at: 5)].
 helpers size >= 6 ifTrue: [
   (helpers at: 6) class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Fixed topology local inverse planner required'].
   graphical at: 'topologyLocalInverseFactory' put: (helpers at: 6)].
 helpers size = 7 ifTrue: [
   helpers last class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Fixed actual topology head ownership reader required'].
   graphical at: 'topologyHeadHandoffReader' put: helpers last].
 graphical
 ] ifFail: [:error | 'BDE_TOPOLOGY_NATIVE_CAPTURE_ERROR: ', error messageText]
]]
