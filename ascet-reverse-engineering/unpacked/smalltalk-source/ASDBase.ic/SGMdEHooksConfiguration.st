"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055efc; bytecode file offset 0x952a9c"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ehooksConfiguration: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057ca8; bytecode file offset 0x956284"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
hasMeasurementProperties: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) propertiesTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069618; bytecode file offset 0x966bdc"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
bypassFunctionTable
    | recoveredValue0 |
    recoveredValue0 := bypassFunctionTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a544; bytecode file offset 0x967a18"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
inputsTable
    | recoveredValue0 |
    recoveredValue0 := inputsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b9d0; bytecode file offset 0x96873c"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
outputsTable
    | recoveredValue0 |
    recoveredValue0 := outputsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c054; bytecode file offset 0x9692b0"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
propertiesTable
    | recoveredValue0 |
    recoveredValue0 := propertiesTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077774; bytecode file offset 0x9757c8"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
isMdlEHooksConfiguration
    ^true
! !

"ASDBase.ic method 0x2008cc70; bytecode file offset 0x98953c"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := (self) createNewNameKey: (nil) label: ('EHooks Configuration').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200abd1c; bytecode file offset 0x9a85dc"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
addBypassFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) bypassFunctionTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlLabel.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ae0dc; bytecode file offset 0x9aaa48"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
addMeasurementProperties: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) propertiesTable.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c2204; bytecode file offset 0x9beac8"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
inputsTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inputsTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2440; bytecode file offset 0x9bf474"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
outputsTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputsTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20155ec0; bytecode file offset 0xa5280c"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
lookupMeasurementProperties: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertiesTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd938Value0 block280cd938Value1 |
    block280cd938Value0 := SGCgEhooksMeasurementProperties.
    block280cd938Value1 := (block280cd938Value0) create.
    block280cd938Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201617bc; bytecode file offset 0xa5e0d8"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
