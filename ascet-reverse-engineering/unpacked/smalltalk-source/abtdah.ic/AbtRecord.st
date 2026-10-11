"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000080; bytecode file offset 0x100e0"
!AbtRecord methodsFor: 'recovered'!
name: recoveredArg1
    ^self
! !

"abtdah.ic method 0x20000114; bytecode file offset 0x10284"
!AbtRecord methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := (self) length.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000180; bytecode file offset 0x10284"
!AbtRecord methodsFor: 'recovered'!
asBytes
    | recoveredValue0 |
    recoveredValue0 := (self) recordStruct.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000228; bytecode file offset 0x10284"
!AbtRecord methodsFor: 'recovered'!
abrValue
    | recoveredValue0 |
    recoveredValue0 := (self) value.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000234; bytecode file offset 0x10284"
!AbtRecord methodsFor: 'recovered'!
contents
    | recoveredValue0 |
    recoveredValue0 := (self) recordStruct.
    ^recoveredValue0
! !

"abtdah.ic method 0x200004f0; bytecode file offset 0x10580"
!AbtRecord methodsFor: 'recovered'!
bigEndian
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) bigEndian.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000510; bytecode file offset 0x10580"
!AbtRecord methodsFor: 'recovered'!
abtAsExternalPassedPointer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) abtAsExternalPassedPointer.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000550; bytecode file offset 0x10580"
!AbtRecord methodsFor: 'recovered'!
codePage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) codePage.
    ^recoveredValue1
! !

"abtdah.ic method 0x200005bc; bytecode file offset 0x10624"
!AbtRecord methodsFor: 'recovered'!
subrecordAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"abtdah.ic method 0x200005f8; bytecode file offset 0x10624"
!AbtRecord methodsFor: 'recovered'!
abrValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) value: (recoveredValue0).
    ^recoveredValue1
! !

"abtdah.ic method 0x20000674; bytecode file offset 0x106ac"
!AbtRecord methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) alignedLength.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000680; bytecode file offset 0x106ac"
!AbtRecord methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000738; bytecode file offset 0x10760"
!AbtRecord methodsFor: 'recovered'!
primitiveDestroyPart
    data := nil.
    ^self
! !

"abtdah.ic method 0x20000a80; bytecode file offset 0x10ab8"
!AbtRecord methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000ab4; bytecode file offset 0x10adc"
!AbtRecord methodsFor: 'recovered'!
baseOffset
    | recoveredValue0 |
    recoveredValue0 := baseOffset.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000d38; bytecode file offset 0x10d98"
!AbtRecord methodsFor: 'recovered'!
isAbtRecord
    ^true
! !

"abtdah.ic method 0x20000f8c; bytecode file offset 0x11000"
!AbtRecord methodsFor: 'recovered'!
subrecordAt: recoveredArg1 subscript: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) at: (recoveredValue0) subscript: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20001100; bytecode file offset 0x1112c"
!AbtRecord methodsFor: 'recovered'!
setInitialValues
    | recoveredValue0 |
    recoveredValue0 := type.
    (recoveredValue0) setInitialValue: (self).
    ^self
! !

"abtdah.ic method 0x20001134; bytecode file offset 0x11164"
!AbtRecord methodsFor: 'recovered'!
recordStruct
    | recoveredValue0 recoveredValue1 |
    (self) abtMoveFromOSMemory.
    recoveredValue0 := data.
    recoveredValue1 := (recoveredValue0) reference.
    ^recoveredValue1
! !

"abtdah.ic method 0x200012c0; bytecode file offset 0x11300"
!AbtRecord methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) traceOn: (recoveredValue0) withIndentation: ('').
    ^recoveredValue1
! !

"abtdah.ic method 0x2000139c; bytecode file offset 0x113ec"
!AbtRecord methodsFor: 'recovered'!
bigEndian: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) bigEndian: (recoveredValue1).
    ^self
! !

"abtdah.ic method 0x200013ac; bytecode file offset 0x113ec"
!AbtRecord methodsFor: 'recovered'!
codePage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) codePage: (recoveredValue1).
    ^self
! !

"abtdah.ic method 0x20001850; bytecode file offset 0x1187c"
!AbtRecord methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := type.
    recoveredValue1 := baseOffset.
    recoveredValue2 := (recoveredValue0) valueInRecord: (self) parentOffset: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20001868; bytecode file offset 0x11890"
