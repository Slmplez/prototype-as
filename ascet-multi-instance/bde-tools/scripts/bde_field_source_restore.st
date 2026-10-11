[:aliases :strictSame | [:component :record :direction |
 component handleExceptionsIn: [
 | native desired root source expected protected verify same context plan |
 (#('undo' 'redo') includes: direction) ifFalse: [component error: 'Exact field source direction required'].
 native := record at: 'fieldNativeBefore'. desired := record at: 'fieldExecutionDesiredImages'.
 ((native at: 'verifyImages') value: desired) ifFalse: [component error: 'Native desired images differ before source repair'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2)
   at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 (root at: 'diagram') == (record at: 'diagram') ifFalse: [component error: 'Source repair diagram identity expired'].
 source := (record at: 'diagram') specification specSourceInternalOrNil.
 expected := record at: (direction = 'undo' ifTrue: ['fieldNativeSourceBefore'] ifFalse: ['fieldOriginalAfterSource']).
 protected := IdentitySet new. protected addAll: desired keys.
 verify := [source == (record at: 'diagram') specification specSourceInternalOrNil and: [
   (native at: 'verifyImages') value: desired]].
 same := [:left :right | (strictSame value: component value: left value: right) == true].
 context := Array new: 6.
 context at: 1 put: source; at: 2 put: expected; at: 3 put: protected;
   at: 4 put: verify; at: 5 put: same; at: 6 put: (root at: 'copySource').
 plan := aliases value: component value: context value: direction.
 ((plan isKindOf: Dictionary) and: [(plan at: 'profile') = 'source_alias_patch_v1'])
   ifFalse: [component error: plan asString].
 plan at: 'sourceRoot' put: source; at: 'expectedSource' put: expected;
   at: 'nativeDesiredVerified' put: verify.
 plan
 ] ifFail: [:error | 'BDE_FIELD_SOURCE_RESTORE_ERROR: ', error messageText]
]]
