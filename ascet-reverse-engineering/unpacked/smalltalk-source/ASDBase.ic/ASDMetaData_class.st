"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201436f0; bytecode file offset 0xa3ffbc"
!ASDMetaData class methodsFor: 'recovered'!
createSCMStatus: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ASDSCMStatus.
    recoveredValue3 := (recoveredValue2) create.
    (recoveredValue1) scmStatus: (recoveredValue3).
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue0) scmStoredData: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2019c5a4; bytecode file offset 0xa98e70"
!ASDMetaData class methodsFor: 'recovered'!
create: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) setLabel: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) itemID: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) createSCMStatus: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) applicationTimeStampNow.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203bbc30; bytecode file offset 0xcb8528"
!ASDMetaData class methodsFor: 'recovered'!
integrityTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) at: ('LostMetaData') put: (recoveredValue4).
    recoveredValue5 := SGDatabaseAccess.
    recoveredValue6 := (recoveredValue5) create.
    recoveredValue7 := ASDMetaData.
    recoveredValue8 := (recoveredValue6) readExactClassKeys: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := [].
    recoveredBlock28Value2 := (recoveredBlock28Value0) getObjectIfUndefined: (recoveredBlock28Value1).
    recoveredBlock28Value3 := [:recoveredBlock28Block39Arg1 | 
    | recoveredBlock28Block39Stack0 recoveredBlock28Block39Stack1 recoveredBlock28Block39Stack2 recoveredBlock28Block39Stack3 recoveredBlock28Block39PC recoveredBlock28Block39Step recoveredBlock28Block39Done recoveredBlock28Block39Result |
    recoveredBlock28Block39Stack0 := nil.
    recoveredBlock28Block39PC := 46.
    recoveredBlock28Block39Done := false.
    [recoveredBlock28Block39Done not] whileTrue: [
        recoveredBlock28Block39Step := recoveredBlock28Block39PC.
        recoveredBlock28Block39Step = 46 ifTrue: [
            recoveredBlock28Block39Stack1 := nil.
            recoveredBlock28Block39PC := 47.
        ].
        recoveredBlock28Block39Step = 47 ifTrue: [
            recoveredBlock28Block39Stack2 := recoveredBlock28Block39Arg1.
            recoveredBlock28Block39PC := 48.
        ].
        recoveredBlock28Block39Step = 48 ifTrue: [
            recoveredBlock28Block39Stack2 := (recoveredBlock28Block39Stack2) getItem.
            recoveredBlock28Block39PC := 50.
        ].
        recoveredBlock28Block39Step = 50 ifTrue: [
            (recoveredBlock28Block39Stack2 ~~ nil) ifTrue: [recoveredBlock28Block39PC := 71] ifFalse: [recoveredBlock28Block39PC := 54].
        ].
        recoveredBlock28Block39Step = 54 ifTrue: [
            recoveredBlock28Block39Stack2 := recoveredBlock28Block39Arg1.
            recoveredBlock28Block39PC := 55.
        ].
        recoveredBlock28Block39Step = 55 ifTrue: [
            recoveredBlock28Block39Stack2 := (recoveredBlock28Block39Stack2) hasSCMData.
            recoveredBlock28Block39PC := 57.
        ].
        recoveredBlock28Block39Step = 57 ifTrue: [
            (recoveredBlock28Block39Stack2) ifTrue: [recoveredBlock28Block39PC := 71] ifFalse: [recoveredBlock28Block39PC := 60].
        ].
        recoveredBlock28Block39Step = 60 ifTrue: [
            recoveredBlock28Block39PC := 61.
        ].
        recoveredBlock28Block39Step = 61 ifTrue: [
            recoveredBlock28Block39Stack1 := recoveredLocal1.
            recoveredBlock28Block39PC := 64.
        ].
        recoveredBlock28Block39Step = 64 ifTrue: [
            recoveredBlock28Block39Stack2 := 'LostMetaData'.
            recoveredBlock28Block39PC := 66.
        ].
        recoveredBlock28Block39Step = 66 ifTrue: [
            recoveredBlock28Block39Stack1 := (recoveredBlock28Block39Stack1) at: (recoveredBlock28Block39Stack2).
            recoveredBlock28Block39PC := 68.
        ].
        recoveredBlock28Block39Step = 68 ifTrue: [
            recoveredBlock28Block39Stack2 := recoveredBlock28Block39Arg1.
            recoveredBlock28Block39PC := 69.
        ].
        recoveredBlock28Block39Step = 69 ifTrue: [
            recoveredBlock28Block39Stack1 := (recoveredBlock28Block39Stack1) add: (recoveredBlock28Block39Stack2).
            recoveredBlock28Block39PC := 71.
        ].
        recoveredBlock28Block39Step = 71 ifTrue: [
            recoveredBlock28Block39Result := recoveredBlock28Block39Stack1.
            recoveredBlock28Block39Done := true.
        ].
    ].
    recoveredBlock28Block39Result
].
    recoveredBlock28Value4 := (recoveredBlock28Value2) ifNotNil: (recoveredBlock28Value3).
    recoveredBlock28Value4
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