!AbtRecord methodsFor: 'recovered'!
initialize
    baseOffset := 0.
    dataOwner := false.
    ^self
! !

"abtdah.ic method 0x2000187c; bytecode file offset 0x118ac"
!AbtRecord methodsFor: 'recovered'!
abtMoveToOSMemory
    | recoveredValue0 |
    recoveredValue0 := (self) data.
    (recoveredValue0) abtMoveToOSMemory.
    dataOwner := true.
    ^self
! !

"abtdah.ic method 0x20001990; bytecode file offset 0x119c0"
!AbtRecord methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fieldAt: (recoveredValue0).
    recoveredValue2 := baseOffset.
    recoveredValue3 := (recoveredValue1) valueInRecord: (self) parentOffset: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20001a2c; bytecode file offset 0x11a5c"
!AbtRecord methodsFor: 'recovered'!
baseOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    baseOffset := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001a74; bytecode file offset 0x11aa4"
!AbtRecord methodsFor: 'recovered'!
data: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    data := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001d68; bytecode file offset 0x11d98"
!AbtRecord methodsFor: 'recovered'!
noSuchField: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getMsg: (95) with: (recoveredValue0).
    recoveredValue2 := (self) error: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x2000202c; bytecode file offset 0x12060"
!AbtRecord methodsFor: 'recovered'!
abtMoveFromOSMemory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (self) length.
    (recoveredValue0) abtMoveFromOSMemoryWithLength: (recoveredValue1).
    dataOwner := true.
    ^self
! !

"abtdah.ic method 0x200020c8; bytecode file offset 0x120f4"
!AbtRecord methodsFor: 'recovered'!
valueAtSubscript: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := baseOffset.
    recoveredValue3 := (recoveredValue0) valueInRecord: (self) subscript: (recoveredValue1) parentOffset: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x200020e4; bytecode file offset 0x12110"
!AbtRecord methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := baseOffset.
    recoveredValue3 := (recoveredValue0) put: (recoveredValue1) intoRecord: (self) parentOffset: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20002100; bytecode file offset 0x12130"
!AbtRecord methodsFor: 'recovered'!
atIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fieldAtIndex: (recoveredValue1).
    recoveredValue3 := baseOffset.
    recoveredValue4 := (recoveredValue2) valueInRecord: (self) parentOffset: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x200021a4; bytecode file offset 0x121d4"
!AbtRecord methodsFor: 'recovered'!
at: recoveredArg1 subscript: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fieldAt: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := baseOffset.
    recoveredValue4 := (recoveredValue1) valueInRecord: (self) subscript: (recoveredValue2) parentOffset: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20002328; bytecode file offset 0x12354"
!AbtRecord methodsFor: 'recovered'!
valueAtSubscript: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := baseOffset.
    recoveredValue4 := (recoveredValue0) put: (recoveredValue1) intoRecord: (self) subscript: (recoveredValue2) parentOffset: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20002428; bytecode file offset 0x12458"
!AbtRecord methodsFor: 'recovered'!
at: recoveredArg1 subscript: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fieldAt: (recoveredValue0).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := baseOffset.
    recoveredValue5 := (recoveredValue1) put: (recoveredValue2) intoRecord: (self) subscript: (recoveredValue3) parentOffset: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x200024ac; bytecode file offset 0x124ec"
!AbtRecord methodsFor: 'recovered'!
deepCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) shallowCopy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := AbtForeignOSObject.
    recoveredValue3 := (self) recordStruct.
    recoveredValue4 := (recoveredValue3) deepCopy.
    recoveredValue5 := (recoveredValue2) reference: (recoveredValue4).
    (recoveredValue1) data: (recoveredValue5).
    ^recoveredValue0
! !

"abtdah.ic method 0x200027c8; bytecode file offset 0x12804"
!AbtRecord methodsFor: 'recovered'!
recordStruct: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) data.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) contents.
    (recoveredValue0) reference: (recoveredValue2).
    (self) signalEvent: ('IChanged') with: (self).
    ^self
! !

