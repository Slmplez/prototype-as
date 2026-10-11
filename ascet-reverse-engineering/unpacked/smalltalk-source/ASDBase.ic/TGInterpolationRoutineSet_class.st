"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006bd8; bytecode file offset 0x908be4"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
availableInterpolationSets
    | recoveredValue0 |
    recoveredValue0 := (self) instances.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013080; bytecode file offset 0x912098"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
xmlDefinedOptionsClass
    | recoveredValue0 |
    recoveredValue0 := ASDXMLInterpolationRoutineDeclaration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a948; bytecode file offset 0x92209c"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
identifierAttributeKey
    ^'Identifier'
! !

"ASDBase.ic method 0x2001cebc; bytecode file offset 0x92209c"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
labelAttributeKey
    ^'Label'
! !

"ASDBase.ic method 0x2001f220; bytecode file offset 0x92209c"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
errLabelDeclarationCategory
    ^'interpolation routine'
! !

"ASDBase.ic method 0x200261b8; bytecode file offset 0x923928"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
xmlCategoryPrefix
    ^'InterpolationRoutine'
! !

"ASDBase.ic method 0x2003d3f8; bytecode file offset 0x93bf94"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
allSystemDefinedInterpolationRoutineIdentifiers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDInterpolationDefaultOptions.
    recoveredValue1 := (recoveredValue0) allSystemDefinedInterpolationRoutineIdentifiers.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c6a4; bytecode file offset 0x959680"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
defaultInterpolation1D
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDInterpolationDefaultOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionDefaultsInterpolation1DValue.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cc6c; bytecode file offset 0x959680"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
defaultInterpolation2D
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDInterpolationDefaultOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionDefaultsInterpolation2DValue.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200827f4; bytecode file offset 0x97f140"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Build\Interpolation Routine\') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20086b24; bytecode file offset 0x98376c"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
availableInterpolationSet: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) availableDeclarationIdentifier: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e080; bytecode file offset 0x99a97c"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
removeInstances
    Instances := nil.
    Declarations := nil.
    ^self
! !

"ASDBase.ic method 0x200f7d04; bytecode file offset 0x9f4e38"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
availableInterpolationSetIdentifiers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableInterpolationSets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5184Arg1 | 
    | block280c5184Value0 block280c5184Value1 |
    block280c5184Value0 := block280c5184Arg1.
    block280c5184Value1 := (block280c5184Value0) identifier.
    block280c5184Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e88c; bytecode file offset 0xa6b188"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2017ca5c; bytecode file offset 0xa79320"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
availableInterpolationSetIdentifiersIncluding: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableInterpolationSetIdentifiers.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := TGUnknownInterpolationRoutineSet.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableInterpolationSetIdentifiers.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018d120; bytecode file offset 0xa89a74"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
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
    | block280d134cValue0 block280d134cValue1 block280d134cValue2 |
    block280d134cValue0 := LookupTable.
    block280d134cValue1 := (block280d134cValue0) new.
    block280d134cValue2 := block280d134cValue1.
    Declarations := block280d134cValue2.
    block280d134cValue1
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

"ASDBase.ic method 0x20196358; bytecode file offset 0xa92c18"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
availableInterpolationSet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := TGUnknownInterpolationRoutineSet.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) create: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (self) availableInterpolationSet: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201aff38; bytecode file offset 0xaac824"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
availableInterpolationSetDeclarations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableInterpolationSets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3cecArg1 | 
    | block280d3cecValue0 block280d3cecValue1 block280d3cecValue2 |
    block280d3cecValue0 := block280d3cecArg1.
    block280d3cecValue1 := (block280d3cecValue0) declaration.
    block280d3cecValue2 := (block280d3cecValue1) notNil.
    block280d3cecValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280d3d10Arg1 | 
    | block280d3d10Value0 block280d3d10Value1 |
    block280d3d10Value0 := block280d3d10Arg1.
    block280d3d10Value1 := (block280d3d10Value0) declaration.
    block280d3d10Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20388a7c; bytecode file offset 0xc85350"
