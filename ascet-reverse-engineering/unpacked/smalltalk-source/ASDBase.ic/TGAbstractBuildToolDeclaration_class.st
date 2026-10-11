"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013968; bytecode file offset 0x912098"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
unknownToolClass
    | recoveredValue0 |
    recoveredValue0 := TGUnknownBuildTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cd48; bytecode file offset 0x92209c"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
errLabelDeclarationCategory
    ^'Build Tool'
! !

"ASDBase.ic method 0x20022040; bytecode file offset 0x92209c"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
xmlCategoryPrefix
    ^'BuildTool'
! !

"ASDBase.ic method 0x2003d6f8; bytecode file offset 0x93bf94"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
scoopixSchemaVersionKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) scoopixSchemaVersionKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20082804; bytecode file offset 0x97f140"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('External Tools\Build Tool\') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009e060; bytecode file offset 0x99a97c"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
removeInstances
    Instances := nil.
    Declarations := nil.
    ^self
! !

"ASDBase.ic method 0x2016e8b4; bytecode file offset 0xa6b188"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
instances
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Instances.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createInstancesCollection.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    Instances := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := Instances.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018d104; bytecode file offset 0xa89a74"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
declarations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Declarations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d1328Value0 block280d1328Value1 block280d1328Value2 |
    block280d1328Value0 := LookupTable.
    block280d1328Value1 := (block280d1328Value0) new.
    block280d1328Value2 := block280d1328Value1.
    Declarations := block280d1328Value2.
    block280d1328Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Declarations.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cab24; bytecode file offset 0xac73f8"
!TGAbstractBuildToolDeclaration class methodsFor: 'recovered'!
createInternalDeclarations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super createInternalDeclarations.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) noToolType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableTool: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := TGNoBuildTool.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) addInstance: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

