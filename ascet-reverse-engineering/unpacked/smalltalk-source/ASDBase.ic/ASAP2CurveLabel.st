"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2012da50; bytecode file offset 0xa2a314"
!ASAP2CurveLabel methodsFor: 'recovered'!
compuMethodXLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ca650Arg1 | 
    | block280ca650Value0 block280ca650Value1 |
    block280ca650Value0 := block280ca650Arg1.
    block280ca650Value1 := (block280ca650Value0) compuMethodLabel.
    block280ca650Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012dac4; bytecode file offset 0xa2a388"
!ASAP2CurveLabel methodsFor: 'recovered'!
compuMethodYLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ca6e0Arg1 | 
    | block280ca6e0Value0 block280ca6e0Value1 |
    block280ca6e0Value0 := block280ca6e0Arg1.
    block280ca6e0Value1 := (block280ca6e0Value0) compuMethodLabel.
    block280ca6e0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012db20; bytecode file offset 0xa2a3e4"
!ASAP2CurveLabel methodsFor: 'recovered'!
compuMethodZLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ca74cArg1 | 
    | block280ca74cValue0 block280ca74cValue1 |
    block280ca74cValue0 := block280ca74cArg1.
    block280ca74cValue1 := (block280ca74cValue0) compuMethodLabel.
    block280ca74cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018348c; bytecode file offset 0xa7fd54"
!ASAP2CurveLabel methodsFor: 'recovered'!
setMaxBounds
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super setMaxBounds.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d053cArg1 | 
    | block280d053cValue0 block280d053cValue1 |
    block280d053cValue0 := block280d053cArg1.
    block280d053cValue1 := (block280d053cValue0) setMaxBounds.
    block280d053cValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186fb4; bytecode file offset 0xa8389c"
