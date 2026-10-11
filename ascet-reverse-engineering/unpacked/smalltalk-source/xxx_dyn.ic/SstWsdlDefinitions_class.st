"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000151c; bytecode file offset 0x626a4"
!SstWsdlDefinitions class methodsFor: 'recovered'!
tagName
    ^'definitions'
! !

"xxx_dyn.ic method 0x20002bb4; bytecode file offset 0x63cb8"
!SstWsdlDefinitions class methodsFor: 'recovered'!
schemaCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SchemaCache := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000519c; bytecode file offset 0x66280"
!SstWsdlDefinitions class methodsFor: 'recovered'!
clearSchemaCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    SchemaCache := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x2000bc78; bytecode file offset 0x6cd5c"
!SstWsdlDefinitions class methodsFor: 'recovered'!
schemaCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SchemaCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            SchemaCache := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SchemaCache.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

