"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200163e8; bytecode file offset 0x92209c"
!SGOSProcessObject methodsFor: 'recovered'!
funcNodeName
    ^''
! !

"ASDBase.ic method 0x20022358; bytecode file offset 0x92209c"
!SGOSProcessObject methodsFor: 'recovered'!
iconName
    ^'GeneralProcess'
! !

"ASDBase.ic method 0x20065e54; bytecode file offset 0x963428"
!SGOSProcessObject methodsFor: 'recovered'!
instVar
    | recoveredValue0 |
    recoveredValue0 := instVar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200676dc; bytecode file offset 0x9646f8"
!SGOSProcessObject methodsFor: 'recovered'!
processMethod
    | recoveredValue0 |
    recoveredValue0 := processMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200753a4; bytecode file offset 0x9757c8"
!SGOSProcessObject methodsFor: 'recovered'!
isProcess
    ^true
! !

"ASDBase.ic method 0x200bdf14; bytecode file offset 0x9bb178"
!SGOSProcessObject methodsFor: 'recovered'!
instVar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instVar := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bebb0; bytecode file offset 0x9bc0b4"
!SGOSProcessObject methodsFor: 'recovered'!
processMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010b680; bytecode file offset 0xa07f3c"
!SGOSProcessObject methodsFor: 'recovered'!
initialize
    super initialize.
    instVar := nil.
    processMethod := nil.
    ^self
! !

"ASDBase.ic method 0x2012e148; bytecode file offset 0xa2aa44"
!SGOSProcessObject methodsFor: 'recovered'!
modiLabel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) processMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) processMethod.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

