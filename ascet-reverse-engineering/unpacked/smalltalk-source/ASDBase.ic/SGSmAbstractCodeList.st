"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009368; bytecode file offset 0x908be4"
!SGSmAbstractCodeList methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := (self) list.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f54; bytecode file offset 0x9646f8"
!SGSmAbstractCodeList methodsFor: 'recovered'!
list
    | recoveredValue0 |
    recoveredValue0 := list.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006811c; bytecode file offset 0x965b90"
!SGSmAbstractCodeList methodsFor: 'recovered'!
tag
    | recoveredValue0 |
    recoveredValue0 := tag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069bf8; bytecode file offset 0x966bdc"
!SGSmAbstractCodeList methodsFor: 'recovered'!
hasReturn
    | recoveredValue0 |
    recoveredValue0 := hasReturn.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ae74; bytecode file offset 0x967a18"
!SGSmAbstractCodeList methodsFor: 'recovered'!
codeSize
    | recoveredValue0 |
    recoveredValue0 := codeSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bcb0; bytecode file offset 0x96873c"
!SGSmAbstractCodeList methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c1b4; bytecode file offset 0x9692b0"
!SGSmAbstractCodeList methodsFor: 'recovered'!
outlineStrategy
    | recoveredValue0 |
    recoveredValue0 := outlineStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2980; bytecode file offset 0x9bf474"
!SGSmAbstractCodeList methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3334; bytecode file offset 0x9bfde0"
!SGSmAbstractCodeList methodsFor: 'recovered'!
outlineStrategy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outlineStrategy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5004; bytecode file offset 0x9d18d8"
!SGSmAbstractCodeList methodsFor: 'recovered'!
calculateSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outlineStrategy.
    recoveredValue1 := (recoveredValue0) sizeEstimatorClass.
    recoveredValue2 := list.
    recoveredValue3 := (recoveredValue1) codeList: (recoveredValue2).
    codeSize := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2014e824; bytecode file offset 0xa4b0e8"
!SGSmAbstractCodeList methodsFor: 'recovered'!
isExpression
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) list.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExpression.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014f338; bytecode file offset 0xa4bc1c"
!SGSmAbstractCodeList methodsFor: 'recovered'!
calculateOutlinedSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ccef4Arg1 | 
    | block280ccef4Value0 block280ccef4Value1 |
    block280ccef4Value0 := block280ccef4Arg1.
    block280ccef4Value1 := (block280ccef4Value0) calculateOutlinedSize.
    block280ccef4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) calculateSize.
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

"ASDBase.ic method 0x201566b4; bytecode file offset 0xa52fb0"
!SGSmAbstractCodeList methodsFor: 'recovered'!
duplicateListFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) list.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) duplicateFor: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20177e6c; bytecode file offset 0xa7490c"
!SGSmAbstractCodeList methodsFor: 'recovered'!
collectCalledMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) list.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) collectCalledMethods: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177ea8; bytecode file offset 0xa7490c"
!SGSmAbstractCodeList methodsFor: 'recovered'!
calledMethodsList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) list.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) calledMethods: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2021ff2c; bytecode file offset 0xb1c814"
!SGSmAbstractCodeList methodsFor: 'recovered'!
listHash
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) list.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) hash.
    recoveredBlock10Value3 := (recoveredBlock10Value0) + (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20262828; bytecode file offset 0xb5f0f4"
!SGSmAbstractCodeList methodsFor: 'recovered'!
removeChildrenList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) outlineStrategy.
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value0) removeCode: (recoveredBlock4Value1) method: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) allSublists: (recoveredValue0).
    recoveredValue1 := (self) list.
    recoveredValue2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) removeChildren: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202921ac; bytecode file offset 0xb8ea7c"
!SGSmAbstractCodeList methodsFor: 'recovered'!
duplicateList
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) outlineStrategy.
    recoveredValue1 := (recoveredValue0) allCode.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) list.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) includesKey: (recoveredBlock11Stack2).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) duplicate.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202ab260; bytecode file offset 0xba7b20"
