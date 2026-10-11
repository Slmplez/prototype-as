"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200154a4; bytecode file offset 0x912098"
!SGObjectHandle class methodsFor: 'recovered'!
objectRefCounterTable
    | recoveredValue0 |
    recoveredValue0 := ObjectRefCounterTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004acdc; bytecode file offset 0x947768"
!SGObjectHandle class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    recoveredValue0 := (self) create: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200540ec; bytecode file offset 0x951190"
!SGObjectHandle class methodsFor: 'recovered'!
objectTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ObjectTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200541c4; bytecode file offset 0x951190"
!SGObjectHandle class methodsFor: 'recovered'!
objectSema: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ObjectSema := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054578; bytecode file offset 0x951190"
!SGObjectHandle class methodsFor: 'recovered'!
objectRefCounterTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ObjectRefCounterTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20082e38; bytecode file offset 0x97f714"
!SGObjectHandle class methodsFor: 'recovered'!
index: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    Index := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bcdb8; bytecode file offset 0x9b970c"
!SGObjectHandle class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (self) name.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) initialize: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d2760; bytecode file offset 0x9cf02c"
!SGObjectHandle class methodsFor: 'recovered'!
reset
    (self) objectTable: (nil).
    (self) objectSema: (nil).
    ^self
! !

"ASDBase.ic method 0x201051fc; bytecode file offset 0xa01b38"
!SGObjectHandle class methodsFor: 'recovered'!
objectTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ObjectTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initObjectTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ObjectTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011940c; bytecode file offset 0xa15ccc"
!SGObjectHandle class methodsFor: 'recovered'!
getNewIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) index.
    recoveredBlock4Value1 := (recoveredBlock4Value0) + (1).
    recoveredBlock4Value2 := (self) index: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013a088; bytecode file offset 0xa369dc"
!SGObjectHandle class methodsFor: 'recovered'!
objectSema
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ObjectSema.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Semaphore.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) forMutualExclusion.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) objectSema: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ObjectSema.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013a144; bytecode file offset 0xa36a00"
!SGObjectHandle class methodsFor: 'recovered'!
index
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Index.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) index: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Index.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20180434; bytecode file offset 0xa7cd00"
!SGObjectHandle class methodsFor: 'recovered'!
initObjectTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_70113').
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    (self) objectTable: (recoveredValue2).
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new.
    (self) objectRefCounterTable: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201db918; bytecode file offset 0xad81d4"
!SGObjectHandle class methodsFor: 'recovered'!
idForObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objectTable.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2 ~~ recoveredBlock5Stack3) ifTrue: [recoveredBlock5PC := 23] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20238ba8; bytecode file offset 0xb35468"
!SGObjectHandle class methodsFor: 'recovered'!
objectTableContains: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectSema.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (self) idForObject: (recoveredBlock14Value0).
    recoveredBlock14Value2 := recoveredBlock14Value1.
    recoveredLocal1 := recoveredBlock14Value2.
    recoveredBlock14Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20376e40; bytecode file offset 0xc73728"
