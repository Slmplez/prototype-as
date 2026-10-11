"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000150; bytecode file offset 0x3c21c"
!EmSubApplicationParts methodsFor: 'recovered'!
classNamesIndex
    | recoveredValue0 |
    recoveredValue0 := (self) startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x200013fc; bytecode file offset 0x3d664"
!EmSubApplicationParts methodsFor: 'recovered'!
classNamesDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classNamesIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000145c; bytecode file offset 0x3d664"
!EmSubApplicationParts methodsFor: 'recovered'!
objectStoreDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objectStoreIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001f14; bytecode file offset 0x3df38"
!EmSubApplicationParts methodsFor: 'recovered'!
objectStoreIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (8).
    ^recoveredValue1
! !

"lib.ic method 0x20001fe4; bytecode file offset 0x3e02c"
!EmSubApplicationParts methodsFor: 'recovered'!
editionsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (16).
    ^recoveredValue1
! !

"lib.ic method 0x20002068; bytecode file offset 0x3e0a4"
!EmSubApplicationParts methodsFor: 'recovered'!
inheritedFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (24).
    ^recoveredValue1
! !

"lib.ic method 0x20003bd0; bytecode file offset 0x3fbfc"
!EmSubApplicationParts methodsFor: 'recovered'!
editionsDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) editionsIndex.
    recoveredValue1 := EmEditionsDictionary.
    recoveredValue2 := (self) obtainRecordForPartAt: (recoveredValue0) ofType: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20004b64; bytecode file offset 0x40b90"
!EmSubApplicationParts methodsFor: 'recovered'!
newEditionForObjectNamed: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EmSwappedObjectRecord.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) on: (recoveredValue2).
    recoveredValue4 := (self) newEditionForObjectNamed: (recoveredValue0) usingRecord: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000599c; bytecode file offset 0x419d0"
!EmSubApplicationParts methodsFor: 'recovered'!
timeStampsForObjectNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) objectStoreDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := EmEditionsDictionary.
    recoveredValue3 := (recoveredValue0) obtainRecordAt: (recoveredValue1) ofType: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) keys.
    recoveredValue5 := (recoveredValue4) asSortedCollection.
    ^recoveredValue5
! !

"lib.ic method 0x20005b58; bytecode file offset 0x41ba8"
!EmSubApplicationParts methodsFor: 'recovered'!
updateEditionsDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmEditionsDictionary.
    recoveredValue1 := (self) editionsIndex.
    recoveredValue2 := (self) filePointerAt: (recoveredValue1).
    recoveredValue3 := (self) library.
    recoveredValue4 := (recoveredValue0) updating: (recoveredValue2) from: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005b74; bytecode file offset 0x41ba8"
!EmSubApplicationParts methodsFor: 'recovered'!
updateClassNamesDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmDiskDictionary.
    recoveredValue1 := (self) classNamesIndex.
    recoveredValue2 := (self) filePointerAt: (recoveredValue1).
    recoveredValue3 := (self) library.
    recoveredValue4 := (recoveredValue0) updating: (recoveredValue2) from: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20006764; bytecode file offset 0x42794"
!EmSubApplicationParts methodsFor: 'recovered'!
recordForObjectNamed: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) objectStoreDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := EmEditionsDictionary.
    recoveredValue3 := (recoveredValue0) obtainRecordAt: (recoveredValue1) ofType: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := EmRecord.
    recoveredValue6 := (recoveredValue3) obtainRecordAt: (recoveredValue4) ofType: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x2000cdb0; bytecode file offset 0x48dec"