!SGSmAbstractCodeList methodsFor: 'recovered'!
listEquals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 :recoveredBlock24Arg2 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg2.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) = (recoveredBlock24Stack3).
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 41] ifFalse: [recoveredBlock24PC := 38].
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203054c8; bytecode file offset 0xc01d98"
!SGSmAbstractCodeList methodsFor: 'recovered'!
list: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    list := recoveredValue0.
    tag := '['.
    hasReturn := false.
    recoveredValue1 := list.
    recoveredValue2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := tag.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) tag.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            tag := recoveredBlock16Stack1.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) hasReturn.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 36] ifFalse: [recoveredBlock16PC := 41].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack1 := true.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            hasReturn := recoveredBlock16Stack2.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := tag.
    recoveredValue4 := (recoveredValue3) , (']').
    tag := recoveredValue4.
    (self) calculateSize.
    ^self
! !

"ASDBase.ic method 0x203156ac; bytecode file offset 0xc11f84"
!SGSmAbstractCodeList methodsFor: 'recovered'!
addChildrenList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280eb1dcArg1 | 
    | block280eb1dcValue0 block280eb1dcValue1 block280eb1dcValue2 |
    block280eb1dcValue0 := block280eb1dcArg1.
    block280eb1dcValue1 := (block280eb1dcValue0) isNonOutlinableCode.
    block280eb1dcValue2 := (block280eb1dcValue1) not.
    block280eb1dcValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := (self) outlineStrategy.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := recoveredArg1.
    recoveredBlock19Value3 := (recoveredBlock19Value0) addCode: (recoveredBlock19Value1) method: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) allSublists: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := recoveredArg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) addChildren: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bc4d0; bytecode file offset 0xcb8dac"
!SGSmAbstractCodeList methodsFor: 'recovered'!
replacePrivateMethodList: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) replacePrivateMethod: (recoveredBlock9Stack3).
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 26] ifFalse: [recoveredBlock9PC := 32].
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) list: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Local1 recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) outlineStrategy.
            recoveredBlock48PC := 56.
        ].
        recoveredBlock48Step = 56 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) allCode.
            recoveredBlock48PC := 58.
        ].
        recoveredBlock48Step = 58 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 59.
        ].
        recoveredBlock48Step = 59 ifTrue: [
            recoveredBlock48Stack2 := [].
            recoveredBlock48PC := 61.
        ].
        recoveredBlock48Step = 61 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) at: (recoveredBlock48Stack1) ifAbsent: (recoveredBlock48Stack2).
            recoveredBlock48PC := 63.
        ].
        recoveredBlock48Step = 63 ifTrue: [
            recoveredBlock48Local1 := recoveredBlock48Stack0.
            recoveredBlock48PC := 64.
        ].
        recoveredBlock48Step = 64 ifTrue: [
            recoveredBlock48Stack0 := nil.
            recoveredBlock48PC := 65.
        ].
        recoveredBlock48Step = 65 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Local1.
            recoveredBlock48PC := 66.
        ].
        recoveredBlock48Step = 66 ifTrue: [
            (recoveredBlock48Stack1 == nil) ifTrue: [recoveredBlock48PC := 74] ifFalse: [recoveredBlock48PC := 70].
        ].
        recoveredBlock48Step = 70 ifTrue: [
            recoveredBlock48PC := 71.
        ].
        recoveredBlock48Step = 71 ifTrue: [
            recoveredBlock48Stack0 := recoveredBlock48Local1.
            recoveredBlock48PC := 72.
        ].
        recoveredBlock48Step = 72 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) calculateOutlinedSize.
            recoveredBlock48PC := 74.
        ].
        recoveredBlock48Step = 74 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack0.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) allSublists: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204295bc; bytecode file offset 0xd25e9c"
