"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000e01c; bytecode file offset 0x90ab8c"
!SortedCollection methodsFor: 'recovered'!
fileOutSurrogate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) asOrderedCollection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026254; bytecode file offset 0x923928"
!SortedCollection methodsFor: 'recovered'!
asSameCollectionMethod
    ^'asSameSortedCollection'
! !

"ASDBase.ic method 0x200b5abc; bytecode file offset 0x9b237c"
!SortedCollection methodsFor: 'recovered'!
copyDBTree
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super copyDBTree.
    recoveredValue1 := sortBlock.
    recoveredValue2 := (recoveredValue0) asSortedCollection: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce82c; bytecode file offset 0x9cb0e8"
!SortedCollection methodsFor: 'recovered'!
adjustIndices
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := elements.
    recoveredValue1 := (recoveredValue0) size.
    size := recoveredValue1.
    (self) sort.
    ^self
! !

"ASDBase.ic method 0x2011df9c; bytecode file offset 0xa1a854"
!SortedCollection methodsFor: 'recovered'!
privateAddLast: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := size.
    recoveredValue1 := (recoveredValue0) + (1).
    size := recoveredValue1.
    recoveredValue2 := elements.
    recoveredValue3 := size.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2011e590; bytecode file offset 0xa1ae48"
!SortedCollection methodsFor: 'recovered'!
fileInActivate: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c8b50Arg1 :block280c8b50Arg2 | 
    | block280c8b50Value0 block280c8b50Value1 block280c8b50Value2 |
    block280c8b50Value0 := block280c8b50Arg1.
    block280c8b50Value1 := block280c8b50Arg2.
    block280c8b50Value2 := (block280c8b50Value0) < (block280c8b50Value1).
    block280c8b50Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            sortBlock := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20141f38; bytecode file offset 0xa3e7f8"
!SortedCollection methodsFor: 'recovered'!
abtReverseDoWithIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super abtReverseDoWithIndex: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201497a8; bytecode file offset 0xa46074"
!SortedCollection methodsFor: 'recovered'!
markReadOnlyAllInstVars
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := sortBlock.
    recoveredLocal1 := recoveredValue0.
    sortBlock := nil.
    super markReadOnlyAllInstVars.
    recoveredValue1 := recoveredLocal1.
    sortBlock := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201497b8; bytecode file offset 0xa46074"
!SortedCollection methodsFor: 'recovered'!
markReadWriteAllInstVars
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := sortBlock.
    recoveredLocal1 := recoveredValue0.
    sortBlock := nil.
    super markReadWriteAllInstVars.
    recoveredValue1 := recoveredLocal1.
    sortBlock := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20153bbc; bytecode file offset 0xa50478"
!SortedCollection methodsFor: 'recovered'!
asSameSortedCollection: recoveredArg1
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
            recoveredStack2 := sortBlock.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := super asSameSortedCollection: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20159ee0; bytecode file offset 0xa567bc"
