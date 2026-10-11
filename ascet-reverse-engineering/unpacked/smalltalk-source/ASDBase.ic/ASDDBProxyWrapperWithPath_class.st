"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2011728c; bytecode file offset 0xa13bd8"
!ASDDBProxyWrapperWithPath class methodsFor: 'recovered'!
labelSortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c7344Arg1 :block280c7344Arg2 | 
    | block280c7344Value0 block280c7344Value1 block280c7344Value2 block280c7344Value3 block280c7344Value4 |
    block280c7344Value0 := block280c7344Arg1.
    block280c7344Value1 := (block280c7344Value0) itemPath.
    block280c7344Value2 := block280c7344Arg2.
    block280c7344Value3 := (block280c7344Value2) itemPath.
    block280c7344Value4 := (block280c7344Value1) < (block280c7344Value3).
    block280c7344Value4
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020f664; bytecode file offset 0xb0bf30"
!ASDDBProxyWrapperWithPath class methodsFor: 'recovered'!
createForItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isDbObject.
    recoveredBlock4Value1
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('Wrong argument <aDatabaseItem> detected').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asRBDBReference.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) buildFolderPathName.
    recoveredValue5 := (self) createForDBProxy: (recoveredValue2) withPath: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202e3fa8; bytecode file offset 0xbe087c"
!ASDDBProxyWrapperWithPath class methodsFor: 'recovered'!
createForDBProxy: recoveredArg1 withPath: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isRBDBObject.
    recoveredBlock4Value1
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('Wrong argument <aDBProxy> detected').
    recoveredValue1 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredArg2.
    recoveredBlock20Value1 := (recoveredBlock20Value0) isString.
    recoveredBlock20Value1
].
    (self) runtimeAssert: (recoveredValue1) additionalInfo: ('Wrong argument <aDBPath> detected').
    recoveredValue2 := (self) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) dbProxy: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) dbPath: (recoveredValue6).
    ^recoveredValue2
! !

