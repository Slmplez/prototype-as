"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005a78; bytecode file offset 0x902744"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
localSideEffects: recoveredArg1 inMethod: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000f1d4; bytecode file offset 0x90bb38"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isResolvedInfo: recoveredArg1 inMethod: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2004e5f4; bytecode file offset 0x94d048"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
values
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052d10; bytecode file offset 0x9505d0"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053460; bytecode file offset 0x9505d0"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059b90; bytecode file offset 0x9566ac"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059c08; bytecode file offset 0x9566ac"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20079494; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlSideEffectMethodCall
    ^false
! !

"ASDBase.ic method 0x20079dac; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlNoSideEffectAnalysisInfo
    ^false
! !

"ASDBase.ic method 0x2007a5bc; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlSideEffectAnalysisInfo
    ^false
! !

"ASDBase.ic method 0x2007a5f4; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isLocalVariable
    ^false
! !

"ASDBase.ic method 0x2007b224; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlSideEffectVarAccess
    ^false
! !

"ASDBase.ic method 0x2007b3cc; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlDefinedOrderSideEffectAccess
    ^false
! !

"ASDBase.ic method 0x2007cb64; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlSideEffectRecordAllFieldsAccess
    ^false
! !

"ASDBase.ic method 0x2007e29c; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlUndefinedOrderSideEffectAccess
    ^false
! !

"ASDBase.ic method 0x2007e3ac; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlSideEffectRecordAccess
    ^false
! !

"ASDBase.ic method 0x2007e934; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlSideEffectIndexAccess
    ^false
! !

"ASDBase.ic method 0x2007f3e4; bytecode file offset 0x97c330"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
isMdlSideEffectObjectAccess
    ^false
! !

"ASDBase.ic method 0x20080b08; bytecode file offset 0x97d3c4"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
definiteConflictWarningNo
    ^83
! !

"ASDBase.ic method 0x20080b38; bytecode file offset 0x97d3ec"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
potentialConflictWarningNo
    ^84
! !

