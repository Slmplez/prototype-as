"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040b88; bytecode file offset 0x93d83c"
!RBMultiBitMeasureData methodsFor: 'recovered'!
wName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := data.
    recoveredValue1 := (recoveredValue0) baseName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d5d4; bytecode file offset 0x959f30"
!RBMultiBitMeasureData methodsFor: 'recovered'!
measureRate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := data.
    recoveredValue1 := (recoveredValue0) access.
    recoveredValue2 := (recoveredValue1) measureRate.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006a2f0; bytecode file offset 0x966bdc"
!RBMultiBitMeasureData methodsFor: 'recovered'!
bitDatas
    | recoveredValue0 |
    recoveredValue0 := bitDatas.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a5ac; bytecode file offset 0x967a18"
!RBMultiBitMeasureData methodsFor: 'recovered'!
offlineDataId
    | recoveredValue0 |
    recoveredValue0 := offlineDataId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b4a0; bytecode file offset 0x96873c"
!RBMultiBitMeasureData methodsFor: 'recovered'!
xFormula
    | recoveredValue0 |
    recoveredValue0 := xFormula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d000; bytecode file offset 0x9998c0"
!RBMultiBitMeasureData methodsFor: 'recovered'!
hasOutputChannels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := outputChannels.
    recoveredValue1 := (recoveredValue0) notEmpty.
    recoveredValue2 := (self) hasOnlineDLLOutputChannels.
    recoveredValue3 := (recoveredValue1) | (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c1e34; bytecode file offset 0x9beac8"
!RBMultiBitMeasureData methodsFor: 'recovered'!
offlineDataId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offlineDataId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c23e8; bytecode file offset 0x9bf474"
!RBMultiBitMeasureData methodsFor: 'recovered'!
xFormula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xFormula := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ee4e4; bytecode file offset 0x9eada4"
!RBMultiBitMeasureData methodsFor: 'recovered'!
removeFromDevice
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := data.
    recoveredValue1 := (recoveredValue0) access.
    recoveredValue2 := (recoveredValue1) removeMeasureData.
    recoveredLocal1 := recoveredValue2.
    (self) activeInDevice: (false).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fa06c; bytecode file offset 0x9f6a08"
!RBMultiBitMeasureData methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    bitDatas := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200fe9dc; bytecode file offset 0x9fb29c"
!RBMultiBitMeasureData methodsFor: 'recovered'!
printShortOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super printShortOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printBitDatasOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201743c8; bytecode file offset 0xa70c8c"
!RBMultiBitMeasureData methodsFor: 'recovered'!
removeBitData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := bitDatas.
    recoveredValue1 := (recoveredValue0) asOrderedCollection.
    bitDatas := recoveredValue1.
    recoveredValue2 := bitDatas.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    (recoveredValue2) remove: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue5 := bitDatas.
    recoveredValue6 := (recoveredValue5) asArray.
    bitDatas := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x201b460c; bytecode file offset 0xab0ed8"
!RBMultiBitMeasureData methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    (recoveredValue1) nextPutAll: ('Bits: ').
    recoveredValue3 := recoveredArg1.
    (self) printBitDatasOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201dd41c; bytecode file offset 0xad9ce0"
!RBMultiBitMeasureData methodsFor: 'recovered'!
addToDevice
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) addMeasureData.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) device.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) activeInDevice: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) activeInDevice: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024f990; bytecode file offset 0xb4c268"
!RBMultiBitMeasureData methodsFor: 'recovered'!
addBitData: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) baseData.
    recoveredValue2 := data.
    recoveredValue3 := (recoveredValue2) access.
    (recoveredValue1) access: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) defaultBitMeasureDataClass.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) createForData: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := bitDatas.
    recoveredValue9 := (recoveredValue8) asOrderedCollection.
    bitDatas := recoveredValue9.
    recoveredValue10 := bitDatas.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := bitDatas.
    recoveredValue13 := (recoveredValue12) asArray.
    bitDatas := recoveredValue13.
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2026f6f4; bytecode file offset 0xb6bfc4"
!RBMultiBitMeasureData methodsFor: 'recovered'!
getAndOutputValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readOnlineData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasInverse.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := data.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysType.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := data.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) transformedByInverse: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) convert: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) outputValue: (recoveredStack1) physValue: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027a014; bytecode file offset 0xb768d8"
!RBMultiBitMeasureData methodsFor: 'recovered'!
outputValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super outputValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := bitDatas.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := bitDatas.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) outputValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 38]] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a1e58; bytecode file offset 0xb9e72c"
!RBMultiBitMeasureData methodsFor: 'recovered'!
printBitDatasOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: (' (').
    recoveredValue1 := bitDatas.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) wName.
    recoveredBlock13Value3 := (recoveredBlock13Value2) printString.
    recoveredBlock13Value4 := (recoveredBlock13Value3) , (' ').
    recoveredBlock13Value5 := (recoveredBlock13Value0) nextPutAll: (recoveredBlock13Value4).
    recoveredBlock13Value5
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: (')').
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

