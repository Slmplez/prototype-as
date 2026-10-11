"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200128a0; bytecode file offset 0x912098"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
arrayClass
    | recoveredValue0 |
    recoveredValue0 := CTreeSearchObjectRecordArray.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014658; bytecode file offset 0x912098"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
proxyClass
    | recoveredValue0 |
    recoveredValue0 := DBObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e338; bytecode file offset 0x98ac08"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (108).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e3a4; bytecode file offset 0x98ac5c"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
objectState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (112).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e3f8; bytecode file offset 0x98acbc"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
referenceState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (116).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e47c; bytecode file offset 0x98ad34"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
blobSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (126).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d3750; bytecode file offset 0x9d0008"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
classNameByteArray
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyFrom: (38) to: (69).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d376c; bytecode file offset 0x9d0024"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := (self) copyPSZStringFrom: (38) to: (70).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d8140; bytecode file offset 0x9d49f8"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
blobSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (126) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200e2514; bytecode file offset 0x9dedd8"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
hashName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fieldOffsetAt: ('name').
    recoveredValue2 := (recoveredValue1) + (32).
    recoveredValue3 := (self) uint32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e815c; bytecode file offset 0x9e4a50"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fieldOffsetAt: ('version').
    recoveredValue2 := recoveredArg1.
    (self) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e8174; bytecode file offset 0x9e4a50"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
objectState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fieldOffsetAt: ('objectState').
    recoveredValue2 := recoveredArg1.
    (self) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e818c; bytecode file offset 0x9e4a50"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
referenceState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fieldOffsetAt: ('referenceState').
    recoveredValue2 := recoveredArg1.
    (self) uint32At: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f50cc; bytecode file offset 0x9f1984"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
baseNameByteArray
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyFrom: (71) to: (102).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f5104; bytecode file offset 0x9f19bc"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
baseName
    | recoveredValue0 |
    recoveredValue0 := (self) copyPSZStringFrom: (71) to: (107).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2011eb80; bytecode file offset 0xa1b444"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
hashName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fieldOffsetAt: ('name').
    recoveredValue2 := (recoveredValue1) + (32).
    recoveredValue3 := recoveredArg1.
    (self) uint32At: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2014c4c8; bytecode file offset 0xa48d88"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
pcId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (8) with: (self) startingAt: (3).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014c4f0; bytecode file offset 0xa48db0"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
pcFirstVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (8) with: (self) startingAt: (21).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014c518; bytecode file offset 0xa48dd8"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
tsThisVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (10).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (10) with: (self) startingAt: (11).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014c540; bytecode file offset 0xa48e00"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
tsFirstVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (10).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (10) with: (self) startingAt: (29).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014c568; bytecode file offset 0xa48e28"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
thisVersionId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (18) with: (self) startingAt: (3).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014c590; bytecode file offset 0xa48e50"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
firstVersionId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (18) with: (self) startingAt: (21).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20152f14; bytecode file offset 0xa4f808"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
includesClassNameSubstring: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) fieldOffsetAt: ('className').
    recoveredValue6 := (recoveredValue1) string: (self) includes: (recoveredValue3) startingAt: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20152f38; bytecode file offset 0xa4f808"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
includesNameSubstring: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) fieldOffsetAt: ('name').
    recoveredValue6 := (recoveredValue1) string: (self) includes: (recoveredValue3) startingAt: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016e604; bytecode file offset 0xa6aec4"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
transactionId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (2) with: (self) startingAt: (124).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e6e88; bytecode file offset 0xae377c"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
baseName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) nameLength.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := 'name'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := (recoveredStack5) fieldOffsetAt: (recoveredStack6).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6eac; bytecode file offset 0xae377c"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) classNameLength.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := 'className'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := (recoveredStack5) fieldOffsetAt: (recoveredStack6).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f8ddc; bytecode file offset 0xaf56ac"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
getStringClass
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) className.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e3338; bytecode file offset 0xcdfc24"
!CTreeSearchObjectRecord methodsFor: 'recovered'!
blobAsString
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) blobSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStringClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytesPerCharacter.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytesPerCharacter.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) blobStart.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) blobStart.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) memcpyFrom: (recoveredStack1) to: (recoveredStack2) into: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