!TGInterpolationRoutineSet class methodsFor: 'recovered'!
createInstancesCollection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280f3318Arg1 :block280f3318Arg2 | 
    | block280f3318Stack0 block280f3318Stack1 block280f3318Stack2 block280f3318Stack3 block280f3318PC block280f3318Step block280f3318Done block280f3318Result |
    block280f3318Stack0 := self.
    block280f3318PC := 4.
    block280f3318Done := false.
    [block280f3318Done not] whileTrue: [
        block280f3318Step := block280f3318PC.
        block280f3318Step = 4 ifTrue: [
            block280f3318Stack1 := block280f3318Arg1.
            block280f3318PC := 5.
        ].
        block280f3318Step = 5 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) identifier.
            block280f3318PC := 6.
        ].
        block280f3318Step = 6 ifTrue: [
            block280f3318Stack2 := 'Rounded'.
            block280f3318PC := 8.
        ].
        block280f3318Step = 8 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) = (block280f3318Stack2).
            block280f3318PC := 9.
        ].
        block280f3318Step = 9 ifTrue: [
            (block280f3318Stack1) ifTrue: [block280f3318PC := 12] ifFalse: [block280f3318PC := 16].
        ].
        block280f3318Step = 12 ifTrue: [
            block280f3318Stack1 := true.
            block280f3318PC := 13.
        ].
        block280f3318Step = 13 ifTrue: [
            block280f3318PC := 59.
        ].
        block280f3318Step = 16 ifTrue: [
            block280f3318Stack1 := block280f3318Arg2.
            block280f3318PC := 17.
        ].
        block280f3318Step = 17 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) identifier.
            block280f3318PC := 18.
        ].
        block280f3318Step = 18 ifTrue: [
            block280f3318Stack2 := 'Rounded'.
            block280f3318PC := 20.
        ].
        block280f3318Step = 20 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) = (block280f3318Stack2).
            block280f3318PC := 21.
        ].
        block280f3318Step = 21 ifTrue: [
            (block280f3318Stack1) ifTrue: [block280f3318PC := 24] ifFalse: [block280f3318PC := 28].
        ].
        block280f3318Step = 24 ifTrue: [
            block280f3318Stack1 := false.
            block280f3318PC := 25.
        ].
        block280f3318Step = 25 ifTrue: [
            block280f3318PC := 59.
        ].
        block280f3318Step = 28 ifTrue: [
            block280f3318Stack1 := block280f3318Arg1.
            block280f3318PC := 29.
        ].
        block280f3318Step = 29 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) identifier.
            block280f3318PC := 30.
        ].
        block280f3318Step = 30 ifTrue: [
            block280f3318Stack2 := 'Linear'.
            block280f3318PC := 32.
        ].
        block280f3318Step = 32 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) = (block280f3318Stack2).
            block280f3318PC := 33.
        ].
        block280f3318Step = 33 ifTrue: [
            (block280f3318Stack1) ifTrue: [block280f3318PC := 36] ifFalse: [block280f3318PC := 40].
        ].
        block280f3318Step = 36 ifTrue: [
            block280f3318Stack1 := true.
            block280f3318PC := 37.
        ].
        block280f3318Step = 37 ifTrue: [
            block280f3318PC := 59.
        ].
        block280f3318Step = 40 ifTrue: [
            block280f3318Stack1 := block280f3318Arg2.
            block280f3318PC := 41.
        ].
        block280f3318Step = 41 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) identifier.
            block280f3318PC := 42.
        ].
        block280f3318Step = 42 ifTrue: [
            block280f3318Stack2 := 'Linear'.
            block280f3318PC := 44.
        ].
        block280f3318Step = 44 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) = (block280f3318Stack2).
            block280f3318PC := 45.
        ].
        block280f3318Step = 45 ifTrue: [
            (block280f3318Stack1) ifTrue: [block280f3318PC := 48] ifFalse: [block280f3318PC := 52].
        ].
        block280f3318Step = 48 ifTrue: [
            block280f3318Stack1 := false.
            block280f3318PC := 49.
        ].
        block280f3318Step = 49 ifTrue: [
            block280f3318PC := 59.
        ].
        block280f3318Step = 52 ifTrue: [
            block280f3318Stack1 := block280f3318Arg1.
            block280f3318PC := 53.
        ].
        block280f3318Step = 53 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) label.
            block280f3318PC := 55.
        ].
        block280f3318Step = 55 ifTrue: [
            block280f3318Stack2 := block280f3318Arg2.
            block280f3318PC := 56.
        ].
        block280f3318Step = 56 ifTrue: [
            block280f3318Stack2 := (block280f3318Stack2) label.
            block280f3318PC := 58.
        ].
        block280f3318Step = 58 ifTrue: [
            block280f3318Stack1 := (block280f3318Stack1) < (block280f3318Stack2).
            block280f3318PC := 59.
        ].
        block280f3318Step = 59 ifTrue: [
            block280f3318Result := block280f3318Stack1.
            block280f3318Done := true.
        ].
    ].
    block280f3318Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) sortBlock: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

