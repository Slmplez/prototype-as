"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b878; bytecode file offset 0x92209c"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
getVariantCodingSetMethod
    ^'addForbiddenComb:'
! !

"ASDBase.ic method 0x2002c424; bytecode file offset 0x934580"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
allCombinations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) combinations.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034b84; bytecode file offset 0x934580"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ba6c; bytecode file offset 0x948384"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
combinations
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084618; bytecode file offset 0x981ca4"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putCombinationsIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6530; bytecode file offset 0x9a2f38"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
combinations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200eeabc; bytecode file offset 0x9eb380"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
minimizeCollections
    | recoveredLocal1 recoveredValue0 |
    super minimizeCollections.
    recoveredValue0 := (self) combinations.
    (recoveredValue0) minimizeSize.
    ^self
! !

"ASDBase.ic method 0x20121534; bytecode file offset 0xa1ddf4"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
addCombinations: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) combinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) at: (2).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20137c74; bytecode file offset 0xa34558"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
initializeCollections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    super initializeCollections.
    recoveredValue0 := LookupTable.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) new.
    (self) combinations: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014a3e8; bytecode file offset 0xa46cb4"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
asap2Children
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super asap2Children.
    recoveredValue1 := (recoveredValue0) asSameOrderedCollection.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) combinations.
    recoveredValue4 := (recoveredValue3) keys.
    (recoveredValue2) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20229930; bytecode file offset 0xb26200"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) combinations.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 |
    recoveredBlock6Value0 := (self) combinations.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := [].
    (recoveredBlock6Value0) removeKey: (recoveredBlock6Value1) ifAbsent: (recoveredBlock6Value2).
    recoveredBlock6Value3 := (self) combinations.
    recoveredBlock6Value4 := recoveredArg1.
    recoveredBlock6Value5 := recoveredBlock6Arg1.
    recoveredBlock6Value6 := (recoveredBlock6Value4) at: (recoveredBlock6Value5).
    recoveredBlock6Value7 := recoveredBlock6Arg2.
    recoveredBlock6Value8 := (recoveredBlock6Value3) at: (recoveredBlock6Value6) put: (recoveredBlock6Value7).
    recoveredBlock6Value8
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202b50c4; bytecode file offset 0xbb1990"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
putCombinationsIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) combinations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) combinations.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 |
    recoveredBlock10Value0 := recoveredArg1.
    (self) putNewLineIn: (recoveredBlock10Value0).
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value2) name.
    (self) putIn: (recoveredBlock10Value1) string: (recoveredBlock10Value3).
    recoveredBlock10Value4 := recoveredArg1.
    (self) putSeparatorIn: (recoveredBlock10Value4).
    recoveredBlock10Value5 := recoveredArg1.
    recoveredBlock10Value6 := recoveredBlock10Arg2.
    recoveredBlock10Value7 := (self) putIn: (recoveredBlock10Value5) string: (recoveredBlock10Value6).
    recoveredBlock10Value7
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20366c38; bytecode file offset 0xc63514"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectObjectsFlat: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) combinations.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 :recoveredBlock41Arg2 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 |
    recoveredBlock41Value0 := (self) combinations.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := [].
    (recoveredBlock41Value0) removeKey: (recoveredBlock41Value1) ifAbsent: (recoveredBlock41Value2).
    recoveredBlock41Value3 := (self) combinations.
    recoveredBlock41Value4 := recoveredBlock41Arg1.
    recoveredBlock41Value5 := (recoveredBlock41Value4) comments.
    recoveredBlock41Value6 := recoveredBlock41Arg2.
    recoveredBlock41Value7 := (recoveredBlock41Value3) at: (recoveredBlock41Value5) put: (recoveredBlock41Value6).
    recoveredBlock41Value7
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039f428; bytecode file offset 0xc9bd08"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) getShortBegin: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStringList: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addCombinations: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNextItemFrom: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addCombinations: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) endKeyWord.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNextItemFrom: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNextItemFrom: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyWord.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := SCASAP2UnExspectedKeywordAfterEnd.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cffa8; bytecode file offset 0xdcc8a0"
!ASAP2VarForbiddenComb methodsFor: 'recovered'!
createASAP2ObjectReferences: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
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
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) createASAP2ObjectReferences: (recoveredStack3) parent: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 36] ifFalse: [recoveredPC := 83]] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) variantCoding.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 |
    recoveredBlock89Value0 := (self) combinations.
    recoveredBlock89Value1 := (recoveredBlock89Value0) copy.
    recoveredBlock89Value2 := [:recoveredBlock89Block100Arg1 :recoveredBlock89Block100Arg2 | 
    | recoveredBlock89Block100Local1 recoveredBlock89Block100Stack0 recoveredBlock89Block100Stack1 recoveredBlock89Block100Stack2 recoveredBlock89Block100Stack3 recoveredBlock89Block100Stack4 recoveredBlock89Block100PC recoveredBlock89Block100Step recoveredBlock89Block100Done recoveredBlock89Block100Result |
    recoveredBlock89Block100Stack0 := self.
    recoveredBlock89Block100PC := 106.
    recoveredBlock89Block100Done := false.
    [recoveredBlock89Block100Done not] whileTrue: [
        recoveredBlock89Block100Step := recoveredBlock89Block100PC.
        recoveredBlock89Block100Step = 106 ifTrue: [
            recoveredBlock89Block100Stack1 := recoveredBlock89Arg1.
            recoveredBlock89Block100PC := 109.
        ].
        recoveredBlock89Block100Step = 109 ifTrue: [
            recoveredBlock89Block100Stack2 := recoveredBlock89Block100Arg1.
            recoveredBlock89Block100PC := 110.
        ].
        recoveredBlock89Block100Step = 110 ifTrue: [
            recoveredBlock89Block100Stack1 := (recoveredBlock89Block100Stack1) criterionNamed: (recoveredBlock89Block100Stack2).
            recoveredBlock89Block100PC := 112.
        ].
        recoveredBlock89Block100Step = 112 ifTrue: [
            recoveredBlock89Block100Stack2 := recoveredBlock89Block100Stack1.
            recoveredBlock89Block100PC := 113.
        ].
        recoveredBlock89Block100Step = 113 ifTrue: [
            recoveredBlock89Block100Local1 := recoveredBlock89Block100Stack2.
            recoveredBlock89Block100PC := 114.
        ].
        recoveredBlock89Block100Step = 114 ifTrue: [
            (recoveredBlock89Block100Stack1 ~~ nil) ifTrue: [recoveredBlock89Block100PC := 130] ifFalse: [recoveredBlock89Block100PC := 118].
        ].
        recoveredBlock89Block100Step = 118 ifTrue: [
            recoveredBlock89Block100Stack1 := self.
            recoveredBlock89Block100PC := 119.
        ].
        recoveredBlock89Block100Step = 119 ifTrue: [
            recoveredBlock89Block100Stack2 := SCASAP2MissingCriterion.
            recoveredBlock89Block100PC := 121.
        ].
        recoveredBlock89Block100Step = 121 ifTrue: [
            recoveredBlock89Block100Stack3 := recoveredBlock89Block100Arg1.
            recoveredBlock89Block100PC := 122.
        ].
        recoveredBlock89Block100Step = 122 ifTrue: [
            recoveredBlock89Block100Stack2 := (recoveredBlock89Block100Stack2) , (recoveredBlock89Block100Stack3).
            recoveredBlock89Block100PC := 124.
        ].
        recoveredBlock89Block100Step = 124 ifTrue: [
            recoveredBlock89Block100Stack1 := (recoveredBlock89Block100Stack1) monitorWarning: (recoveredBlock89Block100Stack2).
            recoveredBlock89Block100PC := 126.
        ].
        recoveredBlock89Block100Step = 126 ifTrue: [
            recoveredBlock89Block100PC := 145.
        ].
        recoveredBlock89Block100Step = 130 ifTrue: [
            recoveredBlock89Block100Stack1 := self.
            recoveredBlock89Block100PC := 131.
        ].
        recoveredBlock89Block100Step = 131 ifTrue: [
            recoveredBlock89Block100Stack1 := (recoveredBlock89Block100Stack1) combinations.
            recoveredBlock89Block100PC := 133.
        ].
        recoveredBlock89Block100Step = 133 ifTrue: [
            recoveredBlock89Block100Stack2 := recoveredBlock89Block100Arg1.
            recoveredBlock89Block100PC := 134.
        ].
        recoveredBlock89Block100Step = 134 ifTrue: [
            recoveredBlock89Block100Stack3 := [].
            recoveredBlock89Block100PC := 136.
        ].
        recoveredBlock89Block100Step = 136 ifTrue: [
            (recoveredBlock89Block100Stack1) removeKey: (recoveredBlock89Block100Stack2) ifAbsent: (recoveredBlock89Block100Stack3).
            recoveredBlock89Block100PC := 138.
        ].
        recoveredBlock89Block100Step = 138 ifTrue: [
            recoveredBlock89Block100Stack1 := self.
            recoveredBlock89Block100PC := 139.
        ].
        recoveredBlock89Block100Step = 139 ifTrue: [
            recoveredBlock89Block100Stack1 := (recoveredBlock89Block100Stack1) combinations.
            recoveredBlock89Block100PC := 141.
        ].
        recoveredBlock89Block100Step = 141 ifTrue: [
            recoveredBlock89Block100Stack2 := recoveredBlock89Block100Local1.
            recoveredBlock89Block100PC := 142.
        ].
        recoveredBlock89Block100Step = 142 ifTrue: [
            recoveredBlock89Block100Stack3 := recoveredBlock89Block100Arg2.
            recoveredBlock89Block100PC := 143.
        ].
        recoveredBlock89Block100Step = 143 ifTrue: [
            recoveredBlock89Block100Stack1 := (recoveredBlock89Block100Stack1) at: (recoveredBlock89Block100Stack2) put: (recoveredBlock89Block100Stack3).
            recoveredBlock89Block100PC := 145.
        ].
        recoveredBlock89Block100Step = 145 ifTrue: [
            recoveredBlock89Block100Result := recoveredBlock89Block100Stack1.
            recoveredBlock89Block100Done := true.
        ].
    ].
    recoveredBlock89Block100Result
].
    recoveredBlock89Value3 := (recoveredBlock89Value1) keysAndValuesDo: (recoveredBlock89Value2).
    recoveredBlock89Value3
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

