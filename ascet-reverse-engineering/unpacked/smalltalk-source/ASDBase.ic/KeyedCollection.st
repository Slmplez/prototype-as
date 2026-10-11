"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007864c; bytecode file offset 0x9757c8"
!KeyedCollection methodsFor: 'recovered'!
isKeyedCollection
    ^true
! !

"ASDBase.ic method 0x2007d26c; bytecode file offset 0x97c330"
!KeyedCollection methodsFor: 'recovered'!
isReplaceAliasTable
    ^false
! !

"ASDBase.ic method 0x200dc0dc; bytecode file offset 0x9d89a8"
!KeyedCollection methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) abtXmlPrint: (self) on: (recoveredValue2) context: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010c360; bytecode file offset 0xa08c24"
!KeyedCollection methodsFor: 'recovered'!
someAssociation
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    ^recoveredBlock4Value0
].
    (self) associationsDo: (recoveredValue0).
    ^nil
! !

"ASDBase.ic method 0x2010e08c; bytecode file offset 0xa0a948"
!KeyedCollection methodsFor: 'recovered'!
abtAddItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) at: (2).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) at: (3).
    (self) at: (recoveredValue1) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013269c; bytecode file offset 0xa2ef68"
!KeyedCollection methodsFor: 'recovered'!
abtXmlAddAll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) add: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20132830; bytecode file offset 0xa2f0f0"
!KeyedCollection methodsFor: 'recovered'!
, recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) shallowCopy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022bca8; bytecode file offset 0xb28574"
!KeyedCollection methodsFor: 'recovered'!
abtXmlElements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := Association.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := recoveredBlock10Arg2.
    recoveredBlock10Value4 := (recoveredBlock10Value1) key: (recoveredBlock10Value2) value: (recoveredBlock10Value3).
    recoveredBlock10Value5 := (recoveredBlock10Value0) add: (recoveredBlock10Value4).
    recoveredBlock10Value5
].
    (self) keysAndValuesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20240eac; bytecode file offset 0xb3d770"
!KeyedCollection methodsFor: 'recovered'!
removeAll: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := KeyedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack2 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg2.
    recoveredBlock19Value2 := (self) removeKey: (recoveredBlock19Value0) ifAbsent: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fd884; bytecode file offset 0xbfa144"
!KeyedCollection methodsFor: 'recovered'!
compare: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 :recoveredBlock27Arg2 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredArg1.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) at: (recoveredBlock27Stack3).
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg2.
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) = (recoveredBlock27Stack3).
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 49] ifFalse: [recoveredBlock27PC := 46].
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Stack1 := false.
            recoveredBlock27PC := 48.
        ].
        recoveredBlock27Step = 48 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20376c84; bytecode file offset 0xc73554"
!KeyedCollection methodsFor: 'recovered'!
xmlEquals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKeyedCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) hook: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlEquals: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31Stack6 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg2.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg1.
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            recoveredBlock31Stack4 := recoveredBlock31Arg1.
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack5 := [
    | recoveredBlock31Block44Value0 recoveredBlock31Block44Value1 |
    recoveredBlock31Block44Value0 := Util.
    recoveredBlock31Block44Value1 := (recoveredBlock31Block44Value0) hook: (false).
    ^recoveredBlock31Block44Value1
].
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) at: (recoveredBlock31Stack4) ifAbsent: (recoveredBlock31Stack5).
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) xmlEquals: (recoveredBlock31Stack3).
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 65] ifFalse: [recoveredBlock31PC := 62].
        ].
        recoveredBlock31Step = 62 ifTrue: [
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31Stack1 := false.
            recoveredBlock31PC := 64.
        ].
        recoveredBlock31Step = 64 ifTrue: [
            ^recoveredBlock31Stack1
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

