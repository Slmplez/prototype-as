"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a784; bytecode file offset 0x908be4"
!EtasWindowsService methodsFor: 'recovered'!
finalize
    | recoveredValue0 |
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065ca4; bytecode file offset 0x963428"
!EtasWindowsService methodsFor: 'recovered'!
handle
    | recoveredValue0 |
    recoveredValue0 := handle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006797c; bytecode file offset 0x9646f8"
!EtasWindowsService methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068e7c; bytecode file offset 0x965b90"
!EtasWindowsService methodsFor: 'recovered'!
desiredAccess
    | recoveredValue0 |
    recoveredValue0 := desiredAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdaac; bytecode file offset 0x9bb178"
!EtasWindowsService methodsFor: 'recovered'!
handle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf618; bytecode file offset 0x9bc0b4"
!EtasWindowsService methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c065c; bytecode file offset 0x9bd228"
!EtasWindowsService methodsFor: 'recovered'!
desiredAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    desiredAccess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20172110; bytecode file offset 0xa6ea34"
!EtasWindowsService methodsFor: 'recovered'!
close
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) closeServiceHandle.
    recoveredBlock5Value1 := (self) handle: (nil).
    recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20173b3c; bytecode file offset 0xa703fc"
!EtasWindowsService methodsFor: 'recovered'!
start
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) handle.
    recoveredBlock5Value1 := (recoveredBlock5Value0) startService: (nil) lpServiceArgVectors: (nil).
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201de8e8; bytecode file offset 0xadb1dc"
!EtasWindowsService methodsFor: 'recovered'!
isRunning
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) status.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) dwCurrentState.
    recoveredValue5 := ServiceRunning.
    recoveredValue6 := (recoveredValue4) = (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201de900; bytecode file offset 0xadb1dc"
!EtasWindowsService methodsFor: 'recovered'!
isStopping
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) status.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) dwCurrentState.
    recoveredValue5 := ServiceStopPending.
    recoveredValue6 := (recoveredValue4) = (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201de918; bytecode file offset 0xadb1dc"
!EtasWindowsService methodsFor: 'recovered'!
isStarting
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) status.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) dwCurrentState.
    recoveredValue5 := ServiceStartPending.
    recoveredValue6 := (recoveredValue4) = (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20243308; bytecode file offset 0xb3fbd0"
!EtasWindowsService methodsFor: 'recovered'!
status
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) handle.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := OSServiceStatus.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) new.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Stack3.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack4.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) queryServiceStatus: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 31].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20265200; bytecode file offset 0xb61acc"
!EtasWindowsService methodsFor: 'recovered'!
stop
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) handle.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := ServiceControlStop.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := OSServiceStatus.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) new.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) controlService: (recoveredBlock5Stack1) lpServiceStatus: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack0 := recoveredLocal1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            ^recoveredBlock5Stack0
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack0 := nil.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            ^recoveredBlock5Stack0
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