"abtdah.ic method 0x20002cfc; bytecode file offset 0x12d2c"
!AbtRecord methodsFor: 'recovered'!
replaceFrom: recoveredArg1 to: recoveredArg2 with: recoveredArg3 startingAt: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) - (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    recoveredValue7 := (recoveredValue6) + (-1).
    recoveredValue8 := (self) data.
    recoveredValue9 := recoveredArg1.
    (recoveredValue0) memcpyFrom: (recoveredValue1) to: (recoveredValue7) into: (recoveredValue8) startingAt: (recoveredValue9).
    ^self
! !

"abtdah.ic method 0x20002e58; bytecode file offset 0x12e98"
!AbtRecord methodsFor: 'recovered'!
newSubRecordAtOffset: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) type: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) baseOffset: (recoveredValue5).
    recoveredValue6 := (self) data.
    recoveredValue7 := (recoveredValue1) data: (recoveredValue6).
    ^recoveredValue7
! !

"abtdah.ic method 0x20002ed8; bytecode file offset 0x12f0c"
!AbtRecord methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fieldAt: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := baseOffset.
    recoveredValue4 := (recoveredValue1) put: (recoveredValue2) intoRecord: (self) parentOffset: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    (self) signalEvent: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"abtdah.ic method 0x20003428; bytecode file offset 0x13470"
!AbtRecord methodsFor: 'recovered'!
newBlankRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) type.
    (recoveredValue2) type: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) codePage.
    (recoveredValue4) codePage: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) bigEndian.
    (recoveredValue6) bigEndian: (recoveredValue7).
    ^recoveredValue1
! !

"abtdah.ic method 0x2000351c; bytecode file offset 0x13554"
!AbtRecord methodsFor: 'recovered'!
atIndex: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fieldAtIndex: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := baseOffset.
    recoveredValue6 := (recoveredValue2) put: (recoveredValue4) intoRecord: (self) parentOffset: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) name.
    (self) signalEvent: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"abtdah.ic method 0x20003a00; bytecode file offset 0x13a44"
!AbtRecord methodsFor: 'recovered'!
epClassReferences
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CurrentStringClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := type.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) epClassReferences.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdah.ic method 0x20003abc; bytecode file offset 0x13afc"
!AbtRecord methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := NlsGlobals.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := type.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) alignedLength.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) reference: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20003d60; bytecode file offset 0x13d9c"
!AbtRecord methodsFor: 'recovered'!
subscript: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) baseOffset.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) baseOffset.
    recoveredValue6 := type.
    recoveredValue7 := (recoveredValue6) arrayType.
    recoveredValue8 := (recoveredValue7) alignedLength.
    recoveredValue9 := recoveredValue8.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := (recoveredValue5) + (recoveredValue8).
    recoveredValue11 := (recoveredValue10) + (-1).
    recoveredValue12 := (self) data.
    recoveredValue13 := (self) baseOffset.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) + (-1).
    recoveredValue17 := (recoveredValue14) * (recoveredValue16).
    recoveredValue18 := (recoveredValue13) + (recoveredValue17).
    (recoveredValue1) memcpyFrom: (recoveredValue3) to: (recoveredValue11) into: (recoveredValue12) startingAt: (recoveredValue18).
    ^self
! !

"abtdah.ic method 0x20003fc8; bytecode file offset 0x14014"
!AbtRecord methodsFor: 'recovered'!
subscript: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := type.
    recoveredValue4 := (recoveredValue3) arrayType.
    (recoveredValue2) type: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) data.
    (recoveredValue5) data: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) baseOffset.
    recoveredValue9 := type.
    recoveredValue10 := (recoveredValue9) arrayType.
    recoveredValue11 := (recoveredValue10) alignedLength.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) + (-1).
    recoveredValue14 := (recoveredValue11) * (recoveredValue13).
    recoveredValue15 := (recoveredValue8) + (recoveredValue14).
    (recoveredValue7) baseOffset: (recoveredValue15).
    ^recoveredValue1
! !

"abtdah.ic method 0x20004164; bytecode file offset 0x1419c"
!AbtRecord methodsFor: 'recovered'!
free
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dataOwner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) removeToBeFinalized.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20004410; bytecode file offset 0x14450"
!AbtRecord methodsFor: 'recovered'!
data
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            dataOwner := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := AbtForeignOSObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := AbtForeignOSObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := type.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) alignedLength.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            data := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdah.ic method 0x20004458; bytecode file offset 0x14490"
!AbtRecord methodsFor: 'recovered'!
fieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := type.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value1) asString.
    recoveredBlock9Value3 := [
    | recoveredBlock9Block22Value0 recoveredBlock9Block22Value1 recoveredBlock9Block22Value2 |
    recoveredBlock9Block22Value0 := recoveredArg1.
    recoveredBlock9Block22Value1 := (recoveredBlock9Block22Value0) printString.
    recoveredBlock9Block22Value2 := (self) noSuchField: (recoveredBlock9Block22Value1).
    recoveredBlock9Block22Value2
].
    recoveredBlock9Value4 := (recoveredBlock9Value0) fieldAt: (recoveredBlock9Value2) ifAbsent: (recoveredBlock9Value3).
    recoveredBlock9Value4
].
    recoveredValue3 := (recoveredValue0) fieldAt: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x20007070; bytecode file offset 0x170fc"
