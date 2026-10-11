"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200668c4; bytecode file offset 0x963428"
!EtasWindowsMailslot methodsFor: 'recovered'!
timeout
    | recoveredValue0 |
    recoveredValue0 := timeout.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200670ac; bytecode file offset 0x9646f8"
!EtasWindowsMailslot methodsFor: 'recovered'!
maxMessageSize
    | recoveredValue0 |
    recoveredValue0 := maxMessageSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200690cc; bytecode file offset 0x965b90"
!EtasWindowsMailslot methodsFor: 'recovered'!
handle
    | recoveredValue0 |
    recoveredValue0 := handle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a59c; bytecode file offset 0x967a18"
!EtasWindowsMailslot methodsFor: 'recovered'!
securityAttributes
    | recoveredValue0 |
    recoveredValue0 := securityAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b4e0; bytecode file offset 0x96873c"
!EtasWindowsMailslot methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20090718; bytecode file offset 0x98d054"
!EtasWindowsMailslot methodsFor: 'recovered'!
mailSlotName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) mailslotPrefix.
    recoveredValue2 := (self) name.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be5ac; bytecode file offset 0x9bb178"
!EtasWindowsMailslot methodsFor: 'recovered'!
timeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeout := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bebc0; bytecode file offset 0x9bc0b4"
!EtasWindowsMailslot methodsFor: 'recovered'!
maxMessageSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxMessageSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf994; bytecode file offset 0x9bd228"
!EtasWindowsMailslot methodsFor: 'recovered'!
handle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1188; bytecode file offset 0x9bdf14"
!EtasWindowsMailslot methodsFor: 'recovered'!
readTimeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readTimeout := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c19a4; bytecode file offset 0x9beac8"
!EtasWindowsMailslot methodsFor: 'recovered'!
securityAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    securityAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2a80; bytecode file offset 0x9bf474"
!EtasWindowsMailslot methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20115c18; bytecode file offset 0xa124d8"
!EtasWindowsMailslot methodsFor: 'recovered'!
readTimeout
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := readTimeout.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) class.
    recoveredBlock6Value1 := (recoveredBlock6Value0) defaultReadTimeout.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20172140; bytecode file offset 0xa6ea34"
!EtasWindowsMailslot methodsFor: 'recovered'!
close
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) closeHandle.
    recoveredBlock5Value1 := (self) handle: (nil).
    recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2020ee54; bytecode file offset 0xb0b728"
!EtasWindowsMailslot methodsFor: 'recovered'!
logInfo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) Debug.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := '-'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

