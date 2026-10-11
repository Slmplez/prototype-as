"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x20000394; bytecode file offset 0xf434"
!EtasOilTask methodsFor: 'recovered'!
genActivation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) activation.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200003d4; bytecode file offset 0xf434"
!EtasOilTask methodsFor: 'recovered'!
genPrio
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) priority.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200005e0; bytecode file offset 0xf5e0"
!EtasOilTask methodsFor: 'recovered'!
isScheduleCooperative
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) schedule.
    recoveredValue1 := (recoveredValue0) = ('COOPERATIVE').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000738; bytecode file offset 0xf730"
!EtasOilTask methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000754; bytecode file offset 0xf754"
!EtasOilTask methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000778; bytecode file offset 0xf778"
!EtasOilTask methodsFor: 'recovered'!
priority
    | recoveredValue0 |
    recoveredValue0 := priority.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000794; bytecode file offset 0xf79c"
!EtasOilTask methodsFor: 'recovered'!
schedule
    | recoveredValue0 |
    recoveredValue0 := schedule.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x200007c8; bytecode file offset 0xf7c0"
!EtasOilTask methodsFor: 'recovered'!
activation
    | recoveredValue0 |
    recoveredValue0 := activation.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x200007ec; bytecode file offset 0xf7e4"
!EtasOilTask methodsFor: 'recovered'!
autostart
    | recoveredValue0 |
    recoveredValue0 := autostart.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000800; bytecode file offset 0xf808"
!EtasOilTask methodsFor: 'recovered'!
appMode
    | recoveredValue0 |
    recoveredValue0 := appMode.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000a54; bytecode file offset 0xfa58"
!EtasOilTask methodsFor: 'recovered'!
genAppMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := appMode.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue0) _generateAppmodeName: (recoveredValue2).
    ^recoveredValue3
! !

"ETargetCommon.ic method 0x20000b80; bytecode file offset 0xfb80"
!EtasOilTask methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000b9c; bytecode file offset 0xfba4"
!EtasOilTask methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000bc0; bytecode file offset 0xfbc8"
!EtasOilTask methodsFor: 'recovered'!
priority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    priority := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000be4; bytecode file offset 0xfbec"
!EtasOilTask methodsFor: 'recovered'!
schedule: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schedule := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c18; bytecode file offset 0xfc10"
!EtasOilTask methodsFor: 'recovered'!
activation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    activation := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c3c; bytecode file offset 0xfc34"
!EtasOilTask methodsFor: 'recovered'!
autostart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    autostart := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c60; bytecode file offset 0xfc58"
!EtasOilTask methodsFor: 'recovered'!
appMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    appMode := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000e20; bytecode file offset 0xfe24"
!EtasOilTask methodsFor: 'recovered'!
genAutostart
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autostart.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'TRUE'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'FALSE'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20000f00; bytecode file offset 0xff08"
!EtasOilTask methodsFor: 'recovered'!
genSchedule
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScheduleCooperative.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'FULL'.
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
            recoveredStack0 := (recoveredStack0) schedule.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x2000110c; bytecode file offset 0x1011c"
!EtasOilTask methodsFor: 'recovered'!
genResourceOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScheduleCooperative.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'RESOURCE = %1;'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) cooperativeResourceName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) newlinePutAll: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

