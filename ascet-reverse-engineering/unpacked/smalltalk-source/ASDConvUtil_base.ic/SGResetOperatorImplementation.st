"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20000010; bytecode file offset 0x9a4c"
!SGResetOperatorImplementation methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDConvUtil_base.ic method 0x20000e00; bytecode file offset 0xa868"
!SGResetOperatorImplementation methodsFor: 'recovered'!
resetWholeDatabaseOperatorImplementation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Are you sure to reset all operator
implementations in the whole database'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) cancelOk.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkAllViewsExcept: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block28000be4Arg1 :block28000be4Arg2 | 
    | block28000be4Value0 block28000be4Value1 block28000be4Value2 |
    block28000be4Value0 := block28000be4Arg1.
    block28000be4Value1 := block28000be4Arg2.
    block28000be4Value2 := (block28000be4Value0) resetOperatorImplementationFlat: (block28000be4Value1).
    block28000be4Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'Reset operator implementation ...'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertWholeDatabase: (recoveredStack1) conversionBlock: (recoveredStack2) informationString: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20002110; bytecode file offset 0xbba4"
!SGResetOperatorImplementation methodsFor: 'recovered'!
convertWholeDatabase: recoveredArg1 conversionBlock: recoveredArg2 informationString: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg3.
    (recoveredValue2) addText: (recoveredValue3).
    recoveredValue4 := System.
    recoveredValue5 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 recoveredBlock20Value10 recoveredBlock20Value11 recoveredBlock20Value12 recoveredBlock20Value13 recoveredBlock20Value14 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := recoveredArg3.
    recoveredBlock20Value2 := (self) collectAlldatabaseItems: (recoveredBlock20Value0) informationString: (recoveredBlock20Value1).
    recoveredLocal2 := recoveredBlock20Value2.
    recoveredBlock20Value3 := recoveredArg1.
    recoveredBlock20Value4 := [:recoveredBlock20Block40Arg1 | 
    | recoveredBlock20Block40Value0 recoveredBlock20Block40Value1 recoveredBlock20Block40Value2 |
    recoveredBlock20Block40Value0 := recoveredLocal2.
    recoveredBlock20Block40Value1 := [:recoveredBlock20Block40Block49Arg1 :recoveredBlock20Block40Block49Arg2 | 
    | recoveredBlock20Block40Block49Local1 recoveredBlock20Block40Block49Stack0 recoveredBlock20Block40Block49Stack1 recoveredBlock20Block40Block49Stack2 recoveredBlock20Block40Block49Stack3 recoveredBlock20Block40Block49Stack4 recoveredBlock20Block40Block49PC recoveredBlock20Block40Block49Step recoveredBlock20Block40Block49Done recoveredBlock20Block40Block49Result |
    recoveredBlock20Block40Block49Stack0 := nil.
    recoveredBlock20Block40Block49PC := 56.
    recoveredBlock20Block40Block49Done := false.
    [recoveredBlock20Block40Block49Done not] whileTrue: [
        recoveredBlock20Block40Block49Step := recoveredBlock20Block40Block49PC.
        recoveredBlock20Block40Block49Step = 56 ifTrue: [
            recoveredBlock20Block40Block49Stack1 := recoveredBlock20Block40Arg1.
            recoveredBlock20Block40Block49PC := 59.
        ].
        recoveredBlock20Block40Block49Step = 59 ifTrue: [
            recoveredBlock20Block40Block49Stack2 := recoveredBlock20Block40Block49Arg2.
            recoveredBlock20Block40Block49PC := 60.
        ].
        recoveredBlock20Block40Block49Step = 60 ifTrue: [
            recoveredBlock20Block40Block49Stack3 := recoveredLocal2.
            recoveredBlock20Block40Block49PC := 63.
        ].
        recoveredBlock20Block40Block49Step = 63 ifTrue: [
            recoveredBlock20Block40Block49Stack3 := (recoveredBlock20Block40Block49Stack3) size.
            recoveredBlock20Block40Block49PC := 65.
        ].
        recoveredBlock20Block40Block49Step = 65 ifTrue: [
            recoveredBlock20Block40Block49Stack2 := (recoveredBlock20Block40Block49Stack2) / (recoveredBlock20Block40Block49Stack3).
            recoveredBlock20Block40Block49PC := 67.
        ].
        recoveredBlock20Block40Block49Step = 67 ifTrue: [
            (recoveredBlock20Block40Block49Stack1) fractionComplete: (recoveredBlock20Block40Block49Stack2).
            recoveredBlock20Block40Block49PC := 69.
        ].
        recoveredBlock20Block40Block49Step = 69 ifTrue: [
            recoveredBlock20Block40Block49Stack1 := nil.
            recoveredBlock20Block40Block49PC := 70.
        ].
        recoveredBlock20Block40Block49Step = 70 ifTrue: [
            recoveredBlock20Block40Block49Stack2 := recoveredBlock20Block40Block49Arg1.
            recoveredBlock20Block40Block49PC := 71.
        ].
        recoveredBlock20Block40Block49Step = 71 ifTrue: [
            recoveredBlock20Block40Block49Stack3 := [:block28000e48Arg1 | 
    nil
].
            recoveredBlock20Block40Block49PC := 73.
        ].
        recoveredBlock20Block40Block49Step = 73 ifTrue: [
            recoveredBlock20Block40Block49PC := 78.
        ].
        recoveredBlock20Block40Block49Step = 78 ifTrue: [
            recoveredBlock20Block40Block49Stack2 := (recoveredBlock20Block40Block49Stack2) getObjectIfUndefined: (recoveredBlock20Block40Block49Stack3).
            recoveredBlock20Block40Block49PC := 80.
        ].
        recoveredBlock20Block40Block49Step = 80 ifTrue: [
            recoveredBlock20Block40Block49Stack3 := recoveredBlock20Block40Block49Stack2.
            recoveredBlock20Block40Block49PC := 81.
        ].
        recoveredBlock20Block40Block49Step = 81 ifTrue: [
            recoveredBlock20Block40Block49Local1 := recoveredBlock20Block40Block49Stack3.
            recoveredBlock20Block40Block49PC := 82.
        ].
        recoveredBlock20Block40Block49Step = 82 ifTrue: [
            (recoveredBlock20Block40Block49Stack2 == nil) ifTrue: [recoveredBlock20Block40Block49PC := 96] ifFalse: [recoveredBlock20Block40Block49PC := 86].
        ].
        recoveredBlock20Block40Block49Step = 86 ifTrue: [
            recoveredBlock20Block40Block49PC := 87.
        ].
        recoveredBlock20Block40Block49Step = 87 ifTrue: [
            recoveredBlock20Block40Block49Stack1 := recoveredArg2.
            recoveredBlock20Block40Block49PC := 90.
        ].
        recoveredBlock20Block40Block49Step = 90 ifTrue: [
            recoveredBlock20Block40Block49Stack2 := recoveredBlock20Block40Block49Local1.
            recoveredBlock20Block40Block49PC := 91.
        ].
        recoveredBlock20Block40Block49Step = 91 ifTrue: [
            recoveredBlock20Block40Block49Stack3 := recoveredLocal1.
            recoveredBlock20Block40Block49PC := 94.
        ].
        recoveredBlock20Block40Block49Step = 94 ifTrue: [
            recoveredBlock20Block40Block49Stack1 := (recoveredBlock20Block40Block49Stack1) value: (recoveredBlock20Block40Block49Stack2) value: (recoveredBlock20Block40Block49Stack3).
            recoveredBlock20Block40Block49PC := 96.
        ].
        recoveredBlock20Block40Block49Step = 96 ifTrue: [
            recoveredBlock20Block40Block49Result := recoveredBlock20Block40Block49Stack1.
            recoveredBlock20Block40Block49Done := true.
        ].
    ].
    recoveredBlock20Block40Block49Result
].
    recoveredBlock20Block40Value2 := (recoveredBlock20Block40Value0) doWithIndex: (recoveredBlock20Block40Value1).
    recoveredBlock20Block40Value2
].
    recoveredBlock20Value5 := recoveredArg3.
    recoveredBlock20Value6 := (self) library.
    recoveredBlock20Value7 := (recoveredBlock20Value6) location.
    recoveredBlock20Value8 := ('Database ') , (recoveredBlock20Value7).
    (recoveredBlock20Value3) execWithProgressDialog: (recoveredBlock20Value4) message: (recoveredBlock20Value5) showProgress: (true) title: (recoveredBlock20Value8).
    recoveredBlock20Value9 := recoveredLocal1.
    (recoveredBlock20Value9) printReady.
    recoveredBlock20Value10 := recoveredArg1.
    recoveredBlock20Value11 := (recoveredBlock20Value10) uiController.
    recoveredBlock20Value12 := (recoveredBlock20Value11) mainController.
    recoveredBlock20Value13 := recoveredArg1.
    recoveredBlock20Value14 := (recoveredBlock20Value12) commitDBView: (recoveredBlock20Value13).
    recoveredBlock20Value14
].
    (recoveredValue4) showBusyCursorWhile: (recoveredValue5).
    ^self