"ASDBase.ic method 0x200be4cc; bytecode file offset 0x9bb178"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
conditional: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    conditional := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200befe8; bytecode file offset 0x9bc0b4"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
hasValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hasValues := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201056b4; bytecode file offset 0xa01f68"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
conditional
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := conditional.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            conditional := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := conditional.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105964; bytecode file offset 0xa02218"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
hasValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hasValues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            hasValues := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := hasValues.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201415d4; bytecode file offset 0xa3df70"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) values.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) mdlClass.
    ^recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20188460; bytecode file offset 0xa84d2c"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 dereference: recoveredArg2 do: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Do not know how to analyze read matches for '.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
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
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a8028; bytecode file offset 0xaa491c"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
analyseWriteSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Write access is only allowed to identifiers, record field accesses and array index accesses'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033ed2c; bytecode file offset 0xc3b5f8"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
asDOM: recoveredArg1 list: recoveredArg2 name: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := recoveredArg1.
    recoveredBlock26Value3 := recoveredArg4.
    recoveredBlock26Value4 := (recoveredBlock26Value1) asDOM: (recoveredBlock26Value2) context: (recoveredBlock26Value3).
    recoveredBlock26Value5 := (recoveredBlock26Value0) appendChild: (recoveredBlock26Value4).
    recoveredBlock26Value5
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039e778; bytecode file offset 0xc9b04c"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 name: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) contents.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) name.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg3.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 69].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) contents.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := [:recoveredBlock14Block33Arg1 | 
    | recoveredBlock14Block33Local1 recoveredBlock14Block33Stack0 recoveredBlock14Block33Stack1 recoveredBlock14Block33Stack2 recoveredBlock14Block33Stack3 recoveredBlock14Block33Stack4 recoveredBlock14Block33Stack5 recoveredBlock14Block33PC recoveredBlock14Block33Step recoveredBlock14Block33Done recoveredBlock14Block33Result |
    recoveredBlock14Block33Stack0 := self.
    recoveredBlock14Block33PC := 40.
    recoveredBlock14Block33Done := false.
    [recoveredBlock14Block33Done not] whileTrue: [
        recoveredBlock14Block33Step := recoveredBlock14Block33PC.
        recoveredBlock14Block33Step = 40 ifTrue: [
            recoveredBlock14Block33Stack1 := SGMdAbstractSideEffectAccess.
            recoveredBlock14Block33PC := 42.
        ].
        recoveredBlock14Block33Step = 42 ifTrue: [
            recoveredBlock14Block33Stack2 := recoveredBlock14Block33Arg1.
            recoveredBlock14Block33PC := 43.
        ].
        recoveredBlock14Block33Step = 43 ifTrue: [
            recoveredBlock14Block33Stack3 := recoveredArg2.
            recoveredBlock14Block33PC := 46.
        ].
        recoveredBlock14Block33Step = 46 ifTrue: [
            recoveredBlock14Block33Stack4 := recoveredArg4.
            recoveredBlock14Block33PC := 49.
        ].
        recoveredBlock14Block33Step = 49 ifTrue: [
            recoveredBlock14Block33Stack1 := (recoveredBlock14Block33Stack1) fromDOM: (recoveredBlock14Block33Stack2) in: (recoveredBlock14Block33Stack3) context: (recoveredBlock14Block33Stack4).
            recoveredBlock14Block33PC := 52.
        ].
        recoveredBlock14Block33Step = 52 ifTrue: [
            recoveredBlock14Block33Stack2 := recoveredBlock14Block33Stack1.
            recoveredBlock14Block33PC := 53.
        ].
        recoveredBlock14Block33Step = 53 ifTrue: [
            recoveredBlock14Block33Local1 := recoveredBlock14Block33Stack2.
            recoveredBlock14Block33PC := 54.
        ].
        recoveredBlock14Block33Step = 54 ifTrue: [
            (recoveredBlock14Block33Stack1 ~~ nil) ifTrue: [recoveredBlock14Block33PC := 60] ifFalse: [recoveredBlock14Block33PC := 58].
        ].
        recoveredBlock14Block33Step = 58 ifTrue: [
            recoveredBlock14Block33Stack1 := nil.
            recoveredBlock14Block33PC := 59.
        ].
        recoveredBlock14Block33Step = 59 ifTrue: [
            ^recoveredBlock14Block33Stack1
        ].
        recoveredBlock14Block33Step = 60 ifTrue: [
            recoveredBlock14Block33Stack1 := recoveredLocal1.
            recoveredBlock14Block33PC := 63.
        ].
        recoveredBlock14Block33Step = 63 ifTrue: [
            recoveredBlock14Block33Stack2 := recoveredBlock14Block33Local1.
            recoveredBlock14Block33PC := 64.
        ].
        recoveredBlock14Block33Step = 64 ifTrue: [
            recoveredBlock14Block33Stack1 := (recoveredBlock14Block33Stack1) add: (recoveredBlock14Block33Stack2).
            recoveredBlock14Block33PC := 66.
        ].
        recoveredBlock14Block33Step = 66 ifTrue: [
            recoveredBlock14Block33Result := recoveredBlock14Block33Stack1.
            recoveredBlock14Block33Done := true.
        ].
    ].
    recoveredBlock14Block33Result
].
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) do: (recoveredBlock14Stack2).
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20402780; bytecode file offset 0xcff050"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
analyseValueConflict: recoveredArg1 do: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) analyseReadMatches: (recoveredStack1) dereference: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 |
    recoveredBlock43Value0 := recoveredArg1.
    recoveredBlock43Value1 := (recoveredBlock43Value0) values.
    recoveredBlock43Value2 := [:recoveredBlock43Block54Arg1 | 
    | recoveredBlock43Block54Value0 recoveredBlock43Block54Value1 recoveredBlock43Block54Value2 recoveredBlock43Block54Value3 |
    recoveredBlock43Block54Value0 := recoveredBlock43Arg1.
    recoveredBlock43Block54Value1 := recoveredBlock43Block54Arg1.
    recoveredBlock43Block54Value2 := [:recoveredBlock43Block54Block65Arg1 :recoveredBlock43Block54Block65Arg2 :recoveredBlock43Block54Block65Arg3 | 
    | recoveredBlock43Block54Block65Value0 recoveredBlock43Block54Block65Value1 recoveredBlock43Block54Block65Value2 recoveredBlock43Block54Block65Value3 recoveredBlock43Block54Block65Value4 |
    recoveredBlock43Block54Block65Value0 := recoveredArg2.
    recoveredBlock43Block54Block65Value1 := recoveredBlock43Block54Block65Arg1.
    recoveredBlock43Block54Block65Value2 := recoveredBlock43Block54Block65Arg2.
    recoveredBlock43Block54Block65Value3 := (self) potentialConflictWarningNo.
    recoveredBlock43Block54Block65Value4 := (recoveredBlock43Block54Block65Value0) value: (recoveredBlock43Block54Block65Value1) value: (recoveredBlock43Block54Block65Value2) value: (recoveredBlock43Block54Block65Value3).
    recoveredBlock43Block54Block65Value4
].
    recoveredBlock43Block54Value3 := (recoveredBlock43Block54Value0) analyseReadMatches: (recoveredBlock43Block54Value1) dereference: (true) do: (recoveredBlock43Block54Value2).
    recoveredBlock43Block54Value3
].
    recoveredBlock43Value3 := (recoveredBlock43Value1) do: (recoveredBlock43Value2).
    recoveredBlock43Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040d178; bytecode file offset 0xd09a4c"
!SGMdAbstractSideEffectInfo methodsFor: 'recovered'!
printValuesOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) printOn: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ${.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := recoveredArg1.
    recoveredBlock57Value2 := (recoveredBlock57Value0) printOn: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := $}.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := '{}'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

