"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f4f0; bytecode file offset 0x92209c"
!ASAP2Characteristic methodsFor: 'recovered'!
getModuleSetMethod
    ^'addCharacteristic:'
! !

"ASDBase.ic method 0x20023f48; bytecode file offset 0x92209c"
!ASAP2Characteristic methodsFor: 'recovered'!
duplicateNameExtension
    ^'_c'
! !

"ASDBase.ic method 0x2004d474; bytecode file offset 0x949d5c"
!ASAP2Characteristic methodsFor: 'recovered'!
number
    | recoveredValue0 |
    recoveredValue0 := (self) at: (18).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d50c; bytecode file offset 0x949df4"
!ASAP2Characteristic methodsFor: 'recovered'!
axisDescription
    | recoveredValue0 |
    recoveredValue0 := (self) at: (19).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d568; bytecode file offset 0x949ec8"
!ASAP2Characteristic methodsFor: 'recovered'!
bitMask
    | recoveredValue0 |
    recoveredValue0 := (self) at: (20).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d654; bytecode file offset 0x949f3c"
!ASAP2Characteristic methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := (self) at: (21).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d6e0; bytecode file offset 0x949fbc"
!ASAP2Characteristic methodsFor: 'recovered'!
dependentCharacteristic
    | recoveredValue0 |
    recoveredValue0 := (self) at: (22).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d730; bytecode file offset 0x94a018"
!ASAP2Characteristic methodsFor: 'recovered'!
virtualCharacteristic
    | recoveredValue0 |
    recoveredValue0 := (self) at: (23).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d7e0; bytecode file offset 0x94a0c8"
!ASAP2Characteristic methodsFor: 'recovered'!
maxRefresh
    | recoveredValue0 |
    recoveredValue0 := (self) at: (24).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d83c; bytecode file offset 0x94a118"
!ASAP2Characteristic methodsFor: 'recovered'!
comparisonQuantity
    | recoveredValue0 |
    recoveredValue0 := (self) at: (25).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d8b0; bytecode file offset 0x94a168"
!ASAP2Characteristic methodsFor: 'recovered'!
annotation
    | recoveredValue0 |
    recoveredValue0 := (self) at: (26).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d8d0; bytecode file offset 0x94a1b8"
!ASAP2Characteristic methodsFor: 'recovered'!
displayIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) at: (27).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d938; bytecode file offset 0x94a238"
!ASAP2Characteristic methodsFor: 'recovered'!
matrixDim
    | recoveredValue0 |
    recoveredValue0 := (self) at: (28).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d9c0; bytecode file offset 0x94a290"
!ASAP2Characteristic methodsFor: 'recovered'!
guardRails
    | recoveredValue0 |
    recoveredValue0 := (self) at: (30).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004da04; bytecode file offset 0x94a2bc"
!ASAP2Characteristic methodsFor: 'recovered'!
calibrationAccess
    | recoveredValue0 |
    recoveredValue0 := (self) at: (31).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004da68; bytecode file offset 0x94a32c"
!ASAP2Characteristic methodsFor: 'recovered'!
refMemorySegment
    | recoveredValue0 |
    recoveredValue0 := (self) at: (33).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004da94; bytecode file offset 0x94a34c"
!ASAP2Characteristic methodsFor: 'recovered'!
mapList
    | recoveredValue0 |
    recoveredValue0 := (self) at: (34).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20056758; bytecode file offset 0x9531e4"
!ASAP2Characteristic methodsFor: 'recovered'!
getSetMethodFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := (recoveredValue1) getCharacteristicSetMethod.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200955b8; bytecode file offset 0x991fb4"
!ASAP2Characteristic methodsFor: 'recovered'!
addBackReferenceTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) addToRefCharacteristic: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a05f0; bytecode file offset 0x99ceac"
!ASAP2Characteristic methodsFor: 'recovered'!
slew
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) at: (32) ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a4968; bytecode file offset 0x9a1ad4"
!ASAP2Characteristic methodsFor: 'recovered'!
getNumberAttribut: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) number: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4e58; bytecode file offset 0x9a1ad4"
!ASAP2Characteristic methodsFor: 'recovered'!
getMatrixDim: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIntegerList: (recoveredValue0).
    (self) matrixDim: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a50e8; bytecode file offset 0x9a1ad4"