bypassFunctions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctionTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ce358Arg1 :block280ce358Arg2 | 
    | block280ce358Value0 block280ce358Value1 block280ce358Value2 block280ce358Value3 block280ce358Value4 |
    block280ce358Value0 := block280ce358Arg1.
    block280ce358Value1 := (block280ce358Value0) mdlLabel.
    block280ce358Value2 := block280ce358Arg2.
    block280ce358Value3 := (block280ce358Value2) mdlLabel.
    block280ce358Value4 := (block280ce358Value1) < (block280ce358Value3).
    block280ce358Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f2a98; bytecode file offset 0xaef35c"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    bypassFunctionTable := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    inputsTable := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    outputsTable := recoveredValue5.
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    propertiesTable := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x202e5914; bytecode file offset 0xbe2220"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
hookVariables
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) outputsTable.
    recoveredValue3 := (recoveredValue2) values.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) asCollection.
    recoveredBlock12Value3 := [:recoveredBlock12Block26Arg1 | 
    | recoveredBlock12Block26Value0 recoveredBlock12Block26Value1 recoveredBlock12Block26Value2 |
    recoveredBlock12Block26Value0 := recoveredBlock12Arg1.
    recoveredBlock12Block26Value1 := (recoveredBlock12Block26Value0) calledByBypassFunctions.
    recoveredBlock12Block26Value2 := (recoveredBlock12Block26Value1) notEmpty.
    recoveredBlock12Block26Value2
].
    recoveredBlock12Value4 := (recoveredBlock12Value2) select: (recoveredBlock12Value3).
    recoveredBlock12Value5 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value4).
    recoveredBlock12Value5
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202e5944; bytecode file offset 0xbe2220"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
nonWrittenHookVariables
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) outputsTable.
    recoveredValue3 := (recoveredValue2) values.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) asCollection.
    recoveredBlock12Value3 := [:recoveredBlock12Block26Arg1 | 
    | recoveredBlock12Block26Value0 recoveredBlock12Block26Value1 recoveredBlock12Block26Value2 |
    recoveredBlock12Block26Value0 := recoveredBlock12Arg1.
    recoveredBlock12Block26Value1 := (recoveredBlock12Block26Value0) calledByBypassFunctions.
    recoveredBlock12Block26Value2 := (recoveredBlock12Block26Value1) isEmpty.
    recoveredBlock12Block26Value2
].
    recoveredBlock12Value4 := (recoveredBlock12Value2) select: (recoveredBlock12Value3).
    recoveredBlock12Value5 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value4).
    recoveredBlock12Value5
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203dc848; bytecode file offset 0xcd9124"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
rebuildTableUsingMessageKey: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) fromVarDeclReceiver.
    recoveredBlock13Value2 := [:recoveredBlock13Block24Arg1 | 
    | recoveredBlock13Block24Stack0 recoveredBlock13Block24Stack1 recoveredBlock13Block24Stack2 recoveredBlock13Block24Stack3 recoveredBlock13Block24Stack4 recoveredBlock13Block24PC recoveredBlock13Block24Step recoveredBlock13Block24Done recoveredBlock13Block24Result |
    recoveredBlock13Block24Stack0 := nil.
    recoveredBlock13Block24PC := 30.
    recoveredBlock13Block24Done := false.
    [recoveredBlock13Block24Done not] whileTrue: [
        recoveredBlock13Block24Step := recoveredBlock13Block24PC.
        recoveredBlock13Block24Step = 30 ifTrue: [
            recoveredBlock13Block24Stack1 := recoveredBlock13Block24Arg1.
            recoveredBlock13Block24PC := 31.
        ].
        recoveredBlock13Block24Step = 31 ifTrue: [
            recoveredBlock13Block24Stack1 := (recoveredBlock13Block24Stack1) mdlClass.
            recoveredBlock13Block24PC := 32.
        ].
        recoveredBlock13Block24Step = 32 ifTrue: [
            recoveredBlock13Block24Stack1 := (recoveredBlock13Block24Stack1) isMdlRecordType.
            recoveredBlock13Block24PC := 34.
        ].
        recoveredBlock13Block24Step = 34 ifTrue: [
            (recoveredBlock13Block24Stack1) ifTrue: [recoveredBlock13Block24PC := 38] ifFalse: [recoveredBlock13Block24PC := 64].
        ].
        recoveredBlock13Block24Step = 38 ifTrue: [
            recoveredBlock13Block24Stack1 := recoveredBlock13Block24Arg1.
            recoveredBlock13Block24PC := 39.
        ].
        recoveredBlock13Block24Step = 39 ifTrue: [
            recoveredBlock13Block24Stack1 := (recoveredBlock13Block24Stack1) mdlMapping.
            recoveredBlock13Block24PC := 41.
        ].
        recoveredBlock13Block24Step = 41 ifTrue: [
            recoveredBlock13Block24Stack2 := [:recoveredBlock13Block24Block41Arg1 | 
    | recoveredBlock13Block24Block41Value0 recoveredBlock13Block24Block41Value1 recoveredBlock13Block24Block41Value2 recoveredBlock13Block24Block41Value3 recoveredBlock13Block24Block41Value4 |
    recoveredBlock13Block24Block41Value0 := recoveredLocal1.
    recoveredBlock13Block24Block41Value1 := recoveredBlock13Block24Block41Arg1.
    recoveredBlock13Block24Block41Value2 := (recoveredBlock13Block24Block41Value1) mdlMessageKey.
    recoveredBlock13Block24Block41Value3 := recoveredBlock13Block24Block41Arg1.
    recoveredBlock13Block24Block41Value4 := (recoveredBlock13Block24Block41Value0) at: (recoveredBlock13Block24Block41Value2) put: (recoveredBlock13Block24Block41Value3).
    recoveredBlock13Block24Block41Value4
].
            recoveredBlock13Block24PC := 58.
        ].
        recoveredBlock13Block24Step = 58 ifTrue: [
            recoveredBlock13Block24Stack1 := (recoveredBlock13Block24Stack1) ifNotNil: (recoveredBlock13Block24Stack2).
            recoveredBlock13Block24PC := 60.
        ].
        recoveredBlock13Block24Step = 60 ifTrue: [
            recoveredBlock13Block24PC := 77.
        ].
        recoveredBlock13Block24Step = 64 ifTrue: [
            recoveredBlock13Block24Stack1 := recoveredLocal1.
            recoveredBlock13Block24PC := 67.
        ].
        recoveredBlock13Block24Step = 67 ifTrue: [
            recoveredBlock13Block24Stack2 := recoveredBlock13Arg1.
            recoveredBlock13Block24PC := 70.
        ].
        recoveredBlock13Block24Step = 70 ifTrue: [
            recoveredBlock13Block24Stack2 := (recoveredBlock13Block24Stack2) mdlMessageKey.
            recoveredBlock13Block24PC := 72.
        ].
        recoveredBlock13Block24Step = 72 ifTrue: [
            recoveredBlock13Block24Stack3 := recoveredBlock13Arg1.
            recoveredBlock13Block24PC := 75.
        ].
        recoveredBlock13Block24Step = 75 ifTrue: [
            recoveredBlock13Block24Stack1 := (recoveredBlock13Block24Stack1) at: (recoveredBlock13Block24Stack2) put: (recoveredBlock13Block24Stack3).
            recoveredBlock13Block24PC := 77.
        ].
        recoveredBlock13Block24Step = 77 ifTrue: [
            recoveredBlock13Block24Result := recoveredBlock13Block24Stack1.
            recoveredBlock13Block24Done := true.
        ].
    ].
    recoveredBlock13Block24Result
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) ifNotNil: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204be760; bytecode file offset 0xdbb060"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
checkMultipleEntriesInTable: recoveredArg1 category: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7Stack7 recoveredBlock7Stack8 recoveredBlock7Stack9 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) notEmpty.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 145].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg2.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack3 := 1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) > (recoveredBlock7Stack3).
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 32] ifFalse: [recoveredBlock7PC := 145].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := OrderedCollection.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) new.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := OrderedCollection.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) new.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block48Arg1 | 
    | recoveredBlock7Block48Value0 recoveredBlock7Block48Value1 recoveredBlock7Block48Value2 recoveredBlock7Block48Value3 recoveredBlock7Block48Value4 recoveredBlock7Block48Value5 recoveredBlock7Block48Value6 recoveredBlock7Block48Value7 recoveredBlock7Block48Value8 |
    recoveredBlock7Block48Value0 := recoveredBlock7Local2.
    recoveredBlock7Block48Value1 := recoveredBlock7Block48Arg1.
    (recoveredBlock7Block48Value0) add: (recoveredBlock7Block48Value1).
    recoveredBlock7Block48Value2 := recoveredBlock7Local1.
    recoveredBlock7Block48Value3 := (self) source.
    recoveredBlock7Block48Value4 := (recoveredBlock7Block48Value3) deepCopy.
    recoveredBlock7Block48Value5 := recoveredBlock7Block48Value4.
    (recoveredBlock7Block48Value5) setBypass.
    recoveredBlock7Block48Value6 := recoveredBlock7Block48Value4.
    recoveredBlock7Block48Value7 := recoveredBlock7Block48Arg1.
    (recoveredBlock7Block48Value6) displayName: (recoveredBlock7Block48Value7).
    recoveredBlock7Block48Value8 := (recoveredBlock7Block48Value2) add: (recoveredBlock7Block48Value4).
    recoveredBlock7Block48Value8
].
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack2 := 492.
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg2.
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack5 := recoveredBlock7Arg2.
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7Stack6 := 2.
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            recoveredBlock7Stack7 := recoveredBlock7Arg2.
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Stack7 := (recoveredBlock7Stack7) size.
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) copyFrom: (recoveredBlock7Stack6) to: (recoveredBlock7Stack7).
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            recoveredBlock7Stack6 := recoveredBlock7Arg2.
            recoveredBlock7PC := 104.
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredBlock7Stack6 := (recoveredBlock7Stack6) first.
            recoveredBlock7PC := 106.
        ].
        recoveredBlock7Step = 106 ifTrue: [
            recoveredBlock7Stack7 := [:block2810642cArg1 :block2810642cArg2 | 
    | block2810642cValue0 block2810642cValue1 block2810642cValue2 block2810642cValue3 |
    block2810642cValue0 := block2810642cArg1.
    block2810642cValue1 := (block2810642cValue0) , (', ').
    block2810642cValue2 := block2810642cArg2.
    block2810642cValue3 := (block2810642cValue1) , (block2810642cValue2).
    block2810642cValue3
].
            recoveredBlock7PC := 108.
        ].
        recoveredBlock7Step = 108 ifTrue: [
            recoveredBlock7PC := 121.
        ].
        recoveredBlock7Step = 121 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) inject: (recoveredBlock7Stack6) into: (recoveredBlock7Stack7).
            recoveredBlock7PC := 123.
        ].
        recoveredBlock7Step = 123 ifTrue: [
            recoveredBlock7Stack6 := self.
            recoveredBlock7PC := 124.
        ].
        recoveredBlock7Step = 124 ifTrue: [
            recoveredBlock7Stack6 := (recoveredBlock7Stack6) source.
            recoveredBlock7PC := 126.
        ].
        recoveredBlock7Step = 126 ifTrue: [
            recoveredBlock7Stack7 := recoveredBlock7Local1.
            recoveredBlock7PC := 129.
        ].
        recoveredBlock7Step = 129 ifTrue: [
            recoveredBlock7Stack8 := recoveredBlock7Local2.
            recoveredBlock7PC := 132.
        ].
        recoveredBlock7Step = 132 ifTrue: [
            recoveredBlock7Stack6 := (recoveredBlock7Stack6) createMultiSource: (recoveredBlock7Stack7) labels: (recoveredBlock7Stack8).
            recoveredBlock7PC := 134.
        ].
        recoveredBlock7Step = 134 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mdlSemErrNo: (recoveredBlock7Stack2) with: (recoveredBlock7Stack3) with: (recoveredBlock7Stack4) with: (recoveredBlock7Stack5) source: (recoveredBlock7Stack6).
            recoveredBlock7PC := 137.
        ].
        recoveredBlock7Step = 137 ifTrue: [
            recoveredBlock7Stack2 := nil.
            recoveredBlock7PC := 138.
        ].
        recoveredBlock7Step = 138 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 139.
        ].
        recoveredBlock7Step = 139 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack3.
            recoveredBlock7PC := 142.
        ].
        recoveredBlock7Step = 142 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 145.
        ].
        recoveredBlock7Step = 145 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2062f308; bytecode file offset 0xf2bcb4"