!EmSubApplicationParts methodsFor: 'recovered'!
initialClassNamesSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) classNamesIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isVoid.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := EmDiskDictionary.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) new: (recoveredBlock6Stack2).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) library.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) insertInto: (recoveredBlock6Stack2).
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue2 := (self) partAt: (recoveredValue0) putPointerFrom: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20014450; bytecode file offset 0x50494"
!EmSubApplicationParts methodsFor: 'recovered'!
updateEditionsOf: recoveredArg1 in: recoveredArg2 using: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) classNamesIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) symbol.
    recoveredBlock6Value3 := [:recoveredBlock6Block19Arg1 | 
    | recoveredBlock6Block19Value0 recoveredBlock6Block19Value1 recoveredBlock6Block19Value2 recoveredBlock6Block19Value3 recoveredBlock6Block19Value4 recoveredBlock6Block19Value5 recoveredBlock6Block19Value6 recoveredBlock6Block19Value7 recoveredBlock6Block19Value8 recoveredBlock6Block19Value9 |
    recoveredBlock6Block19Value0 := recoveredArg3.
    recoveredBlock6Block19Value1 := EmClassEditions.
    recoveredBlock6Block19Value2 := recoveredBlock6Block19Arg1.
    recoveredBlock6Block19Value3 := recoveredBlock6Arg1.
    recoveredBlock6Block19Value4 := (recoveredBlock6Block19Value3) library.
    recoveredBlock6Block19Value5 := (recoveredBlock6Block19Value1) updating: (recoveredBlock6Block19Value2) from: (recoveredBlock6Block19Value4).
    recoveredBlock6Block19Value6 := recoveredBlock6Block19Value5.
    recoveredBlock6Block19Value7 := recoveredArg1.
    recoveredBlock6Block19Value8 := recoveredArg2.
    (recoveredBlock6Block19Value6) class: (recoveredBlock6Block19Value7) application: (recoveredBlock6Block19Value8).
    recoveredBlock6Block19Value9 := (recoveredBlock6Block19Value0) value: (recoveredBlock6Block19Value5).
    recoveredBlock6Block19Value9
].
    recoveredBlock6Value4 := (recoveredBlock6Value0) at: (recoveredBlock6Value2) putPointerFrom: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2001681c; bytecode file offset 0x52858"
!EmSubApplicationParts methodsFor: 'recovered'!
newEditionForObjectNamed: recoveredArg1 usingFP: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) objectStoreIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 recoveredBlock6Block16Value2 recoveredBlock6Block16Value3 recoveredBlock6Block16Value4 recoveredBlock6Block16Value5 recoveredBlock6Block16Value6 recoveredBlock6Block16Value7 recoveredBlock6Block16Value8 recoveredBlock6Block16Value9 |
    recoveredBlock6Block16Value0 := EmEditionsDictionary.
    recoveredBlock6Block16Value1 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value2 := (self) library.
    recoveredBlock6Block16Value3 := (recoveredBlock6Block16Value0) updating: (recoveredBlock6Block16Value1) from: (recoveredBlock6Block16Value2).
    recoveredBlock6Block16Value4 := recoveredBlock6Block16Value3.
    recoveredLocal2 := recoveredBlock6Block16Value4.
    recoveredBlock6Block16Value5 := recoveredLocal2.
    recoveredBlock6Block16Value6 := (recoveredBlock6Block16Value5) nextTimeStamp.
    recoveredBlock6Block16Value7 := recoveredBlock6Block16Value6.
    recoveredLocal1 := recoveredBlock6Block16Value7.
    recoveredBlock6Block16Value8 := [:recoveredBlock6Block16Block42Arg1 | 
    | recoveredBlock6Block16Block42Value0 |
    recoveredBlock6Block16Block42Value0 := recoveredArg2.
    recoveredBlock6Block16Block42Value0
].
    recoveredBlock6Block16Value9 := (recoveredBlock6Block16Value3) at: (recoveredBlock6Block16Value6) putPointerFrom: (recoveredBlock6Block16Value8).
    recoveredBlock6Block16Value9
].
    recoveredBlock6Value3 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) putPointerFrom: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"lib.ic method 0x20017554; bytecode file offset 0x535a0"
