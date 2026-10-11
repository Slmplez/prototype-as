"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20077474; bytecode file offset 0x9757c8"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
isVerbalTable
    ^true
! !

"ASDBase.ic method 0x20078eac; bytecode file offset 0x9757c8"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
isFormulaString
    ^true
! !

"ASDBase.ic method 0x200df858; bytecode file offset 0x9dc118"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super appliedToNumber: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) left.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fd13c; bytecode file offset 0x9f9a10"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
selectVaildCompuTab: recoveredArg1
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
            recoveredStack2 := [:block280c606cArg1 | 
    | block280c606cValue0 block280c606cValue1 |
    block280c606cValue0 := block280c606cArg1.
    block280c606cValue1 := (block280c606cValue0) isTabRange.
    block280c606cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013ddd8; bytecode file offset 0xa3a6a4"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
tabFormulaHexValueList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbd3cArg1 | 
    | block280cbd3cValue0 block280cbd3cValue1 block280cbd3cValue2 block280cbd3cValue3 |
    block280cbd3cValue0 := block280cbd3cArg1.
    block280cbd3cValue1 := (block280cbd3cValue0) left.
    block280cbd3cValue2 := (block280cbd3cValue1) asInteger.
    block280cbd3cValue3 := (block280cbd3cValue2) asHex.
    block280cbd3cValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f478; bytecode file offset 0xa4bd3c"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
hexTabSorted
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ccff0Arg1 :block280ccff0Arg2 | 
    | block280ccff0Value0 block280ccff0Value1 block280ccff0Value2 block280ccff0Value3 block280ccff0Value4 |
    block280ccff0Value0 := block280ccff0Arg1.
    block280ccff0Value1 := (block280ccff0Value0) left.
    block280ccff0Value2 := block280ccff0Arg2.
    block280ccff0Value3 := (block280ccff0Value2) left.
    block280ccff0Value4 := (block280ccff0Value1) < (block280ccff0Value3).
    block280ccff0Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b838; bytecode file offset 0xa68114"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
minHexValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super minHexValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b850; bytecode file offset 0xa68114"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
maxHexValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super maxHexValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d22c4; bytecode file offset 0xaceb98"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
getImplInterval: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) min.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) max.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) sort.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7f84; bytecode file offset 0xad4890"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
initializeDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeDefault.
    recoveredValue0 := ASAP2CompuVTabRange.
    recoveredValue1 := (recoveredValue0) createDefault.
    (self) compuTabRef: (recoveredValue1).
    recoveredValue2 := (self) compuTabRef.
    recoveredValue3 := (self) name.
    recoveredValue4 := ('TAB_VERB_RANGE/') , (recoveredValue3).
    (recoveredValue2) name: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201f6a7c; bytecode file offset 0xaf333c"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
valueIncludedInHexTab: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hexTab.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) contains: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := [:recoveredBlock18Arg1 | 
    ^true
].
    (recoveredValue0) detect: (recoveredValue1) ifOne: (recoveredValue2).
    ^false
! !

"ASDBase.ic method 0x20221054; bytecode file offset 0xb1d930"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
getPhysIntervalForLowerUpperBound: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dbd2cArg1 :block280dbd2cArg2 | 
    | block280dbd2cValue0 block280dbd2cValue1 block280dbd2cValue2 |
    block280dbd2cValue0 := block280dbd2cArg1.
    block280dbd2cValue1 := block280dbd2cArg2.
    block280dbd2cValue2 := (block280dbd2cValue0) < (block280dbd2cValue1).
    block280dbd2cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) sort.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20288ccc; bytecode file offset 0xb855a8"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
createAccessor: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuTabRef.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := DBVerbalRangeTableFormulaItem.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [:block280e1cf0Arg1 | 
    | block280e1cf0Value0 block280e1cf0Value1 |
    block280e1cf0Value0 := block280e1cf0Arg1.
    block280e1cf0Value1 := (block280e1cf0Value0) first.
    block280e1cf0Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) values.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := [:block280e1d14Arg1 | 
    | block280e1d14Value0 block280e1d14Value1 block280e1d14Value2 |
    block280e1d14Value0 := block280e1d14Arg1.
    block280e1d14Value1 := (block280e1d14Value0) last.
    block280e1d14Value2 := (block280e1d14Value1) asString.
    block280e1d14Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) valArray: (recoveredStack2) phyArray: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032f434; bytecode file offset 0xc2bd04"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
