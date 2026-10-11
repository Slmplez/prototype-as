"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012480; bytecode file offset 0x912098"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
autoSwitch
    | recoveredValue0 |
    recoveredValue0 := AutoSwitch.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013db8; bytecode file offset 0x912098"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
stringRepresentation
    | recoveredValue0 |
    recoveredValue0 := EtasFloatFormatterFCVTECVT.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005411c; bytecode file offset 0x951190"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
autoSwitch: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AutoSwitch := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3e7c; bytecode file offset 0x9e07ec"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
formatString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stringRepresentation.
    recoveredValue1 := (recoveredValue0) , (' ').
    recoveredValue2 := (self) autoSwitch.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20145dc4; bytecode file offset 0xa42688"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) autoSwitch.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2029eadc; bytecode file offset 0xb9b3b0"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 maxDigits: recoveredArg2 postDigits: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleInfinity: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) autoSwitch.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EtasEcvt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) floatToAscii: (recoveredStack1) maxDigits: (recoveredStack2) postDigits: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateDigits: (recoveredStack3) maxDigits: (recoveredStack4) postDigits: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) floatToAscii: (recoveredStack1) significantDigits: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029ebf8; bytecode file offset 0xb9b4c8"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 significantDigits: recoveredArg2 on: recoveredArg3 floatSeparator: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleInfinity: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) autoSwitch.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EtasEcvt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) floatToAscii: (recoveredStack1) significantDigits: (recoveredStack2) on: (recoveredStack3) floatSeparator: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            super floatToAscii: (recoveredStack1) significantDigits: (recoveredStack2) on: (recoveredStack3) floatSeparator: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fa8b8; bytecode file offset 0xbf718c"
!EtasFcvtAutoEcvt class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 maxDigits: recoveredArg2 postDigits: recoveredArg3 on: recoveredArg4 floatSeparator: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleInfinity: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) autoSwitch.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EtasEcvt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) floatToAscii: (recoveredStack1) maxDigits: (recoveredStack2) postDigits: (recoveredStack3) on: (recoveredStack4) floatSeparator: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) evaluateDigits: (recoveredStack3) maxDigits: (recoveredStack4) postDigits: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) floatToAscii: (recoveredStack1) significantDigits: (recoveredStack2) on: (recoveredStack3) floatSeparator: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

