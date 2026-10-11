"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200405d0; bytecode file offset 0x93d278"
!DBXmlImportDescConfig methodsFor: 'recovered'!
dbXmlAmdType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stepClass.
    recoveredValue1 := (recoveredValue0) dbXmlAmdType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040b40; bytecode file offset 0x93d83c"
!DBXmlImportDescConfig methodsFor: 'recovered'!
database
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) database.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065c3c; bytecode file offset 0x963428"
!DBXmlImportDescConfig methodsFor: 'recovered'!
stepClass
    | recoveredValue0 |
    recoveredValue0 := stepClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066be4; bytecode file offset 0x9646f8"
!DBXmlImportDescConfig methodsFor: 'recovered'!
root
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200685d4; bytecode file offset 0x965b90"
!DBXmlImportDescConfig methodsFor: 'recovered'!
configs
    | recoveredValue0 |
    recoveredValue0 := configs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069410; bytecode file offset 0x966bdc"
!DBXmlImportDescConfig methodsFor: 'recovered'!
default
    | recoveredValue0 |
    recoveredValue0 := default.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a4a4; bytecode file offset 0x967a18"
!DBXmlImportDescConfig methodsFor: 'recovered'!
classConfig
    | recoveredValue0 |
    recoveredValue0 := class.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d0bc; bytecode file offset 0x99997c"
!DBXmlImportDescConfig methodsFor: 'recovered'!
getDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) getDescription.
    recoveredValue2 := (recoveredValue1) , ('[Config]').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b89f4; bytecode file offset 0x9b52b0"
!DBXmlImportDescConfig methodsFor: 'recovered'!
readConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) database.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) makeProxyFromDom: (recoveredValue2) importDesc: (self).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20133004; bytecode file offset 0xa2f8d8"
!DBXmlImportDescConfig methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super printParent: (recoveredValue1) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201655dc; bytecode file offset 0xa61e98"
!DBXmlImportDescConfig methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := default.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := class.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := configs.
    (recoveredValue4) addAll: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20182dac; bytecode file offset 0xa7f670"
!DBXmlImportDescConfig methodsFor: 'recovered'!
printString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := super printString.
    recoveredValue1 := (recoveredValue0) , (' -> ').
    recoveredValue2 := stepClass.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' -> ').
    recoveredValue6 := parent.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20233dbc; bytecode file offset 0xb30678"
!DBXmlImportDescConfig methodsFor: 'recovered'!
configByName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := default.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := configs.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) name.
    recoveredBlock19Value2 := recoveredArg1.
    recoveredBlock19Value3 := (recoveredBlock19Value1) = (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f16f4; bytecode file offset 0xbedfe0"
!DBXmlImportDescConfig methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := ('Die') == ('Call_98591').
    recoveredValue1 := parent.
    recoveredValue2 := (recoveredValue1) proxy.
    recoveredValue3 := [].
    (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    recoveredValue4 := DBXmlImporter.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) initOn: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := stepClass.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := parent.
    recoveredValue12 := (recoveredValue9) initOn: (recoveredValue10) importDesc: (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue13) performStep.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue14) handleIssues.
    recoveredValue15 := ('Kli') == ('Workspace_Performance').
    recoveredValue16 := recoveredArg1.
    (recoveredValue16) dbXmlClearModifyRecursive.
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x202f57bc; bytecode file offset 0xbf207c"
!DBXmlImportDescConfig methodsFor: 'recovered'!
collectOIDs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) oid.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := default.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := default.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) oid.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := configs.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := recoveredBlock34Arg1.
    recoveredBlock34Value2 := (recoveredBlock34Value1) oid.
    recoveredBlock34Value3 := (recoveredBlock34Value0) add: (recoveredBlock34Value2).
    recoveredBlock34Value3
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203dbe74; bytecode file offset 0xcd875c"
!DBXmlImportDescConfig methodsFor: 'recovered'!
asXML
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXmlSupportDOMElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := stepClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbXmlType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'class'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbXmlDesc: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addSubElement: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := default.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := default.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 'default'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbXmlDesc: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) addSubElement: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := configs.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:block280f8004Arg1 :block280f8004Arg2 | 
    | block280f8004Value0 block280f8004Value1 block280f8004Value2 block280f8004Value3 block280f8004Value4 |
    block280f8004Value0 := block280f8004Arg1.
    block280f8004Value1 := (block280f8004Value0) name.
    block280f8004Value2 := block280f8004Arg2.
    block280f8004Value3 := (block280f8004Value2) name.
    block280f8004Value4 := (block280f8004Value1) < (block280f8004Value3).
    block280f8004Value4
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) sorted: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal1.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) dbXmlDesc: ('config').
    recoveredBlock64Value3 := (recoveredBlock64Value0) addSubElement: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f09d0; bytecode file offset 0xced2ac"
!DBXmlImportDescConfig methodsFor: 'recovered'!
initOn: recoveredArg1 parent: recoveredArg2 stepClass: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg2.
    parent := recoveredValue0.
    recoveredValue1 := recoveredArg3.
    stepClass := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (self) readConfig: (recoveredBlock25Value0).
    recoveredBlock25Value2 := recoveredBlock25Value1.
    class := recoveredBlock25Value2.
    recoveredBlock25Value1
].
    (recoveredValue4) optional: ('class') do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    recoveredBlock45Value1 := (self) readConfig: (recoveredBlock45Value0).
    recoveredBlock45Value2 := recoveredBlock45Value1.
    default := recoveredBlock45Value2.
    recoveredBlock45Value1
].
    (recoveredValue6) optional: ('default') do: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 |
    recoveredBlock65Value0 := recoveredLocal1.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (self) readConfig: (recoveredBlock65Value1).
    recoveredBlock65Value3 := (recoveredBlock65Value0) add: (recoveredBlock65Value2).
    recoveredBlock65Value3
].
    (recoveredValue8) multiple: ('config') do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) asArray.
    configs := recoveredValue11.
    ^self
! !