!EmSubApplicationParts methodsFor: 'recovered'!
mergeStoredObjectsWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) objectStoreIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := [:recoveredBlock6Block15Arg1 | 
    | recoveredBlock6Block15Value0 recoveredBlock6Block15Value1 recoveredBlock6Block15Value2 recoveredBlock6Block15Value3 recoveredBlock6Block15Value4 |
    recoveredBlock6Block15Value0 := recoveredBlock6Arg1.
    recoveredBlock6Block15Value1 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Value2 := (recoveredBlock6Block15Value1) name.
    recoveredBlock6Block15Value3 := [:recoveredBlock6Block15Block29Arg1 | 
    | recoveredBlock6Block15Block29Value0 recoveredBlock6Block15Block29Value1 recoveredBlock6Block15Block29Value2 recoveredBlock6Block15Block29Value3 recoveredBlock6Block15Block29Value4 recoveredBlock6Block15Block29Value5 recoveredBlock6Block15Block29Value6 recoveredBlock6Block15Block29Value7 recoveredBlock6Block15Block29Value8 recoveredBlock6Block15Block29Value9 recoveredBlock6Block15Block29Value10 |
    recoveredBlock6Block15Block29Value0 := EmEditionsDictionary.
    recoveredBlock6Block15Block29Value1 := recoveredBlock6Block15Block29Arg1.
    recoveredBlock6Block15Block29Value2 := (self) library.
    recoveredBlock6Block15Block29Value3 := (recoveredBlock6Block15Block29Value0) updating: (recoveredBlock6Block15Block29Value1) from: (recoveredBlock6Block15Block29Value2).
    recoveredBlock6Block15Block29Value4 := EmEditionsDictionary.
    recoveredBlock6Block15Block29Value5 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Block29Value6 := (recoveredBlock6Block15Block29Value5) value.
    recoveredBlock6Block15Block29Value7 := recoveredArg1.
    recoveredBlock6Block15Block29Value8 := (recoveredBlock6Block15Block29Value7) library.
    recoveredBlock6Block15Block29Value9 := (recoveredBlock6Block15Block29Value4) using: (recoveredBlock6Block15Block29Value6) from: (recoveredBlock6Block15Block29Value8).
    recoveredBlock6Block15Block29Value10 := (recoveredBlock6Block15Block29Value3) mergeWith: (recoveredBlock6Block15Block29Value9).
    recoveredBlock6Block15Block29Value10
].
    recoveredBlock6Block15Value4 := (recoveredBlock6Block15Value0) at: (recoveredBlock6Block15Value2) putPointerFrom: (recoveredBlock6Block15Value3).
    recoveredBlock6Block15Value4
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) forAllEntriesDo: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x200179b0; bytecode file offset 0x539f0"
!EmSubApplicationParts methodsFor: 'recovered'!
newEditionForObjectNamed: recoveredArg1 usingRecord: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) objectStoreIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 recoveredBlock6Block16Value2 recoveredBlock6Block16Value3 recoveredBlock6Block16Value4 recoveredBlock6Block16Value5 recoveredBlock6Block16Value6 recoveredBlock6Block16Value7 recoveredBlock6Block16Value8 recoveredBlock6Block16Value9 |
    recoveredBlock6Block16Value0 := EmEditionsDictionary.
    recoveredBlock6Block16Value1 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value2 := (self) library.
    recoveredBlock6Block16Value3 := (recoveredBlock6Block16Value0) updating: (recoveredBlock6Block16Value1) from: (recoveredBlock6Block16Value2).
    recoveredBlock6Block16Value4 := recoveredBlock6Block16Value3.
    recoveredLocal2 := recoveredBlock6Block16Value4.
    recoveredBlock6Block16Value5 := recoveredLocal2.
    recoveredBlock6Block16Value6 := (recoveredBlock6Block16Value5) nextTimeStamp.
    recoveredBlock6Block16Value7 := recoveredBlock6Block16Value6.
    recoveredLocal1 := recoveredBlock6Block16Value7.
    recoveredBlock6Block16Value8 := [:recoveredBlock6Block16Block42Arg1 | 
    | recoveredBlock6Block16Block42Value0 recoveredBlock6Block16Block42Value1 recoveredBlock6Block16Block42Value2 |
    recoveredBlock6Block16Block42Value0 := recoveredArg2.
    recoveredBlock6Block16Block42Value1 := (self) library.
    recoveredBlock6Block16Block42Value2 := (recoveredBlock6Block16Block42Value0) insertInto: (recoveredBlock6Block16Block42Value1).
    recoveredBlock6Block16Block42Value2
].
    recoveredBlock6Block16Value9 := (recoveredBlock6Block16Value3) at: (recoveredBlock6Block16Value6) putPointerFrom: (recoveredBlock6Block16Value8).
    recoveredBlock6Block16Value9
].
    recoveredBlock6Value3 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) putPointerFrom: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"lib.ic method 0x20018bc8; bytecode file offset 0x54c1c"