!ASAP2CurveLabel methodsFor: 'recovered'!
compuMethodXLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) axisDescription.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) compuMethod: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) at: (1) ifPresent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018701c; bytecode file offset 0xa838f0"
!ASAP2CurveLabel methodsFor: 'recovered'!
compuMethodYLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) axisDescription.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) compuMethod: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) at: (2) ifPresent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20187070; bytecode file offset 0xa83958"
!ASAP2CurveLabel methodsFor: 'recovered'!
compuMethodZLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) axisDescription.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) compuMethod: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) at: (3) ifPresent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20187098; bytecode file offset 0xa83958"
!ASAP2CurveLabel methodsFor: 'recovered'!
inputz: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) axisDescription.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) input: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) at: (3) ifPresent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018729c; bytecode file offset 0xa83b60"
!ASAP2CurveLabel methodsFor: 'recovered'!
inputx: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) axisDescription.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) input: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue1) at: (1) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201872cc; bytecode file offset 0xa83b90"
!ASAP2CurveLabel methodsFor: 'recovered'!
inputy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) axisDescription.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) input: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue1) at: (2) ifPresent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2026b92c; bytecode file offset 0xb681f8"
!ASAP2CurveLabel methodsFor: 'recovered'!
hasChildrenA2lEdit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisDescription.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisDescription.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) input.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isASAP2.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 31].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := true.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) compuMethod.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isASAP2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c4ef8; bytecode file offset 0xcc17e0"
!ASAP2CurveLabel methodsFor: 'recovered'!
inputx
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280f69a8Arg1 | 
    | block280f69a8Value0 block280f69a8Value1 block280f69a8Value2 block280f69a8Value3 |
    block280f69a8Value0 := block280f69a8Arg1.
    block280f69a8Value1 := (block280f69a8Value0) input.
    block280f69a8Value2 := [
    | block280f69a8Block8Stack0 block280f69a8Block8Stack1 block280f69a8Block8Stack2 block280f69a8Block8Stack3 block280f69a8Block8PC block280f69a8Block8Step block280f69a8Block8Done block280f69a8Block8Result |
    block280f69a8Block8Stack0 := nil.
    block280f69a8Block8PC := 14.
    block280f69a8Block8Done := false.
    [block280f69a8Block8Done not] whileTrue: [
        block280f69a8Block8Step := block280f69a8Block8PC.
        block280f69a8Block8Step = 14 ifTrue: [
            block280f69a8Block8Stack1 := block280f69a8Arg1.
            block280f69a8Block8PC := 17.
        ].
        block280f69a8Block8Step = 17 ifTrue: [
            block280f69a8Block8Stack1 := (block280f69a8Block8Stack1) getReferencedAxisPts.
            block280f69a8Block8PC := 19.
        ].
        block280f69a8Block8Step = 19 ifTrue: [
            block280f69a8Block8Stack2 := [:block280f69ccArg1 | 
    | block280f69ccStack0 block280f69ccStack1 block280f69ccStack2 block280f69ccPC block280f69ccStep block280f69ccDone block280f69ccResult |
    block280f69ccStack0 := self.
    block280f69ccPC := 4.
    block280f69ccDone := false.
    [block280f69ccDone not] whileTrue: [
        block280f69ccStep := block280f69ccPC.
        block280f69ccStep = 4 ifTrue: [
            block280f69ccStack1 := block280f69ccArg1.
            block280f69ccPC := 5.
        ].
        block280f69ccStep = 5 ifTrue: [
            block280f69ccStack1 := (block280f69ccStack1) isString.
            block280f69ccPC := 7.
        ].
        block280f69ccStep = 7 ifTrue: [
            (block280f69ccStack1) ifTrue: [block280f69ccPC := 10] ifFalse: [block280f69ccPC := 14].
        ].
        block280f69ccStep = 10 ifTrue: [
            block280f69ccStack1 := nil.
            block280f69ccPC := 11.
        ].
        block280f69ccStep = 11 ifTrue: [
            block280f69ccPC := 28.
        ].
        block280f69ccStep = 14 ifTrue: [
            block280f69ccStack1 := block280f69ccArg1.
            block280f69ccPC := 15.
        ].
        block280f69ccStep = 15 ifTrue: [
            block280f69ccStack1 := (block280f69ccStack1) isCalibrationCurve.
            block280f69ccPC := 17.
        ].
        block280f69ccStep = 17 ifTrue: [
            (block280f69ccStack1) ifTrue: [block280f69ccPC := 20] ifFalse: [block280f69ccPC := 26].
        ].
        block280f69ccStep = 20 ifTrue: [
            block280f69ccStack1 := block280f69ccArg1.
            block280f69ccPC := 21.
        ].
        block280f69ccStep = 21 ifTrue: [
            block280f69ccStack1 := (block280f69ccStack1) inputx.
            block280f69ccPC := 23.
        ].
        block280f69ccStep = 23 ifTrue: [
            block280f69ccPC := 28.
        ].
        block280f69ccStep = 26 ifTrue: [
            block280f69ccStack1 := block280f69ccArg1.
            block280f69ccPC := 27.
        ].
        block280f69ccStep = 27 ifTrue: [
            block280f69ccStack1 := (block280f69ccStack1) input.
            block280f69ccPC := 28.
        ].
        block280f69ccStep = 28 ifTrue: [
            block280f69ccResult := block280f69ccStack1.
            block280f69ccDone := true.
        ].
    ].
    block280f69ccResult
].
            block280f69a8Block8PC := 21.
        ].
        block280f69a8Block8Step = 21 ifTrue: [
            block280f69a8Block8PC := 49.
        ].
        block280f69a8Block8Step = 49 ifTrue: [
            block280f69a8Block8Stack1 := (block280f69a8Block8Stack1) ifNotNil: (block280f69a8Block8Stack2).
            block280f69a8Block8PC := 51.
        ].
        block280f69a8Block8Step = 51 ifTrue: [
            block280f69a8Block8Result := block280f69a8Block8Stack1.
            block280f69a8Block8Done := true.
        ].
    ].
    block280f69a8Block8Result
].
    block280f69a8Value3 := (block280f69a8Value1) ifNil: (block280f69a8Value2).
    block280f69a8Value3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := device.
    recoveredBlock67Value2 := (recoveredBlock67Value0) labelFor: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c4f88; bytecode file offset 0xcc1870"
