"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006c4b4; bytecode file offset 0x9692b0"
!AbtXmlSchemaImport methodsFor: 'recovered'!
namespace
    | recoveredValue0 |
    recoveredValue0 := namespace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d2b8; bytecode file offset 0x969c04"
!AbtXmlSchemaImport methodsFor: 'recovered'!
schema
    | recoveredValue0 |
    recoveredValue0 := schema.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c343c; bytecode file offset 0x9bfde0"
!AbtXmlSchemaImport methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespace := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3560; bytecode file offset 0x9c058c"
!AbtXmlSchemaImport methodsFor: 'recovered'!
schema: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schema := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c423c; bytecode file offset 0x9c0bf0"
!AbtXmlSchemaImport methodsFor: 'recovered'!
skipImport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    skipImport := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20106258; bytecode file offset 0xa02b14"
!AbtXmlSchemaImport methodsFor: 'recovered'!
skipImport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := skipImport.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            skipImport := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := skipImport.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

