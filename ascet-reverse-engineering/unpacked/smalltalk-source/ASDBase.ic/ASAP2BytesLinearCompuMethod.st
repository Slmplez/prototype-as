"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004c1cc; bytecode file offset 0x948b80"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
refUnit
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200630e8; bytecode file offset 0x95f9dc"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
isLinearAndInvertible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) c1.
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073980; bytecode file offset 0x970b34"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
physPole
    ^nil
! !

"ASDBase.ic method 0x20073df8; bytecode file offset 0x970b34"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
implPole
    ^nil
! !

"ASDBase.ic method 0x2007764c; bytecode file offset 0x9757c8"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
isLinear
    ^true
! !

"ASDBase.ic method 0x2007971c; bytecode file offset 0x97c330"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
isLinearRational
    ^false
! !

"ASDBase.ic method 0x200a6cec; bytecode file offset 0x9a3694"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
refUnit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200cc39c; bytecode file offset 0x9c8f90"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
parameterValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) c0.
    recoveredValue2 := (self) c1.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20196dd4; bytecode file offset 0xa9369c"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
createAccessor: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := DBLinearFormulaItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scale.
    recoveredValue3 := (1) / (recoveredValue2).
    recoveredValue4 := (self) offset.
    recoveredValue5 := (self) scale.
    recoveredValue6 := (recoveredValue4) / (recoveredValue5).
    recoveredValue7 := (recoveredValue6) * (-1).
    recoveredValue8 := (recoveredValue0) create: (recoveredValue1) m: (recoveredValue3) offset: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20207dc0; bytecode file offset 0xb04690"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
createArrayAccessor: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := DBLinearFormulaItemArrayC.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) scale.
    recoveredValue6 := (1) / (recoveredValue5).
    (recoveredValue4) m: (recoveredValue6).
    recoveredValue7 := (self) offset.
    recoveredValue8 := (self) scale.
    recoveredValue9 := (recoveredValue7) / (recoveredValue8).
    recoveredValue10 := (recoveredValue9) * (-1).
    (recoveredValue3) offset: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2021b23c; bytecode file offset 0xb17b18"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
printFormForChannelCalibrationOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SCSensor.
    recoveredValue2 := (recoveredValue1) , (' = ').
    recoveredValue3 := (self) c0.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (' + ').
    recoveredValue7 := (self) c1.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , (' * ').
    recoveredValue11 := SCPhys.
    recoveredValue12 := (recoveredValue10) , (recoveredValue11).
    (recoveredValue0) nextPutAll: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x20275968; bytecode file offset 0xb72240"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
inverse
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) c1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super inverse.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) c0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) c1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) c0: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) c1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) c1: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20294e10; bytecode file offset 0xb916f0"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
coeffs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super coeffs: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) offset.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFloat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) c0: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFloat.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) c1: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) d0: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) d1: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a1120; bytecode file offset 0xb9d9fc"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
printFormOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SCPhys.
    recoveredValue2 := ('f(') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (') = ').
    (recoveredValue0) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) c0.
    (self) putIn: (recoveredValue4) number: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPutAll: (' + ').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) c1.
    (self) putIn: (recoveredValue7) number: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) nextPutAll: (' * ').
    recoveredValue11 := SCPhys.
    (recoveredValue9) nextPutAll: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2037c32c; bytecode file offset 0xc78c04"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
significantDigitsNeededIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) appliedInverseToNumber: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFloat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) appliedInverseToNumber: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) length.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bc554; bytecode file offset 0xcb8e28"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := (self) c0.
    recoveredBlock4Value1 := (self) c1.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value1) * (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value0) + (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) primitiveErrorCode.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := 7.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) = (recoveredBlock21Stack2).
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 36] ifFalse: [recoveredBlock21PC := 41].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack1 := PlusInfinity.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) primitiveErrorCode.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack2 := 59.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) = (recoveredBlock21Stack2).
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 50] ifFalse: [recoveredBlock21PC := 55].
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Stack1 := 0.
            recoveredBlock21PC := 52.
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) c1.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) sign.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) sign.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) * (recoveredBlock21Stack1).
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) * (recoveredBlock21Stack1).
            recoveredBlock21PC := 68.
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 71.
        ].
        recoveredBlock21Step = 71 ifTrue: [
            recoveredBlock21Stack0 := recoveredBlock21Arg1.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) exitWith: (recoveredBlock21Stack1).
            recoveredBlock21PC := 77.
        ].
        recoveredBlock21Step = 77 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203c7204; bytecode file offset 0xcc3adc"
!ASAP2BytesLinearCompuMethod methodsFor: 'recovered'!
appliedInverseToNumber: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (self) c0.
    recoveredBlock4Value2 := (recoveredBlock4Value0) - (recoveredBlock4Value1).
    recoveredBlock4Value3 := (self) c1.
    recoveredBlock4Value4 := (recoveredBlock4Value2) / (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) primitiveErrorCode.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack2 := 7.
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) = (recoveredBlock22Stack2).
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 38] ifFalse: [recoveredBlock22PC := 43].
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack1 := PlusInfinity.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) primitiveErrorCode.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack2 := 59.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) = (recoveredBlock22Stack2).
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 52] ifFalse: [recoveredBlock22PC := 57].
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack1 := 0.
            recoveredBlock22PC := 54.
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) c1.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) sign.
            recoveredBlock22PC := 60.
        ].
        recoveredBlock22Step = 60 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) sign.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) * (recoveredBlock22Stack1).
            recoveredBlock22PC := 66.
        ].
        recoveredBlock22Step = 66 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 69.
        ].
        recoveredBlock22Step = 69 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) * (recoveredBlock22Stack1).
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack0.
            recoveredBlock22PC := 73.
        ].
        recoveredBlock22Step = 73 ifTrue: [
            recoveredBlock22Stack0 := recoveredBlock22Arg1.
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) exitWith: (recoveredBlock22Stack1).
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack0.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

