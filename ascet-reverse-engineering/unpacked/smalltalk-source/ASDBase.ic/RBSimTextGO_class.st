"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20035e34; bytecode file offset 0x934580"
!RBSimTextGO class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201051dc; bytecode file offset 0xa01b38"
!RBSimTextGO class methodsFor: 'recovered'!
MonitorColors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MonitorColors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) InitMonitorColors.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := MonitorColors.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040adf4; bytecode file offset 0xd076ec"
!RBSimTextGO class methodsFor: 'recovered'!
InitMonitorColors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    MonitorColors := recoveredValue1.
    recoveredValue2 := MonitorColors.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := (recoveredValue3) red: (0) green: (0) blue: (65535).
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue5 := MonitorColors.
    recoveredValue6 := CgRGBColor.
    recoveredValue7 := (recoveredValue6) red: (17990) green: (33410) blue: (46260).
    (recoveredValue5) at: (2) put: (recoveredValue7).
    recoveredValue8 := MonitorColors.
    recoveredValue9 := CgRGBColor.
    recoveredValue10 := (recoveredValue9) red: (25700) green: (38293) blue: (60909).
    (recoveredValue8) at: (3) put: (recoveredValue10).
    recoveredValue11 := MonitorColors.
    recoveredValue12 := CgRGBColor.
    recoveredValue13 := (recoveredValue12) red: (0) green: (49087) blue: (65535).
    (recoveredValue11) at: (4) put: (recoveredValue13).
    recoveredValue14 := MonitorColors.
    recoveredValue15 := CgRGBColor.
    recoveredValue16 := (recoveredValue15) red: (34695) green: (52942) blue: (60395).
    (recoveredValue14) at: (5) put: (recoveredValue16).
    ^self
! !