appliedInverseToNumber: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) contains: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) defaultPhysValue.
    ^recoveredBlock18Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPhysValue.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) physTab.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041b93c; bytecode file offset 0xd1822c"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
nearestValidTabHexValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredArg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) includes: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 recoveredBlock39Value6 recoveredBlock39Value7 recoveredBlock39Value8 recoveredBlock39Value9 recoveredBlock39Value10 recoveredBlock39Value11 |
    recoveredBlock39Value0 := recoveredLocal2.
    recoveredBlock39Value1 := (recoveredBlock39Value0) last.
    recoveredBlock39Value2 := (recoveredBlock39Value1) copy.
    recoveredLocal3 := recoveredBlock39Value2.
    recoveredBlock39Value3 := recoveredLocal3.
    recoveredBlock39Value4 := recoveredLocal3.
    recoveredBlock39Value5 := (recoveredBlock39Value4) right.
    recoveredBlock39Value6 := (recoveredBlock39Value5) + (1).
    (recoveredBlock39Value3) left: (recoveredBlock39Value6).
    recoveredBlock39Value7 := recoveredLocal3.
    recoveredBlock39Value8 := recoveredLocal3.
    recoveredBlock39Value9 := (recoveredBlock39Value8) left.
    recoveredBlock39Value10 := (recoveredBlock39Value9) + (1).
    (recoveredBlock39Value7) right: (recoveredBlock39Value10).
    recoveredBlock39Value11 := recoveredLocal3.
    ^recoveredBlock39Value11
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestValidTabHexValue: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20518a54; bytecode file offset 0xe15358"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
resolveOverlapping
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2810ba84Arg1 :block2810ba84Arg2 | 
    | block2810ba84Value0 block2810ba84Value1 block2810ba84Value2 block2810ba84Value3 block2810ba84Value4 |
    block2810ba84Value0 := block2810ba84Arg1.
    block2810ba84Value1 := (block2810ba84Value0) left.
    block2810ba84Value2 := block2810ba84Arg2.
    block2810ba84Value3 := (block2810ba84Value2) left.
    block2810ba84Value4 := (block2810ba84Value1) < (block2810ba84Value3).
    block2810ba84Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:block2810baa8Arg1 | 
    | block2810baa8Value0 block2810baa8Value1 |
    block2810baa8Value0 := block2810baa8Arg1.
    block2810baa8Value1 := (block2810baa8Value0) / (#[236 175 0 0 0 0 240 63]).
    block2810baa8Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:block2810baccArg1 | 
    | block2810baccValue0 block2810baccValue1 |
    block2810baccValue0 := block2810baccArg1.
    block2810baccValue1 := (block2810baccValue0) * (#[236 175 0 0 0 0 240 63]).
    block2810baccValue1
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:block2810baf0Arg1 | 
    | block2810baf0Value0 block2810baf0Value1 |
    block2810baf0Value0 := block2810baf0Arg1.
    block2810baf0Value1 := (block2810baf0Value0) + (-1).
    block2810baf0Value1
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:block2810bb14Arg1 | 
    | block2810bb14Value0 block2810bb14Value1 |
    block2810bb14Value0 := block2810bb14Arg1.
    block2810bb14Value1 := (block2810bb14Value0) + (1).
    block2810bb14Value1
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) contains: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) contains: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 147].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveOverlapping.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) left: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveOverlapping.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 32] ifFalse: [recoveredLocal1 := nil. recoveredPC := 186]] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d7ec4; bytecode file offset 0xed47c8"
!ASAP2BytesTabVerbRangeCompuMethod methodsFor: 'recovered'!
nextImplValueFor: recoveredArg1 step: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 354] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) contains: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := recoveredArg2.
    recoveredBlock22Value2 := (recoveredBlock22Value0) + (recoveredBlock22Value1).
    recoveredBlock22Value3 := recoveredBlock22Value2.
    recoveredLocal2 := recoveredBlock22Value3.
    recoveredBlock22Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg2.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack2 := 0.
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) < (recoveredBlock40Stack2).
            recoveredBlock40PC := 52.
        ].
        recoveredBlock40Step = 52 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 56] ifFalse: [recoveredBlock40PC := 70].
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) left.
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg2.
            recoveredBlock40PC := 61.
        ].
        recoveredBlock40Step = 61 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) + (recoveredBlock40Stack2).
            recoveredBlock40PC := 62.
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack2.
            recoveredBlock40PC := 66.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) right.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg2.
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) + (recoveredBlock40Stack2).
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 78.
        ].
        recoveredBlock40Step = 78 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack2.
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 81 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 |
    recoveredBlock87Value0 := recoveredBlock87Arg1.
    recoveredBlock87Value1 := recoveredLocal2.
    recoveredBlock87Value2 := (recoveredBlock87Value0) contains: (recoveredBlock87Value1).
    recoveredBlock87Value2
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock100Local1 recoveredBlock100Local2 recoveredBlock100Stack0 recoveredBlock100Stack1 recoveredBlock100Stack2 recoveredBlock100PC recoveredBlock100Step recoveredBlock100Done recoveredBlock100Result |
    recoveredBlock100Stack0 := self.
    recoveredBlock100PC := 106.
    recoveredBlock100Done := false.
    [recoveredBlock100Done not] whileTrue: [
        recoveredBlock100Step := recoveredBlock100PC.
        recoveredBlock100Step = 106 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) hexTab.
            recoveredBlock100PC := 107.
        ].
        recoveredBlock100Step = 107 ifTrue: [
            recoveredBlock100Stack1 := [:block28119cecArg1 | 
    | block28119cecValue0 block28119cecValue1 |
    block28119cecValue0 := block28119cecArg1.
    block28119cecValue1 := (block28119cecValue0) left.
    block28119cecValue1
].
            recoveredBlock100PC := 109.
        ].
        recoveredBlock100Step = 109 ifTrue: [
            recoveredBlock100PC := 115.
        ].
        recoveredBlock100Step = 115 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) collect: (recoveredBlock100Stack1).
            recoveredBlock100PC := 117.
        ].
        recoveredBlock100Step = 117 ifTrue: [
            recoveredBlock100Local2 := recoveredBlock100Stack0.
            recoveredBlock100PC := 118.
        ].
        recoveredBlock100Step = 118 ifTrue: [
            recoveredBlock100Stack0 := recoveredArg2.
            recoveredBlock100PC := 121.
        ].
        recoveredBlock100Step = 121 ifTrue: [
            recoveredBlock100Stack1 := 0.
            recoveredBlock100PC := 123.
        ].
        recoveredBlock100Step = 123 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) < (recoveredBlock100Stack1).
            recoveredBlock100PC := 124.
        ].
        recoveredBlock100Step = 124 ifTrue: [
            (recoveredBlock100Stack0) ifTrue: [recoveredBlock100PC := 128] ifFalse: [recoveredBlock100PC := 176].
        ].
        recoveredBlock100Step = 128 ifTrue: [
            recoveredBlock100Stack0 := recoveredBlock100Local2.
            recoveredBlock100PC := 129.
        ].
        recoveredBlock100Step = 129 ifTrue: [
            recoveredBlock100Stack1 := [:recoveredBlock100Block129Arg1 | 
    | recoveredBlock100Block129Value0 recoveredBlock100Block129Value1 recoveredBlock100Block129Value2 |
    recoveredBlock100Block129Value0 := recoveredBlock100Block129Arg1.
    recoveredBlock100Block129Value1 := recoveredLocal2.
    recoveredBlock100Block129Value2 := (recoveredBlock100Block129Value0) <= (recoveredBlock100Block129Value1).
    recoveredBlock100Block129Value2
].
            recoveredBlock100PC := 142.
        ].
        recoveredBlock100Step = 142 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) findLast: (recoveredBlock100Stack1).
            recoveredBlock100PC := 144.
        ].
        recoveredBlock100Step = 144 ifTrue: [
            recoveredBlock100Stack1 := recoveredBlock100Stack0.
            recoveredBlock100PC := 145.
        ].
        recoveredBlock100Step = 145 ifTrue: [
            recoveredBlock100Local1 := recoveredBlock100Stack1.
            recoveredBlock100PC := 146.
        ].
        recoveredBlock100Step = 146 ifTrue: [
            recoveredBlock100Stack1 := 0.
            recoveredBlock100PC := 148.
        ].
        recoveredBlock100Step = 148 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) ~= (recoveredBlock100Stack1).
            recoveredBlock100PC := 149.
        ].
        recoveredBlock100Step = 149 ifTrue: [
            (recoveredBlock100Stack0) ifTrue: [recoveredBlock100PC := 152] ifFalse: [recoveredBlock100PC := 166].
        ].
        recoveredBlock100Step = 152 ifTrue: [
            recoveredBlock100Stack0 := self.
            recoveredBlock100PC := 153.
        ].
        recoveredBlock100Step = 153 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) hexTab.
            recoveredBlock100PC := 154.
        ].
        recoveredBlock100Step = 154 ifTrue: [
            recoveredBlock100Stack1 := recoveredBlock100Local1.
            recoveredBlock100PC := 155.
        ].
        recoveredBlock100Step = 155 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) at: (recoveredBlock100Stack1).
            recoveredBlock100PC := 157.
        ].
        recoveredBlock100Step = 157 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) right.
            recoveredBlock100PC := 159.
        ].
        recoveredBlock100Step = 159 ifTrue: [
            recoveredBlock100Stack1 := recoveredBlock100Stack0.
            recoveredBlock100PC := 160.
        ].
        recoveredBlock100Step = 160 ifTrue: [
            recoveredLocal2 := recoveredBlock100Stack1.
            recoveredBlock100PC := 163.
        ].
        recoveredBlock100Step = 163 ifTrue: [
            recoveredBlock100PC := 172.
        ].
        recoveredBlock100Step = 166 ifTrue: [
            recoveredBlock100Stack0 := self.
            recoveredBlock100PC := 167.
        ].
        recoveredBlock100Step = 167 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) hexTab.
            recoveredBlock100PC := 168.
        ].
        recoveredBlock100Step = 168 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) first.
            recoveredBlock100PC := 170.
        ].
        recoveredBlock100Step = 170 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) left.
            recoveredBlock100PC := 171.
        ].
        recoveredBlock100Step = 171 ifTrue: [
            ^recoveredBlock100Stack0
        ].
        recoveredBlock100Step = 172 ifTrue: [
            recoveredBlock100PC := 221.
        ].
        recoveredBlock100Step = 176 ifTrue: [
            recoveredBlock100Stack0 := recoveredBlock100Local2.
            recoveredBlock100PC := 177.
        ].
        recoveredBlock100Step = 177 ifTrue: [
            recoveredBlock100Stack1 := [:recoveredBlock100Block177Arg1 | 
    | recoveredBlock100Block177Value0 recoveredBlock100Block177Value1 recoveredBlock100Block177Value2 |
    recoveredBlock100Block177Value0 := recoveredBlock100Block177Arg1.
    recoveredBlock100Block177Value1 := recoveredLocal2.
    recoveredBlock100Block177Value2 := (recoveredBlock100Block177Value0) > (recoveredBlock100Block177Value1).
    recoveredBlock100Block177Value2
].
            recoveredBlock100PC := 190.
        ].
        recoveredBlock100Step = 190 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) findFirst: (recoveredBlock100Stack1).
            recoveredBlock100PC := 192.
        ].
        recoveredBlock100Step = 192 ifTrue: [
            recoveredBlock100Stack1 := recoveredBlock100Stack0.
            recoveredBlock100PC := 193.
        ].
        recoveredBlock100Step = 193 ifTrue: [
            recoveredBlock100Local1 := recoveredBlock100Stack1.
            recoveredBlock100PC := 194.
        ].
        recoveredBlock100Step = 194 ifTrue: [
            recoveredBlock100Stack1 := 0.
            recoveredBlock100PC := 196.
        ].
        recoveredBlock100Step = 196 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) ~= (recoveredBlock100Stack1).
            recoveredBlock100PC := 197.
        ].
        recoveredBlock100Step = 197 ifTrue: [
            (recoveredBlock100Stack0) ifTrue: [recoveredBlock100PC := 200] ifFalse: [recoveredBlock100PC := 214].
        ].
        recoveredBlock100Step = 200 ifTrue: [
            recoveredBlock100Stack0 := self.
            recoveredBlock100PC := 201.
        ].
        recoveredBlock100Step = 201 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) hexTab.
            recoveredBlock100PC := 202.
        ].
        recoveredBlock100Step = 202 ifTrue: [
            recoveredBlock100Stack1 := recoveredBlock100Local1.
            recoveredBlock100PC := 203.
        ].
        recoveredBlock100Step = 203 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) at: (recoveredBlock100Stack1).
            recoveredBlock100PC := 205.
        ].
        recoveredBlock100Step = 205 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) left.
            recoveredBlock100PC := 206.
        ].
        recoveredBlock100Step = 206 ifTrue: [
            recoveredBlock100Stack1 := recoveredBlock100Stack0.
            recoveredBlock100PC := 207.
        ].
        recoveredBlock100Step = 207 ifTrue: [
            recoveredLocal2 := recoveredBlock100Stack1.
            recoveredBlock100PC := 210.
        ].
        recoveredBlock100Step = 210 ifTrue: [
            recoveredBlock100PC := 221.
        ].
        recoveredBlock100Step = 214 ifTrue: [
            recoveredBlock100Stack0 := self.
            recoveredBlock100PC := 215.
        ].
        recoveredBlock100Step = 215 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) hexTab.
            recoveredBlock100PC := 216.
        ].
        recoveredBlock100Step = 216 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) last.
            recoveredBlock100PC := 218.
        ].
        recoveredBlock100Step = 218 ifTrue: [
            recoveredBlock100Stack0 := (recoveredBlock100Stack0) right.
            recoveredBlock100PC := 220.
        ].
        recoveredBlock100Step = 220 ifTrue: [
            ^recoveredBlock100Stack0
        ].
        recoveredBlock100Step = 221 ifTrue: [
            recoveredBlock100Result := recoveredBlock100Stack0.
            recoveredBlock100Done := true.
        ].
    ].
    recoveredBlock100Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := [:block28119d10Arg1 | 
    nil
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) appliedInverseToNumber: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) physTab.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock278Stack0 recoveredBlock278Stack1 recoveredBlock278Stack2 recoveredBlock278Stack3 recoveredBlock278PC recoveredBlock278Step recoveredBlock278Done recoveredBlock278Result |
    recoveredBlock278Stack0 := self.
    recoveredBlock278PC := 284.
    recoveredBlock278Done := false.
    [recoveredBlock278Done not] whileTrue: [
        recoveredBlock278Step := recoveredBlock278PC.
        recoveredBlock278Step = 284 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg2.
            recoveredBlock278PC := 287.
        ].
        recoveredBlock278Step = 287 ifTrue: [
            recoveredBlock278Stack2 := 0.
            recoveredBlock278PC := 289.
        ].
        recoveredBlock278Step = 289 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) < (recoveredBlock278Stack2).
            recoveredBlock278PC := 290.
        ].
        recoveredBlock278Step = 290 ifTrue: [
            (recoveredBlock278Stack1) ifTrue: [recoveredBlock278PC := 294] ifFalse: [recoveredBlock278PC := 302].
        ].
        recoveredBlock278Step = 294 ifTrue: [
            recoveredBlock278Stack1 := self.
            recoveredBlock278PC := 295.
        ].
        recoveredBlock278Step = 295 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) hexTab.
            recoveredBlock278PC := 296.
        ].
        recoveredBlock278Step = 296 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) first.
            recoveredBlock278PC := 298.
        ].
        recoveredBlock278Step = 298 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) left.
            recoveredBlock278PC := 299.
        ].
        recoveredBlock278Step = 299 ifTrue: [
            recoveredBlock278PC := 308.
        ].
        recoveredBlock278Step = 302 ifTrue: [
            recoveredBlock278Stack1 := self.
            recoveredBlock278PC := 303.
        ].
        recoveredBlock278Step = 303 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) hexTab.
            recoveredBlock278PC := 304.
        ].
        recoveredBlock278Step = 304 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) last.
            recoveredBlock278PC := 306.
        ].
        recoveredBlock278Step = 306 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) right.
            recoveredBlock278PC := 308.
        ].
        recoveredBlock278Step = 308 ifTrue: [
            ^recoveredBlock278Stack1
        ].
    ].
    recoveredBlock278Result
].
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredPC := 343.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 334].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := (recoveredStack0) appliedToNumber: (recoveredStack1).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

