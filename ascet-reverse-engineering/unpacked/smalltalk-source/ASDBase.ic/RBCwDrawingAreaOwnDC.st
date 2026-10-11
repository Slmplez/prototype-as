"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013218; bytecode file offset 0x912098"
!RBCwDrawingAreaOwnDC methodsFor: 'recovered'!
osWidgetClass
    | recoveredValue0 |
    recoveredValue0 := RBOSCompositeOwnDC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20033b04; bytecode file offset 0x934580"
!RBCwDrawingAreaOwnDC methodsFor: 'recovered'!
preShiftAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userData.
    recoveredValue1 := (recoveredValue0) preShiftAllowed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059038; bytecode file offset 0x956284"
!RBCwDrawingAreaOwnDC methodsFor: 'recovered'!
onlineDLLPreShiftXAxis: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) onlineDLLPreShiftXAxis: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063be4; bytecode file offset 0x961970"
!RBCwDrawingAreaOwnDC methodsFor: 'recovered'!
onlineDLLTriggerEnd
    | recoveredValue0 |
    recoveredValue0 := (self) userData.
    (recoveredValue0) onlineDLLTriggerEnd.
    ^self
! !

"ASDBase.ic method 0x200847d4; bytecode file offset 0x981ca4"
!RBCwDrawingAreaOwnDC methodsFor: 'recovered'!
setExtendedWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) userData: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ae578; bytecode file offset 0x9ab034"
!RBCwDrawingAreaOwnDC methodsFor: 'recovered'!
onlineDLLTriggerStartAt: recoveredArg1 endTime: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) onlineDLLTriggerStartAt: (recoveredValue1) endTime: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fefe0; bytecode file offset 0x9fb918"
!RBCwDrawingAreaOwnDC methodsFor: 'recovered'!
onlineDLLShiftXAxis: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) onlineDLLShiftXAxis: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

