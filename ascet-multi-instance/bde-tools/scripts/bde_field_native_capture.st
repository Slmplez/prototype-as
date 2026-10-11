[:helpers | [:component :roots |
 component handleExceptionsIn: [
 | root diagram graphical source material |
 (helpers isArray and: [(#(3 4 5) includes: helpers size) and: [roots size = 1]])
   ifFalse: [component error: 'Fixed field native/source capture context required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/', helpers last).
 diagram := root at: 'diagram'.
 ((root at: 'owner') == component item and: [diagram topGraphicalHierarchy == roots first
   and: [diagram isStateMachineDiagram not]])
   ifFalse: [component error: 'Exact ordinary field/source capture identity required'].
 graphical := helpers first value: component value: roots.
 (graphical isKindOf: Dictionary) ifFalse: [component error: graphical asString].
 source := diagram specification specSourceInternalOrNil.
 material := (helpers at: 2) value: component value: (Array with: source with: #()).
 (material isKindOf: Dictionary) ifFalse: [component error: material asString].
 (((graphical at: 'verify') value) and: [(material at: 'verify') value])
   ifFalse: [component error: 'Field/source capture changed before preparation'].
 graphical at: 'sourceMaterial' put: material; at: 'sourceMaterialReader' put: (helpers at: 2).
 helpers size >= 4 ifTrue: [
   (helpers at: 3) class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Fixed local inverse planner required'].
   graphical at: 'localInversePlanner' put: (helpers at: 3)].
 helpers size = 5 ifTrue: [
   (helpers at: 4) class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Fixed forward source identity normalizer required'].
   graphical at: 'sourceIdentityNormalizer' put: (helpers at: 4)].
 graphical
 ] ifFail: [:error | 'BDE_FIELD_NATIVE_CAPTURE_ERROR: ', error messageText]
]]
