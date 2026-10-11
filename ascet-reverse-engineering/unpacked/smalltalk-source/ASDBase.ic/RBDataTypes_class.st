"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002b50; bytecode file offset 0x8ffcfc"
!RBDataTypes class methodsFor: 'recovered'!
otherSignedType
    ^self
! !

"ASDBase.ic method 0x200090e0; bytecode file offset 0x908be4"
!RBDataTypes class methodsFor: 'recovered'!
apiIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) asCType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000959c; bytecode file offset 0x908be4"
!RBDataTypes class methodsFor: 'recovered'!
ileBitSize
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a1fc; bytecode file offset 0x908be4"
!RBDataTypes class methodsFor: 'recovered'!
cgUniqueTypeIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) asCType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014cac; bytecode file offset 0x912098"
!RBDataTypes class methodsFor: 'recovered'!
IdentifierToDataTypeMapping
    | recoveredValue0 |
    recoveredValue0 := IdentifierToDataTypeMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015d4c; bytecode file offset 0x92209c"
!RBDataTypes class methodsFor: 'recovered'!
asap2Types
    ^#('UBYTE' 'BYTE' 'SBYTE' 'UWORD' 'WORD' 'SWORD' 'ULONG' 'LONG' 'SLONG' 'FLOAT32_IEEE' 'FLOAT64_IEEE')
! !

"ASDBase.ic method 0x2001c5c8; bytecode file offset 0x92209c"
!RBDataTypes class methodsFor: 'recovered'!
listOfCustomizableDataTypes
    | recoveredValue0 |
    recoveredValue0 := (OrderedCollection new) add: (RBBit); add: (RBImplBoolean); add: (RBInt8Unsigned); add: (RBInt8Signed); add: (RBInt16Unsigned); add: (RBInt16Signed); add: (RBInt32Unsigned); add: (RBInt32Signed); add: (RBFloat32); add: (RBFloat); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022208; bytecode file offset 0x92209c"
!RBDataTypes class methodsFor: 'recovered'!
longDisplayName
    ^'not defined long display name'
! !

"ASDBase.ic method 0x200271c0; bytecode file offset 0x923b14"
!RBDataTypes class methodsFor: 'recovered'!
clearIdentifierToDataTypeMapping
    | recoveredValue0 |
    recoveredValue0 := (self) IdentifierToDataTypeMapping: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028cf4; bytecode file offset 0x934580"
!RBDataTypes class methodsFor: 'recovered'!
asCType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createDefault.
    recoveredValue1 := (recoveredValue0) asCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200336e4; bytecode file offset 0x934580"
!RBDataTypes class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003da58; bytecode file offset 0x93bf94"
!RBDataTypes class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200424c4; bytecode file offset 0x93edc4"
!RBDataTypes class methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interval.
    recoveredValue1 := (recoveredValue0) copy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059a48; bytecode file offset 0x956314"
!RBDataTypes class methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 pos: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) error: ('L1-Message: Wrong TypeSize!!').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082df0; bytecode file offset 0x97f714"
!RBDataTypes class methodsFor: 'recovered'!
IdentifierToDataTypeMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    IdentifierToDataTypeMapping := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089bc8; bytecode file offset 0x986668"
!RBDataTypes class methodsFor: 'recovered'!
getDisplayLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDDataTypeNameMappingOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionCustomDataTypeFor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c5b88; bytecode file offset 0x9c25bc"
!RBDataTypes class methodsFor: 'recovered'!
interval: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interval := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010a8bc; bytecode file offset 0xa071a4"
!RBDataTypes class methodsFor: 'recovered'!
getIdentifierToDataTypeMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) IdentifierToDataTypeMapping.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) initializeIdentifierToDataTypeMapping.
    recoveredBlock5Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20120688; bytecode file offset 0xa1cf64"
!RBDataTypes class methodsFor: 'recovered'!
getDataTypeForIdentifier: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getDataTypeClassForIdentifier: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280c8f64Arg1 | 
    | block280c8f64Value0 block280c8f64Value1 |
    block280c8f64Value0 := block280c8f64Arg1.
    block280c8f64Value1 := (block280c8f64Value0) createDefault.
    block280c8f64Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20270a44; bytecode file offset 0xb6d31c"
!RBDataTypes class methodsFor: 'recovered'!
getDataTypeClassForIdentifier: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_91165'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'sint#*'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIdentifierToDataTypeMapping.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dc124; bytecode file offset 0xbd89f8"
!RBDataTypes class methodsFor: 'recovered'!
initializeIdentifierToDataTypeMapping
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allSubclasses.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) apiIdentifier.
    recoveredBlock11Value2 := [:recoveredBlock11Block22Arg1 | 
    | recoveredBlock11Block22Value0 recoveredBlock11Block22Value1 recoveredBlock11Block22Value2 recoveredBlock11Block22Value3 |
    recoveredBlock11Block22Value0 := recoveredLocal1.
    recoveredBlock11Block22Value1 := recoveredBlock11Block22Arg1.
    recoveredBlock11Block22Value2 := recoveredBlock11Arg1.
    recoveredBlock11Block22Value3 := (recoveredBlock11Block22Value0) at: (recoveredBlock11Block22Value1) put: (recoveredBlock11Block22Value2).
    recoveredBlock11Block22Value3
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) ifNotNil: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) IdentifierToDataTypeMapping: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20379290; bytecode file offset 0xc75b5c"
!RBDataTypes class methodsFor: 'recovered'!
typeForLabel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allSubclasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) createDefault.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) asCType.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 50] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := 's'.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) , (recoveredBlock5Stack3).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 50] ifFalse: [recoveredBlock5PC := 40].
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack2 := 's'.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) , (recoveredBlock5Stack3).
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) createDefault.
    ^recoveredValue5
! !

"ASDBase.ic method 0x204e0aac; bytecode file offset 0xddd3d8"
!RBDataTypes class methodsFor: 'recovered'!
fromASAP2DataType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2Types.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'UBYTE'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'BYTE'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := RBInt8Unsigned.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'UWORD'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'WORD'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := RBInt16Unsigned.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'ULONG'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'LONG'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := RBInt32Unsigned.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'SBYTE'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := RBInt8Signed.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'SWORD'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := RBInt16Signed.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 'SLONG'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := RBInt32Signed.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'FLOAT32_IEEE'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := RBFloat32.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := 'FLOAT64_IEEE'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := RBFloat.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := 'Unknow type '.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := ' Return Float64'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := RBFloat.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

