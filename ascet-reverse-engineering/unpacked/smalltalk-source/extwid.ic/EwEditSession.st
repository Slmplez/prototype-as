"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000100; bytecode file offset 0x50f8c"
!EwEditSession methodsFor: 'recovered'!
initialize
    ^self
! !

"extwid.ic method 0x200026d4; bytecode file offset 0x534f0"
!EwEditSession methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"extwid.ic method 0x200027dc; bytecode file offset 0x53678"
!EwEditSession methodsFor: 'recovered'!
format
    | recoveredValue0 |
    recoveredValue0 := format.
    ^recoveredValue0
! !

"extwid.ic method 0x20002bcc; bytecode file offset 0x53998"
!EwEditSession methodsFor: 'recovered'!
processError
    | recoveredValue0 |
    recoveredValue0 := processError.
    ^recoveredValue0
! !

"extwid.ic method 0x200058fc; bytecode file offset 0x566dc"
!EwEditSession methodsFor: 'recovered'!
format: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    format := recoveredValue0.
    (self) configure.
    ^self
! !

"extwid.ic method 0x200062a8; bytecode file offset 0x5710c"
!EwEditSession methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006508; bytecode file offset 0x57404"
!EwEditSession methodsFor: 'recovered'!
cursorPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cursorPosition := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006794; bytecode file offset 0x57568"
!EwEditSession methodsFor: 'recovered'!
processError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processError := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000a19c; bytecode file offset 0x5af64"
!EwEditSession methodsFor: 'recovered'!
cursorPosition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cursorPosition.
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
            recoveredStack1 := (recoveredStack1) initialPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            cursorPosition := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := cursorPosition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000be84; bytecode file offset 0x5cc60"
!EwEditSession methodsFor: 'recovered'!
newError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EwError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) format.
    (recoveredValue2) errorObject: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) errorCode: (recoveredValue4).
    (self) processError: (recoveredValue5).
    ^self
! !

