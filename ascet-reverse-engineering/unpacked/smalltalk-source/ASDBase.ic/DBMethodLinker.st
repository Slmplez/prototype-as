"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006cfd8; bytecode file offset 0x969c04"
!DBMethodLinker methodsFor: 'recovered'!
dbInterface
    | recoveredValue0 |
    recoveredValue0 := dbInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200900d4; bytecode file offset 0x98c990"
!DBMethodLinker methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) PreDefinedBehaviors.
    behaviors := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c3768; bytecode file offset 0x9c058c"
!DBMethodLinker methodsFor: 'recovered'!
dbInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e0fcc; bytecode file offset 0x9dd884"
!DBMethodLinker methodsFor: 'recovered'!
atEnd
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := position.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := contents.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) > (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20123f34; bytecode file offset 0xa207f8"
!DBMethodLinker methodsFor: 'recovered'!
initialize: recoveredArg1 behaviors: recoveredArg2 position: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) PreDefinedBehaviors.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    behaviors := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    (self) setContents: (recoveredValue4) position: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20136e84; bytecode file offset 0xa3373c"
!DBMethodLinker methodsFor: 'recovered'!
readSmallInt8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := contents.
    recoveredValue1 := position.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) int8At: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := position.
    recoveredValue5 := (recoveredValue4) + (1).
    position := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20158d74; bytecode file offset 0xa5562c"
!DBMethodLinker methodsFor: 'recovered'!
readSmallInt16
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := contents.
    recoveredValue1 := position.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) int16At: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := position.
    recoveredValue5 := (recoveredValue4) + (2).
    position := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20158d94; bytecode file offset 0xa5564c"
!DBMethodLinker methodsFor: 'recovered'!
readSmallInt
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := contents.
    recoveredValue1 := position.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) int32At: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := position.
    recoveredValue5 := (recoveredValue4) + (4).
    position := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2022f048; bytecode file offset 0xb2b908"
!DBMethodLinker methodsFor: 'recovered'!
readByteArray: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) readLiteralSize.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := position.
    recoveredValue5 := (recoveredValue4) + (-1).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := position.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    position := recoveredValue8.
    recoveredValue9 := contents.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := position.
    recoveredValue12 := (recoveredValue11) + (-2).
    recoveredValue13 := recoveredLocal3.
    (recoveredValue9) memcpyFrom: (recoveredValue10) to: (recoveredValue12) into: (recoveredValue13) startingAt: (0).
    recoveredValue14 := recoveredLocal3.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2023a840; bytecode file offset 0xb37100"
!DBMethodLinker methodsFor: 'recovered'!
readF4ByteArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := position.
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := position.
    recoveredValue5 := (recoveredValue4) + (4).
    position := recoveredValue5.
    recoveredValue6 := contents.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := position.
    recoveredValue9 := (recoveredValue8) + (-2).
    recoveredValue10 := recoveredLocal3.
    (recoveredValue6) memcpyFrom: (recoveredValue7) to: (recoveredValue9) into: (recoveredValue10) startingAt: (0).
    recoveredValue11 := recoveredLocal3.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2023a950; bytecode file offset 0xb3722c"
!DBMethodLinker methodsFor: 'recovered'!
readString
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) readLiteralSize.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := String.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := position.
    recoveredValue5 := (recoveredValue4) + (-1).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := position.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    position := recoveredValue8.
    recoveredValue9 := contents.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := position.
    recoveredValue12 := (recoveredValue11) + (-2).
    recoveredValue13 := recoveredLocal3.
    (recoveredValue9) memcpyFrom: (recoveredValue10) to: (recoveredValue12) into: (recoveredValue13) startingAt: (0).
    recoveredValue14 := recoveredLocal3.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2023a968; bytecode file offset 0xb3722c"
!DBMethodLinker methodsFor: 'recovered'!
readByteArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) readLiteralSize.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := ByteArray.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue1) new: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := position.
    recoveredValue5 := (recoveredValue4) + (-1).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := position.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    position := recoveredValue8.
    recoveredValue9 := contents.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := position.
    recoveredValue12 := (recoveredValue11) + (-2).
    recoveredValue13 := recoveredLocal3.
    (recoveredValue9) memcpyFrom: (recoveredValue10) to: (recoveredValue12) into: (recoveredValue13) startingAt: (0).
    recoveredValue14 := recoveredLocal3.
    ^recoveredValue14
! !

"ASDBase.ic method 0x202d6774; bytecode file offset 0xbd303c"
!DBMethodLinker methodsFor: 'recovered'!
readGlobalIdByteArray: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) readLiteralSize.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := ByteArray.
    recoveredValue2 := (recoveredValue1) new: (20).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := position.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := position.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    position := recoveredValue7.
    recoveredValue8 := contents.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := position.
    recoveredValue11 := (recoveredValue10) + (-2).
    recoveredValue12 := recoveredLocal3.
    (recoveredValue8) memcpyFrom: (recoveredValue9) to: (recoveredValue11) into: (recoveredValue12) startingAt: (8).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) size.
    recoveredValue16 := (recoveredValue15) + (-1).
    recoveredValue17 := recoveredLocal3.
    (recoveredValue13) memcpyFrom: (0) to: (recoveredValue16) into: (recoveredValue17) startingAt: (0).
    recoveredValue18 := recoveredLocal3.
    ^recoveredValue18
! !

"ASDBase.ic method 0x2047fefc; bytecode file offset 0xd7c7e0"
!DBMethodLinker methodsFor: 'recovered'!
readObject
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := position.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint8At: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := position.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint8At: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 18.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) readLiteral.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) readSmallInt16.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 25.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) readSmallInt8.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := behaviors.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) emCreate: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) readObjectFrom: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'missing class for '.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

