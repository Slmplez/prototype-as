"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x200001b0; bytecode file offset 0x9bf0"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
modifyKey: recoveredArg1 monitor: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) updateApplicationTimeStamp.
    ^self
! !

"ASDConvUtil_base.ic method 0x20000240; bytecode file offset 0x9c8c"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
dbAccess
    | recoveredValue0 |
    recoveredValue0 := dbAccess.
    ^recoveredValue0
! !

"ASDConvUtil_base.ic method 0x2000033c; bytecode file offset 0x9d84"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGDatabaseAccess.
    recoveredValue1 := (recoveredValue0) create.
    (self) dbAccess: (recoveredValue1).
    ^self
! !

"ASDConvUtil_base.ic method 0x20000374; bytecode file offset 0x9db0"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
dbAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbAccess := recoveredValue0.
    ^self
! !

"ASDConvUtil_base.ic method 0x200008a8; bytecode file offset 0xa2f0"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
modifyComponents: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Arg2.
    recoveredBlock4Value2 := (self) modifyKey: (recoveredBlock4Value0) monitor: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (self) forAllDatabaseItemsExecute: (recoveredValue1) message: ('Modifying all components') view: (recoveredValue2).
    ^self
! !

"ASDConvUtil_base.ic method 0x20001360; bytecode file offset 0xadc4"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
getAllDatabaseLibs
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) dbAccess.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) libraryKeys.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredLocal3 := recoveredBlock6Stack0.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal3.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := [:block28000c50Arg1 | 
    | block28000c50Stack0 block28000c50Stack1 block28000c50Stack2 block28000c50Stack3 block28000c50PC block28000c50Step block28000c50Done block28000c50Result |
    block28000c50Stack0 := self.
    block28000c50PC := 4.
    block28000c50Done := false.
    [block28000c50Done not] whileTrue: [
        block28000c50Step := block28000c50PC.
        block28000c50Step = 4 ifTrue: [
            block28000c50Stack1 := block28000c50Arg1.
            block28000c50PC := 5.
        ].
        block28000c50Step = 5 ifTrue: [
            block28000c50Stack2 := [:block28000c74Arg1 | 
    nil
].
            block28000c50PC := 7.
        ].
        block28000c50Step = 7 ifTrue: [
            block28000c50PC := 12.
        ].
        block28000c50Step = 12 ifTrue: [
            block28000c50Stack1 := (block28000c50Stack1) getObjectIfUndefined: (block28000c50Stack2).
            block28000c50PC := 14.
        ].
        block28000c50Step = 14 ifTrue: [
            block28000c50Result := block28000c50Stack1.
            block28000c50Done := true.
        ].
    ].
    block28000c50Result
].
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) collect: (recoveredBlock6Stack1).
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal2.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack1 := [:block28000c98Arg1 | 
    | block28000c98Value0 block28000c98Value1 |
    block28000c98Value0 := block28000c98Arg1.
    block28000c98Value1 := (block28000c98Value0) notNil.
    block28000c98Value1
].
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDConvUtil_base.ic method 0x20001840; bytecode file offset 0xb2c0"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
getAllDatabaseItems: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllDatabaseLibs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredLocal2.
    recoveredBlock28Value1 := [:recoveredBlock28Block37Arg1 :recoveredBlock28Block37Arg2 | 
    | recoveredBlock28Block37Value0 recoveredBlock28Block37Value1 recoveredBlock28Block37Value2 recoveredBlock28Block37Value3 recoveredBlock28Block37Value4 recoveredBlock28Block37Value5 recoveredBlock28Block37Value6 recoveredBlock28Block37Value7 recoveredBlock28Block37Value8 |
    recoveredBlock28Block37Value0 := recoveredBlock28Arg1.
    recoveredBlock28Block37Value1 := recoveredBlock28Block37Arg2.
    recoveredBlock28Block37Value2 := recoveredLocal2.
    recoveredBlock28Block37Value3 := (recoveredBlock28Block37Value2) size.
    recoveredBlock28Block37Value4 := (recoveredBlock28Block37Value1) / (recoveredBlock28Block37Value3).
    (recoveredBlock28Block37Value0) fractionComplete: (recoveredBlock28Block37Value4).
    recoveredBlock28Block37Value5 := recoveredLocal1.
    recoveredBlock28Block37Value6 := recoveredBlock28Block37Arg1.
    recoveredBlock28Block37Value7 := (recoveredBlock28Block37Value6) allNotFolderChildrenKeys.
    recoveredBlock28Block37Value8 := (recoveredBlock28Block37Value5) addAll: (recoveredBlock28Block37Value7).
    recoveredBlock28Block37Value8
].
    recoveredBlock28Value2 := (recoveredBlock28Value0) doWithIndex: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'Collecting all data base items'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 'Database '.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := (recoveredStack5) library.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := (recoveredStack5) location.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20001dd8; bytecode file offset 0xb854"
!SGModifyComponentsToolbox methodsFor: 'recovered'!
forAllDatabaseItemsExecute: recoveredArg1 message: recoveredArg2 view: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllDatabaseItems: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := recoveredLocal2.
    recoveredBlock43Value1 := [:recoveredBlock43Block53Arg1 :recoveredBlock43Block53Arg2 | 
    | recoveredBlock43Block53Value0 recoveredBlock43Block53Value1 recoveredBlock43Block53Value2 recoveredBlock43Block53Value3 recoveredBlock43Block53Value4 recoveredBlock43Block53Value5 recoveredBlock43Block53Value6 recoveredBlock43Block53Value7 recoveredBlock43Block53Value8 |
    recoveredBlock43Block53Value0 := recoveredBlock43Arg1.
    recoveredBlock43Block53Value1 := recoveredBlock43Block53Arg2.
    recoveredBlock43Block53Value2 := recoveredLocal2.
    recoveredBlock43Block53Value3 := (recoveredBlock43Block53Value2) size.
    recoveredBlock43Block53Value4 := (recoveredBlock43Block53Value1) / (recoveredBlock43Block53Value3).
    (recoveredBlock43Block53Value0) fractionComplete: (recoveredBlock43Block53Value4).
    recoveredBlock43Block53Value5 := recoveredArg1.
    recoveredBlock43Block53Value6 := recoveredBlock43Block53Arg1.
    recoveredBlock43Block53Value7 := recoveredLocal1.
    recoveredBlock43Block53Value8 := (recoveredBlock43Block53Value5) value: (recoveredBlock43Block53Value6) value: (recoveredBlock43Block53Value7).
    recoveredBlock43Block53Value8
].
    recoveredBlock43Value2 := (recoveredBlock43Value0) doWithIndex: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := 'Database '.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := (recoveredStack5) library.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := (recoveredStack5) location.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) printReady.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

