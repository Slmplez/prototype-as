"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001a58; bytecode file offset 0x8ffcfc"
!ASDImplementationTypeCtrl methodsFor: 'recovered'!
projectContext
    ^self
! !

"ASDBase.ic method 0x20027894; bytecode file offset 0x924260"
!ASDImplementationTypeCtrl methodsFor: 'recovered'!
hasProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c7c4; bytecode file offset 0x9692b0"
!ASDImplementationTypeCtrl methodsFor: 'recovered'!
projectKey
    | recoveredValue0 |
    recoveredValue0 := projectKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077b8c; bytecode file offset 0x9757c8"
!ASDImplementationTypeCtrl methodsFor: 'recovered'!
isRescalableActive
    ^true
! !

"ASDBase.ic method 0x20096170; bytecode file offset 0x992bec"
!ASDImplementationTypeCtrl methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    (self) projectKey: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c30d4; bytecode file offset 0x9bfde0"
!ASDImplementationTypeCtrl methodsFor: 'recovered'!
projectKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3cb4; bytecode file offset 0x9e05b0"
!ASDImplementationTypeCtrl methodsFor: 'recovered'!
project
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c35f4Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