!EmSubApplicationParts methodsFor: 'recovered'!
newEditionFor: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) editionsIndex.
    recoveredValue1 := EmEditionsDictionary.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value1) nextTimeStamp.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredLocal1 := recoveredBlock8Value3.
    recoveredBlock8Value4 := [:recoveredBlock8Block25Arg1 | 
    | recoveredBlock8Block25Value0 recoveredBlock8Block25Value1 recoveredBlock8Block25Value2 recoveredBlock8Block25Value3 recoveredBlock8Block25Value4 recoveredBlock8Block25Value5 recoveredBlock8Block25Value6 recoveredBlock8Block25Value7 recoveredBlock8Block25Value8 recoveredBlock8Block25Value9 recoveredBlock8Block25Value10 recoveredBlock8Block25Value11 recoveredBlock8Block25Value12 |
    recoveredBlock8Block25Value0 := (self) class.
    recoveredBlock8Block25Value1 := (recoveredBlock8Block25Value0) editionRecordClass.
    recoveredBlock8Block25Value2 := recoveredBlock8Arg1.
    recoveredBlock8Block25Value3 := recoveredArg1.
    recoveredBlock8Block25Value4 := (recoveredBlock8Block25Value3) timeStamp.
    recoveredBlock8Block25Value5 := (recoveredBlock8Block25Value2) at: (recoveredBlock8Block25Value4).
    recoveredBlock8Block25Value6 := (self) library.
    recoveredBlock8Block25Value7 := (recoveredBlock8Block25Value1) updating: (recoveredBlock8Block25Value5) from: (recoveredBlock8Block25Value6).
    recoveredBlock8Block25Value8 := recoveredBlock8Block25Value7.
    recoveredBlock8Block25Value9 := recoveredArg1.
    (recoveredBlock8Block25Value8) application: (recoveredBlock8Block25Value9).
    recoveredBlock8Block25Value10 := recoveredLocal1.
    recoveredBlock8Block25Value11 := recoveredArg2.
    recoveredBlock8Block25Value12 := (recoveredBlock8Block25Value7) newEditionAt: (recoveredBlock8Block25Value10) ifUnable: (recoveredBlock8Block25Value11).
    recoveredBlock8Block25Value12
].
    recoveredBlock8Value5 := (recoveredBlock8Value0) at: (recoveredBlock8Value2) putPointerFrom: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    recoveredValue3 := (self) updateRecordForPartAt: (recoveredValue0) ofType: (recoveredValue1) using: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2001d288; bytecode file offset 0x592dc"
