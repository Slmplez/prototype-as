"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022d84; bytecode file offset 0x92209c"
!ASDXMLInterpolationRoutineDeclaration class methodsFor: 'recovered'!
subDirectoryName
    ^'Interpolation Routine'
! !

"ASDBase.ic method 0x2003edd8; bytecode file offset 0x93bf94"
!ASDXMLInterpolationRoutineDeclaration class methodsFor: 'recovered'!
availableInterpolationSetDeclarations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGInterpolationRoutineSet.
    recoveredValue1 := (recoveredValue0) availableInterpolationSetDeclarations.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200604b8; bytecode file offset 0x95cf04"
!ASDXMLInterpolationRoutineDeclaration class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008c0b4; bytecode file offset 0x988b68"
!ASDXMLInterpolationRoutineDeclaration class methodsFor: 'recovered'!
subDirectoryPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) subDirectoryName.
    recoveredValue1 := ('Tools\') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200da0b4; bytecode file offset 0x9d69b0"
!ASDXMLInterpolationRoutineDeclaration class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) declarationFile: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200efdf0; bytecode file offset 0x9ec6b0"
!ASDXMLInterpolationRoutineDeclaration class methodsFor: 'recovered'!
allDeclaredInterpolationRoutineOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableInterpolationSetDeclarations.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