! !

"ASDConvUtil_base.ic method 0x200021fc; bytecode file offset 0xbcb0"
!SGResetOperatorImplementation methodsFor: 'recovered'!
collectAlldatabaseItems: recoveredArg1 informationString: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := SGDatabaseAccess.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) create.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) libraryKeys.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := [:block28000e6cArg1 | 
    | block28000e6cStack0 block28000e6cStack1 block28000e6cStack2 block28000e6cStack3 block28000e6cPC block28000e6cStep block28000e6cDone block28000e6cResult |
    block28000e6cStack0 := self.
    block28000e6cPC := 4.
    block28000e6cDone := false.
    [block28000e6cDone not] whileTrue: [
        block28000e6cStep := block28000e6cPC.
        block28000e6cStep = 4 ifTrue: [
            block28000e6cStack1 := block28000e6cArg1.
            block28000e6cPC := 5.
        ].
        block28000e6cStep = 5 ifTrue: [
            block28000e6cStack2 := [:block28000e90Arg1 | 
    nil
].
            block28000e6cPC := 7.
        ].
        block28000e6cStep = 7 ifTrue: [
            block28000e6cPC := 12.
        ].
        block28000e6cStep = 12 ifTrue: [
            block28000e6cStack1 := (block28000e6cStack1) getObjectIfUndefined: (block28000e6cStack2).
            block28000e6cPC := 14.
        ].
        block28000e6cStep = 14 ifTrue: [
            block28000e6cResult := block28000e6cStack1.
            block28000e6cDone := true.
        ].
    ].
    block28000e6cResult
].
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) collect: (recoveredBlock13Stack2).
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack2 := [:block28000eb4Arg1 | 
    | block28000eb4Value0 block28000eb4Value1 |
    block28000eb4Value0 := block28000eb4Arg1.
    block28000eb4Value1 := (block28000eb4Value0) notNil.
    block28000eb4Value1
].
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) select: (recoveredBlock13Stack2).
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) asOrderedCollection.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 68] ifFalse: [recoveredBlock13PC := 129].
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block72Arg1 :recoveredBlock13Block72Arg2 | 
    | recoveredBlock13Block72Stack0 recoveredBlock13Block72Stack1 recoveredBlock13Block72Stack2 recoveredBlock13Block72Stack3 recoveredBlock13Block72Stack4 recoveredBlock13Block72PC recoveredBlock13Block72Step recoveredBlock13Block72Done recoveredBlock13Block72Result |
    recoveredBlock13Block72Stack0 := nil.
    recoveredBlock13Block72PC := 78.
    recoveredBlock13Block72Done := false.
    [recoveredBlock13Block72Done not] whileTrue: [
        recoveredBlock13Block72Step := recoveredBlock13Block72PC.
        recoveredBlock13Block72Step = 78 ifTrue: [
            recoveredBlock13Block72Stack1 := recoveredBlock13Arg1.
            recoveredBlock13Block72PC := 81.
        ].
        recoveredBlock13Block72Step = 81 ifTrue: [
            recoveredBlock13Block72Stack2 := recoveredBlock13Block72Arg2.
            recoveredBlock13Block72PC := 82.
        ].
        recoveredBlock13Block72Step = 82 ifTrue: [
            recoveredBlock13Block72Stack3 := recoveredBlock13Local1.
            recoveredBlock13Block72PC := 85.
        ].
        recoveredBlock13Block72Step = 85 ifTrue: [
            recoveredBlock13Block72Stack3 := (recoveredBlock13Block72Stack3) size.
            recoveredBlock13Block72PC := 87.
        ].
        recoveredBlock13Block72Step = 87 ifTrue: [
            recoveredBlock13Block72Stack2 := (recoveredBlock13Block72Stack2) / (recoveredBlock13Block72Stack3).
            recoveredBlock13Block72PC := 89.
        ].
        recoveredBlock13Block72Step = 89 ifTrue: [
            (recoveredBlock13Block72Stack1) fractionComplete: (recoveredBlock13Block72Stack2).
            recoveredBlock13Block72PC := 91.
        ].
        recoveredBlock13Block72Step = 91 ifTrue: [
            recoveredBlock13Block72Stack1 := recoveredLocal1.
            recoveredBlock13Block72PC := 94.
        ].
        recoveredBlock13Block72Step = 94 ifTrue: [
            recoveredBlock13Block72Stack2 := recoveredBlock13Block72Arg1.
            recoveredBlock13Block72PC := 95.
        ].
        recoveredBlock13Block72Step = 95 ifTrue: [
            recoveredBlock13Block72Stack2 := (recoveredBlock13Block72Stack2) allNotFolderChildrenKeys.
            recoveredBlock13Block72PC := 97.
        ].
        recoveredBlock13Block72Step = 97 ifTrue: [
            (recoveredBlock13Block72Stack1) addAll: (recoveredBlock13Block72Stack2).
            recoveredBlock13Block72PC := 99.
        ].
        recoveredBlock13Block72Step = 99 ifTrue: [
            recoveredBlock13Block72Stack1 := recoveredLocal1.
            recoveredBlock13Block72PC := 102.
        ].
        recoveredBlock13Block72Step = 102 ifTrue: [
            recoveredBlock13Block72Stack2 := recoveredBlock13Block72Arg1.
            recoveredBlock13Block72PC := 103.
        ].
        recoveredBlock13Block72Step = 103 ifTrue: [
            recoveredBlock13Block72Stack2 := (recoveredBlock13Block72Stack2) allFolderChildrenRecursive.
            recoveredBlock13Block72PC := 105.
        ].
        recoveredBlock13Block72Step = 105 ifTrue: [
            recoveredBlock13Block72Stack3 := [:block28000ed8Arg1 | 
    | block28000ed8Value0 block28000ed8Value1 |
    block28000ed8Value0 := block28000ed8Arg1.
    block28000ed8Value1 := (block28000ed8Value0) asRBDBReference.
    block28000ed8Value1
].
            recoveredBlock13Block72PC := 107.
        ].
        recoveredBlock13Block72Step = 107 ifTrue: [
            recoveredBlock13Block72PC := 114.
        ].
        recoveredBlock13Block72Step = 114 ifTrue: [
            recoveredBlock13Block72Stack2 := (recoveredBlock13Block72Stack2) collect: (recoveredBlock13Block72Stack3).
            recoveredBlock13Block72PC := 116.
        ].
        recoveredBlock13Block72Step = 116 ifTrue: [
            (recoveredBlock13Block72Stack1) addAll: (recoveredBlock13Block72Stack2).
            recoveredBlock13Block72PC := 118.
        ].
        recoveredBlock13Block72Step = 118 ifTrue: [
            recoveredBlock13Block72Stack1 := recoveredLocal1.
            recoveredBlock13Block72PC := 121.
        ].
        recoveredBlock13Block72Step = 121 ifTrue: [
            recoveredBlock13Block72Stack2 := recoveredBlock13Block72Arg1.
            recoveredBlock13Block72PC := 122.
        ].
        recoveredBlock13Block72Step = 122 ifTrue: [
            recoveredBlock13Block72Stack2 := (recoveredBlock13Block72Stack2) asRBDBReference.
            recoveredBlock13Block72PC := 124.
        ].
        recoveredBlock13Block72Step = 124 ifTrue: [
            recoveredBlock13Block72Stack1 := (recoveredBlock13Block72Stack1) add: (recoveredBlock13Block72Stack2).
            recoveredBlock13Block72PC := 126.
        ].
        recoveredBlock13Block72Step = 126 ifTrue: [
            recoveredBlock13Block72Result := recoveredBlock13Block72Stack1.
            recoveredBlock13Block72Done := true.
        ].
    ].
    recoveredBlock13Block72Result
].
            recoveredBlock13PC := 127.
        ].
        recoveredBlock13Step = 127 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) doWithIndex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 129.
        ].
        recoveredBlock13Step = 129 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := ('Collecting all data base items for\') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) withCrs.
    recoveredValue7 := (self) library.
    recoveredValue8 := (recoveredValue7) location.
    recoveredValue9 := ('Database ') , (recoveredValue8).
    (recoveredValue2) execWithProgressDialog: (recoveredValue3) message: (recoveredValue6) showProgress: (true) title: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

