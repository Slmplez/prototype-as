"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000040; bytecode file offset 0x10088"
!AbtTypeField methodsFor: 'recovered'!
createRecordStructure
    ^self
! !

"abtdah.ic method 0x200000a0; bytecode file offset 0x100e0"
!AbtTypeField methodsFor: 'recovered'!
createRecordStructureAlignedTo: recoveredArg1
    ^self
! !

"abtdah.ic method 0x200000e4; bytecode file offset 0x10284"
!AbtTypeField methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000018c; bytecode file offset 0x10284"
!AbtTypeField methodsFor: 'recovered'!
alignedLength
    | recoveredValue0 |
    recoveredValue0 := (self) length.
    ^recoveredValue0
! !

"abtdah.ic method 0x200001d4; bytecode file offset 0x10284"
!AbtTypeField methodsFor: 'recovered'!
newAbtRecord
    | recoveredValue0 |
    recoveredValue0 := (self) newRecord.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000318; bytecode file offset 0x10494"
!AbtTypeField methodsFor: 'recovered'!
indentChar
    | recoveredValue0 |
    recoveredValue0 := PrimErrSupportDLLMissing.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000033c; bytecode file offset 0x10494"
!AbtTypeField methodsFor: 'recovered'!
foreignRecordClass
    | recoveredValue0 |
    recoveredValue0 := AbtRecord.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000450; bytecode file offset 0x10494"
!AbtTypeField methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := AbtRecord.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000520; bytecode file offset 0x10580"
!AbtTypeField methodsFor: 'recovered'!
newForeignRecord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) newBlankRecord.
    recoveredValue1 := (recoveredValue0) setInitialValues.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000530; bytecode file offset 0x10580"
!AbtTypeField methodsFor: 'recovered'!
newRecord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) newBlankRecord.
    recoveredValue1 := (recoveredValue0) setInitialValues.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000694; bytecode file offset 0x106bc"
!AbtTypeField methodsFor: 'recovered'!
isVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := isVariant.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"abtdah.ic method 0x200006a4; bytecode file offset 0x106f4"
!AbtTypeField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) valueClass.
    ^recoveredValue1
! !

"abtdah.ic method 0x200006bc; bytecode file offset 0x106f4"
!AbtTypeField methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) length.
    ^recoveredValue1
! !

"abtdah.ic method 0x2000083c; bytecode file offset 0x108bc"
!AbtTypeField methodsFor: 'recovered'!
determineAlignmentSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) length.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) min: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20000a88; bytecode file offset 0x10ab8"
!AbtTypeField methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000a90; bytecode file offset 0x10ab8"
!AbtTypeField methodsFor: 'recovered'!
printOnContents
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000ac8; bytecode file offset 0x10b00"
!AbtTypeField methodsFor: 'recovered'!
offset
    | recoveredValue0 |
    recoveredValue0 := offset.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000af4; bytecode file offset 0x10b1c"
!AbtTypeField methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000b10; bytecode file offset 0x10b38"
!AbtTypeField methodsFor: 'recovered'!
initialValue
    | recoveredValue0 |
    recoveredValue0 := initialValue.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000b24; bytecode file offset 0x10b4c"
!AbtTypeField methodsFor: 'recovered'!
externalName
    | recoveredValue0 |
    recoveredValue0 := externalName.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000e04; bytecode file offset 0x10e2c"
!AbtTypeField methodsFor: 'recovered'!
isPointer
    ^false
! !

"abtdah.ic method 0x20000f4c; bytecode file offset 0x10f7c"
!AbtTypeField methodsFor: 'recovered'!
newRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) type: (self).
    ^recoveredValue2
! !

"abtdah.ic method 0x20001328; bytecode file offset 0x11354"
!AbtTypeField methodsFor: 'recovered'!
valueAtAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) valueInRecord: (recoveredValue0) parentOffset: (0).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001350; bytecode file offset 0x11390"
!AbtTypeField methodsFor: 'recovered'!
arrayOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) arrayOf.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) count: (recoveredValue2).
    ^recoveredValue0
! !