!ASAP2Characteristic methodsFor: 'recovered'!
getComparisonQuantity: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    (self) comparisonQuantity: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a7d24; bytecode file offset 0x9a45f4"
!ASAP2Characteristic methodsFor: 'recovered'!
number: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (18) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7dcc; bytecode file offset 0x9a4690"
!ASAP2Characteristic methodsFor: 'recovered'!
axisDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (19) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7dfc; bytecode file offset 0x9a4720"
!ASAP2Characteristic methodsFor: 'recovered'!
bitMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (20) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7e8c; bytecode file offset 0x9a478c"
!ASAP2Characteristic methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (21) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7f10; bytecode file offset 0x9a47f8"
!ASAP2Characteristic methodsFor: 'recovered'!
dependentCharacteristic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (22) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7f70; bytecode file offset 0x9a4858"
!ASAP2Characteristic methodsFor: 'recovered'!
virtualCharacteristic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (23) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7fb8; bytecode file offset 0x9a48d0"
!ASAP2Characteristic methodsFor: 'recovered'!
maxRefresh: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (24) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8048; bytecode file offset 0x9a4924"
!ASAP2Characteristic methodsFor: 'recovered'!
comparisonQuantity: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (25) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a809c; bytecode file offset 0x9a4978"
!ASAP2Characteristic methodsFor: 'recovered'!
annotation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (26) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a80d8; bytecode file offset 0x9a49cc"
!ASAP2Characteristic methodsFor: 'recovered'!
displayIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (27) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8174; bytecode file offset 0x9a4a2c"
!ASAP2Characteristic methodsFor: 'recovered'!
matrixDim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (28) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a818c; bytecode file offset 0x9a4a74"
!ASAP2Characteristic methodsFor: 'recovered'!
dataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (29) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a81e0; bytecode file offset 0x9a4aa4"
!ASAP2Characteristic methodsFor: 'recovered'!
guardRails: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (30) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8204; bytecode file offset 0x9a4ad4"
!ASAP2Characteristic methodsFor: 'recovered'!
calibrationAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (31) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a824c; bytecode file offset 0x9a4b04"
!ASAP2Characteristic methodsFor: 'recovered'!
slew: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (32) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8264; bytecode file offset 0x9a4b28"
!ASAP2Characteristic methodsFor: 'recovered'!
refMemorySegment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (33) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8294; bytecode file offset 0x9a4b4c"
!ASAP2Characteristic methodsFor: 'recovered'!
mapList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (34) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2010115c; bytecode file offset 0x9fdf08"
!ASAP2Characteristic methodsFor: 'recovered'!
putIn: recoveredArg1 dependentCharacteristic: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentCharacteristic.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
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

"ASDBase.ic method 0x2010141c; bytecode file offset 0x9fdf08"
!ASAP2Characteristic methodsFor: 'recovered'!
putIn: recoveredArg1 virtualCharacteristic: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) virtualCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) virtualCharacteristic.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
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

"ASDBase.ic method 0x20125cdc; bytecode file offset 0xa22600"
!ASAP2Characteristic methodsFor: 'recovered'!
getVirtualCharacteristic: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2VirtualCharacteristic.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) virtualCharacteristic: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20125f60; bytecode file offset 0xa2287c"
!ASAP2Characteristic methodsFor: 'recovered'!
getOnlyIFData: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASAP2CharacteristicIFData.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) keyWords.
    (recoveredValue2) getIFData: (recoveredValue3) keyWords: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20126800; bytecode file offset 0xa230c0"
!ASAP2Characteristic methodsFor: 'recovered'!
changeToType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) type: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createCharacteristicType: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) changeTo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201786e8; bytecode file offset 0xa75004"
!ASAP2Characteristic methodsFor: 'recovered'!
renameTo: recoveredArg1 module: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) removeCharacteristic: (self).
    recoveredValue1 := recoveredArg1.
    (self) renameTo: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    (recoveredValue2) addCharacteristic: (self).
    recoveredValue3 := recoveredArg2.
    (recoveredValue3) modified.
    recoveredValue4 := (self) name.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2017bd48; bytecode file offset 0xa78614"
!ASAP2Characteristic methodsFor: 'recovered'!
getDependentCharacteristic: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASAP2DependentCharacteristic.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) dependentCharacteristic: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) name.
    (recoveredValue3) name: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) getFrom: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2017ccbc; bytecode file offset 0xa79580"
