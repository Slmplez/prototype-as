"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b3604; bytecode file offset 0x9afec4"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
selfClosingClose
    | recoveredValue0 |
    (self) logClosing.
    recoveredValue0 := super selfClosingClose.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200caabc; bytecode file offset 0x9c7390"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
createIFIL
    | recoveredLocal1 recoveredValue0 |
    (self) logClosing.
    recoveredValue0 := super createIFIL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200caad0; bytecode file offset 0x9c7390"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
closeIFIL
    | recoveredLocal1 recoveredValue0 |
    (self) logClosing.
    recoveredValue0 := super closeIFIL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ee52c; bytecode file offset 0x9eadec"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
numberOfRecords
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    (self) logClosing.
    recoveredValue0 := super numberOfRecords.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ee550; bytecode file offset 0x9eae10"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
vRecordLength
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    (self) logNonClosingMethod.
    recoveredValue0 := super vRecordLength.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20103570; bytecode file offset 0x9ffe44"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
vDataLength: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super vDataLength: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20103584; bytecode file offset 0x9ffe44"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
numberOfKeys: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super numberOfKeys: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201035a8; bytecode file offset 0x9ffeb8"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
reReadRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super reReadRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201035bc; bytecode file offset 0x9ffeb8"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getLastRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super getLastRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201035d0; bytecode file offset 0x9ffeb8"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getFirstRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super getFirstRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201035e4; bytecode file offset 0x9ffeb8"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getNextRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super getNextRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201035f8; bytecode file offset 0x9ffeb8"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getPreviousRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super getPreviousRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010f13c; bytecode file offset 0xa0ba48"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
printFileStateOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super printFileStateOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: ('.logging').
    ^self
! !

"ASDBase.ic method 0x20113ba4; bytecode file offset 0xa10464"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getKey: recoveredArg1 target: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getKey: (recoveredValue0) target: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20113bc8; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
reReadVRecord: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super reReadVRecord: (recoveredValue0) size: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113bdc; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getNextKey: recoveredArg1 idxval: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getNextKey: (recoveredValue0) idxval: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113bf0; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getLastKey: recoveredArg1 idxval: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getLastKey: (recoveredValue0) idxval: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c04; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getPreviousKey: recoveredArg1 idxval: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getPreviousKey: (recoveredValue0) idxval: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c18; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getLastRecord: recoveredArg1 forKey: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getLastRecord: (recoveredValue0) forKey: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c2c; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getPreviousRecord: recoveredArg1 forKey: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getPreviousRecord: (recoveredValue0) forKey: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c40; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getFirstKey: recoveredArg1 idxval: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getFirstKey: (recoveredValue0) idxval: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c54; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getFirstRecord: recoveredArg1 forKey: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getFirstRecord: (recoveredValue0) forKey: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c68; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getNextInSet: recoveredArg1 recordBuffer: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getNextInSet: (recoveredValue0) recordBuffer: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c7c; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getPreviousInSet: recoveredArg1 recordBuffer: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getPreviousInSet: (recoveredValue0) recordBuffer: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20113c90; bytecode file offset 0xa10550"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getNextRecord: recoveredArg1 forKey: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super getNextRecord: (recoveredValue0) forKey: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201276c0; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
add: recoveredArg1 target: recoveredArg2 vRecord: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super add: (recoveredValue0) target: (recoveredValue1) vRecord: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201276d4; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
update: recoveredArg1 target: recoveredArg2 vRecord: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super update: (recoveredValue0) target: (recoveredValue1) vRecord: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201276e8; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
update: recoveredArg1 target: recoveredArg2 record: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super update: (recoveredValue0) target: (recoveredValue1) record: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201276fc; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
deleteRecord: recoveredArg1 target: recoveredArg2 fixedRecord: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super deleteRecord: (recoveredValue0) target: (recoveredValue1) fixedRecord: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20127710; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getSetKeys: recoveredArg1 target: recoveredArg2 recordBuffer: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super getSetKeys: (recoveredValue0) target: (recoveredValue1) recordBuffer: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20127724; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getSetRecords: recoveredArg1 startingAt: recoveredArg2 recordBuffer: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super getSetRecords: (recoveredValue0) startingAt: (recoveredValue1) recordBuffer: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20127738; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
deleteVRecord: recoveredArg1 target: recoveredArg2 fixedRecord: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super deleteVRecord: (recoveredValue0) target: (recoveredValue1) fixedRecord: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012774c; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getSetRecords: recoveredArg1 target: recoveredArg2 recordBuffer: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super getSetRecords: (recoveredValue0) target: (recoveredValue1) recordBuffer: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20127760; bytecode file offset 0xa24020"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
add: recoveredArg1 target: recoveredArg2 record: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logClosing.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super add: (recoveredValue0) target: (recoveredValue1) record: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20127788; bytecode file offset 0xa24048"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getFirstBlockOfSetRecords: recoveredArg1 target: recoveredArg2 recordBuffer: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super getFirstBlockOfSetRecords: (recoveredValue0) target: (recoveredValue1) recordBuffer: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014b838; bytecode file offset 0xa4810c"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getFirstInSet: recoveredArg1 target: recoveredArg2 recordBuffer: recoveredArg3 significantBytes: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super getFirstInSet: (recoveredValue0) target: (recoveredValue1) recordBuffer: (recoveredValue2) significantBytes: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2014b84c; bytecode file offset 0xa4810c"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getLastInSet: recoveredArg1 target: recoveredArg2 recordBuffer: recoveredArg3 significantBytes: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) logNonClosingMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super getLastInSet: (recoveredValue0) target: (recoveredValue1) recordBuffer: (recoveredValue2) significantBytes: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2017dbb8; bytecode file offset 0xa7a47c"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getSetSize: recoveredArg1 target: recoveredArg2 recordBuffer: recoveredArg3 significantBytes: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) logOpeningMethod.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super getSetSize: (recoveredValue0) target: (recoveredValue1) recordBuffer: (recoveredValue2) significantBytes: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    (self) logClosing.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201acc08; bytecode file offset 0xaa94d0"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getSetSize: recoveredArg1 target: recoveredArg2 recordBuffer: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) logNonClosingMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super getSetSize: (recoveredStack1) target: (recoveredStack2) recordBuffer: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ace8c; bytecode file offset 0xaa97b0"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getRecord: recoveredArg1 target: recoveredArg2 record: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) openIFIL.
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
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super getRecord: (recoveredStack1) target: (recoveredStack2) record: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aced4; bytecode file offset 0xaa97b0"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
getRecordIntResult: recoveredArg1 target: recoveredArg2 record: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) openIFIL.
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
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super getRecordIntResult: (recoveredStack1) target: (recoveredStack2) record: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bfba4; bytecode file offset 0xabc478"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
logNonClosingMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Transcript.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) show: ('NonClosingOperation ').
    recoveredValue3 := Processor.
    recoveredValue4 := (recoveredValue3) activeProcess.
    recoveredValue5 := (recoveredValue4) methodAtFrame: (1).
    recoveredValue6 := (recoveredValue5) printString.
    (recoveredValue0) show: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202d6ca0; bytecode file offset 0xbd3580"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
logClosing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'ClosingOperation '.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) activeProcess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAtFrame: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ' wasOpen '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ' alreadyClosed'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
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

"ASDBase.ic method 0x202d6d08; bytecode file offset 0xbd35e8"
!CTSelfClosingIFILwithLogging methodsFor: 'recovered'!
logOpeningMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'OpeningOperation '.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) activeProcess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAtFrame: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ' alreadyOpen '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ' wasClosed '.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
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