!SGMdEHooksConfiguration methodsFor: 'recovered'!
collectBypassFunctionInputsOutputs
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := LookupTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportLocalElements.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputsTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block28120058Arg1 | 
    | block28120058Value0 block28120058Value1 |
    block28120058Value0 := block28120058Arg1.
    block28120058Value1 := (block28120058Value0) resetBypassFunctions.
    block28120058Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) inputsTable.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) rebuildTableUsingMessageKey: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputsTable.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) rebuildTableUsingMessageKey: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Local1 recoveredBlock65Local2 recoveredBlock65Local3 recoveredBlock65Local4 recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65Stack5 recoveredBlock65Stack6 recoveredBlock65Stack7 recoveredBlock65Stack8 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 75.
        ].
        recoveredBlock65Step = 75 ifTrue: [
            (recoveredBlock65Stack1) resetInputsOutputs.
            recoveredBlock65PC := 77.
        ].
        recoveredBlock65Step = 77 ifTrue: [
            recoveredBlock65Stack1 := OrderedCollection.
            recoveredBlock65PC := 79.
        ].
        recoveredBlock65Step = 79 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) new.
            recoveredBlock65PC := 80.
        ].
        recoveredBlock65Step = 80 ifTrue: [
            recoveredBlock65Local4 := recoveredBlock65Stack1.
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) usesdT.
            recoveredBlock65PC := 88.
        ].
        recoveredBlock65Step = 88 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 92] ifFalse: [recoveredBlock65PC := 129].
        ].
        recoveredBlock65Step = 92 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) attributes.
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) period.
            recoveredBlock65PC := 99.
        ].
        recoveredBlock65Step = 99 ifTrue: [
            (recoveredBlock65Stack1 ~~ nil) ifTrue: [recoveredBlock65PC := 125] ifFalse: [recoveredBlock65PC := 102].
        ].
        recoveredBlock65Step = 102 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            recoveredBlock65Stack2 := 493.
            recoveredBlock65PC := 106.
        ].
        recoveredBlock65Step = 106 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg1.
            recoveredBlock65PC := 109.
        ].
        recoveredBlock65Step = 109 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) errLabel.
            recoveredBlock65PC := 111.
        ].
        recoveredBlock65Step = 111 ifTrue: [
            recoveredBlock65Stack4 := self.
            recoveredBlock65PC := 112.
        ].
        recoveredBlock65Step = 112 ifTrue: [
            recoveredBlock65Stack4 := (recoveredBlock65Stack4) source.
            recoveredBlock65PC := 114.
        ].
        recoveredBlock65Step = 114 ifTrue: [
            recoveredBlock65Stack5 := recoveredBlock65Stack4.
            recoveredBlock65PC := 115.
        ].
        recoveredBlock65Step = 115 ifTrue: [
            recoveredBlock65Stack6 := recoveredBlock65Arg1.
            recoveredBlock65PC := 118.
        ].
        recoveredBlock65Step = 118 ifTrue: [
            recoveredBlock65Stack6 := (recoveredBlock65Stack6) errLabel.
            recoveredBlock65PC := 120.
        ].
        recoveredBlock65Step = 120 ifTrue: [
            (recoveredBlock65Stack5) displayName: (recoveredBlock65Stack6).
            recoveredBlock65PC := 122.
        ].
        recoveredBlock65Step = 122 ifTrue: [
            (recoveredBlock65Stack1) mdlSemErrNo: (recoveredBlock65Stack2) with: (recoveredBlock65Stack3) source: (recoveredBlock65Stack4).
            recoveredBlock65PC := 125.
        ].
        recoveredBlock65Step = 125 ifTrue: [
            recoveredBlock65Stack1 := nil.
            recoveredBlock65PC := 126.
        ].
        recoveredBlock65Step = 126 ifTrue: [
            recoveredBlock65Local3 := recoveredBlock65Stack1.
            recoveredBlock65PC := 129.
        ].
        recoveredBlock65Step = 129 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 132.
        ].
        recoveredBlock65Step = 132 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) usedRcvMsgs.
            recoveredBlock65PC := 134.
        ].
        recoveredBlock65Step = 134 ifTrue: [
            recoveredBlock65Stack2 := [:recoveredBlock65Block134Arg1 | 
    | recoveredBlock65Block134Local1 recoveredBlock65Block134Stack0 recoveredBlock65Block134Stack1 recoveredBlock65Block134Stack2 recoveredBlock65Block134Stack3 recoveredBlock65Block134Stack4 recoveredBlock65Block134PC recoveredBlock65Block134Step recoveredBlock65Block134Done recoveredBlock65Block134Result |
    recoveredBlock65Block134Stack0 := nil.
    recoveredBlock65Block134PC := 140.
    recoveredBlock65Block134Done := false.
    [recoveredBlock65Block134Done not] whileTrue: [
        recoveredBlock65Block134Step := recoveredBlock65Block134PC.
        recoveredBlock65Block134Step = 140 ifTrue: [
            recoveredBlock65Block134Stack1 := recoveredBlock65Block134Arg1.
            recoveredBlock65Block134PC := 143.
        ].
        recoveredBlock65Block134Step = 143 ifTrue: [
            recoveredBlock65Block134Stack1 := (recoveredBlock65Block134Stack1) varDecl.
            recoveredBlock65Block134PC := 145.
        ].
        recoveredBlock65Block134Step = 145 ifTrue: [
            recoveredBlock65Block134Local1 := recoveredBlock65Block134Stack1.
            recoveredBlock65Block134PC := 148.
        ].
        recoveredBlock65Block134Step = 148 ifTrue: [
            recoveredBlock65Block134Stack1 := recoveredBlock65Block134Local1.
            recoveredBlock65Block134PC := 151.
        ].
        recoveredBlock65Block134Step = 151 ifTrue: [
            recoveredBlock65Block134Stack1 := (recoveredBlock65Block134Stack1) isMdlInstVarDecl.
            recoveredBlock65Block134PC := 153.
        ].
        recoveredBlock65Block134Step = 153 ifTrue: [
            (recoveredBlock65Block134Stack1) ifTrue: [recoveredBlock65Block134PC := 156] ifFalse: [recoveredBlock65Block134PC := 164].
        ].
        recoveredBlock65Block134Step = 156 ifTrue: [
            recoveredBlock65Block134Stack1 := recoveredBlock65Local4.
            recoveredBlock65Block134PC := 159.
        ].
        recoveredBlock65Block134Step = 159 ifTrue: [
            recoveredBlock65Block134Stack2 := recoveredBlock65Block134Local1.
            recoveredBlock65Block134PC := 162.
        ].
        recoveredBlock65Block134Step = 162 ifTrue: [
            (recoveredBlock65Block134Stack1) add: (recoveredBlock65Block134Stack2).
            recoveredBlock65Block134PC := 164.
        ].
        recoveredBlock65Block134Step = 164 ifTrue: [
            recoveredBlock65Block134Stack1 := recoveredLocal3.
            recoveredBlock65Block134PC := 167.
        ].
        recoveredBlock65Block134Step = 167 ifTrue: [
            recoveredBlock65Block134Stack2 := recoveredBlock65Block134Local1.
            recoveredBlock65Block134PC := 170.
        ].
        recoveredBlock65Block134Step = 170 ifTrue: [
            recoveredBlock65Block134Stack2 := (recoveredBlock65Block134Stack2) mdlMessageKey.
            recoveredBlock65Block134PC := 172.
        ].
        recoveredBlock65Block134Step = 172 ifTrue: [
            recoveredBlock65Block134Stack3 := [].
            recoveredBlock65Block134PC := 174.
        ].
        recoveredBlock65Block134Step = 174 ifTrue: [
            recoveredBlock65Block134Stack1 := (recoveredBlock65Block134Stack1) at: (recoveredBlock65Block134Stack2) ifAbsent: (recoveredBlock65Block134Stack3).
            recoveredBlock65Block134PC := 176.
        ].
        recoveredBlock65Block134Step = 176 ifTrue: [
            recoveredBlock65Block134Stack2 := [:recoveredBlock65Block134Block176Arg1 | 
    | recoveredBlock65Block134Block176Value0 recoveredBlock65Block134Block176Value1 recoveredBlock65Block134Block176Value2 recoveredBlock65Block134Block176Value3 recoveredBlock65Block134Block176Value4 recoveredBlock65Block134Block176Value5 recoveredBlock65Block134Block176Value6 recoveredBlock65Block134Block176Value7 |
    recoveredBlock65Block134Block176Value0 := recoveredLocal5.
    recoveredBlock65Block134Block176Value1 := recoveredBlock65Block134Local1.
    recoveredBlock65Block134Block176Value2 := (recoveredBlock65Block134Block176Value1) mdlMessageKey.
    recoveredBlock65Block134Block176Value3 := recoveredBlock65Block134Local1.
    (recoveredBlock65Block134Block176Value0) at: (recoveredBlock65Block134Block176Value2) put: (recoveredBlock65Block134Block176Value3).
    recoveredBlock65Block134Block176Value4 := recoveredBlock65Block134Block176Arg1.
    recoveredBlock65Block134Block176Value5 := (recoveredBlock65Block134Block176Value4) asCollectionCategoryInput.
    recoveredBlock65Block134Block176Value6 := [:recoveredBlock65Block134Block176Block198Arg1 | 
    | recoveredBlock65Block134Block176Block198Value0 recoveredBlock65Block134Block176Block198Value1 recoveredBlock65Block134Block176Block198Value2 recoveredBlock65Block134Block176Block198Value3 recoveredBlock65Block134Block176Block198Value4 |
    recoveredBlock65Block134Block176Block198Value0 := recoveredLocal6.
    recoveredBlock65Block134Block176Block198Value1 := recoveredBlock65Block134Block176Block198Arg1.
    (recoveredBlock65Block134Block176Block198Value0) add: (recoveredBlock65Block134Block176Block198Value1).
    recoveredBlock65Block134Block176Block198Value2 := recoveredBlock65Arg1.
    recoveredBlock65Block134Block176Block198Value3 := recoveredBlock65Block134Block176Block198Arg1.
    recoveredBlock65Block134Block176Block198Value4 := (recoveredBlock65Block134Block176Block198Value2) addInput: (recoveredBlock65Block134Block176Block198Value3).
    recoveredBlock65Block134Block176Block198Value4
].
    recoveredBlock65Block134Block176Value7 := (recoveredBlock65Block134Block176Value5) do: (recoveredBlock65Block134Block176Value6).
    recoveredBlock65Block134Block176Value7
].
            recoveredBlock65Block134PC := 220.
        ].
        recoveredBlock65Block134Step = 220 ifTrue: [
            recoveredBlock65Block134Stack1 := (recoveredBlock65Block134Stack1) ifNotNil: (recoveredBlock65Block134Stack2).
            recoveredBlock65Block134PC := 222.
        ].
        recoveredBlock65Block134Step = 222 ifTrue: [
            recoveredBlock65Block134Result := recoveredBlock65Block134Stack1.
            recoveredBlock65Block134Done := true.
        ].
    ].
    recoveredBlock65Block134Result
].
            recoveredBlock65PC := 223.
        ].
        recoveredBlock65Step = 223 ifTrue: [
            (recoveredBlock65Stack1) do: (recoveredBlock65Stack2).
            recoveredBlock65PC := 225.
        ].
        recoveredBlock65Step = 225 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 228.
        ].
        recoveredBlock65Step = 228 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) usedSndMsgs.
            recoveredBlock65PC := 230.
        ].
        recoveredBlock65Step = 230 ifTrue: [
            recoveredBlock65Stack2 := [:recoveredBlock65Block230Arg1 | 
    | recoveredBlock65Block230Local1 recoveredBlock65Block230Stack0 recoveredBlock65Block230Stack1 recoveredBlock65Block230Stack2 recoveredBlock65Block230Stack3 recoveredBlock65Block230Stack4 recoveredBlock65Block230PC recoveredBlock65Block230Step recoveredBlock65Block230Done recoveredBlock65Block230Result |
    recoveredBlock65Block230Stack0 := nil.
    recoveredBlock65Block230PC := 236.
    recoveredBlock65Block230Done := false.
    [recoveredBlock65Block230Done not] whileTrue: [
        recoveredBlock65Block230Step := recoveredBlock65Block230PC.
        recoveredBlock65Block230Step = 236 ifTrue: [
            recoveredBlock65Block230Stack1 := recoveredBlock65Block230Arg1.
            recoveredBlock65Block230PC := 239.
        ].
        recoveredBlock65Block230Step = 239 ifTrue: [
            recoveredBlock65Block230Stack1 := (recoveredBlock65Block230Stack1) varDecl.
            recoveredBlock65Block230PC := 241.
        ].
        recoveredBlock65Block230Step = 241 ifTrue: [
            recoveredBlock65Block230Local1 := recoveredBlock65Block230Stack1.
            recoveredBlock65Block230PC := 244.
        ].
        recoveredBlock65Block230Step = 244 ifTrue: [
            recoveredBlock65Block230Stack1 := recoveredBlock65Block230Local1.
            recoveredBlock65Block230PC := 247.
        ].
        recoveredBlock65Block230Step = 247 ifTrue: [
            recoveredBlock65Block230Stack1 := (recoveredBlock65Block230Stack1) isMdlInstVarDecl.
            recoveredBlock65Block230PC := 249.
        ].
        recoveredBlock65Block230Step = 249 ifTrue: [
            (recoveredBlock65Block230Stack1) ifTrue: [recoveredBlock65Block230PC := 252] ifFalse: [recoveredBlock65Block230PC := 260].
        ].
        recoveredBlock65Block230Step = 252 ifTrue: [
            recoveredBlock65Block230Stack1 := recoveredBlock65Local4.
            recoveredBlock65Block230PC := 255.
        ].
        recoveredBlock65Block230Step = 255 ifTrue: [
            recoveredBlock65Block230Stack2 := recoveredBlock65Block230Local1.
            recoveredBlock65Block230PC := 258.
        ].
        recoveredBlock65Block230Step = 258 ifTrue: [
            (recoveredBlock65Block230Stack1) add: (recoveredBlock65Block230Stack2).
            recoveredBlock65Block230PC := 260.
        ].
        recoveredBlock65Block230Step = 260 ifTrue: [
            recoveredBlock65Block230Stack1 := recoveredLocal2.
            recoveredBlock65Block230PC := 263.
        ].
        recoveredBlock65Block230Step = 263 ifTrue: [
            recoveredBlock65Block230Stack2 := recoveredBlock65Block230Local1.
            recoveredBlock65Block230PC := 266.
        ].
        recoveredBlock65Block230Step = 266 ifTrue: [
            recoveredBlock65Block230Stack2 := (recoveredBlock65Block230Stack2) mdlMessageKey.
            recoveredBlock65Block230PC := 268.
        ].
        recoveredBlock65Block230Step = 268 ifTrue: [
            recoveredBlock65Block230Stack3 := [].
            recoveredBlock65Block230PC := 270.
        ].
        recoveredBlock65Block230Step = 270 ifTrue: [
            recoveredBlock65Block230Stack1 := (recoveredBlock65Block230Stack1) at: (recoveredBlock65Block230Stack2) ifAbsent: (recoveredBlock65Block230Stack3).
            recoveredBlock65Block230PC := 272.
        ].
        recoveredBlock65Block230Step = 272 ifTrue: [
            recoveredBlock65Block230Stack2 := [:recoveredBlock65Block230Block272Arg1 | 
    | recoveredBlock65Block230Block272Value0 recoveredBlock65Block230Block272Value1 recoveredBlock65Block230Block272Value2 recoveredBlock65Block230Block272Value3 recoveredBlock65Block230Block272Value4 recoveredBlock65Block230Block272Value5 recoveredBlock65Block230Block272Value6 recoveredBlock65Block230Block272Value7 |
    recoveredBlock65Block230Block272Value0 := recoveredLocal5.
    recoveredBlock65Block230Block272Value1 := recoveredBlock65Block230Local1.
    recoveredBlock65Block230Block272Value2 := (recoveredBlock65Block230Block272Value1) mdlMessageKey.
    recoveredBlock65Block230Block272Value3 := recoveredBlock65Block230Local1.
    (recoveredBlock65Block230Block272Value0) at: (recoveredBlock65Block230Block272Value2) put: (recoveredBlock65Block230Block272Value3).
    recoveredBlock65Block230Block272Value4 := recoveredBlock65Block230Block272Arg1.
    recoveredBlock65Block230Block272Value5 := (recoveredBlock65Block230Block272Value4) asCollectionCategoryOutput.
    recoveredBlock65Block230Block272Value6 := [:recoveredBlock65Block230Block272Block294Arg1 | 
    | recoveredBlock65Block230Block272Block294Value0 recoveredBlock65Block230Block272Block294Value1 recoveredBlock65Block230Block272Block294Value2 recoveredBlock65Block230Block272Block294Value3 recoveredBlock65Block230Block272Block294Value4 recoveredBlock65Block230Block272Block294Value5 recoveredBlock65Block230Block272Block294Value6 |
    recoveredBlock65Block230Block272Block294Value0 := recoveredBlock65Block230Block272Block294Arg1.
    recoveredBlock65Block230Block272Block294Value1 := recoveredBlock65Arg1.
    (recoveredBlock65Block230Block272Block294Value0) addCalledByBypassFunction: (recoveredBlock65Block230Block272Block294Value1).
    recoveredBlock65Block230Block272Block294Value2 := recoveredLocal6.
    recoveredBlock65Block230Block272Block294Value3 := recoveredBlock65Block230Block272Block294Arg1.
    (recoveredBlock65Block230Block272Block294Value2) add: (recoveredBlock65Block230Block272Block294Value3).
    recoveredBlock65Block230Block272Block294Value4 := recoveredBlock65Arg1.
    recoveredBlock65Block230Block272Block294Value5 := recoveredBlock65Block230Block272Block294Arg1.
    recoveredBlock65Block230Block272Block294Value6 := (recoveredBlock65Block230Block272Block294Value4) addOutput: (recoveredBlock65Block230Block272Block294Value5).
    recoveredBlock65Block230Block272Block294Value6
].
    recoveredBlock65Block230Block272Value7 := (recoveredBlock65Block230Block272Value5) do: (recoveredBlock65Block230Block272Value6).
    recoveredBlock65Block230Block272Value7
].
            recoveredBlock65Block230PC := 322.
        ].
        recoveredBlock65Block230Step = 322 ifTrue: [
            recoveredBlock65Block230Stack1 := (recoveredBlock65Block230Stack1) ifNotNil: (recoveredBlock65Block230Stack2).
            recoveredBlock65Block230PC := 324.
        ].
        recoveredBlock65Block230Step = 324 ifTrue: [
            recoveredBlock65Block230Result := recoveredBlock65Block230Stack1.
            recoveredBlock65Block230Done := true.
        ].
    ].
    recoveredBlock65Block230Result
].
            recoveredBlock65PC := 325.
        ].
        recoveredBlock65Step = 325 ifTrue: [
            (recoveredBlock65Stack1) do: (recoveredBlock65Stack2).
            recoveredBlock65PC := 327.
        ].
        recoveredBlock65Step = 327 ifTrue: [
            recoveredBlock65Stack1 := nil.
            recoveredBlock65PC := 328.
        ].
        recoveredBlock65Step = 328 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local4.
            recoveredBlock65PC := 331.
        ].
        recoveredBlock65Step = 331 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) notEmpty.
            recoveredBlock65PC := 333.
        ].
        recoveredBlock65Step = 333 ifTrue: [
            (recoveredBlock65Stack2) ifTrue: [recoveredBlock65PC := 336] ifFalse: [recoveredBlock65PC := 464].
        ].
        recoveredBlock65Step = 336 ifTrue: [
            recoveredBlock65Stack2 := self.
            recoveredBlock65PC := 337.
        ].
        recoveredBlock65Step = 337 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) generator.
            recoveredBlock65PC := 338.
        ].
        recoveredBlock65Step = 338 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) genContext.
            recoveredBlock65PC := 339.
        ].
        recoveredBlock65Step = 339 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) ehooksSettings.
            recoveredBlock65PC := 341.
        ].
        recoveredBlock65Step = 341 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) supportLocalElements.
            recoveredBlock65PC := 343.
        ].
        recoveredBlock65Step = 343 ifTrue: [
            (recoveredBlock65Stack2) ifTrue: [recoveredBlock65PC := 464] ifFalse: [recoveredBlock65PC := 346].
        ].
        recoveredBlock65Step = 346 ifTrue: [
            recoveredBlock65PC := 347.
        ].
        recoveredBlock65Step = 347 ifTrue: [
            recoveredBlock65Stack1 := ''.
            recoveredBlock65PC := 349.
        ].
        recoveredBlock65Step = 349 ifTrue: [
            recoveredBlock65Local3 := recoveredBlock65Stack1.
            recoveredBlock65PC := 352.
        ].
        recoveredBlock65Step = 352 ifTrue: [
            recoveredBlock65Stack1 := OrderedCollection.
            recoveredBlock65PC := 354.
        ].
        recoveredBlock65Step = 354 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) new.
            recoveredBlock65PC := 355.
        ].
        recoveredBlock65Step = 355 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack1.
            recoveredBlock65PC := 358.
        ].
        recoveredBlock65Step = 358 ifTrue: [
            recoveredBlock65Stack1 := OrderedCollection.
            recoveredBlock65PC := 360.
        ].
        recoveredBlock65Step = 360 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) new.
            recoveredBlock65PC := 361.
        ].
        recoveredBlock65Step = 361 ifTrue: [
            recoveredBlock65Local2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 364.
        ].
        recoveredBlock65Step = 364 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local4.
            recoveredBlock65PC := 367.
        ].
        recoveredBlock65Step = 367 ifTrue: [
            recoveredBlock65Stack2 := [:recoveredBlock65Block367Arg1 | 
    | recoveredBlock65Block367Value0 recoveredBlock65Block367Value1 recoveredBlock65Block367Value2 recoveredBlock65Block367Value3 recoveredBlock65Block367Value4 recoveredBlock65Block367Value5 recoveredBlock65Block367Value6 recoveredBlock65Block367Value7 recoveredBlock65Block367Value8 recoveredBlock65Block367Value9 recoveredBlock65Block367Value10 |
    recoveredBlock65Block367Value0 := recoveredBlock65Local3.
    recoveredBlock65Block367Value1 := recoveredBlock65Block367Arg1.
    recoveredBlock65Block367Value2 := (recoveredBlock65Block367Value1) errLabel.
    recoveredBlock65Block367Value3 := (recoveredBlock65Block367Value0) , (recoveredBlock65Block367Value2).
    recoveredBlock65Local3 := recoveredBlock65Block367Value3.
    recoveredBlock65Block367Value4 := recoveredBlock65Local1.
    recoveredBlock65Block367Value5 := recoveredBlock65Block367Arg1.
    recoveredBlock65Block367Value6 := (recoveredBlock65Block367Value5) errLabel.
    (recoveredBlock65Block367Value4) add: (recoveredBlock65Block367Value6).
    recoveredBlock65Block367Value7 := recoveredBlock65Local2.
    recoveredBlock65Block367Value8 := recoveredBlock65Block367Arg1.
    recoveredBlock65Block367Value9 := (recoveredBlock65Block367Value8) source.
    recoveredBlock65Block367Value10 := (recoveredBlock65Block367Value7) add: (recoveredBlock65Block367Value9).
    recoveredBlock65Block367Value10
].
            recoveredBlock65PC := 402.
        ].
        recoveredBlock65Step = 402 ifTrue: [
            recoveredBlock65Stack3 := [
    | recoveredBlock65Block402Value0 recoveredBlock65Block402Value1 recoveredBlock65Block402Value2 |
    recoveredBlock65Block402Value0 := recoveredBlock65Local3.
    recoveredBlock65Block402Value1 := (recoveredBlock65Block402Value0) , (', ').
    recoveredBlock65Block402Value2 := recoveredBlock65Block402Value1.
    recoveredBlock65Local3 := recoveredBlock65Block402Value2.
    recoveredBlock65Block402Value1
].
            recoveredBlock65PC := 420.
        ].
        recoveredBlock65Step = 420 ifTrue: [
            (recoveredBlock65Stack1) do: (recoveredBlock65Stack2) andBetweenDo: (recoveredBlock65Stack3).
            recoveredBlock65PC := 422.
        ].
        recoveredBlock65Step = 422 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 425.
        ].
        recoveredBlock65Step = 425 ifTrue: [
            recoveredBlock65Stack2 := 491.
            recoveredBlock65PC := 428.
        ].
        recoveredBlock65Step = 428 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg1.
            recoveredBlock65PC := 431.
        ].
        recoveredBlock65Step = 431 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) errLabel.
            recoveredBlock65PC := 433.
        ].
        recoveredBlock65Step = 433 ifTrue: [
            recoveredBlock65Stack4 := recoveredBlock65Local3.
            recoveredBlock65PC := 436.
        ].
        recoveredBlock65Step = 436 ifTrue: [
            recoveredBlock65Stack5 := recoveredBlock65Arg1.
            recoveredBlock65PC := 439.
        ].
        recoveredBlock65Step = 439 ifTrue: [
            recoveredBlock65Stack5 := (recoveredBlock65Stack5) source.
            recoveredBlock65PC := 441.
        ].
        recoveredBlock65Step = 441 ifTrue: [
            recoveredBlock65Stack6 := recoveredBlock65Local2.
            recoveredBlock65PC := 444.
        ].
        recoveredBlock65Step = 444 ifTrue: [
            recoveredBlock65Stack7 := recoveredBlock65Local1.
            recoveredBlock65PC := 447.
        ].
        recoveredBlock65Step = 447 ifTrue: [
            recoveredBlock65Stack5 := (recoveredBlock65Stack5) createMultiSource: (recoveredBlock65Stack6) labels: (recoveredBlock65Stack7).
            recoveredBlock65PC := 449.
        ].
        recoveredBlock65Step = 449 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) mdlSemErrNo: (recoveredBlock65Stack2) with: (recoveredBlock65Stack3) with: (recoveredBlock65Stack4) source: (recoveredBlock65Stack5).
            recoveredBlock65PC := 452.
        ].
        recoveredBlock65Step = 452 ifTrue: [
            recoveredBlock65Stack2 := nil.
            recoveredBlock65PC := 453.
        ].
        recoveredBlock65Step = 453 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Stack2.
            recoveredBlock65PC := 454.
        ].
        recoveredBlock65Step = 454 ifTrue: [
            recoveredBlock65Local3 := recoveredBlock65Stack3.
            recoveredBlock65PC := 457.
        ].
        recoveredBlock65Step = 457 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Stack2.
            recoveredBlock65PC := 458.
        ].
        recoveredBlock65Step = 458 ifTrue: [
            recoveredBlock65Local2 := recoveredBlock65Stack3.
            recoveredBlock65PC := 461.
        ].
        recoveredBlock65Step = 461 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack2.
            recoveredBlock65PC := 464.
        ].
        recoveredBlock65Step = 464 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := [:recoveredBlock470Arg1 | 
    | recoveredBlock470Stack0 recoveredBlock470Stack1 recoveredBlock470Stack2 recoveredBlock470Stack3 recoveredBlock470Stack4 recoveredBlock470Stack5 recoveredBlock470Stack6 recoveredBlock470Stack7 recoveredBlock470Stack8 recoveredBlock470PC recoveredBlock470Step recoveredBlock470Done recoveredBlock470Result |
    recoveredBlock470Stack0 := self.
    recoveredBlock470PC := 476.
    recoveredBlock470Done := false.
    [recoveredBlock470Done not] whileTrue: [
        recoveredBlock470Step := recoveredBlock470PC.
        recoveredBlock470Step = 476 ifTrue: [
            recoveredBlock470Stack1 := recoveredBlock470Arg1.
            recoveredBlock470PC := 477.
        ].
        recoveredBlock470Step = 477 ifTrue: [
            recoveredBlock470Stack1 := (recoveredBlock470Stack1) ehooksElementAttributes.
            recoveredBlock470PC := 479.
        ].
        recoveredBlock470Step = 479 ifTrue: [
            recoveredBlock470Stack1 := (recoveredBlock470Stack1) isValidElementAttributes.
            recoveredBlock470PC := 481.
        ].
        recoveredBlock470Step = 481 ifTrue: [
            (recoveredBlock470Stack1) ifTrue: [recoveredBlock470PC := 507] ifFalse: [recoveredBlock470PC := 484].
        ].
        recoveredBlock470Step = 484 ifTrue: [
            recoveredBlock470Stack1 := recoveredBlock470Arg1.
            recoveredBlock470PC := 485.
        ].
        recoveredBlock470Step = 485 ifTrue: [
            recoveredBlock470Stack1 := (recoveredBlock470Stack1) fromVarDecl.
            recoveredBlock470PC := 487.
        ].
        recoveredBlock470Step = 487 ifTrue: [
            recoveredBlock470Stack2 := 270.
            recoveredBlock470PC := 490.
        ].
        recoveredBlock470Step = 490 ifTrue: [
            recoveredBlock470Stack3 := 'access'.
            recoveredBlock470PC := 492.
        ].
        recoveredBlock470Step = 492 ifTrue: [
            recoveredBlock470Stack4 := recoveredBlock470Arg1.
            recoveredBlock470PC := 493.
        ].
        recoveredBlock470Step = 493 ifTrue: [
            recoveredBlock470Stack4 := (recoveredBlock470Stack4) fromVarDecl.
            recoveredBlock470PC := 495.
        ].
        recoveredBlock470Step = 495 ifTrue: [
            recoveredBlock470Stack4 := (recoveredBlock470Stack4) errLabel.
            recoveredBlock470PC := 497.
        ].
        recoveredBlock470Step = 497 ifTrue: [
            recoveredBlock470Stack5 := recoveredBlock470Arg1.
            recoveredBlock470PC := 498.
        ].
        recoveredBlock470Step = 498 ifTrue: [
            recoveredBlock470Stack5 := (recoveredBlock470Stack5) source.
            recoveredBlock470PC := 500.
        ].
        recoveredBlock470Step = 500 ifTrue: [
            (recoveredBlock470Stack1) mdlSemErrNo: (recoveredBlock470Stack2) with: (recoveredBlock470Stack3) with: (recoveredBlock470Stack4) source: (recoveredBlock470Stack5).
            recoveredBlock470PC := 503.
        ].
        recoveredBlock470Step = 503 ifTrue: [
            recoveredBlock470Stack1 := true.
            recoveredBlock470PC := 504.
        ].
        recoveredBlock470Step = 504 ifTrue: [
            recoveredLocal1 := recoveredBlock470Stack1.
            recoveredBlock470PC := 507.
        ].
        recoveredBlock470Step = 507 ifTrue: [
            recoveredBlock470Stack1 := nil.
            recoveredBlock470PC := 508.
        ].
        recoveredBlock470Step = 508 ifTrue: [
            recoveredBlock470Stack2 := recoveredBlock470Arg1.
            recoveredBlock470PC := 509.
        ].
        recoveredBlock470Step = 509 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) fromVarDecl.
            recoveredBlock470PC := 511.
        ].
        recoveredBlock470Step = 511 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) mdlClass.
            recoveredBlock470PC := 513.
        ].
        recoveredBlock470Step = 513 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) isCgArrayType.
            recoveredBlock470PC := 515.
        ].
        recoveredBlock470Step = 515 ifTrue: [
            (recoveredBlock470Stack2) ifTrue: [recoveredBlock470PC := 528] ifFalse: [recoveredBlock470PC := 518].
        ].
        recoveredBlock470Step = 518 ifTrue: [
            recoveredBlock470Stack2 := recoveredBlock470Arg1.
            recoveredBlock470PC := 519.
        ].
        recoveredBlock470Step = 519 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) fromVarDecl.
            recoveredBlock470PC := 521.
        ].
        recoveredBlock470Step = 521 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) mdlClass.
            recoveredBlock470PC := 523.
        ].
        recoveredBlock470Step = 523 ifTrue: [
            recoveredBlock470Stack2 := (recoveredBlock470Stack2) isCgRecordType.
            recoveredBlock470PC := 525.
        ].
        recoveredBlock470Step = 525 ifTrue: [
            (recoveredBlock470Stack2) ifTrue: [recoveredBlock470PC := 528] ifFalse: [recoveredBlock470PC := 566].
        ].
        recoveredBlock470Step = 528 ifTrue: [
            recoveredBlock470PC := 529.
        ].
        recoveredBlock470Step = 529 ifTrue: [
            recoveredBlock470Stack1 := recoveredBlock470Arg1.
            recoveredBlock470PC := 530.
        ].
        recoveredBlock470Step = 530 ifTrue: [
            recoveredBlock470Stack1 := (recoveredBlock470Stack1) fromVarDecl.
            recoveredBlock470PC := 532.
        ].
        recoveredBlock470Step = 532 ifTrue: [
            recoveredBlock470Stack2 := 271.
            recoveredBlock470PC := 536.
        ].
        recoveredBlock470Step = 536 ifTrue: [
            recoveredBlock470Stack3 := recoveredBlock470Arg1.
            recoveredBlock470PC := 537.
        ].
        recoveredBlock470Step = 537 ifTrue: [
            recoveredBlock470Stack3 := (recoveredBlock470Stack3) category.
            recoveredBlock470PC := 539.
        ].
        recoveredBlock470Step = 539 ifTrue: [
            recoveredBlock470Stack3 := (recoveredBlock470Stack3) asString.
            recoveredBlock470PC := 541.
        ].
        recoveredBlock470Step = 541 ifTrue: [
            recoveredBlock470Stack4 := recoveredBlock470Arg1.
            recoveredBlock470PC := 542.
        ].
        recoveredBlock470Step = 542 ifTrue: [
            recoveredBlock470Stack4 := (recoveredBlock470Stack4) fromVarDecl.
            recoveredBlock470PC := 544.
        ].
        recoveredBlock470Step = 544 ifTrue: [
            recoveredBlock470Stack4 := (recoveredBlock470Stack4) errLabel.
            recoveredBlock470PC := 546.
        ].
        recoveredBlock470Step = 546 ifTrue: [
            recoveredBlock470Stack5 := recoveredBlock470Arg1.
            recoveredBlock470PC := 547.
        ].
        recoveredBlock470Step = 547 ifTrue: [
            recoveredBlock470Stack5 := (recoveredBlock470Stack5) fromVarDecl.
            recoveredBlock470PC := 549.
        ].
        recoveredBlock470Step = 549 ifTrue: [
            recoveredBlock470Stack5 := (recoveredBlock470Stack5) scope.
            recoveredBlock470PC := 551.
        ].
        recoveredBlock470Step = 551 ifTrue: [
            recoveredBlock470Stack5 := (recoveredBlock470Stack5) errLabel.
            recoveredBlock470PC := 553.
        ].
        recoveredBlock470Step = 553 ifTrue: [
            recoveredBlock470Stack6 := 'scalar typed elements'.
            recoveredBlock470PC := 555.
        ].
        recoveredBlock470Step = 555 ifTrue: [
            recoveredBlock470Stack7 := recoveredBlock470Arg1.
            recoveredBlock470PC := 556.
        ].
        recoveredBlock470Step = 556 ifTrue: [
            recoveredBlock470Stack7 := (recoveredBlock470Stack7) source.
            recoveredBlock470PC := 558.
        ].
        recoveredBlock470Step = 558 ifTrue: [
            (recoveredBlock470Stack1) mdlSemErrNo: (recoveredBlock470Stack2) with: (recoveredBlock470Stack3) with: (recoveredBlock470Stack4) with: (recoveredBlock470Stack5) with: (recoveredBlock470Stack6) source: (recoveredBlock470Stack7).
            recoveredBlock470PC := 561.
        ].
        recoveredBlock470Step = 561 ifTrue: [
            recoveredBlock470Stack1 := true.
            recoveredBlock470PC := 562.
        ].
        recoveredBlock470Step = 562 ifTrue: [
            recoveredBlock470Stack2 := recoveredBlock470Stack1.
            recoveredBlock470PC := 563.
        ].
        recoveredBlock470Step = 563 ifTrue: [
            recoveredLocal1 := recoveredBlock470Stack2.
            recoveredBlock470PC := 566.
        ].
        recoveredBlock470Step = 566 ifTrue: [
            recoveredBlock470Result := recoveredBlock470Stack1.
            recoveredBlock470Done := true.
        ].
    ].
    recoveredBlock470Result
].
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonWrittenHookVariables.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := [:block2812007cArg1 | 
    | block2812007cValue0 block2812007cValue1 block2812007cValue2 block2812007cValue3 block2812007cValue4 block2812007cValue5 |
    block2812007cValue0 := block2812007cArg1.
    block2812007cValue1 := block2812007cArg1.
    block2812007cValue2 := (block2812007cValue1) label.
    block2812007cValue3 := block2812007cArg1.
    block2812007cValue4 := (block2812007cValue3) name.
    block2812007cValue5 := (block2812007cValue0) mdlWarningNo: (161) with: (block2812007cValue2) with: (block2812007cValue4).
    block2812007cValue5
].
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 610] ifFalse: [recoveredPC := 614].
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