!SortedCollection methodsFor: 'recovered'!
emWriteObjectOrLiteralOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sortBlock.
    recoveredLocal1 := recoveredValue0.
    sortBlock := nil.
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOrLiteralOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    sortBlock := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2016d11c; bytecode file offset 0xa699dc"
!SortedCollection methodsFor: 'recovered'!
atObject: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176694; bytecode file offset 0xa72f54"
!SortedCollection methodsFor: 'recovered'!
readObjectFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super readObjectFrom: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := [:block280cf21cArg1 :block280cf21cArg2 | 
    | block280cf21cValue0 block280cf21cValue1 block280cf21cValue2 |
    block280cf21cValue0 := block280cf21cArg1.
    block280cf21cValue1 := block280cf21cArg2.
    block280cf21cValue2 := (block280cf21cValue0) < (block280cf21cValue1).
    block280cf21cValue2
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            sortBlock := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018c0f4; bytecode file offset 0xa889b8"
!SortedCollection methodsFor: 'recovered'!
atObject: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dbc7c; bytecode file offset 0xad8540"
!SortedCollection methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e1e9c; bytecode file offset 0xade75c"
!SortedCollection methodsFor: 'recovered'!
lastOrNil
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNil: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e1ed0; bytecode file offset 0xade78c"
!SortedCollection methodsFor: 'recovered'!
firstOrNil
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNil: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f9c0c; bytecode file offset 0xaf64cc"
!SortedCollection methodsFor: 'recovered'!
addAndOrReturnIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) addReturnIndex: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029c6fc; bytecode file offset 0xb98fd0"
!SortedCollection methodsFor: 'recovered'!
abtCloneWithRecursionSet: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) sortBlock.
    (recoveredValue3) sortBlock: (recoveredValue4).
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredLocal1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := recoveredArg1.
    recoveredBlock19Value3 := (recoveredBlock19Value1) abtCloneWithRecursionSet: (recoveredBlock19Value2).
    recoveredBlock19Value4 := (recoveredBlock19Value0) add: (recoveredBlock19Value3).
    recoveredBlock19Value4
].
    (self) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202d1428; bytecode file offset 0xbcdcec"
!SortedCollection methodsFor: 'recovered'!
specialDBLabelProxyIndexOf: recoveredArg1 startingAt: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isEqual: (recoveredBlock13Stack3).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 33].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) applyWithIndex: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030a1e0; bytecode file offset 0xc06aa8"
!SortedCollection methodsFor: 'recovered'!
indexOf: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sortBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            sortBlock := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) binarySearchAdding: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            sortBlock := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031642c; bytecode file offset 0xc12cf0"
!SortedCollection methodsFor: 'recovered'!
indexOf: recoveredArg1 startingAt: recoveredArg2 ifAbsent: recoveredArg3 accessMethod: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg4.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) perform: (recoveredBlock13Stack3).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg4.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) perform: (recoveredBlock13Stack4).
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) = (recoveredBlock13Stack3).
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 38] ifFalse: [recoveredBlock13PC := 41].
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := size.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) applyWithIndex: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20347ad8; bytecode file offset 0xc443a4"
!SortedCollection methodsFor: 'recovered'!
select: recoveredArg1 collect: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg1.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) value: (recoveredBlock21Stack3).
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 38] ifFalse: [recoveredBlock21PC := 49].
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg2.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) value: (recoveredBlock21Stack3).
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) add: (recoveredBlock21Stack2).
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) apply: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036b860; bytecode file offset 0xc68130"
!SortedCollection methodsFor: 'recovered'!
addReturnIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := elements.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) grow: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := sorted.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) sort.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := sortBlock.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultBinarySearchAdding: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) binarySearchAdding: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := elements.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := elements.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) replaceFrom: (recoveredStack3) to: (recoveredStack4) with: (recoveredStack5) startingAt: (recoveredStack6).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            size := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20385ecc; bytecode file offset 0xc827a0"
!SortedCollection methodsFor: 'recovered'!
collect: recoveredArg1 select: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := sortBlock.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := sorted.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sort.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) value: (recoveredBlock28Stack2).
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg2.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local1.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) value: (recoveredBlock28Stack3).
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 52] ifFalse: [recoveredBlock28PC := 59].
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local1.
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) privateAddLast: (recoveredBlock28Stack2).
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) isSorted: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038cc0c; bytecode file offset 0xc894f8"
!SortedCollection methodsFor: 'recovered'!
abrAdd: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'addedItems'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) species.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) species.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtRealIndexOf: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'isEmpty'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'first'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) abrFirst.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'last'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) abrLast.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'size'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'IChanged'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c83a0; bytecode file offset 0xcc4c88"
!SortedCollection methodsFor: 'recovered'!
abrAddAll: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            recoveredStack0 := (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'addedItems'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (self) abtRealIndexOf: (recoveredBlock23Value0).
    recoveredBlock23Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'isEmpty'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'first'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) abrFirst.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'last'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) abrLast.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'size'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'IChanged'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

