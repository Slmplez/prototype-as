"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004f11c; bytecode file offset 0x94d048"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
usedTypesTable
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050148; bytecode file offset 0x94d048"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
expander
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053b20; bytecode file offset 0x9505d0"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
sortedList: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20055c50; bytecode file offset 0x952a9c"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
visitMdlNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAcceptNodeVisitor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005cb18; bytecode file offset 0x959680"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016d0ec; bytecode file offset 0xa699b0"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
arXmlTypeFromASCETElement: recoveredArg1 scope: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedTypesTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesApplicationErrorType: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20336d04; bytecode file offset 0xc335d4"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
selectExclusiveAreas: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) mdlLabel.
    recoveredBlock13Value3 := [
    | recoveredBlock13Block27Value0 |
    recoveredBlock13Block27Value0 := recoveredBlock13Arg1.
    recoveredBlock13Block27Value0
].
    recoveredBlock13Value4 := (recoveredBlock13Value0) at: (recoveredBlock13Value2) ifAbsentPut: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:block280ed354Arg1 :block280ed354Arg2 | 
    | block280ed354Value0 block280ed354Value1 block280ed354Value2 block280ed354Value3 block280ed354Value4 |
    block280ed354Value0 := block280ed354Arg2.
    block280ed354Value1 := (block280ed354Value0) mdlLabel.
    block280ed354Value2 := block280ed354Arg1.
    block280ed354Value3 := (block280ed354Value2) mdlLabel.
    block280ed354Value4 := (block280ed354Value1) > (block280ed354Value3).
    block280ed354Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033fad4; bytecode file offset 0xc3c3ac"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
avoidDuplicateParameterAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) argReceiver.
    recoveredBlock19Value3 := (recoveredBlock19Value2) errLabelExtended.
    recoveredBlock19Value4 := [
    | recoveredBlock19Block35Value0 recoveredBlock19Block35Value1 recoveredBlock19Block35Value2 |
    recoveredBlock19Block35Value0 := recoveredLocal1.
    recoveredBlock19Block35Value1 := recoveredBlock19Arg1.
    recoveredBlock19Block35Value2 := (recoveredBlock19Block35Value0) add: (recoveredBlock19Block35Value1).
    recoveredBlock19Block35Value2
].
    recoveredBlock19Value5 := (recoveredBlock19Value0) at: (recoveredBlock19Value3) ifAbsentPut: (recoveredBlock19Value4).
    recoveredBlock19Value5
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) sortedList: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2037ae78; bytecode file offset 0xc77758"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
avoidDuplicateCalls: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) portName.
    recoveredBlock19Value3 := (recoveredBlock19Value2) , ('_').
    recoveredBlock19Value4 := recoveredBlock19Arg1.
    recoveredBlock19Value5 := (recoveredBlock19Value4) operationName.
    recoveredBlock19Value6 := (recoveredBlock19Value3) , (recoveredBlock19Value5).
    recoveredBlock19Value7 := [
    | recoveredBlock19Block44Value0 recoveredBlock19Block44Value1 recoveredBlock19Block44Value2 |
    recoveredBlock19Block44Value0 := recoveredLocal1.
    recoveredBlock19Block44Value1 := recoveredBlock19Arg1.
    recoveredBlock19Block44Value2 := (recoveredBlock19Block44Value0) add: (recoveredBlock19Block44Value1).
    recoveredBlock19Block44Value2
].
    recoveredBlock19Value8 := (recoveredBlock19Value0) at: (recoveredBlock19Value6) ifAbsentPut: (recoveredBlock19Value7).
    recoveredBlock19Value8
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) sortedList: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x203b8430; bytecode file offset 0xcb4d1c"
!SGAbstractAutosarXmlGenerator methodsFor: 'recovered'!
avoidDuplicateDataAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) concreteReceiver.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) accessChain.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) last.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) mdlClass.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isMdlCalPrmInterfaceType.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 71] ifFalse: [recoveredBlock19PC := 42].
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) argReceiver.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) errLabelExtended.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack3 := [
    | recoveredBlock19Block53Value0 recoveredBlock19Block53Value1 recoveredBlock19Block53Value2 |
    recoveredBlock19Block53Value0 := recoveredLocal1.
    recoveredBlock19Block53Value1 := recoveredBlock19Arg1.
    recoveredBlock19Block53Value2 := (recoveredBlock19Block53Value0) add: (recoveredBlock19Block53Value1).
    recoveredBlock19Block53Value2
].
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) ifAbsentPut: (recoveredBlock19Stack3).
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) sortedList: (recoveredValue6).
    ^recoveredValue7
! !