!ASAP2Characteristic methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) type.
    recoveredLocal1 := recoveredValue0.
    (self) type: (nil).
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    (self) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20180e68; bytecode file offset 0xa7d728"
!ASAP2Characteristic methodsFor: 'recovered'!
dataType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 29.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super dataType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 29.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a75e0; bytecode file offset 0xaa3eac"
!ASAP2Characteristic methodsFor: 'recovered'!
addAxisDescription: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisDescription.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) axisDescription: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b6a20; bytecode file offset 0xab33d0"
!ASAP2Characteristic methodsFor: 'recovered'!
putIn: recoveredArg1 axisDescription: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) putIn: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7f40; bytecode file offset 0xad4814"
!ASAP2Characteristic methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) axisDescription: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) ifData: (recoveredValue3).
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    (self) functionList: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201f5f24; bytecode file offset 0xaf27e8"
!ASAP2Characteristic methodsFor: 'recovered'!
createCharacteristicType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) TypeClasses.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    self
].
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) createFrom: (self).
    recoveredBlock15Value1
].
    recoveredValue5 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3) ifPresent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2021d8b8; bytecode file offset 0xb1a17c"
!ASAP2Characteristic methodsFor: 'recovered'!
putIn: recoveredArg1 comparisonQuantity: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comparisonQuantity.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) comparisonQuantity.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021dc58; bytecode file offset 0xb1a6c4"
!ASAP2Characteristic methodsFor: 'recovered'!
putIn: recoveredArg1 matrixDim: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) matrixDim.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) matrixDim.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) integerList: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021dcac; bytecode file offset 0xb1a6c4"
!ASAP2Characteristic methodsFor: 'recovered'!
putIn: recoveredArg1 numberAttribut: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) number.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) number.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) integer: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20238818; bytecode file offset 0xb350e8"
!ASAP2Characteristic methodsFor: 'recovered'!
createBytesObjectsBitMask: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitMask.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitMask.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitsSetForDataType: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytesSizeWithBitMask.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) growBytesTo: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20241be0; bytecode file offset 0xb3e4b8"
!ASAP2Characteristic methodsFor: 'recovered'!
createBytesObject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BytesCharacteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBytesObjectsBitMask: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) createBytesObjectIn: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisDescription.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBytesObject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) axisDescription: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20249adc; bytecode file offset 0xb463bc"
!ASAP2Characteristic methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super minimizeCollections.
    recoveredValue0 := (self) axisDescription.
    recoveredValue1 := (recoveredValue0) asArray.
    (self) axisDescription: (recoveredValue1).
    recoveredValue2 := (self) functionList.
    recoveredValue3 := (recoveredValue2) asArray.
    (self) functionList: (recoveredValue3).
    recoveredValue4 := (self) ifData.
    recoveredValue5 := (recoveredValue4) asArray.
    (self) ifData: (recoveredValue5).
    recoveredValue6 := (self) annotation.
    recoveredValue7 := (recoveredValue6) asArray.
    (self) annotation: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20276370; bytecode file offset 0xb72ca0"
!ASAP2Characteristic methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putLongNameIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putTypeIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putAddressIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putRecordLayoutIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putMaxDiffIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putCompuMethodIn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putLowerBoundIn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) putUpperBoundIn: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202dc6f4; bytecode file offset 0xbd8fe0"
!ASAP2Characteristic methodsFor: 'recovered'!
getAxisDescription: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2AxisDescription.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := '/'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := #($x $y $z).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) axisDescription.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := [
    $-
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) addAxisDescription: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) getFrom: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20311b50; bytecode file offset 0xc0e430"
!ASAP2Characteristic methodsFor: 'recovered'!
getMapList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyWords.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getStringList: (recoveredStack2) upToOneOff: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) mapList: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextWordBySeparators.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) endKeyWord.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextWordBySeparators.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyWords.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'getMapList:'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) position: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031c0a4; bytecode file offset 0xc18990"
!ASAP2Characteristic methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getLongName: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getType: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getAddress: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getRecordLayout: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) getMaxDiff: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) getCompuMethod: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) getLowerBound: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (self) getUpperBound: (recoveredValue9).
    (self) readOnly: (false).
    recoveredValue10 := recoveredArg1.
    (self) parse: (recoveredValue10).
    recoveredValue11 := (self) type.
    recoveredValue12 := (self) createCharacteristicType: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20323e64; bytecode file offset 0xc20760"