!SGObjectHandle class methodsFor: 'recovered'!
deleteUsingBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objectSema.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 |
    recoveredBlock5Value0 := (self) objectTable.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) reject: (recoveredBlock5Value1).
    (self) objectTable: (recoveredBlock5Value2).
    recoveredBlock5Value3 := LookupTable.
    recoveredBlock5Value4 := (self) objectTable.
    recoveredBlock5Value5 := (recoveredBlock5Value4) size.
    recoveredBlock5Value6 := (recoveredBlock5Value3) new: (recoveredBlock5Value5).
    recoveredBlock5Local1 := recoveredBlock5Value6.
    recoveredBlock5Value7 := (self) objectTable.
    recoveredBlock5Value8 := [:recoveredBlock5Block33Arg1 | 
    | recoveredBlock5Block33Local1 recoveredBlock5Block33Stack0 recoveredBlock5Block33Stack1 recoveredBlock5Block33Stack2 recoveredBlock5Block33Stack3 recoveredBlock5Block33PC recoveredBlock5Block33Step recoveredBlock5Block33Done recoveredBlock5Block33Result |
    recoveredBlock5Block33Stack0 := self.
    recoveredBlock5Block33PC := 40.
    recoveredBlock5Block33Done := false.
    [recoveredBlock5Block33Done not] whileTrue: [
        recoveredBlock5Block33Step := recoveredBlock5Block33PC.
        recoveredBlock5Block33Step = 40 ifTrue: [
            recoveredBlock5Block33Stack0 := (recoveredBlock5Block33Stack0) objectRefCounterTable.
            recoveredBlock5Block33PC := 42.
        ].
        recoveredBlock5Block33Step = 42 ifTrue: [
            recoveredBlock5Block33Stack1 := recoveredBlock5Block33Arg1.
            recoveredBlock5Block33PC := 43.
        ].
        recoveredBlock5Block33Step = 43 ifTrue: [
            recoveredBlock5Block33Stack2 := [].
            recoveredBlock5Block33PC := 45.
        ].
        recoveredBlock5Block33Step = 45 ifTrue: [
            recoveredBlock5Block33Stack0 := (recoveredBlock5Block33Stack0) at: (recoveredBlock5Block33Stack1) ifAbsent: (recoveredBlock5Block33Stack2).
            recoveredBlock5Block33PC := 47.
        ].
        recoveredBlock5Block33Step = 47 ifTrue: [
            recoveredBlock5Block33Local1 := recoveredBlock5Block33Stack0.
            recoveredBlock5Block33PC := 48.
        ].
        recoveredBlock5Block33Step = 48 ifTrue: [
            recoveredBlock5Block33Stack0 := nil.
            recoveredBlock5Block33PC := 49.
        ].
        recoveredBlock5Block33Step = 49 ifTrue: [
            recoveredBlock5Block33Stack1 := recoveredBlock5Block33Local1.
            recoveredBlock5Block33PC := 50.
        ].
        recoveredBlock5Block33Step = 50 ifTrue: [
            (recoveredBlock5Block33Stack1 == nil) ifTrue: [recoveredBlock5Block33PC := 62] ifFalse: [recoveredBlock5Block33PC := 54].
        ].
        recoveredBlock5Block33Step = 54 ifTrue: [
            recoveredBlock5Block33PC := 55.
        ].
        recoveredBlock5Block33Step = 55 ifTrue: [
            recoveredBlock5Block33Stack0 := recoveredBlock5Local1.
            recoveredBlock5Block33PC := 58.
        ].
        recoveredBlock5Block33Step = 58 ifTrue: [
            recoveredBlock5Block33Stack1 := recoveredBlock5Block33Arg1.
            recoveredBlock5Block33PC := 59.
        ].
        recoveredBlock5Block33Step = 59 ifTrue: [
            recoveredBlock5Block33Stack2 := recoveredBlock5Block33Local1.
            recoveredBlock5Block33PC := 60.
        ].
        recoveredBlock5Block33Step = 60 ifTrue: [
            recoveredBlock5Block33Stack0 := (recoveredBlock5Block33Stack0) at: (recoveredBlock5Block33Stack1) put: (recoveredBlock5Block33Stack2).
            recoveredBlock5Block33PC := 62.
        ].
        recoveredBlock5Block33Step = 62 ifTrue: [
            recoveredBlock5Block33Result := recoveredBlock5Block33Stack0.
            recoveredBlock5Block33Done := true.
        ].
    ].
    recoveredBlock5Block33Result
].
    recoveredBlock5Value9 := (recoveredBlock5Value7) keysDo: (recoveredBlock5Value8).
    recoveredBlock5Value9
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2039da84; bytecode file offset 0xc9a358"
!SGObjectHandle class methodsFor: 'recovered'!
getFromObjectTable: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := Infinity.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) sign: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := Infinity.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) sign: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectSema.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 |
    recoveredBlock50Value0 := (self) objectTable.
    recoveredBlock50Value1 := recoveredArg1.
    recoveredBlock50Value2 := [].
    recoveredBlock50Value3 := (recoveredBlock50Value0) at: (recoveredBlock50Value1) ifAbsent: (recoveredBlock50Value2).
    recoveredBlock50Value4 := recoveredBlock50Value3.
    recoveredLocal1 := recoveredBlock50Value4.
    recoveredBlock50Value3
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043fc14; bytecode file offset 0xd3c4ec"
!SGObjectHandle class methodsFor: 'recovered'!
removeFromObjectTable: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectSema.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) objectRefCounterTable.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := [
    0
].
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) at: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack1 := 1.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) > (recoveredBlock17Stack1).
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 48] ifFalse: [recoveredBlock17PC := 70].
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) objectRefCounterTable.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) + (-1).
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            (recoveredBlock17Stack0) at: (recoveredBlock17Stack1) put: (recoveredBlock17Stack2).
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) objectTable.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) at: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack0 := nil.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local1.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 78] ifFalse: [recoveredBlock17PC := 102].
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) objectRefCounterTable.
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            (recoveredBlock17Stack0) removeKey: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) objectTable.
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 94.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 96.
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) removeKey: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 98.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 102.
        ].
        recoveredBlock17Step = 102 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049f92c; bytecode file offset 0xd9c20c"
