"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a7e4; bytecode file offset 0x908be4"
!CwProgressBar methodsFor: 'recovered'!
fractionComplete
    | recoveredValue0 |
    recoveredValue0 := (self) value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20137ed4; bytecode file offset 0xa347a0"
!CwProgressBar methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) view.
    recoveredValue4 := (recoveredValue3) widgetProgressLabel.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) labelString: (recoveredValue6).
    (recoveredValue4) updateWidget.
    ^self
! !

"ASDBase.ic method 0x201429b8; bytecode file offset 0xa3f27c"
!CwProgressBar methodsFor: 'recovered'!
fractionComplete: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) minimum.
    recoveredValue1 := (self) maximum.
    recoveredValue2 := (self) minimum.
    recoveredValue3 := (recoveredValue1) - (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) * (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asInteger.
    recoveredValue7 := (recoveredValue0) + (recoveredValue6).
    (self) value: (recoveredValue7).
    ^self
! !