!SGSmAbstractCodeList methodsFor: 'recovered'!
allSublists: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) list.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [:block280fd02cArg1 | 
    | block280fd02cStack0 block280fd02cStack1 block280fd02cStack2 block280fd02cPC block280fd02cStep block280fd02cDone block280fd02cResult |
    block280fd02cStack0 := self.
    block280fd02cPC := 4.
    block280fd02cDone := false.
    [block280fd02cDone not] whileTrue: [
        block280fd02cStep := block280fd02cPC.
        block280fd02cStep = 4 ifTrue: [
            block280fd02cStack1 := block280fd02cArg1.
            block280fd02cPC := 5.
        ].
        block280fd02cStep = 5 ifTrue: [
            block280fd02cStack1 := (block280fd02cStack1) isOutlinableCode.
            block280fd02cPC := 7.
        ].
        block280fd02cStep = 7 ifTrue: [
            (block280fd02cStack1) ifTrue: [block280fd02cPC := 10] ifFalse: [block280fd02cPC := 14].
        ].
        block280fd02cStep = 10 ifTrue: [
            block280fd02cStack1 := block280fd02cArg1.
            block280fd02cPC := 11.
        ].
        block280fd02cStep = 11 ifTrue: [
            block280fd02cPC := 17.
        ].
        block280fd02cStep = 14 ifTrue: [
            block280fd02cStack1 := block280fd02cArg1.
            block280fd02cPC := 15.
        ].
        block280fd02cStep = 15 ifTrue: [
            block280fd02cStack1 := (block280fd02cStack1) duplicate.
            block280fd02cPC := 17.
        ].
        block280fd02cStep = 17 ifTrue: [
            block280fd02cResult := block280fd02cStack1.
            block280fd02cDone := true.
        ].
    ].
    block280fd02cResult
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := SGSmOutlinableCodeList.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) outlineStrategy.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3) outlineStrategy: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 22] ifFalse: [recoveredLocal3 := nil. recoveredPC := 85]] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 12] ifFalse: [recoveredLocal4 := nil. recoveredPC := 100]] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20430538; bytecode file offset 0xd2ce14"
!SGSmAbstractCodeList methodsFor: 'recovered'!
replaceCodeList: recoveredArg1 with: recoveredArg2 at: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) list.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 37]] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) list.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) list.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 58] ifFalse: [recoveredLocal1 := nil. recoveredPC := 79]] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := (self) method.
    recoveredBlock83Value2 := (recoveredBlock83Value0) removeChildren: (recoveredBlock83Value1).
    recoveredBlock83Value2
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) list: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b837c; bytecode file offset 0xdb4c50"
!SGSmAbstractCodeList methodsFor: 'recovered'!
printFormatted: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredPC := 22.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) indent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 12] ifFalse: [recoveredPC := 51]] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := '['.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredArg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) + (1).
    recoveredBlock64Value3 := recoveredArg2.
    recoveredBlock64Value4 := (recoveredBlock64Value0) printFormatted: (recoveredBlock64Value2) on: (recoveredBlock64Value3).
    recoveredBlock64Value4
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) indent.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 92] ifFalse: [recoveredPC := 131]] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056b608; bytecode file offset 0xe67efc"
!SGSmAbstractCodeList methodsFor: 'recovered'!
replaceCodeList: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block2811167cArg1 | 
    | block2811167cValue0 block2811167cValue1 |
    block2811167cValue0 := block2811167cArg1.
    block2811167cValue1 := (block2811167cValue0) isNonOutlinableCode.
    block2811167cValue1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := (self) outlineStrategy.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (self) method.
    recoveredBlock29Value3 := (recoveredBlock29Value0) removeCode: (recoveredBlock29Value1) method: (recoveredBlock29Value2).
    recoveredBlock29Value3
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) allSublists: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock47Local1 recoveredBlock47Local2 recoveredBlock47Local3 recoveredBlock47Local4 recoveredBlock47Local5 recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := false.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Local5 := recoveredBlock47Stack1.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredBlock47Stack1 := 1.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Local4 := recoveredBlock47Stack1.
            recoveredBlock47PC := 60.
        ].
        recoveredBlock47Step = 60 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) list.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) size.
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) list.
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) size.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) - (recoveredBlock47Stack1).
            recoveredBlock47PC := 70.
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) + (1).
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Local3 := recoveredBlock47Stack0.
            recoveredBlock47PC := 72.
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredBlock47PC := 159.
        ].
        recoveredBlock47Step = 76 ifTrue: [
            recoveredBlock47Stack0 := true.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Local2 := recoveredBlock47Stack0.
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 78 ifTrue: [
            recoveredBlock47Stack0 := -1.
            recoveredBlock47PC := 80.
        ].
        recoveredBlock47Step = 80 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            recoveredBlock47Stack0 := recoveredArg1.
            recoveredBlock47PC := 84.
        ].
        recoveredBlock47Step = 84 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) list.
            recoveredBlock47PC := 85.
        ].
        recoveredBlock47Step = 85 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) size.
            recoveredBlock47PC := 87.
        ].
        recoveredBlock47Step = 87 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) + (-1).
            recoveredBlock47PC := 88.
        ].
        recoveredBlock47Step = 88 ifTrue: [
            recoveredBlock47PC := 114.
        ].
        recoveredBlock47Step = 92 ifTrue: [
            recoveredBlock47Stack1 := self.
            recoveredBlock47PC := 93.
        ].
        recoveredBlock47Step = 93 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) list.
            recoveredBlock47PC := 94.
        ].
        recoveredBlock47Step = 94 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Local4.
            recoveredBlock47PC := 95.
        ].
        recoveredBlock47Step = 95 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Local1.
            recoveredBlock47PC := 96.
        ].
        recoveredBlock47Step = 96 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) + (recoveredBlock47Stack3).
            recoveredBlock47PC := 97.
        ].
        recoveredBlock47Step = 97 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) at: (recoveredBlock47Stack2).
            recoveredBlock47PC := 99.
        ].
        recoveredBlock47Step = 99 ifTrue: [
            recoveredBlock47Stack2 := recoveredArg1.
            recoveredBlock47PC := 102.
        ].
        recoveredBlock47Step = 102 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) list.
            recoveredBlock47PC := 103.
        ].
        recoveredBlock47Step = 103 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Local1.
            recoveredBlock47PC := 104.
        ].
        recoveredBlock47Step = 104 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) + (1).
            recoveredBlock47PC := 105.
        ].
        recoveredBlock47Step = 105 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) at: (recoveredBlock47Stack3).
            recoveredBlock47PC := 107.
        ].
        recoveredBlock47Step = 107 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) = (recoveredBlock47Stack2).
            recoveredBlock47PC := 108.
        ].
        recoveredBlock47Step = 108 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 114] ifFalse: [recoveredBlock47PC := 112].
        ].
        recoveredBlock47Step = 112 ifTrue: [
            recoveredBlock47Stack1 := false.
            recoveredBlock47PC := 113.
        ].
        recoveredBlock47Step = 113 ifTrue: [
            recoveredBlock47Local2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 114.
        ].
        recoveredBlock47Step = 114 ifTrue: [
            (recoveredBlock47Stack0 isInteger and: [recoveredBlock47Local1 isInteger]) ifTrue: [(recoveredBlock47Local1 + 1 <= recoveredBlock47Stack0) ifTrue: [recoveredBlock47Local1 := recoveredBlock47Local1 + 1. recoveredBlock47PC := 92] ifFalse: [recoveredBlock47Local1 := nil. recoveredBlock47PC := 128]] ifFalse: [recoveredBlock47PC := 118].
        ].
        recoveredBlock47Step = 118 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 119.
        ].
        recoveredBlock47Step = 119 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Local1.
            recoveredBlock47PC := 120.
        ].
        recoveredBlock47Step = 120 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) + (1).
            recoveredBlock47PC := 121.
        ].
        recoveredBlock47Step = 121 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Stack2.
            recoveredBlock47PC := 122.
        ].
        recoveredBlock47Step = 122 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack3.
            recoveredBlock47PC := 123.
        ].
        recoveredBlock47Step = 123 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) < (recoveredBlock47Stack2).
            recoveredBlock47PC := 124.
        ].
        recoveredBlock47Step = 124 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 126] ifFalse: [recoveredBlock47PC := 92].
        ].
        recoveredBlock47Step = 126 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 127.
        ].
        recoveredBlock47Step = 127 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack1.
            recoveredBlock47PC := 128.
        ].
        recoveredBlock47Step = 128 ifTrue: [
            recoveredBlock47PC := 129.
        ].
        recoveredBlock47Step = 129 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local2.
            recoveredBlock47PC := 130.
        ].
        recoveredBlock47Step = 130 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 134] ifFalse: [recoveredBlock47PC := 154].
        ].
        recoveredBlock47Step = 134 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 135.
        ].
        recoveredBlock47Step = 135 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 138.
        ].
        recoveredBlock47Step = 138 ifTrue: [
            recoveredBlock47Stack2 := recoveredArg2.
            recoveredBlock47PC := 141.
        ].
        recoveredBlock47Step = 141 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Local4.
            recoveredBlock47PC := 142.
        ].
        recoveredBlock47Step = 142 ifTrue: [
            (recoveredBlock47Stack0) replaceCodeList: (recoveredBlock47Stack1) with: (recoveredBlock47Stack2) at: (recoveredBlock47Stack3).
            recoveredBlock47PC := 145.
        ].
        recoveredBlock47Step = 145 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local3.
            recoveredBlock47PC := 146.
        ].
        recoveredBlock47Step = 146 ifTrue: [
            recoveredBlock47Local4 := recoveredBlock47Stack0.
            recoveredBlock47PC := 147.
        ].
        recoveredBlock47Step = 147 ifTrue: [
            recoveredBlock47Stack0 := true.
            recoveredBlock47PC := 148.
        ].
        recoveredBlock47Step = 148 ifTrue: [
            recoveredLocal1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 151.
        ].
        recoveredBlock47Step = 151 ifTrue: [
            recoveredBlock47Stack0 := true.
            recoveredBlock47PC := 152.
        ].
        recoveredBlock47Step = 152 ifTrue: [
            recoveredBlock47Local5 := recoveredBlock47Stack0.
            recoveredBlock47PC := 154.
        ].
        recoveredBlock47Step = 154 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local4.
            recoveredBlock47PC := 155.
        ].
        recoveredBlock47Step = 155 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) + (1).
            recoveredBlock47PC := 156.
        ].
        recoveredBlock47Step = 156 ifTrue: [
            recoveredBlock47Local4 := recoveredBlock47Stack0.
            recoveredBlock47PC := 157.
        ].
        recoveredBlock47Step = 157 ifTrue: [
            recoveredBlock47Stack0 := nil.
            recoveredBlock47PC := 158.
        ].
        recoveredBlock47Step = 158 ifTrue: [
            recoveredBlock47Local2 := recoveredBlock47Stack0.
            recoveredBlock47PC := 159.
        ].
        recoveredBlock47Step = 159 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local4.
            recoveredBlock47PC := 160.
        ].
        recoveredBlock47Step = 160 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local3.
            recoveredBlock47PC := 161.
        ].
        recoveredBlock47Step = 161 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) <= (recoveredBlock47Stack1).
            recoveredBlock47PC := 162.
        ].
        recoveredBlock47Step = 162 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 76] ifFalse: [recoveredBlock47PC := 164].
        ].
        recoveredBlock47Step = 164 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local5.
            recoveredBlock47PC := 166.
        ].
        recoveredBlock47Step = 166 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack0.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) whileTrue.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Stack0 recoveredBlock171Stack1 recoveredBlock171Stack2 recoveredBlock171Stack3 recoveredBlock171Stack4 recoveredBlock171Stack5 recoveredBlock171PC recoveredBlock171Step recoveredBlock171Done recoveredBlock171Result |
    recoveredBlock171Stack0 := self.
    recoveredBlock171PC := 178.
    recoveredBlock171Done := false.
    [recoveredBlock171Done not] whileTrue: [
        recoveredBlock171Step := recoveredBlock171PC.
        recoveredBlock171Step = 178 ifTrue: [
            recoveredBlock171Stack1 := nil.
            recoveredBlock171PC := 179.
        ].
        recoveredBlock171Step = 179 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 180.
        ].
        recoveredBlock171Step = 180 ifTrue: [
            recoveredBlock171Stack3 := recoveredArg1.
            recoveredBlock171PC := 183.
        ].
        recoveredBlock171Step = 183 ifTrue: [
            recoveredBlock171Stack4 := recoveredArg2.
            recoveredBlock171PC := 186.
        ].
        recoveredBlock171Step = 186 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) replaceCode: (recoveredBlock171Stack3) with: (recoveredBlock171Stack4).
            recoveredBlock171PC := 188.
        ].
        recoveredBlock171Step = 188 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 192] ifFalse: [recoveredBlock171PC := 198].
        ].
        recoveredBlock171Step = 192 ifTrue: [
            recoveredBlock171PC := 193.
        ].
        recoveredBlock171Step = 193 ifTrue: [
            recoveredBlock171Stack1 := true.
            recoveredBlock171PC := 194.
        ].
        recoveredBlock171Step = 194 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Stack1.
            recoveredBlock171PC := 195.
        ].
        recoveredBlock171Step = 195 ifTrue: [
            recoveredLocal1 := recoveredBlock171Stack2.
            recoveredBlock171PC := 198.
        ].
        recoveredBlock171Step = 198 ifTrue: [
            recoveredBlock171Result := recoveredBlock171Stack1.
            recoveredBlock171Done := true.
        ].
    ].
    recoveredBlock171Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) list: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 239] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := [:recoveredBlock221Arg1 | 
    | recoveredBlock221Value0 recoveredBlock221Value1 recoveredBlock221Value2 recoveredBlock221Value3 |
    recoveredBlock221Value0 := (self) outlineStrategy.
    recoveredBlock221Value1 := recoveredBlock221Arg1.
    recoveredBlock221Value2 := (self) method.
    recoveredBlock221Value3 := (recoveredBlock221Value0) addCode: (recoveredBlock221Value1) method: (recoveredBlock221Value2).
    recoveredBlock221Value3
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) allSublists: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