!EmSubApplicationParts methodsFor: 'recovered'!
addInitial: recoveredArg1 named: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg2.
    recoveredBlock15Value2 := (recoveredBlock15Value0) initialEditionNamed: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) updateEditionsOf: (recoveredStack1) in: (recoveredStack2) using: (recoveredStack3).
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
            recoveredStack1 := (recoveredStack1) editionsIndex.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := EmEditionsDictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (recoveredBlock36Value1) nextTimeStamp.
    recoveredBlock36Value3 := recoveredBlock36Value2.
    recoveredLocal1 := recoveredBlock36Value3.
    recoveredBlock36Value4 := [:recoveredBlock36Block50Arg1 | 
    | recoveredBlock36Block50Value0 recoveredBlock36Block50Value1 recoveredBlock36Block50Value2 recoveredBlock36Block50Value3 recoveredBlock36Block50Value4 recoveredBlock36Block50Value5 recoveredBlock36Block50Value6 |
    recoveredBlock36Block50Value0 := recoveredArg1.
    recoveredBlock36Block50Value1 := recoveredLocal1.
    (recoveredBlock36Block50Value0) timeStamp: (recoveredBlock36Block50Value1).
    recoveredBlock36Block50Value2 := (self) class.
    recoveredBlock36Block50Value3 := (recoveredBlock36Block50Value2) editionRecordClass.
    recoveredBlock36Block50Value4 := recoveredArg1.
    recoveredBlock36Block50Value5 := (self) library.
    recoveredBlock36Block50Value6 := (recoveredBlock36Block50Value3) createFor: (recoveredBlock36Block50Value4) in: (recoveredBlock36Block50Value5).
    recoveredBlock36Block50Value6
].
    recoveredBlock36Value5 := (recoveredBlock36Value0) at: (recoveredBlock36Value2) putPointerFrom: (recoveredBlock36Value4).
    recoveredBlock36Value5
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) updateRecordForPartAt: (recoveredStack1) ofType: (recoveredStack2) using: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200218bc; bytecode file offset 0x5d920"
!EmSubApplicationParts methodsFor: 'recovered'!
addEditionRecords: recoveredArg1 mapping: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) editionsIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isVoid.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 68].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := Dictionary.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) new.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block27Arg1 | 
    | recoveredBlock6Block27Value0 recoveredBlock6Block27Value1 recoveredBlock6Block27Value2 recoveredBlock6Block27Value3 recoveredBlock6Block27Value4 recoveredBlock6Block27Value5 recoveredBlock6Block27Value6 recoveredBlock6Block27Value7 |
    recoveredBlock6Block27Value0 := recoveredLocal1.
    recoveredBlock6Block27Value1 := recoveredBlock6Block27Arg1.
    recoveredBlock6Block27Value2 := (recoveredBlock6Block27Value1) timeStamp.
    recoveredBlock6Block27Value3 := recoveredBlock6Block27Arg1.
    recoveredBlock6Block27Value4 := (self) library.
    recoveredBlock6Block27Value5 := recoveredArg2.
    recoveredBlock6Block27Value6 := (recoveredBlock6Block27Value3) moveTo: (recoveredBlock6Block27Value4) mapping: (recoveredBlock6Block27Value5).
    recoveredBlock6Block27Value7 := (recoveredBlock6Block27Value0) at: (recoveredBlock6Block27Value2) put: (recoveredBlock6Block27Value6).
    recoveredBlock6Block27Value7
].
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack1 := EmEditionsDictionary.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal1.
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack3 := self.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) library.
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) createFor: (recoveredBlock6Stack2) in: (recoveredBlock6Stack3).
            recoveredBlock6PC := 64.
        ].
        recoveredBlock6Step = 64 ifTrue: [
            recoveredBlock6PC := 132.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6Stack1 := EmEditionsDictionary.
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 71.
        ].
        recoveredBlock6Step = 71 ifTrue: [
            recoveredBlock6Stack3 := self.
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) library.
            recoveredBlock6PC := 74.
        ].
        recoveredBlock6Step = 74 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) updating: (recoveredBlock6Stack2) from: (recoveredBlock6Stack3).
            recoveredBlock6PC := 76.
        ].
        recoveredBlock6Step = 76 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 79.
        ].
        recoveredBlock6Step = 79 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block82Arg1 | 
    | recoveredBlock6Block82Value0 recoveredBlock6Block82Value1 recoveredBlock6Block82Value2 recoveredBlock6Block82Value3 recoveredBlock6Block82Value4 |
    recoveredBlock6Block82Value0 := recoveredLocal1.
    recoveredBlock6Block82Value1 := recoveredBlock6Block82Arg1.
    recoveredBlock6Block82Value2 := (recoveredBlock6Block82Value1) timeStamp.
    recoveredBlock6Block82Value3 := [:recoveredBlock6Block82Block96Arg1 | 
    | recoveredBlock6Block82Block96Value0 recoveredBlock6Block82Block96Value1 recoveredBlock6Block82Block96Value2 recoveredBlock6Block82Block96Value3 recoveredBlock6Block82Block96Value4 recoveredBlock6Block82Block96Value5 recoveredBlock6Block82Block96Value6 recoveredBlock6Block82Block96Value7 |
    recoveredBlock6Block82Block96Value0 := recoveredBlock6Block82Arg1.
    recoveredBlock6Block82Block96Value1 := (recoveredBlock6Block82Block96Value0) class.
    recoveredBlock6Block82Block96Value2 := recoveredBlock6Block82Block96Arg1.
    recoveredBlock6Block82Block96Value3 := (self) library.
    recoveredBlock6Block82Block96Value4 := (recoveredBlock6Block82Block96Value1) updating: (recoveredBlock6Block82Block96Value2) from: (recoveredBlock6Block82Block96Value3).
    recoveredBlock6Block82Block96Value5 := recoveredBlock6Block82Arg1.
    recoveredBlock6Block82Block96Value6 := recoveredArg2.
    recoveredBlock6Block82Block96Value7 := (recoveredBlock6Block82Block96Value4) mergeWith: (recoveredBlock6Block82Block96Value5) mapping: (recoveredBlock6Block82Block96Value6).
    recoveredBlock6Block82Block96Value7
].
    recoveredBlock6Block82Value4 := (recoveredBlock6Block82Value0) at: (recoveredBlock6Block82Value2) putPointerFrom: (recoveredBlock6Block82Value3).
    recoveredBlock6Block82Value4
].
            recoveredBlock6PC := 125.
        ].
        recoveredBlock6Step = 125 ifTrue: [
            (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 127.
        ].
        recoveredBlock6Step = 127 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 130.
        ].
        recoveredBlock6Step = 130 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) filePointer.
            recoveredBlock6PC := 132.
        ].
        recoveredBlock6Step = 132 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue2 := (self) partAt: (recoveredValue0) putPointerFrom: (recoveredValue1).
    ^recoveredValue2
! !

