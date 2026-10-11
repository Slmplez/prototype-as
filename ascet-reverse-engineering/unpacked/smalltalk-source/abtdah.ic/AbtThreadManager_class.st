"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x2000047c; bytecode file offset 0x104e4"
!AbtThreadManager class methodsFor: 'recovered'!
defaultStackSize
    ^32768
! !

"abtdah.ic method 0x2000062c; bytecode file offset 0x1068c"
!AbtThreadManager class methodsFor: 'recovered'!
threadsSupported
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AcoResourceFuture.
    recoveredValue1 := (recoveredValue0) supported.
    ^recoveredValue1
! !

"abtdah.ic method 0x200006fc; bytecode file offset 0x10728"
!AbtThreadManager class methodsFor: 'recovered'!
preStartUp
    Default := nil.
    ^self
! !

"abtdah.ic method 0x20000a10; bytecode file offset 0x10a40"
!AbtThreadManager class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := (self) default.
    (recoveredValue0) terminateDeadProcesses.
    ^self
! !

"abtdah.ic method 0x2000138c; bytecode file offset 0x113ec"
!AbtThreadManager class methodsFor: 'recovered'!
terminateThread: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) default.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) terminateThread: (recoveredValue1).
    ^self
! !

"abtdah.ic method 0x20001478; bytecode file offset 0x114ac"
!AbtThreadManager class methodsFor: 'recovered'!
terminateThread
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    (self) terminateThread: (recoveredValue1).
    ^self
! !

"abtdah.ic method 0x20001704; bytecode file offset 0x11734"
!AbtThreadManager class methodsFor: 'recovered'!
setStackSizeFor: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) default.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) setStackSizeFor: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"abtdah.ic method 0x2000190c; bytecode file offset 0x11940"
!AbtThreadManager class methodsFor: 'recovered'!
setStackSizeTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := recoveredArg1.
    (self) setStackSizeFor: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"abtdah.ic method 0x20002d40; bytecode file offset 0x12d74"
!AbtThreadManager class methodsFor: 'recovered'!
default
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) initialize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            Default := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