"abtdah.ic method 0x20001454; bytecode file offset 0x1148c"
!AbtTypeField methodsFor: 'recovered'!
arrayOf
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtArrayField.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) type.
    recoveredValue3 := (recoveredValue1) arrayType: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001698; bytecode file offset 0x116c4"
!AbtTypeField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) valueInRecord: (recoveredValue1) parentOffset: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x200019f8; bytecode file offset 0x11a28"
!AbtTypeField methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001a24; bytecode file offset 0x11a5c"
!AbtTypeField methodsFor: 'recovered'!
isVariant: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isVariant := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001a58; bytecode file offset 0x11a80"
!AbtTypeField methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offset := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001a7c; bytecode file offset 0x11aa4"
!AbtTypeField methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001a90; bytecode file offset 0x11ab8"
!AbtTypeField methodsFor: 'recovered'!
initialValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initialValue := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001aa4; bytecode file offset 0x11acc"
!AbtTypeField methodsFor: 'recovered'!
externalName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    externalName := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001cb8; bytecode file offset 0x11ce4"
!AbtTypeField methodsFor: 'recovered'!
initialize
    name := ''.
    offset := 0.
    ^self
! !

"abtdah.ic method 0x20001da4; bytecode file offset 0x11dec"
!AbtTypeField methodsFor: 'recovered'!
newForeignRecordAsBigEndian: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) newBlankRecord.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) bigEndian: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setInitialValues.
    ^recoveredValue0
! !

"abtdah.ic method 0x20001db8; bytecode file offset 0x11dec"
!AbtTypeField methodsFor: 'recovered'!
newForeignRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) newBlankRecord.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) codePage: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setInitialValues.
    ^recoveredValue0
! !

"abtdah.ic method 0x20001e00; bytecode file offset 0x11e2c"
!AbtTypeField methodsFor: 'recovered'!
valueAtAddress: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (self) put: (recoveredValue0) intoRecord: (recoveredValue1) parentOffset: (0).
    ^self
! !

"abtdah.ic method 0x20002168; bytecode file offset 0x12194"
!AbtTypeField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := offset.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (recoveredValue0) valueInRecord: (recoveredValue1) atOffset: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x20002508; bytecode file offset 0x12534"
!AbtTypeField methodsFor: 'recovered'!
setValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := initialValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := initialValue.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20002550; bytecode file offset 0x12584"
!AbtTypeField methodsFor: 'recovered'!
printDescrOn: recoveredArg1 indent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) cr.
    ^self
! !

"abtdah.ic method 0x20002574; bytecode file offset 0x125a0"
!AbtTypeField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := offset.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) put: (recoveredValue1) intoRecord: (recoveredValue2) atOffset: (recoveredValue5).
    ^recoveredValue6
! !

"abtdah.ic method 0x20002824; bytecode file offset 0x1285c"
!AbtTypeField methodsFor: 'recovered'!
newForeignRecordWithCodePage: recoveredArg1 asBigEndian: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) newBlankRecord.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) bigEndian: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) codePage: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) setInitialValues.
    ^recoveredValue0
! !

"abtdah.ic method 0x20002930; bytecode file offset 0x12970"
!AbtTypeField methodsFor: 'recovered'!
pointerTo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtCPointerField.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) type.
    (recoveredValue2) pointerType: (recoveredValue3).
    recoveredValue4 := (self) name.
    recoveredValue5 := (recoveredValue1) name: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x20003098; bytecode file offset 0x130dc"
!AbtTypeField methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) , ('(').
    recoveredValue4 := (self) printOnContents.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (')').
    recoveredValue7 := (recoveredValue0) nextPutAll: (recoveredValue6).
    ^recoveredValue7
! !

"abtdah.ic method 0x200031b0; bytecode file offset 0x131e8"
!AbtTypeField methodsFor: 'recovered'!
newBlankRecord
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) type: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := offset.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) baseOffset: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20003988; bytecode file offset 0x139bc"
!AbtTypeField methodsFor: 'recovered'!
variantField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := isVariant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSymbol.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := isVariant.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := isVariant.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdah.ic method 0x20003d9c; bytecode file offset 0x13ddc"
!AbtTypeField methodsFor: 'recovered'!
setInitialValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := initialValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbtCompoundType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) initialValue.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) initialValue.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

