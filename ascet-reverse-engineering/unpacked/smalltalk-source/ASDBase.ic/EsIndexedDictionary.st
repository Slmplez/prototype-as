"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20076e3c; bytecode file offset 0x9757c8"
!EsIndexedDictionary methodsFor: 'recovered'!
abrIsIndexableCollection
    ^true
! !

"ASDBase.ic method 0x20081f48; bytecode file offset 0x97e9b0"
!EsIndexedDictionary methodsFor: 'recovered'!
abtIndexKeysAndValuesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := lookupTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082020; bytecode file offset 0x97e9b0"
!EsIndexedDictionary methodsFor: 'recovered'!
indexKeysAndValuesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := lookupTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20096f00; bytecode file offset 0x9937fc"
!EsIndexedDictionary methodsFor: 'recovered'!
, recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) shallowCopy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addAll: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20131e10; bytecode file offset 0xa2e6d8"
!EsIndexedDictionary methodsFor: 'recovered'!
abtPrimitiveCloneWithRecursionSet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) species.
    recoveredValue2 := (self) size.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) at: (self) put: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) abtPrimitiveCloneFrom: (self) withRecursionSet: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201887fc; bytecode file offset 0xa850d8"
!EsIndexedDictionary methodsFor: 'recovered'!
abrRenameKey: recoveredArg1 to: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := [
    | block280d0974Value0 block280d0974Value1 |
    block280d0974Value0 := ExCLDTValueOutOfRange.
    block280d0974Value1 := (block280d0974Value0) signalWith: (2).
    block280d0974Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) abrRenameKey: (recoveredStack1) to: (recoveredStack2) ifPresent: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021d3f4; bytecode file offset 0xb19cc4"
!EsIndexedDictionary methodsFor: 'recovered'!
abrRenameKey: recoveredArg1 to: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := [
    | block280db9a8Value0 block280db9a8Value1 |
    block280db9a8Value0 := ExCLDTValueOutOfRange.
    block280db9a8Value1 := (block280db9a8Value0) signalWith: (2).
    block280db9a8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [
    | block280db9ccValue0 block280db9ccValue1 |
    block280db9ccValue0 := ExCLDTKeyNotFound.
    block280db9ccValue1 := (block280db9ccValue0) signal.
    block280db9ccValue1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) abrRenameKey: (recoveredStack1) to: (recoveredStack2) ifPresent: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20250c98; bytecode file offset 0xb4d55c"
!EsIndexedDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := lookupTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := (recoveredBlock9Value0) value.
    ^recoveredBlock9Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := sequenceableValues.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) at: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) value: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202d4f9c; bytecode file offset 0xbd1864"
!EsIndexedDictionary methodsFor: 'recovered'!
associationsReverseDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sequenceableKeys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := sequenceableKeys.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := Association.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := sequenceableValues.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) key: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 12] ifFalse: [recoveredPC := 47]] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034ee84; bytecode file offset 0xc4b748"
!EsIndexedDictionary methodsFor: 'recovered'!
abrRenameKey: recoveredArg1 to: recoveredArg2 ifPresent: recoveredArg3 ifAbsent: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := lookupTable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := recoveredArg4.
    recoveredBlock24Value1 := (recoveredBlock24Value0) value.
    ^recoveredBlock24Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := lookupTable.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := sequenceableKeys.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040d704; bytecode file offset 0xd09fdc"
!EsIndexedDictionary methodsFor: 'recovered'!
abtPrimitiveCloneFrom: recoveredArg1 withRecursionSet: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg2.
    recoveredBlock12Value2 := (recoveredBlock12Value0) max: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal1 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue0) abtIndexKeysAndValuesDo: (recoveredValue1).
    recoveredValue2 := Array.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) + (4).
    recoveredValue5 := (recoveredValue2) new: (recoveredValue4).
    sequenceableKeys := recoveredValue5.
    recoveredValue6 := Array.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) + (4).
    recoveredValue9 := (recoveredValue6) new: (recoveredValue8).
    sequenceableValues := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 recoveredBlock55Value9 recoveredBlock55Value10 recoveredBlock55Value11 recoveredBlock55Value12 recoveredBlock55Value13 |
    recoveredBlock55Value0 := lookupTable.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := recoveredBlock55Arg2.
    (recoveredBlock55Value0) at: (recoveredBlock55Value1) put: (recoveredBlock55Value2).
    recoveredBlock55Value3 := sequenceableKeys.
    recoveredBlock55Value4 := recoveredBlock55Arg2.
    recoveredBlock55Value5 := recoveredBlock55Arg1.
    (recoveredBlock55Value3) at: (recoveredBlock55Value4) put: (recoveredBlock55Value5).
    recoveredBlock55Value6 := sequenceableValues.
    recoveredBlock55Value7 := recoveredBlock55Arg2.
    recoveredBlock55Value8 := recoveredArg1.
    recoveredBlock55Value9 := recoveredBlock55Arg2.
    recoveredBlock55Value10 := (recoveredBlock55Value8) atIndex: (recoveredBlock55Value9).
    recoveredBlock55Value11 := recoveredArg2.
    recoveredBlock55Value12 := (recoveredBlock55Value10) abtCloneWithRecursionSet: (recoveredBlock55Value11).
    recoveredBlock55Value13 := (recoveredBlock55Value6) at: (recoveredBlock55Value7) put: (recoveredBlock55Value12).
    recoveredBlock55Value13
].
    (recoveredValue10) indexKeysAndValuesDo: (recoveredValue11).
    (self) recalculateFreeIndexes.
    ^self
! !