!ASAP2CurveLabel methodsFor: 'recovered'!
inputy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280f69f0Arg1 | 
    | block280f69f0Value0 block280f69f0Value1 block280f69f0Value2 block280f69f0Value3 |
    block280f69f0Value0 := block280f69f0Arg1.
    block280f69f0Value1 := (block280f69f0Value0) input.
    block280f69f0Value2 := [
    | block280f69f0Block8Stack0 block280f69f0Block8Stack1 block280f69f0Block8Stack2 block280f69f0Block8Stack3 block280f69f0Block8PC block280f69f0Block8Step block280f69f0Block8Done block280f69f0Block8Result |
    block280f69f0Block8Stack0 := nil.
    block280f69f0Block8PC := 14.
    block280f69f0Block8Done := false.
    [block280f69f0Block8Done not] whileTrue: [
        block280f69f0Block8Step := block280f69f0Block8PC.
        block280f69f0Block8Step = 14 ifTrue: [
            block280f69f0Block8Stack1 := block280f69f0Arg1.
            block280f69f0Block8PC := 17.
        ].
        block280f69f0Block8Step = 17 ifTrue: [
            block280f69f0Block8Stack1 := (block280f69f0Block8Stack1) getReferencedAxisPts.
            block280f69f0Block8PC := 19.
        ].
        block280f69f0Block8Step = 19 ifTrue: [
            block280f69f0Block8Stack2 := [:block280f6a14Arg1 | 
    | block280f6a14Stack0 block280f6a14Stack1 block280f6a14Stack2 block280f6a14PC block280f6a14Step block280f6a14Done block280f6a14Result |
    block280f6a14Stack0 := self.
    block280f6a14PC := 4.
    block280f6a14Done := false.
    [block280f6a14Done not] whileTrue: [
        block280f6a14Step := block280f6a14PC.
        block280f6a14Step = 4 ifTrue: [
            block280f6a14Stack1 := block280f6a14Arg1.
            block280f6a14PC := 5.
        ].
        block280f6a14Step = 5 ifTrue: [
            block280f6a14Stack1 := (block280f6a14Stack1) isString.
            block280f6a14PC := 7.
        ].
        block280f6a14Step = 7 ifTrue: [
            (block280f6a14Stack1) ifTrue: [block280f6a14PC := 10] ifFalse: [block280f6a14PC := 14].
        ].
        block280f6a14Step = 10 ifTrue: [
            block280f6a14Stack1 := nil.
            block280f6a14PC := 11.
        ].
        block280f6a14Step = 11 ifTrue: [
            block280f6a14PC := 28.
        ].
        block280f6a14Step = 14 ifTrue: [
            block280f6a14Stack1 := block280f6a14Arg1.
            block280f6a14PC := 15.
        ].
        block280f6a14Step = 15 ifTrue: [
            block280f6a14Stack1 := (block280f6a14Stack1) isCalibrationCurve.
            block280f6a14PC := 17.
        ].
        block280f6a14Step = 17 ifTrue: [
            (block280f6a14Stack1) ifTrue: [block280f6a14PC := 20] ifFalse: [block280f6a14PC := 26].
        ].
        block280f6a14Step = 20 ifTrue: [
            block280f6a14Stack1 := block280f6a14Arg1.
            block280f6a14PC := 21.
        ].
        block280f6a14Step = 21 ifTrue: [
            block280f6a14Stack1 := (block280f6a14Stack1) inputy.
            block280f6a14PC := 23.
        ].
        block280f6a14Step = 23 ifTrue: [
            block280f6a14PC := 28.
        ].
        block280f6a14Step = 26 ifTrue: [
            block280f6a14Stack1 := block280f6a14Arg1.
            block280f6a14PC := 27.
        ].
        block280f6a14Step = 27 ifTrue: [
            block280f6a14Stack1 := (block280f6a14Stack1) input.
            block280f6a14PC := 28.
        ].
        block280f6a14Step = 28 ifTrue: [
            block280f6a14Result := block280f6a14Stack1.
            block280f6a14Done := true.
        ].
    ].
    block280f6a14Result
].
            block280f69f0Block8PC := 21.
        ].
        block280f69f0Block8Step = 21 ifTrue: [
            block280f69f0Block8PC := 49.
        ].
        block280f69f0Block8Step = 49 ifTrue: [
            block280f69f0Block8Stack1 := (block280f69f0Block8Stack1) ifNotNil: (block280f69f0Block8Stack2).
            block280f69f0Block8PC := 51.
        ].
        block280f69f0Block8Step = 51 ifTrue: [
            block280f69f0Block8Result := block280f69f0Block8Stack1.
            block280f69f0Block8Done := true.
        ].
    ].
    block280f69f0Block8Result
].
    block280f69f0Value3 := (block280f69f0Value1) ifNil: (block280f69f0Value2).
    block280f69f0Value3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := device.
    recoveredBlock67Value2 := (recoveredBlock67Value0) labelFor: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c5018; bytecode file offset 0xcc1900"
