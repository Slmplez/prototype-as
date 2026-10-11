"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b074; bytecode file offset 0x92209c"
!SGTypeDefinitions methodsFor: 'recovered'!
keyASCETTypesMode
    ^'ASCETTypes'
! !

"ASDBase.ic method 0x20020150; bytecode file offset 0x92209c"
!SGTypeDefinitions methodsFor: 'recovered'!
keyCustomerTypeMode
    ^'CustomerTypes'
! !

"ASDBase.ic method 0x200235b8; bytecode file offset 0x92209c"
!SGTypeDefinitions methodsFor: 'recovered'!
keyAutosarTypesMode
    ^'AUTOSARTypes'
! !

"ASDBase.ic method 0x20028d94; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allFormulas
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allFormulas.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028e44; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allDistributionTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allDistributionTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029594; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allArrayTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allArrayTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c1b4; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allImplTemplates
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allImplTemplates.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c414; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allApplicationErrorTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allApplicationErrorTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c814; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allARSWComponentsInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allARSWComponentsInterfaces.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cbd4; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allMatrixTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allMatrixTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dff4; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
autosarStandardReturnTypeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) autosarStandardReturnTypeLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e3d4; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allStateMachineEnumerationTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allStateMachineEnumerationTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ff24; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allArtificialTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allArtificialTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030864; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allEnumerationTypeInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allEnumerationTypeInterfaces.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031a34; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allEnumerationTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allEnumerationTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200334b4; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allRecordTypeInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allRecordTypeInterfaces.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033664; bytecode file offset 0x934580"
!SGTypeDefinitions methodsFor: 'recovered'!
allPrimitiveBaseTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := (recoveredValue0) allPrimitiveBaseTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200724b8; bytecode file offset 0x96ee04"
!SGTypeDefinitions methodsFor: 'recovered'!
bitUsingCustomScalarDataTypes
    ^1
! !

"ASDBase.ic method 0x2008accc; bytecode file offset 0x987588"
!SGTypeDefinitions methodsFor: 'recovered'!
isUsingCustomScalarTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUsingCustomScalarDataTypes.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20098884; bytecode file offset 0x995850"
!SGTypeDefinitions methodsFor: 'recovered'!
addUsedArtificialType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addUsedArtificialType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098f54; bytecode file offset 0x995850"
!SGTypeDefinitions methodsFor: 'recovered'!
addUsedImplTemplate: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedTypesTable.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addUsedImplTemplate: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b1648; bytecode file offset 0x9adf64"
!SGTypeDefinitions methodsFor: 'recovered'!
usingASCETStandardScalarTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUsingCustomScalarDataTypes.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1658; bytecode file offset 0x9adf64"
!SGTypeDefinitions methodsFor: 'recovered'!
usingCustomScalarTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUsingCustomScalarDataTypes.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200be7fc; bytecode file offset 0x9bb178"
!SGTypeDefinitions methodsFor: 'recovered'!
usedTypesTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    usedTypesTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6860; bytecode file offset 0x9e312c"
!SGTypeDefinitions methodsFor: 'recovered'!
initialize
    super initialize.
    flags := 0.
    ^self
! !

"ASDBase.ic method 0x20124ff0; bytecode file offset 0xa218c4"
!SGTypeDefinitions methodsFor: 'recovered'!
arSWComponentsInterface
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allARSWComponentsInterfaces.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018d7a0; bytecode file offset 0xa8a074"
!SGTypeDefinitions methodsFor: 'recovered'!
usedTypesTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := usedTypesTable.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := SGCgUsedTypeTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    usedTypesTable := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := usedTypesTable.
    ^recoveredValue2
! !

