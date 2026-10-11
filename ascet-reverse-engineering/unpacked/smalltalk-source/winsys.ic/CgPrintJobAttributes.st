"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001004; bytecode file offset 0x7d33c"
!CgPrintJobAttributes methodsFor: 'recovered'!
printerDriverVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) driverData.
    recoveredValue1 := (recoveredValue0) dmDriverVersion.
    ^recoveredValue1
! !

"winsys.ic method 0x20002af0; bytecode file offset 0x7ed00"
!CgPrintJobAttributes methodsFor: 'recovered'!
platformName
    | recoveredValue0 |
    recoveredValue0 := platformName.
    ^recoveredValue0
! !

"winsys.ic method 0x20002d80; bytecode file offset 0x7efc0"
!CgPrintJobAttributes methodsFor: 'recovered'!
driverData
    | recoveredValue0 |
    recoveredValue0 := driverData.
    ^recoveredValue0
! !

"winsys.ic method 0x20007104; bytecode file offset 0x8346c"
!CgPrintJobAttributes methodsFor: 'recovered'!
platformName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platformName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000734c; bytecode file offset 0x836b4"
!CgPrintJobAttributes methodsFor: 'recovered'!
driverData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    driverData := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000b708; bytecode file offset 0x878d4"
!CgPrintJobAttributes methodsFor: 'recovered'!
deviceName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) driverData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) printerDeviceName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000b72c; bytecode file offset 0x878f4"
!CgPrintJobAttributes methodsFor: 'recovered'!
driverVersion
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) driverData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) printerDriverVersion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000c630; bytecode file offset 0x88804"
!CgPrintJobAttributes methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) subsystemType: ('CG').
    (self) platformName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) driverData: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2000e374; bytecode file offset 0x8a54c"
!CgPrintJobAttributes methodsFor: 'recovered'!
printerDeviceName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) driverData.
    recoveredValue1 := (recoveredValue0) dmDeviceName.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) reference.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (recoveredValue2) memcpyStringFrom: (0) to: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) trimNull.
    ^recoveredValue8
! !

"winsys.ic method 0x2001e5fc; bytecode file offset 0x9a7d4"
!CgPrintJobAttributes methodsFor: 'recovered'!
isCompatibleWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) driverData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'CG'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) subsystemType: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) deviceName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'CG'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) subsystemType: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

