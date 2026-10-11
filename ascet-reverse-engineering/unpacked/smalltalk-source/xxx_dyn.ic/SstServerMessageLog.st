"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000708; bytecode file offset 0x619a4"
!SstServerMessageLog methodsFor: 'recovered'!
open
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200007e0; bytecode file offset 0x619a4"
!SstServerMessageLog methodsFor: 'recovered'!
close
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000084c; bytecode file offset 0x619a4"
!SstServerMessageLog methodsFor: 'recovered'!
flush
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a38; bytecode file offset 0x61b9c"
!SstServerMessageLog methodsFor: 'recovered'!
write: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001d84; bytecode file offset 0x63040"
!SstServerMessageLog methodsFor: 'recovered'!
newTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DateAndTime.
    recoveredValue1 := (recoveredValue0) sstTimeStampString.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200038a4; bytecode file offset 0x649e8"
!SstServerMessageLog methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200039e8; bytecode file offset 0x64bac"
!SstServerMessageLog methodsFor: 'recovered'!
maxLogSize
    | recoveredValue0 |
    recoveredValue0 := maxLogSize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003bc4; bytecode file offset 0x64d78"
!SstServerMessageLog methodsFor: 'recovered'!
mutex
    | recoveredValue0 |
    recoveredValue0 := mutex.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003cc8; bytecode file offset 0x64ed4"
!SstServerMessageLog methodsFor: 'recovered'!
timeStampFormat
    | recoveredValue0 |
    recoveredValue0 := timeStampFormat.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004e28; bytecode file offset 0x65fa4"
!SstServerMessageLog methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) log: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20006c2c; bytecode file offset 0x67d18"
!SstServerMessageLog methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createLogStringFromWarningMessage: (recoveredValue0).
    (self) basicLog: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006c3c; bytecode file offset 0x67d18"
!SstServerMessageLog methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createLogStringFromErrorMessage: (recoveredValue0).
    (self) basicLog: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006c4c; bytecode file offset 0x67d18"
!SstServerMessageLog methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createLogStringFromMessageString: (recoveredValue0).
    (self) basicLog: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007ccc; bytecode file offset 0x68f50"
!SstServerMessageLog methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007ee8; bytecode file offset 0x69104"
!SstServerMessageLog methodsFor: 'recovered'!
maxLogSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxLogSize := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000818c; bytecode file offset 0x692b8"
!SstServerMessageLog methodsFor: 'recovered'!
mutex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mutex := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008300; bytecode file offset 0x69404"
!SstServerMessageLog methodsFor: 'recovered'!
timeStampFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStampFormat := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083cc; bytecode file offset 0x69508"
!SstServerMessageLog methodsFor: 'recovered'!
logEntryFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logEntryFormat := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000c8a4; bytecode file offset 0x6d96c"
!SstServerMessageLog methodsFor: 'recovered'!
logEntryFormat
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := logEntryFormat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstDefaultSystemLogFormat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := logEntryFormat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e09c; bytecode file offset 0x6f16c"
!SstServerMessageLog methodsFor: 'recovered'!
basicLog: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mutex.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (self) write: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2001279c; bytecode file offset 0x73884"
!SstServerMessageLog methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    maxLogSize := 81920.
    recoveredValue0 := Semaphore.
    recoveredValue1 := (recoveredValue0) forMutualExclusion.
    mutex := recoveredValue1.
    recoveredValue2 := Locale.
    recoveredValue3 := (recoveredValue2) current.
    recoveredValue4 := (recoveredValue3) lcTime.
    recoveredValue5 := (recoveredValue4) copy.
    recoveredValue6 := recoveredValue5.
    timeStampFormat := recoveredValue6.
    recoveredValue7 := MxSSTG190.
    (recoveredValue5) dtFmt: (recoveredValue7).
    ^self
! !

"xxx_dyn.ic method 0x2001c58c; bytecode file offset 0x7d6e4"
!SstServerMessageLog methodsFor: 'recovered'!
createLogStringFromErrorMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) logEntryFormat.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (5).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := LineDelimiter.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) newTimeStamp.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (3) put: ('ERROR').
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := Processor.
    recoveredValue10 := (recoveredValue9) activeProcess.
    recoveredValue11 := (recoveredValue10) processName.
    (recoveredValue8) at: (4) put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) at: (5) put: (recoveredValue13).
    recoveredValue14 := (recoveredValue0) bindWithArguments: (recoveredValue2).
    ^recoveredValue14
! !

"xxx_dyn.ic method 0x2001c5c0; bytecode file offset 0x7d6e4"
!SstServerMessageLog methodsFor: 'recovered'!
createLogStringFromMessageString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) logEntryFormat.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (5).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := LineDelimiter.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) newTimeStamp.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (3) put: ('INFO').
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := Processor.
    recoveredValue10 := (recoveredValue9) activeProcess.
    recoveredValue11 := (recoveredValue10) processName.
    (recoveredValue8) at: (4) put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) at: (5) put: (recoveredValue13).
    recoveredValue14 := (recoveredValue0) bindWithArguments: (recoveredValue2).
    ^recoveredValue14
! !

"xxx_dyn.ic method 0x2001c5f4; bytecode file offset 0x7d6e4"
!SstServerMessageLog methodsFor: 'recovered'!
createLogStringFromWarningMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) logEntryFormat.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (5).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := LineDelimiter.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) newTimeStamp.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (3) put: ('WARNING').
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := Processor.
    recoveredValue10 := (recoveredValue9) activeProcess.
    recoveredValue11 := (recoveredValue10) processName.
    (recoveredValue8) at: (4) put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) at: (5) put: (recoveredValue13).
    recoveredValue14 := (recoveredValue0) bindWithArguments: (recoveredValue2).
    ^recoveredValue14
! !

