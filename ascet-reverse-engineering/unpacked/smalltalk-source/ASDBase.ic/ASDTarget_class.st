"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009380; bytecode file offset 0x908be4"
!ASDTarget class methodsFor: 'recovered'!
availableTargets
    | recoveredValue0 |
    recoveredValue0 := (self) instances.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020660; bytecode file offset 0x92209c"
!ASDTarget class methodsFor: 'recovered'!
errLabelDeclarationCategory
    ^'target'
! !

"ASDBase.ic method 0x200229c4; bytecode file offset 0x92209c"
!ASDTarget class methodsFor: 'recovered'!
xmlCategoryPrefix
    ^'Target'
! !

"ASDBase.ic method 0x200827d4; bytecode file offset 0x97f140"
!ASDTarget class methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Targets\') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009e090; bytecode file offset 0x99a97c"
!ASDTarget class methodsFor: 'recovered'!
removeInstances
    Instances := nil.
    Declarations := nil.
    ^self
! !

"ASDBase.ic method 0x2016e8a0; bytecode file offset 0xa6b188"
!ASDTarget class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2018d0cc; bytecode file offset 0xa89a74"
!ASDTarget class methodsFor: 'recovered'!
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
    | block280d12e0Value0 block280d12e0Value1 block280d12e0Value2 |
    block280d12e0Value0 := LookupTable.
    block280d12e0Value1 := (block280d12e0Value0) new.
    block280d12e0Value2 := block280d12e0Value1.
    Declarations := block280d12e0Value2.
    block280d12e0Value1
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