!AbtRecord methodsFor: 'recovered'!
, recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtCompoundType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAbtCompoundType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) fields.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 |
    recoveredBlock57Value0 := recoveredLocal1.
    recoveredBlock57Value1 := recoveredBlock57Arg1.
    recoveredBlock57Value2 := (recoveredBlock57Value1) name.
    recoveredBlock57Value3 := (recoveredBlock57Value0) includes: (recoveredBlock57Value2).
    recoveredBlock57Value3
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) fields.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 |
    recoveredBlock85Value0 := recoveredLocal2.
    recoveredBlock85Value1 := recoveredBlock85Arg1.
    recoveredBlock85Value2 := (recoveredBlock85Value0) addField: (recoveredBlock85Value1).
    recoveredBlock85Value2
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) addField: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) addField: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) codePage.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) codePage: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) bigEndian.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) bigEndian: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) length.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) data.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) memcpyFrom: (recoveredStack1) to: (recoveredStack2) into: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) length.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) data.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := (recoveredStack4) length.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) memcpyFrom: (recoveredStack1) to: (recoveredStack2) into: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20007618; bytecode file offset 0x176a0"
!AbtRecord methodsFor: 'recovered'!
traceOn: recoveredArg1 withIndentation: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := '(Data Undefined)'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) traceOn: (recoveredStack2) withIndentation: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := '  '.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbtCompoundType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) fields.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 |
    recoveredBlock86Value0 := recoveredLocal1.
    recoveredBlock86Value1 := recoveredBlock86Arg1.
    recoveredBlock86Value2 := (recoveredBlock86Value1) offset.
    recoveredBlock86Value3 := (recoveredBlock86Value0) + (recoveredBlock86Value2).
    recoveredBlock86Value4 := recoveredBlock86Value3.
    recoveredLocal1 := recoveredBlock86Value4.
    recoveredBlock86Value3
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) fields.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := 'Union of type: '.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := 'AbtRecord of type: '.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 recoveredBlock167Value3 recoveredBlock167Value4 recoveredBlock167Value5 recoveredBlock167Value6 recoveredBlock167Value7 recoveredBlock167Value8 recoveredBlock167Value9 recoveredBlock167Value10 recoveredBlock167Value11 recoveredBlock167Value12 recoveredBlock167Value13 |
    recoveredBlock167Value0 := recoveredArg1.
    recoveredBlock167Value1 := recoveredBlock167Value0.
    (recoveredBlock167Value1) cr.
    recoveredBlock167Value2 := recoveredBlock167Value0.
    recoveredBlock167Value3 := recoveredLocal2.
    (recoveredBlock167Value2) nextPutAll: (recoveredBlock167Value3).
    recoveredBlock167Value4 := recoveredBlock167Value0.
    recoveredBlock167Value5 := recoveredBlock167Arg1.
    recoveredBlock167Value6 := (recoveredBlock167Value5) name.
    recoveredBlock167Value7 := (recoveredBlock167Value6) printString.
    (recoveredBlock167Value4) nextPutAll: (recoveredBlock167Value7).
    (recoveredBlock167Value0) nextPutAll: (': ').
    recoveredBlock167Value8 := recoveredBlock167Arg1.
    recoveredBlock167Value9 := (recoveredBlock167Value8) name.
    recoveredBlock167Value10 := (self) at: (recoveredBlock167Value9).
    recoveredBlock167Value11 := recoveredArg1.
    recoveredBlock167Value12 := recoveredLocal2.
    recoveredBlock167Value13 := (recoveredBlock167Value10) traceOn: (recoveredBlock167Value11) withIndentation: (recoveredBlock167Value12).
    recoveredBlock167Value13
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) fieldsDo: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) traceOn: (recoveredStack2) withIndentation: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

