"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066a84; bytecode file offset 0x963428"
!SGPerformerLogFile methodsFor: 'recovered'!
logfile
    | recoveredValue0 |
    recoveredValue0 := logfile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200676c4; bytecode file offset 0x9646f8"
!SGPerformerLogFile methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200687f4; bytecode file offset 0x965b90"
!SGPerformerLogFile methodsFor: 'recovered'!
sema
    | recoveredValue0 |
    recoveredValue0 := sema.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdb04; bytecode file offset 0x9bb178"
!SGPerformerLogFile methodsFor: 'recovered'!
logfile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logfile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bedc0; bytecode file offset 0x9bc0b4"
!SGPerformerLogFile methodsFor: 'recovered'!
path: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    path := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0814; bytecode file offset 0x9bd228"
!SGPerformerLogFile methodsFor: 'recovered'!
sema: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sema := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20152dc8; bytecode file offset 0xa4f690"
!SGPerformerLogFile methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CfsFileDescriptor.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) remove: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) path: (recoveredValue2).
    recoveredValue3 := Semaphore.
    recoveredValue4 := (recoveredValue3) forMutualExclusion.
    sema := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x201c98a0; bytecode file offset 0xac616c"
!SGPerformerLogFile methodsFor: 'recovered'!
reopen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) path.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) path.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) logfile: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) logfile.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setToEnd.
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

"ASDBase.ic method 0x2021cb34; bytecode file offset 0xb19404"
!SGPerformerLogFile methodsFor: 'recovered'!
logMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sema.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    (self) reopen.
    recoveredBlock5Value0 := (self) logfile.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := recoveredArg1.
    (recoveredBlock5Value1) nextPutAll: (recoveredBlock5Value2).
    (recoveredBlock5Value0) cr.
    recoveredBlock5Value3 := (self) logfile.
    recoveredBlock5Value4 := (recoveredBlock5Value3) close.
    recoveredBlock5Value4
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