!ASAP2Characteristic methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeDefault.
    recoveredValue0 := TypeClasses.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue0) keyAtValue: (recoveredValue1).
    (self) type: (recoveredValue2).
    (self) address: (0).
    (self) recordLayout: ('recordLayoutName').
    (self) maxDiff: (#[0 0 0 0 0 0 0 0]).
    (self) compuMethod: ('compuMethodName').
    (self) lowerBound: (#[0 0 0 0 0 0 0 0]).
    (self) upperBound: (#[0 0 0 0 0 0 0 0]).
    (self) readOnly: (false).
    recoveredValue3 := (self) defaultBitMask.
    (self) bitMask: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203479e8; bytecode file offset 0xc442d0"
!ASAP2Characteristic methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) recordLayout.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) recordLayout: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) slew.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) slew: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) comparisonQuantity.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) comparisonQuantity: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapList.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) mapList.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:block280ee434Arg1 | 
    | block280ee434Value0 block280ee434Value1 |
    block280ee434Value0 := block280ee434Arg1.
    block280ee434Value1 := (block280ee434Value0) comments.
    block280ee434Value1
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) mapList: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20353cc0; bytecode file offset 0xc50590"
!ASAP2Characteristic methodsFor: 'recovered'!
putIn: recoveredArg1 mapList: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mapList.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := recoveredArg1.
    (self) putNewLineIn: (recoveredBlock5Value0).
    recoveredBlock5Value1 := recoveredArg1.
    (self) putBeginIn: (recoveredBlock5Value1).
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := recoveredArg2.
    (self) putIn: (recoveredBlock5Value2) string: (recoveredBlock5Value3).
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    (self) putIn: (recoveredBlock5Value4) stringList: (recoveredBlock5Value5).
    recoveredBlock5Value6 := recoveredArg1.
    (self) putNewLineIn: (recoveredBlock5Value6).
    recoveredBlock5Value7 := recoveredArg1.
    (self) putEndIn: (recoveredBlock5Value7).
    recoveredBlock5Value8 := recoveredArg1.
    recoveredBlock5Value9 := recoveredArg2.
    recoveredBlock5Value10 := (self) putIn: (recoveredBlock5Value8) string: (recoveredBlock5Value9).
    recoveredBlock5Value10
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2036dfa0; bytecode file offset 0xc6a884"
!ASAP2Characteristic methodsFor: 'recovered'!
createASAP2ObjectReferences: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super createASAP2ObjectReferences: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) comparisonQuantity.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) comparisonQuantity.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurementNamed: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := SCASAP2DBMissingMeasurement.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) comparisonQuantity.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) comparisonQuantity: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapList.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) mapList.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectCReferencesIn: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) mapList: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20478058; bytecode file offset 0xd7495c"
!ASAP2Characteristic methodsFor: 'recovered'!
convertToASD
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'CURVE'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGVariable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isFixed.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) isGroup.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOneDCharTableParam: (recoveredStack1) fixed: (recoveredStack2) group: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'MAP'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := SGVariable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) isFixed.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) isGroup.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTwoDCharTableParam: (recoveredStack1) fixed: (recoveredStack2) group: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'VALUE'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitMask.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := SGVariable.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBoolean.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) setParameter: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := SGVariable.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContinuousParam: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'VAL_BLK'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := SGVariable.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) createVectorParam: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) setToExported.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) elementName: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) longName.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) comment: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204946dc; bytecode file offset 0xd90fd4"
!ASAP2Characteristic methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super selectObjectsFrom: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordLayout.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) at: (recoveredBlock25Value1).
    recoveredBlock25Value3 := (self) recordLayout: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifInteger: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisDescription.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := recoveredArg1.
    recoveredBlock46Value2 := (recoveredBlock46Value0) selectObjectsFrom: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) slew.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := recoveredArg1.
    recoveredBlock63Value1 := recoveredBlock63Arg1.
    recoveredBlock63Value2 := (recoveredBlock63Value0) at: (recoveredBlock63Value1).
    recoveredBlock63Value3 := (self) slew: (recoveredBlock63Value2).
    recoveredBlock63Value3
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) comparisonQuantity.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 |
    recoveredBlock84Value0 := recoveredArg1.
    recoveredBlock84Value1 := recoveredBlock84Arg1.
    recoveredBlock84Value2 := (recoveredBlock84Value0) at: (recoveredBlock84Value1).
    recoveredBlock84Value3 := (self) comparisonQuantity: (recoveredBlock84Value2).
    recoveredBlock84Value3
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapList.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 |
    recoveredBlock104Value0 := recoveredBlock104Arg1.
    recoveredBlock104Value1 := [:recoveredBlock104Block111Arg1 | 
    | recoveredBlock104Block111Value0 recoveredBlock104Block111Value1 recoveredBlock104Block111Value2 |
    recoveredBlock104Block111Value0 := recoveredArg1.
    recoveredBlock104Block111Value1 := recoveredBlock104Block111Arg1.
    recoveredBlock104Block111Value2 := (recoveredBlock104Block111Value0) at: (recoveredBlock104Block111Value1).
    recoveredBlock104Block111Value2
].
    recoveredBlock104Value2 := (recoveredBlock104Value0) inject: (recoveredBlock104Value1).
    recoveredBlock104Value3 := (self) mapList: (recoveredBlock104Value2).
    recoveredBlock104Value3
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

