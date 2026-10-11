"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b868; bytecode file offset 0x948384"
!ASAP2DiagBaud methodsFor: 'recovered'!
baudRate
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bda4; bytecode file offset 0x94877c"
!ASAP2DiagBaud methodsFor: 'recovered'!
diagMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c22c; bytecode file offset 0x948b80"
!ASAP2DiagBaud methodsFor: 'recovered'!
ecuBaudrateSwitch
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a4478; bytecode file offset 0x9a1ad4"
!ASAP2DiagBaud methodsFor: 'recovered'!
getBaudRate: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) baudRate: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4b38; bytecode file offset 0x9a1ad4"
!ASAP2DiagBaud methodsFor: 'recovered'!
getEcuBaudrateSwitch: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIntegerList: (recoveredValue0).
    (self) ecuBaudrateSwitch: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4e78; bytecode file offset 0x9a1ad4"
!ASAP2DiagBaud methodsFor: 'recovered'!
getDiagMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) diagMode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a6374; bytecode file offset 0x9a2f38"
!ASAP2DiagBaud methodsFor: 'recovered'!
baudRate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a67a0; bytecode file offset 0x9a32e0"
!ASAP2DiagBaud methodsFor: 'recovered'!
diagMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6a94; bytecode file offset 0x9a3694"
!ASAP2DiagBaud methodsFor: 'recovered'!
ecuBaudrateSwitch: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6c44; bytecode file offset 0x9d3600"
!ASAP2DiagBaud methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putBaudRateIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putDiagModeIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fb32c; bytecode file offset 0x9f7ee4"
!ASAP2DiagBaud methodsFor: 'recovered'!
putDiagModeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) diagMode.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011d9fc; bytecode file offset 0xa1a2f8"
!ASAP2DiagBaud methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getBaudRate: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getDiagMode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) parse: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e984c; bytecode file offset 0xae6830"
!ASAP2DiagBaud methodsFor: 'recovered'!
putIn: recoveredArg1 ecuBaudrateSwitch: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuBaudrateSwitch.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) ecuBaudrateSwitch.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integerList: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