!SGObjectHandle class methodsFor: 'recovered'!
addToObjectTable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPositive.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectTableContains: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNewIdentifier.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectSema.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 |
    recoveredBlock54Value0 := (self) objectTable.
    recoveredBlock54Value1 := recoveredLocal2.
    recoveredBlock54Value2 := recoveredArg1.
    (recoveredBlock54Value0) at: (recoveredBlock54Value1) put: (recoveredBlock54Value2).
    recoveredBlock54Value3 := (self) objectRefCounterTable.
    recoveredBlock54Value4 := recoveredLocal2.
    recoveredBlock54Value5 := (recoveredBlock54Value3) at: (recoveredBlock54Value4) put: (1).
    recoveredBlock54Value5
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectSema.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock89Stack0 recoveredBlock89Stack1 recoveredBlock89Stack2 recoveredBlock89Stack3 recoveredBlock89PC recoveredBlock89Step recoveredBlock89Done recoveredBlock89Result |
    recoveredBlock89Stack0 := self.
    recoveredBlock89PC := 96.
    recoveredBlock89Done := false.
    [recoveredBlock89Done not] whileTrue: [
        recoveredBlock89Step := recoveredBlock89PC.
        recoveredBlock89Step = 96 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) objectRefCounterTable.
            recoveredBlock89PC := 98.
        ].
        recoveredBlock89Step = 98 ifTrue: [
            recoveredBlock89Stack1 := recoveredLocal2.
            recoveredBlock89PC := 101.
        ].
        recoveredBlock89Step = 101 ifTrue: [
            recoveredBlock89Stack2 := [
    0
].
            recoveredBlock89PC := 103.
        ].
        recoveredBlock89Step = 103 ifTrue: [
            recoveredBlock89PC := 109.
        ].
        recoveredBlock89Step = 109 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) at: (recoveredBlock89Stack1) ifAbsent: (recoveredBlock89Stack2).
            recoveredBlock89PC := 111.
        ].
        recoveredBlock89Step = 111 ifTrue: [
            recoveredLocal1 := recoveredBlock89Stack0.
            recoveredBlock89PC := 114.
        ].
        recoveredBlock89Step = 114 ifTrue: [
            recoveredBlock89Stack0 := self.
            recoveredBlock89PC := 115.
        ].
        recoveredBlock89Step = 115 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) objectRefCounterTable.
            recoveredBlock89PC := 117.
        ].
        recoveredBlock89Step = 117 ifTrue: [
            recoveredBlock89Stack1 := recoveredLocal2.
            recoveredBlock89PC := 120.
        ].
        recoveredBlock89Step = 120 ifTrue: [
            recoveredBlock89Stack2 := recoveredLocal1.
            recoveredBlock89PC := 123.
        ].
        recoveredBlock89Step = 123 ifTrue: [
            recoveredBlock89Stack2 := (recoveredBlock89Stack2) + (1).
            recoveredBlock89PC := 124.
        ].
        recoveredBlock89Step = 124 ifTrue: [
            recoveredBlock89Stack0 := (recoveredBlock89Stack0) at: (recoveredBlock89Stack1) put: (recoveredBlock89Stack2).
            recoveredBlock89PC := 126.
        ].
        recoveredBlock89Step = 126 ifTrue: [
            recoveredBlock89Result := recoveredBlock89Stack0.
            recoveredBlock89Done := true.
        ].
    ].
    recoveredBlock89Result
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

