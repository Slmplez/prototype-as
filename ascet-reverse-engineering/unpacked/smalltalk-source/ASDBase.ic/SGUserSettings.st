"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20081d98; bytecode file offset 0x97e6e0"
!SGUserSettings methodsFor: 'recovered'!
defaultProjectIfUndefined: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := defaultProject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getObjectIfUndefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e174; bytecode file offset 0x99aa2c"
!SGUserSettings methodsFor: 'recovered'!
resetDefaultProject
    defaultProject := nil.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200bba7c; bytecode file offset 0x9b8338"
!SGUserSettings methodsFor: 'recovered'!
defaultProject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    defaultProject := recoveredValue1.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200fa6d4; bytecode file offset 0x9f7070"
!SGUserSettings methodsFor: 'recovered'!
initialize
    super initialize.
    (self) label: ('User - Settings').
    ^self
! !

"ASDBase.ic method 0x201123f0; bytecode file offset 0xa0ecb8"
!SGUserSettings methodsFor: 'recovered'!
initDefaultProject
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGProject.
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) defaultLabelName.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) defaultProject: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201ec91c; bytecode file offset 0xae91d8"
!SGUserSettings methodsFor: 'recovered'!
getDefaultProject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) initDefaultProject.
    ^recoveredBlock4Value0
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) initDefaultProject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

