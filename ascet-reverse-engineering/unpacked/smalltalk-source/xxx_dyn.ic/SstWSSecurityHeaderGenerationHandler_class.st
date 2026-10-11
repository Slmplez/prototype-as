"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000df4; bytecode file offset 0x6209c"
!SstWSSecurityHeaderGenerationHandler class methodsFor: 'recovered'!
defaultSchemaNamespace
    | recoveredValue0 |
    recoveredValue0 := WSSecurityNamespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002bcc; bytecode file offset 0x63cb8"
!SstWSSecurityHeaderGenerationHandler class methodsFor: 'recovered'!
schemaNamespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SchemaNamespace := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000b264; bytecode file offset 0x6c340"
!SstWSSecurityHeaderGenerationHandler class methodsFor: 'recovered'!
schemaNamespace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SchemaNamespace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultSchemaNamespace.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            SchemaNamespace := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SchemaNamespace.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

