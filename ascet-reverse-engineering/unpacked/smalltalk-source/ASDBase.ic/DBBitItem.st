"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005cc0; bytecode file offset 0x902744"
!DBBitItem methodsFor: 'recovered'!
asDBFormulaLiteral: recoveredArg1 offset: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006710; bytecode file offset 0x908be4"
!DBBitItem methodsFor: 'recovered'!
recordBitOffset
    | recoveredValue0 |
    recoveredValue0 := (self) bitOffset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c5b0; bytecode file offset 0x92209c"
!DBBitItem methodsFor: 'recovered'!
asap2DataType
    ^'BOOL'
! !

"ASDBase.ic method 0x20023900; bytecode file offset 0x92209c"
!DBBitItem methodsFor: 'recovered'!
iconString
    ^'ElementTypeVariableLogic'
! !

"ASDBase.ic method 0x20038a9c; bytecode file offset 0x935c54"
!DBBitItem methodsFor: 'recovered'!
cast: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asBoolean.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cb88; bytecode file offset 0x93bf94"
!DBBitItem methodsFor: 'recovered'!
createPhysType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBBoolean.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059f24; bytecode file offset 0x956800"
!DBBitItem methodsFor: 'recovered'!
getItem: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006844c; bytecode file offset 0x965b90"
!DBBitItem methodsFor: 'recovered'!
bitMask
    | recoveredValue0 |
    recoveredValue0 := mask.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200699b0; bytecode file offset 0x966bdc"
!DBBitItem methodsFor: 'recovered'!
bitIndex
    | recoveredValue0 |
    recoveredValue0 := bitIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072348; bytecode file offset 0x96ee04"
!DBBitItem methodsFor: 'recovered'!
recordBitSize
    ^1
! !

"ASDBase.ic method 0x20072390; bytecode file offset 0x96ee04"
!DBBitItem methodsFor: 'recovered'!
noOfBits
    ^1
! !

"ASDBase.ic method 0x2008409c; bytecode file offset 0x980950"
!DBBitItem methodsFor: 'recovered'!
convert: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) > (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009ac0c; bytecode file offset 0x9974c4"
!DBBitItem methodsFor: 'recovered'!
putIn: recoveredArg1 item: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) putIn: (recoveredValue1) boolean: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bf90c; bytecode file offset 0x9bd228"
!DBBitItem methodsFor: 'recovered'!
bitMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mask := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1640; bytecode file offset 0x9bdf14"
!DBBitItem methodsFor: 'recovered'!
bitIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5550; bytecode file offset 0x9d1e10"
!DBBitItem methodsFor: 'recovered'!
bitOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super bitOffset.
    recoveredValue1 := (self) bitIndex.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (-1).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010d71c; bytecode file offset 0xa09fd4"
!DBBitItem methodsFor: 'recovered'!
bitMaskFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    mask := 0.
    recoveredValue0 := mask.
    recoveredValue1 := bitIndex.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    mask := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2011fb68; bytecode file offset 0xa1c424"
!DBBitItem methodsFor: 'recovered'!
printBitOffsetOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($.).
    recoveredValue1 := bitIndex.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20198b9c; bytecode file offset 0xa95470"
!DBBitItem methodsFor: 'recovered'!
createDataElement
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBDataBoolean.
    recoveredValue1 := (self) createImplType.
    recoveredValue2 := (recoveredValue0) createForType: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := RBDataDescription.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (self) name.
    recoveredValue7 := (recoveredValue5) name: (recoveredValue6).
    (recoveredValue3) description: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2019a12c; bytecode file offset 0xa96a00"
!DBBitItem methodsFor: 'recovered'!
createDataElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBDataBoolean.
    recoveredValue1 := (self) createImplType.
    recoveredValue2 := (recoveredValue0) createForType: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := RBDataDescription.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (self) name.
    recoveredValue7 := (recoveredValue5) name: (recoveredValue6).
    (recoveredValue3) description: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201f5480; bytecode file offset 0xaf1d44"
!DBBitItem methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitIndex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitIndex.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitMask.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitMask.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202299a4; bytecode file offset 0xb26264"
!DBBitItem methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bitIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            bitIndex := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) putItemArray: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) putItemBool: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028eb70; bytecode file offset 0xb8b440"
!DBBitItem methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := bitIndex.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'bitIndex  : '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := bitIndex.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'noOfBits : '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) noOfBits.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) cr.
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

"ASDBase.ic method 0x20290c2c; bytecode file offset 0xb8d504"
!DBBitItem methodsFor: 'recovered'!
mapFormatString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) dbFormatString.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue2) nextPut: ($.).
    recoveredValue5 := bitIndex.
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) printOn: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) nextPut: ($.).
    recoveredValue9 := (self) noOfBits.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) printOn: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) contents.
    ^recoveredValue12
! !

