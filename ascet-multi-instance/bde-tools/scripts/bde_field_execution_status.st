[:component :record :token |
 | status out progress original terminal source root key nativeMatches sourceMatches sourceRoot |
 status := record at: 'fieldExecutionStatus' ifAbsent: [nil].
 status isNil ifTrue: [nil] ifFalse: [
   progress := [:name | | patch |
     patch := record at: name ifAbsent: [nil].
     patch isNil ifTrue: [nil] ifFalse: [(patch at: 'progress') copy]].
   original := record at: 'fieldNativeBefore'.
   nativeMatches := false. sourceMatches := false.
   (status at: 'terminal_verified') ifTrue: [
     key := (status at: 'direction') = 'undo' ifTrue: ['fieldReverted'] ifFalse: ['fieldApplied'].
     terminal := record at: (key, 'Images') ifAbsent: [nil].
     source := record at: (key, 'Source') ifAbsent: [nil].
     terminal notNil ifTrue: [nativeMatches := (original at: 'verifyImages') value: terminal].
     root := (Smalltalk at: #DogeBDEStructureIdentityV2)
       at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
     sourceMatches := (record includesKey: 'fieldSourceSame')
       ifTrue: [(record at: 'fieldSourceSame') value: component value: (record at: 'diagram') specification specSourceInternalOrNil value: source]
       ifFalse: [(root at: 'sameSource') value: (record at: 'diagram') specification specSourceInternalOrNil value: source].
     sourceMatches := sourceMatches == true
   ].
   out := status copy.
   sourceRoot := record at: 'fieldExecutionSourceRoot' ifAbsent: [nil].
   out at: 'profile' put: ((record includesKey: 'fieldForwardSourceNormalizer')
       ifTrue: ['native_field_execution_v3'] ifFalse: ['native_field_execution_v2']); at: 'native_token' put: token;
     at: 'operation' put: (record at: 'operation');
     at: 'raw_patch' put: (progress value: 'fieldExecutionPatch');
     at: 'normalization' put: (progress value: 'fieldExecutionNormalization');
     at: 'actual_material_retained' put: (record includesKey: 'fieldOriginalAfterImages');
     at: 'native_matches_terminal' put: nativeMatches; at: 'source_matches_terminal' put: sourceMatches;
     at: 'source_patch' put: (progress value: 'fieldExecutionSourcePatch');
     at: 'source_root_preserved' put: (sourceRoot notNil and: [
       sourceRoot == (record at: 'diagram') specification specSourceInternalOrNil]);
     at: 'source_transaction_id' put: (record at: 'fieldSourceTransactionId' ifAbsent: [nil]).
   out
 ]
]