!ASAP2CurveLabel methodsFor: 'recovered'!
inputz
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280f6a38Arg1 | 
    | block280f6a38Value0 block280f6a38Value1 block280f6a38Value2 block280f6a38Value3 |
    block280f6a38Value0 := block280f6a38Arg1.
    block280f6a38Value1 := (block280f6a38Value0) input.
    block280f6a38Value2 := [
    | block280f6a38Block8Stack0 block280f6a38Block8Stack1 block280f6a38Block8Stack2 block280f6a38Block8Stack3 block280f6a38Block8PC block280f6a38Block8Step block280f6a38Block8Done block280f6a38Block8Result |
    block280f6a38Block8Stack0 := nil.
    block280f6a38Block8PC := 14.
    block280f6a38Block8Done := false.
    [block280f6a38Block8Done not] whileTrue: [
        block280f6a38Block8Step := block280f6a38Block8PC.
        block280f6a38Block8Step = 14 ifTrue: [
            block280f6a38Block8Stack1 := block280f6a38Arg1.
            block280f6a38Block8PC := 17.
        ].
        block280f6a38Block8Step = 17 ifTrue: [
            block280f6a38Block8Stack1 := (block280f6a38Block8Stack1) getReferencedAxisPts.
            block280f6a38Block8PC := 19.
        ].
        block280f6a38Block8Step = 19 ifTrue: [
            block280f6a38Block8Stack2 := [:block280f6a5cArg1 | 
    | block280f6a5cStack0 block280f6a5cStack1 block280f6a5cStack2 block280f6a5cPC block280f6a5cStep block280f6a5cDone block280f6a5cResult |
    block280f6a5cStack0 := self.
    block280f6a5cPC := 4.
    block280f6a5cDone := false.
    [block280f6a5cDone not] whileTrue: [
        block280f6a5cStep := block280f6a5cPC.
        block280f6a5cStep = 4 ifTrue: [
            block280f6a5cStack1 := block280f6a5cArg1.
            block280f6a5cPC := 5.
        ].
        block280f6a5cStep = 5 ifTrue: [
            block280f6a5cStack1 := (block280f6a5cStack1) isString.
            block280f6a5cPC := 7.
        ].
        block280f6a5cStep = 7 ifTrue: [
            (block280f6a5cStack1) ifTrue: [block280f6a5cPC := 10] ifFalse: [block280f6a5cPC := 14].
        ].
        block280f6a5cStep = 10 ifTrue: [
            block280f6a5cStack1 := nil.
            block280f6a5cPC := 11.
        ].
        block280f6a5cStep = 11 ifTrue: [
            block280f6a5cPC := 28.
        ].
        block280f6a5cStep = 14 ifTrue: [
            block280f6a5cStack1 := block280f6a5cArg1.
            block280f6a5cPC := 15.
        ].
        block280f6a5cStep = 15 ifTrue: [
            block280f6a5cStack1 := (block280f6a5cStack1) isCalibrationCurve.
            block280f6a5cPC := 17.
        ].
        block280f6a5cStep = 17 ifTrue: [
            (block280f6a5cStack1) ifTrue: [block280f6a5cPC := 20] ifFalse: [block280f6a5cPC := 26].
        ].
        block280f6a5cStep = 20 ifTrue: [
            block280f6a5cStack1 := block280f6a5cArg1.
            block280f6a5cPC := 21.
        ].
        block280f6a5cStep = 21 ifTrue: [
            block280f6a5cStack1 := (block280f6a5cStack1) inputz.
            block280f6a5cPC := 23.
        ].
        block280f6a5cStep = 23 ifTrue: [
            block280f6a5cPC := 28.
        ].
        block280f6a5cStep = 26 ifTrue: [
            block280f6a5cStack1 := block280f6a5cArg1.
            block280f6a5cPC := 27.
        ].
        block280f6a5cStep = 27 ifTrue: [
            block280f6a5cStack1 := (block280f6a5cStack1) input.
            block280f6a5cPC := 28.
        ].
        block280f6a5cStep = 28 ifTrue: [
            block280f6a5cResult := block280f6a5cStack1.
            block280f6a5cDone := true.
        ].
    ].
    block280f6a5cResult
].
            block280f6a38Block8PC := 21.
        ].
        block280f6a38Block8Step = 21 ifTrue: [
            block280f6a38Block8PC := 49.
        ].
        block280f6a38Block8Step = 49 ifTrue: [
            block280f6a38Block8Stack1 := (block280f6a38Block8Stack1) ifNotNil: (block280f6a38Block8Stack2).
            block280f6a38Block8PC := 51.
        ].
        block280f6a38Block8Step = 51 ifTrue: [
            block280f6a38Block8Result := block280f6a38Block8Stack1.
            block280f6a38Block8Done := true.
        ].
    ].
    block280f6a38Block8Result
].
    block280f6a38Value3 := (block280f6a38Value1) ifNil: (block280f6a38Value2).
    block280f6a38Value3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := device.
    recoveredBlock67Value2 := (recoveredBlock67Value0) labelFor: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204519dc; bytecode file offset 0xd4e2c4"
!ASAP2CurveLabel methodsFor: 'recovered'!
childrenA2lEdit
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisDescription.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisDescription.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) input.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 38] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) compuMethodLabel.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) axisPtsRef.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 60] ifFalse: [recoveredBlock18PC := 54].
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local1.
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) curveAxisRef.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack3.
            recoveredBlock18PC := 66.
        ].
        recoveredBlock18Step = 66 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 77] ifFalse: [recoveredBlock18PC := 70].
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local1.
            recoveredBlock18PC := 75.
        ].
        recoveredBlock18Step = 75 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 77.
        ].
        recoveredBlock18Step = 77 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) compuMethod.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) compuMethodLabel.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCurveAxis.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabels.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

