"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000054; bytecode file offset 0xf194"
!ASDEHooksConfiguration methodsFor: 'recovered'!
allEcuOutputVariables
    | recoveredValue0 |
    recoveredValue0 := (self) outputMapping.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000060; bytecode file offset 0xf194"
!ASDEHooksConfiguration methodsFor: 'recovered'!
allEcuInputVariables
    | recoveredValue0 |
    recoveredValue0 := (self) inputMapping.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200000a8; bytecode file offset 0xf1d8"
!ASDEHooksConfiguration methodsFor: 'recovered'!
getElementForNode: recoveredArg1 project: recoveredArg2 migrationNames: recoveredArg3
    ^nil
! !

"EHOOKS.ic method 0x20000364; bytecode file offset 0xf4ac"
!ASDEHooksConfiguration methodsFor: 'recovered'!
allInputVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) inputMapping.
    recoveredValue1 := (self) collectVariablesFromTable: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20000374; bytecode file offset 0xf4ac"
!ASDEHooksConfiguration methodsFor: 'recovered'!
allOutputVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) outputMapping.
    recoveredValue1 := (self) collectVariablesFromTable: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20000438; bytecode file offset 0xf570"
!ASDEHooksConfiguration methodsFor: 'recovered'!
hasProcessReferences: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) instVarProcessReferences.
    recoveredValue2 := (recoveredValue1) notEmpty.
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000518; bytecode file offset 0xf660"
!ASDEHooksConfiguration methodsFor: 'recovered'!
backendLocation
    | recoveredValue0 |
    recoveredValue0 := backendLocation.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000560; bytecode file offset 0xf6a0"
!ASDEHooksConfiguration methodsFor: 'recovered'!
dispatchPoints
    | recoveredValue0 |
    recoveredValue0 := dispatchPoints.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000584; bytecode file offset 0xf6bc"
!ASDEHooksConfiguration methodsFor: 'recovered'!
project
    | recoveredValue0 |
    recoveredValue0 := project.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200005a8; bytecode file offset 0xf6d8"
!ASDEHooksConfiguration methodsFor: 'recovered'!
eHooksConfigFileName
    | recoveredValue0 |
    recoveredValue0 := eHooksConfigFileName.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200005bc; bytecode file offset 0xf6ec"
!ASDEHooksConfiguration methodsFor: 'recovered'!
bypassFunctions
    | recoveredValue0 |
    recoveredValue0 := bypassFunctions.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200005d0; bytecode file offset 0xf700"
!ASDEHooksConfiguration methodsFor: 'recovered'!
inputMapping
    | recoveredValue0 |
    recoveredValue0 := inputMapping.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200005e4; bytecode file offset 0xf714"
!ASDEHooksConfiguration methodsFor: 'recovered'!
outputMapping
    | recoveredValue0 |
    recoveredValue0 := outputMapping.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000720; bytecode file offset 0xf85c"
!ASDEHooksConfiguration methodsFor: 'recovered'!
fileIsValid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := (self) eHooksConfigFileName.
    recoveredValue2 := (recoveredValue0) exists: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000964; bytecode file offset 0xfab4"
!ASDEHooksConfiguration methodsFor: 'recovered'!
getOutputMappingForAscetVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outputMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x20000978; bytecode file offset 0xfab4"
!ASDEHooksConfiguration methodsFor: 'recovered'!
getInputMappingForAscetVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) inputMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x20000a24; bytecode file offset 0xfb74"
!ASDEHooksConfiguration methodsFor: 'recovered'!
lookupElementOid: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlMatrixYLengthSpecialCall.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) project.
    recoveredValue3 := (recoveredValue0) lookupElementOid: (recoveredValue1) component: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x20000a38; bytecode file offset 0xfb74"
!ASDEHooksConfiguration methodsFor: 'recovered'!
lookupElementName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlMatrixYLengthSpecialCall.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) project.
    recoveredValue3 := (recoveredValue0) lookupElementName: (recoveredValue1) component: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x20000ac0; bytecode file offset 0xfc08"
!ASDEHooksConfiguration methodsFor: 'recovered'!
setBackendLocation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) backendLocation: (recoveredValue0).
    (self) writeASCETConfigFile.
    ^self
! !

"EHOOKS.ic method 0x20000ad0; bytecode file offset 0xfc08"
!ASDEHooksConfiguration methodsFor: 'recovered'!
setIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) identifier: (recoveredValue0).
    (self) writeASCETConfigFile.
    ^self
! !

"EHOOKS.ic method 0x20000afc; bytecode file offset 0xfc34"
!ASDEHooksConfiguration methodsFor: 'recovered'!
backendLocation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    backendLocation := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b18; bytecode file offset 0xfc58"
!ASDEHooksConfiguration methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b3c; bytecode file offset 0xfc7c"
!ASDEHooksConfiguration methodsFor: 'recovered'!
dispatchPoints: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dispatchPoints := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b68; bytecode file offset 0xfc98"
!ASDEHooksConfiguration methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b7c; bytecode file offset 0xfcb4"
!ASDEHooksConfiguration methodsFor: 'recovered'!
eHooksConfigFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eHooksConfigFileName := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b98; bytecode file offset 0xfcc8"
!ASDEHooksConfiguration methodsFor: 'recovered'!
bypassFunctions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bypassFunctions := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000bac; bytecode file offset 0xfcdc"
!ASDEHooksConfiguration methodsFor: 'recovered'!
inputMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inputMapping := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000bc0; bytecode file offset 0xfcf0"
!ASDEHooksConfiguration methodsFor: 'recovered'!
outputMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputMapping := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000f40; bytecode file offset 0x10088"
!ASDEHooksConfiguration methodsFor: 'recovered'!
setOutputMappingTo: recoveredArg1 forAscetVariable: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) setLocalOutputMappingTo: (recoveredValue0) forAscetVariable: (recoveredValue1).
    (self) writeASCETConfigFile.
    ^self
! !

"EHOOKS.ic method 0x20000f50; bytecode file offset 0x10088"
!ASDEHooksConfiguration methodsFor: 'recovered'!
setInputMappingTo: recoveredArg1 forAscetVariable: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) setLocalInputMappingTo: (recoveredValue0) forAscetVariable: (recoveredValue1).
    (self) writeASCETConfigFile.
    ^self
! !

"EHOOKS.ic method 0x20001108; bytecode file offset 0x10248"
!ASDEHooksConfiguration methodsFor: 'recovered'!
getProjectSettings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) project.
    recoveredBlock4Value1 := (recoveredBlock4Value0) generatorSettings.
    recoveredBlock4Value1
].
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) exWhenUndefinedKeyOrValue: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x2000118c; bytecode file offset 0x102c4"
!ASDEHooksConfiguration methodsFor: 'recovered'!
deleteBypassFuncs: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) deleteBypassFuncsLocal: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) writeASCETConfigFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200011dc; bytecode file offset 0x10314"
!ASDEHooksConfiguration methodsFor: 'recovered'!
addBypassFunc
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) addBypassFuncLocal.
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
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) writeASCETConfigFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000128c; bytecode file offset 0x103cc"
!ASDEHooksConfiguration methodsFor: 'recovered'!
getBypassFuncs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28001008Arg1 :block28001008Arg2 | 
    | block28001008Value0 block28001008Value1 block28001008Value2 block28001008Value3 block28001008Value4 |
    block28001008Value0 := block28001008Arg1.
    block28001008Value1 := (block28001008Value0) funcNodeName.
    block28001008Value2 := block28001008Arg2.
    block28001008Value3 := (block28001008Value2) funcNodeName.
    block28001008Value4 := (block28001008Value1) < (block28001008Value3).
    block28001008Value4
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
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000130c; bytecode file offset 0x10440"
!ASDEHooksConfiguration methodsFor: 'recovered'!
identifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := identifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := identifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20001738; bytecode file offset 0x10880"
!ASDEHooksConfiguration methodsFor: 'recovered'!
renameBypassFunc: recoveredArg1 to: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBypassFuncs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := [:block28001104Arg1 | 
    | block28001104Value0 block28001104Value1 |
    block28001104Value0 := block28001104Arg1.
    block28001104Value1 := (block28001104Value0) funcNodeName.
    block28001104Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueStringFor: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) funcNodeName: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20001f44; bytecode file offset 0x11088"
!ASDEHooksConfiguration methodsFor: 'recovered'!
addDispatchPoints: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) dispatchPoints.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includes: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 25] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) dispatchPoints.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) add: (recoveredBlock5Stack2).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    (self) writeASCETConfigFile.
    ^self
! !

"EHOOKS.ic method 0x20002004; bytecode file offset 0x11148"
!ASDEHooksConfiguration methodsFor: 'recovered'!
deleteBypassFuncsLocal: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) bypassFunctions.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := [
    | recoveredBlock5Block14Value0 |
    recoveredBlock5Block14Value0 := (self) runtimeAssert: (false) additionalInfo: ('EHOOKS: bypass function delete error').
    recoveredBlock5Block14Value0
].
    recoveredBlock5Value3 := (recoveredBlock5Value0) remove: (recoveredBlock5Value1) ifAbsent: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x20002168; bytecode file offset 0x112bc"
!ASDEHooksConfiguration methodsFor: 'recovered'!
addBypassFuncLocal
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'bypass_func'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) bypassFunctions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block28001200Arg1 | 
    | block28001200Value0 block28001200Value1 |
    block28001200Value0 := block28001200Arg1.
    block28001200Value1 := (block28001200Value0) funcNodeName.
    block28001200Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ASDEHooksBypassFuncNode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithName: (recoveredStack2) eHooksConfig: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000222c; bytecode file offset 0x11370"
!ASDEHooksConfiguration methodsFor: 'recovered'!
readAttribute: recoveredArg1 inSubElement: recoveredArg2 parent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementsByTagName: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x2000235c; bytecode file offset 0x114b8"
!ASDEHooksConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) dispatchPoints: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) bypassFunctions: (recoveredValue3).
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (self) inputMapping: (recoveredValue5).
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    (self) outputMapping: (recoveredValue7).
    (self) identifier: ('').
    (self) backendLocation: ('').
    ^self
! !

"EHOOKS.ic method 0x200024a0; bytecode file offset 0x115f0"
!ASDEHooksConfiguration methodsFor: 'recovered'!
writeVersionXmlWriter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('Version').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) attr: ('major') int: (6).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) attr: ('minor') int: (2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) attr: ('refresh') int: (0).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) attr: ('build') int: (0).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) closeComplex.
    ^self
! !

"EHOOKS.ic method 0x200026e0; bytecode file offset 0x1182c"
!ASDEHooksConfiguration methodsFor: 'recovered'!
sortedElementsForMapping
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := System.
    recoveredValue5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredLocal2.
    recoveredBlock18Value1 := recoveredLocal3.
    recoveredBlock18Value2 := (self) project.
    recoveredBlock18Value3 := (self) collectElementsForMappingCurrentParentColl: (recoveredBlock18Value0) resultList: (recoveredBlock18Value1) component: (recoveredBlock18Value2) parentLabel: ('').
    recoveredBlock18Value3
].
    (recoveredValue4) showBusyCursorWhile: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    ^recoveredValue6
! !

"EHOOKS.ic method 0x200029cc; bytecode file offset 0x11b10"
!ASDEHooksConfiguration methodsFor: 'recovered'!
assignProcesses: recoveredArg1 toBypassFunc: recoveredArg2 afterIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := 2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ~= (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := 1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3).
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack4 := 2.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addProcess: (recoveredBlock7Stack2) instVarAlias: (recoveredBlock7Stack3) afterIndex: (recoveredBlock7Stack4).
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    (self) writeASCETConfigFile.
    ^self
! !

"EHOOKS.ic method 0x20002db0; bytecode file offset 0x11f04"
!ASDEHooksConfiguration methodsFor: 'recovered'!
collectVariablesFromTable: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedElementsForMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) last.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isImported.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 45] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) keys.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block27Arg1 | 
    | recoveredBlock5Block27Value0 recoveredBlock5Block27Value1 recoveredBlock5Block27Value2 recoveredBlock5Block27Value3 recoveredBlock5Block27Value4 |
    recoveredBlock5Block27Value0 := recoveredBlock5Block27Arg1.
    recoveredBlock5Block27Value1 := (recoveredBlock5Block27Value0) last.
    recoveredBlock5Block27Value2 := recoveredBlock5Arg1.
    recoveredBlock5Block27Value3 := (recoveredBlock5Block27Value2) last.
    recoveredBlock5Block27Value4 := (recoveredBlock5Block27Value1) isSameVarAs: (recoveredBlock5Block27Value3).
    recoveredBlock5Block27Value4
].
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) anySatisfy: (recoveredBlock5Stack2).
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:block280012d8Arg1 | 
    | block280012d8Value0 block280012d8Value1 |
    block280012d8Value0 := block280012d8Arg1.
    block280012d8Value1 := (block280012d8Value0) last.
    block280012d8Value1
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002e7c; bytecode file offset 0x11fe0"
!ASDEHooksConfiguration methodsFor: 'recovered'!
createBypassFuncFromOS: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForKey: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := (self) addBypassFuncLocal.
    recoveredBlock19Value1 := [:recoveredBlock19Block28Arg1 | 
    | recoveredBlock19Block28Value0 recoveredBlock19Block28Value1 recoveredBlock19Block28Value2 recoveredBlock19Block28Value3 recoveredBlock19Block28Value4 recoveredBlock19Block28Value5 recoveredBlock19Block28Value6 |
    recoveredBlock19Block28Value0 := recoveredBlock19Block28Arg1.
    recoveredBlock19Block28Value1 := recoveredBlock19Arg1.
    recoveredBlock19Block28Value2 := (recoveredBlock19Block28Value1) name.
    (recoveredBlock19Block28Value0) funcNodeName: (recoveredBlock19Block28Value2).
    recoveredBlock19Block28Value3 := recoveredBlock19Block28Arg1.
    recoveredBlock19Block28Value4 := recoveredBlock19Arg1.
    recoveredBlock19Block28Value5 := (recoveredBlock19Block28Value4) instVarProcessReferences.
    recoveredBlock19Block28Value6 := (recoveredBlock19Block28Value3) instVarProcessReferences: (recoveredBlock19Block28Value5).
    recoveredBlock19Block28Value6
].
    recoveredBlock19Value2 := (recoveredBlock19Value0) ifNotNil: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) writeASCETConfigFile.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000356c; bytecode file offset 0x126f4"
!ASDEHooksConfiguration methodsFor: 'recovered'!
setLocalInputMappingTo: recoveredArg1 forAscetVariable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := ASDEHooksVariable.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) equals: (recoveredBlock4Stack2).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('wrong parameter').
    recoveredValue1 := [
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg2.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack2 := [:block280014acArg1 | 
    | block280014acValue0 block280014acValue1 |
    block280014acValue0 := block280014acArg1.
    block280014acValue1 := (block280014acValue0) isCollection.
    block280014acValue1
].
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) anySatisfy: (recoveredBlock32Stack2).
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) not.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
    (self) runtimeAssert: (recoveredValue1) additionalInfo: ('wrong parameter').
    recoveredValue2 := (self) inputMapping.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"EHOOKS.ic method 0x2000359c; bytecode file offset 0x126f4"
!ASDEHooksConfiguration methodsFor: 'recovered'!
setLocalOutputMappingTo: recoveredArg1 forAscetVariable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := ASDEHooksVariable.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) equals: (recoveredBlock4Stack2).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('wrong parameter').
    recoveredValue1 := [
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg2.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack2 := [:block280014d0Arg1 | 
    | block280014d0Value0 block280014d0Value1 |
    block280014d0Value0 := block280014d0Arg1.
    block280014d0Value1 := (block280014d0Value0) isCollection.
    block280014d0Value1
].
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) anySatisfy: (recoveredBlock32Stack2).
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) not.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
    (self) runtimeAssert: (recoveredValue1) additionalInfo: ('wrong parameter').
    recoveredValue2 := (self) outputMapping.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"EHOOKS.ic method 0x20003724; bytecode file offset 0x12894"
!ASDEHooksConfiguration methodsFor: 'recovered'!
writeASCETConfigFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) eHooksConfigFileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := CfsFileDescriptor.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) eHooksConfigFileName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) remove: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCfsError.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'EHOOKS: unable to delete ascet config file'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) runtimeAssert: (recoveredStack2) additionalInfo: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) eHooksConfigFileName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ExEHooksFatalError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getASCETConfigFileString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 |
    recoveredBlock55Value0 := recoveredLocal1.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (recoveredBlock55Value0) nextPutAll: (recoveredBlock55Value1).
    recoveredBlock55Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200038e4; bytecode file offset 0x12a38"
!ASDEHooksConfiguration methodsFor: 'recovered'!
collectElementsForMappingCurrentParentColl: recoveredArg1 resultList: recoveredArg2 component: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) copy.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack2) addLast: (recoveredBlock7Stack3).
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isMessage.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 34] ifFalse: [recoveredBlock7PC := 42].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            (recoveredBlock7Stack1) add: (recoveredBlock7Stack2).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isPrimitive.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 77] ifFalse: [recoveredBlock7PC := 52].
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sgClass.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block58Arg1 | 
    | recoveredBlock7Block58Value0 recoveredBlock7Block58Value1 recoveredBlock7Block58Value2 recoveredBlock7Block58Value3 |
    recoveredBlock7Block58Value0 := recoveredBlock7Local1.
    recoveredBlock7Block58Value1 := recoveredArg2.
    recoveredBlock7Block58Value2 := recoveredBlock7Block58Arg1.
    recoveredBlock7Block58Value3 := (self) collectElementsForMappingCurrentParentColl: (recoveredBlock7Block58Value0) resultList: (recoveredBlock7Block58Value1) component: (recoveredBlock7Block58Value2).
    recoveredBlock7Block58Value3
].
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ifNotNil: (recoveredBlock7Stack2).
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) allVariablesDo: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20004678; bytecode file offset 0x137d4"
!ASDEHooksConfiguration methodsFor: 'recovered'!
collectElementsForMappingCurrentParentColl: recoveredArg1 resultList: recoveredArg2 component: recoveredArg3 parentLabel: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includes: (recoveredBlock7Stack3).
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 106] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) copy.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            (recoveredBlock7Stack2) addLast: (recoveredBlock7Stack3).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isMessage.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 48] ifFalse: [recoveredBlock7PC := 64].
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isImported.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 64] ifFalse: [recoveredBlock7PC := 56].
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local2.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            (recoveredBlock7Stack1) add: (recoveredBlock7Stack2).
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 68.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isPrimitive.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 106] ifFalse: [recoveredBlock7PC := 74].
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sgClass.
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block80Arg1 | 
    | recoveredBlock7Block80Value0 recoveredBlock7Block80Value1 recoveredBlock7Block80Value2 recoveredBlock7Block80Value3 recoveredBlock7Block80Value4 |
    recoveredBlock7Block80Value0 := recoveredBlock7Local2.
    recoveredBlock7Block80Value1 := recoveredArg2.
    recoveredBlock7Block80Value2 := recoveredBlock7Block80Arg1.
    recoveredBlock7Block80Value3 := recoveredArg4.
    recoveredBlock7Block80Value4 := (self) collectElementsForMappingCurrentParentColl: (recoveredBlock7Block80Value0) resultList: (recoveredBlock7Block80Value1) component: (recoveredBlock7Block80Value2) parentLabel: (recoveredBlock7Block80Value3).
    recoveredBlock7Block80Value4
].
            recoveredBlock7PC := 100.
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ifNotNil: (recoveredBlock7Stack2).
            recoveredBlock7PC := 102.
        ].
        recoveredBlock7Step = 102 ifTrue: [
            recoveredBlock7Stack2 := nil.
            recoveredBlock7PC := 103.
        ].
        recoveredBlock7Step = 103 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 106.
        ].
        recoveredBlock7Step = 106 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) allVariablesDo: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20004f0c; bytecode file offset 0x140a0"
!ASDEHooksConfiguration methodsFor: 'recovered'!
writeElements: recoveredArg1 xmlWriter: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedElementsForMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block2800177cArg1 :block2800177cArg2 | 
    | block2800177cValue0 block2800177cValue1 block2800177cValue2 block2800177cValue3 block2800177cValue4 block2800177cValue5 block2800177cValue6 |
    block2800177cValue0 := SGIlMatrixYLengthSpecialCall.
    block2800177cValue1 := block2800177cArg1.
    block2800177cValue2 := (block2800177cValue0) createNameChainFor: (block2800177cValue1).
    block2800177cValue3 := SGIlMatrixYLengthSpecialCall.
    block2800177cValue4 := block2800177cArg2.
    block2800177cValue5 := (block2800177cValue3) createNameChainFor: (block2800177cValue4).
    block2800177cValue6 := (block2800177cValue2) < (block2800177cValue5).
    block2800177cValue6
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredLocal1.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) includes: (recoveredBlock38Stack3).
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 56] ifFalse: [recoveredBlock38PC := 146].
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg2.
            recoveredBlock38PC := 60.
        ].
        recoveredBlock38Step = 60 ifTrue: [
            recoveredBlock38Stack2 := 'Element'.
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            (recoveredBlock38Stack1) openComplex: (recoveredBlock38Stack2).
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38Stack3 := [].
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3).
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack2 := [:recoveredBlock38Block74Arg1 | 
    | recoveredBlock38Block74Value0 recoveredBlock38Block74Value1 recoveredBlock38Block74Value2 recoveredBlock38Block74Value3 recoveredBlock38Block74Value4 recoveredBlock38Block74Value5 recoveredBlock38Block74Value6 recoveredBlock38Block74Value7 recoveredBlock38Block74Value8 recoveredBlock38Block74Value9 recoveredBlock38Block74Value10 recoveredBlock38Block74Value11 recoveredBlock38Block74Value12 recoveredBlock38Block74Value13 recoveredBlock38Block74Value14 recoveredBlock38Block74Value15 recoveredBlock38Block74Value16 recoveredBlock38Block74Value17 |
    recoveredBlock38Block74Value0 := recoveredArg2.
    recoveredBlock38Block74Value1 := SGIlMatrixYLengthSpecialCall.
    recoveredBlock38Block74Value2 := recoveredBlock38Arg1.
    recoveredBlock38Block74Value3 := (recoveredBlock38Block74Value1) createOidChainFor: (recoveredBlock38Block74Value2).
    (recoveredBlock38Block74Value0) attr: ('oid') string: (recoveredBlock38Block74Value3).
    recoveredBlock38Block74Value4 := recoveredArg2.
    recoveredBlock38Block74Value5 := SGIlMatrixYLengthSpecialCall.
    recoveredBlock38Block74Value6 := recoveredBlock38Arg1.
    recoveredBlock38Block74Value7 := (recoveredBlock38Block74Value5) createNameChainFor: (recoveredBlock38Block74Value6).
    (recoveredBlock38Block74Value4) attr: ('name') string: (recoveredBlock38Block74Value7).
    recoveredBlock38Block74Value8 := recoveredArg2.
    recoveredBlock38Block74Value9 := recoveredBlock38Block74Arg1.
    recoveredBlock38Block74Value10 := (recoveredBlock38Block74Value9) name.
    (recoveredBlock38Block74Value8) attr: ('ECU_var') string: (recoveredBlock38Block74Value10).
    recoveredBlock38Block74Value11 := recoveredArg2.
    recoveredBlock38Block74Value12 := recoveredBlock38Block74Arg1.
    recoveredBlock38Block74Value13 := (recoveredBlock38Block74Value12) measurementName.
    (recoveredBlock38Block74Value11) attr: ('ECU_measurement') string: (recoveredBlock38Block74Value13).
    recoveredBlock38Block74Value14 := recoveredArg2.
    recoveredBlock38Block74Value15 := recoveredBlock38Block74Arg1.
    recoveredBlock38Block74Value16 := (recoveredBlock38Block74Value15) arrayIndex.
    recoveredBlock38Block74Value17 := (recoveredBlock38Block74Value14) attr: ('ECU_index') int: (recoveredBlock38Block74Value16).
    recoveredBlock38Block74Value17
].
            recoveredBlock38PC := 139.
        ].
        recoveredBlock38Step = 139 ifTrue: [
            (recoveredBlock38Stack1) ifNotNil: (recoveredBlock38Stack2).
            recoveredBlock38PC := 141.
        ].
        recoveredBlock38Step = 141 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg2.
            recoveredBlock38PC := 144.
        ].
        recoveredBlock38Step = 144 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) closeComplex.
            recoveredBlock38PC := 146.
        ].
        recoveredBlock38Step = 146 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200058c4; bytecode file offset 0x14a54"
!ASDEHooksConfiguration methodsFor: 'recovered'!
getElementMappingAssociationsFor: recoveredArg1 unmappedSet: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getElementsByTagName: ('Element').
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) getAttribute: ('oid').
    recoveredBlock16Value2 := [:recoveredBlock16Block29Arg1 | 
    | recoveredBlock16Block29Local1 recoveredBlock16Block29Local2 recoveredBlock16Block29Local3 recoveredBlock16Block29Local4 recoveredBlock16Block29Stack0 recoveredBlock16Block29Stack1 recoveredBlock16Block29Stack2 recoveredBlock16Block29Stack3 recoveredBlock16Block29Stack4 recoveredBlock16Block29Stack5 recoveredBlock16Block29Stack6 recoveredBlock16Block29PC recoveredBlock16Block29Step recoveredBlock16Block29Done recoveredBlock16Block29Result |
    recoveredBlock16Block29Stack0 := self.
    recoveredBlock16Block29PC := 36.
    recoveredBlock16Block29Done := false.
    [recoveredBlock16Block29Done not] whileTrue: [
        recoveredBlock16Block29Step := recoveredBlock16Block29PC.
        recoveredBlock16Block29Step = 36 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Arg1.
            recoveredBlock16Block29PC := 39.
        ].
        recoveredBlock16Block29Step = 39 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) lookupElementOid: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 41.
        ].
        recoveredBlock16Block29Step = 41 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 42.
        ].
        recoveredBlock16Block29Step = 42 ifTrue: [
            recoveredBlock16Block29Local4 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 45.
        ].
        recoveredBlock16Block29Step = 45 ifTrue: [
            (recoveredBlock16Block29Stack0 ~~ nil) ifTrue: [recoveredBlock16Block29PC := 84] ifFalse: [recoveredBlock16Block29PC := 48].
        ].
        recoveredBlock16Block29Step = 48 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 51.
        ].
        recoveredBlock16Block29Step = 51 ifTrue: [
            recoveredBlock16Block29Stack1 := 'name'.
            recoveredBlock16Block29PC := 53.
        ].
        recoveredBlock16Block29Step = 53 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) getAttribute: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 55.
        ].
        recoveredBlock16Block29Step = 55 ifTrue: [
            recoveredBlock16Block29Stack1 := [:recoveredBlock16Block29Block55Arg1 | 
    | recoveredBlock16Block29Block55Stack0 recoveredBlock16Block29Block55Stack1 recoveredBlock16Block29Block55Stack2 recoveredBlock16Block29Block55Stack3 recoveredBlock16Block29Block55Stack4 recoveredBlock16Block29Block55PC recoveredBlock16Block29Block55Step recoveredBlock16Block29Block55Done recoveredBlock16Block29Block55Result |
    recoveredBlock16Block29Block55Stack0 := self.
    recoveredBlock16Block29Block55PC := 62.
    recoveredBlock16Block29Block55Done := false.
    [recoveredBlock16Block29Block55Done not] whileTrue: [
        recoveredBlock16Block29Block55Step := recoveredBlock16Block29Block55PC.
        recoveredBlock16Block29Block55Step = 62 ifTrue: [
            recoveredBlock16Block29Block55Stack1 := nil.
            recoveredBlock16Block29Block55PC := 63.
        ].
        recoveredBlock16Block29Block55Step = 63 ifTrue: [
            recoveredBlock16Block29Block55Stack2 := self.
            recoveredBlock16Block29Block55PC := 64.
        ].
        recoveredBlock16Block29Block55Step = 64 ifTrue: [
            recoveredBlock16Block29Block55Stack3 := recoveredBlock16Block29Block55Arg1.
            recoveredBlock16Block29Block55PC := 65.
        ].
        recoveredBlock16Block29Block55Step = 65 ifTrue: [
            recoveredBlock16Block29Block55Stack2 := (recoveredBlock16Block29Block55Stack2) lookupElementName: (recoveredBlock16Block29Block55Stack3).
            recoveredBlock16Block29Block55PC := 67.
        ].
        recoveredBlock16Block29Block55Step = 67 ifTrue: [
            recoveredBlock16Block29Block55Stack3 := recoveredBlock16Block29Block55Stack2.
            recoveredBlock16Block29Block55PC := 68.
        ].
        recoveredBlock16Block29Block55Step = 68 ifTrue: [
            recoveredBlock16Block29Local4 := recoveredBlock16Block29Block55Stack3.
            recoveredBlock16Block29Block55PC := 71.
        ].
        recoveredBlock16Block29Block55Step = 71 ifTrue: [
            (recoveredBlock16Block29Block55Stack2 ~~ nil) ifTrue: [recoveredBlock16Block29Block55PC := 81] ifFalse: [recoveredBlock16Block29Block55PC := 74].
        ].
        recoveredBlock16Block29Block55Step = 74 ifTrue: [
            recoveredBlock16Block29Block55PC := 75.
        ].
        recoveredBlock16Block29Block55Step = 75 ifTrue: [
            recoveredBlock16Block29Block55Stack1 := recoveredArg2.
            recoveredBlock16Block29Block55PC := 78.
        ].
        recoveredBlock16Block29Block55Step = 78 ifTrue: [
            recoveredBlock16Block29Block55Stack2 := recoveredBlock16Block29Block55Arg1.
            recoveredBlock16Block29Block55PC := 79.
        ].
        recoveredBlock16Block29Block55Step = 79 ifTrue: [
            recoveredBlock16Block29Block55Stack1 := (recoveredBlock16Block29Block55Stack1) add: (recoveredBlock16Block29Block55Stack2).
            recoveredBlock16Block29Block55PC := 81.
        ].
        recoveredBlock16Block29Block55Step = 81 ifTrue: [
            recoveredBlock16Block29Block55Result := recoveredBlock16Block29Block55Stack1.
            recoveredBlock16Block29Block55Done := true.
        ].
    ].
    recoveredBlock16Block29Block55Result
].
            recoveredBlock16Block29PC := 82.
        ].
        recoveredBlock16Block29Step = 82 ifTrue: [
            (recoveredBlock16Block29Stack0) ifNotNil: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 84.
        ].
        recoveredBlock16Block29Step = 84 ifTrue: [
            recoveredBlock16Block29Stack0 := nil.
            recoveredBlock16Block29PC := 85.
        ].
        recoveredBlock16Block29Step = 85 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Local4.
            recoveredBlock16Block29PC := 88.
        ].
        recoveredBlock16Block29Step = 88 ifTrue: [
            (recoveredBlock16Block29Stack1 == nil) ifTrue: [recoveredBlock16Block29PC := 204] ifFalse: [recoveredBlock16Block29PC := 92].
        ].
        recoveredBlock16Block29Step = 92 ifTrue: [
            recoveredBlock16Block29PC := 93.
        ].
        recoveredBlock16Block29Step = 93 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 96.
        ].
        recoveredBlock16Block29Step = 96 ifTrue: [
            recoveredBlock16Block29Stack1 := 'ECU_index'.
            recoveredBlock16Block29PC := 98.
        ].
        recoveredBlock16Block29Step = 98 ifTrue: [
            recoveredBlock16Block29Stack2 := nil.
            recoveredBlock16Block29PC := 99.
        ].
        recoveredBlock16Block29Step = 99 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) getAttribute: (recoveredBlock16Block29Stack1) default: (recoveredBlock16Block29Stack2).
            recoveredBlock16Block29PC := 101.
        ].
        recoveredBlock16Block29Step = 101 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 102.
        ].
        recoveredBlock16Block29Step = 102 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 105.
        ].
        recoveredBlock16Block29Step = 105 ifTrue: [
            (recoveredBlock16Block29Stack0 ~~ nil) ifTrue: [recoveredBlock16Block29PC := 116] ifFalse: [recoveredBlock16Block29PC := 108].
        ].
        recoveredBlock16Block29Step = 108 ifTrue: [
            recoveredBlock16Block29Stack0 := -1.
            recoveredBlock16Block29PC := 110.
        ].
        recoveredBlock16Block29Step = 110 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 113.
        ].
        recoveredBlock16Block29Step = 113 ifTrue: [
            recoveredBlock16Block29PC := 124.
        ].
        recoveredBlock16Block29Step = 116 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Block29Local2.
            recoveredBlock16Block29PC := 119.
        ].
        recoveredBlock16Block29Step = 119 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) asInteger.
            recoveredBlock16Block29PC := 121.
        ].
        recoveredBlock16Block29Step = 121 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 124.
        ].
        recoveredBlock16Block29Step = 124 ifTrue: [
            recoveredBlock16Block29Stack0 := nil.
            recoveredBlock16Block29PC := 125.
        ].
        recoveredBlock16Block29Step = 125 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 128.
        ].
        recoveredBlock16Block29Step = 128 ifTrue: [
            recoveredBlock16Block29Stack2 := 'ECU_var'.
            recoveredBlock16Block29PC := 130.
        ].
        recoveredBlock16Block29Step = 130 ifTrue: [
            recoveredBlock16Block29Stack1 := (recoveredBlock16Block29Stack1) getAttribute: (recoveredBlock16Block29Stack2).
            recoveredBlock16Block29PC := 132.
        ].
        recoveredBlock16Block29Step = 132 ifTrue: [
            recoveredBlock16Block29Stack2 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 133.
        ].
        recoveredBlock16Block29Step = 133 ifTrue: [
            recoveredBlock16Block29Local3 := recoveredBlock16Block29Stack2.
            recoveredBlock16Block29PC := 136.
        ].
        recoveredBlock16Block29Step = 136 ifTrue: [
            (recoveredBlock16Block29Stack1 == nil) ifTrue: [recoveredBlock16Block29PC := 200] ifFalse: [recoveredBlock16Block29PC := 140].
        ].
        recoveredBlock16Block29Step = 140 ifTrue: [
            recoveredBlock16Block29PC := 141.
        ].
        recoveredBlock16Block29Step = 141 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 144.
        ].
        recoveredBlock16Block29Step = 144 ifTrue: [
            recoveredBlock16Block29Stack1 := 'ECU_measurement'.
            recoveredBlock16Block29PC := 146.
        ].
        recoveredBlock16Block29Step = 146 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) getAttribute: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 148.
        ].
        recoveredBlock16Block29Step = 148 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 149.
        ].
        recoveredBlock16Block29Step = 149 ifTrue: [
            recoveredBlock16Block29Local1 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 152.
        ].
        recoveredBlock16Block29Step = 152 ifTrue: [
            (recoveredBlock16Block29Stack0 ~~ nil) ifTrue: [recoveredBlock16Block29PC := 162] ifFalse: [recoveredBlock16Block29PC := 156].
        ].
        recoveredBlock16Block29Step = 156 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Block29Local3.
            recoveredBlock16Block29PC := 159.
        ].
        recoveredBlock16Block29Step = 159 ifTrue: [
            recoveredBlock16Block29Local1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 162.
        ].
        recoveredBlock16Block29Step = 162 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredLocal1.
            recoveredBlock16Block29PC := 165.
        ].
        recoveredBlock16Block29Step = 165 ifTrue: [
            recoveredBlock16Block29Stack1 := Association.
            recoveredBlock16Block29PC := 167.
        ].
        recoveredBlock16Block29Step = 167 ifTrue: [
            recoveredBlock16Block29Stack2 := recoveredBlock16Block29Local4.
            recoveredBlock16Block29PC := 170.
        ].
        recoveredBlock16Block29Step = 170 ifTrue: [
            recoveredBlock16Block29Stack3 := ASDEHooksVariable.
            recoveredBlock16Block29PC := 172.
        ].
        recoveredBlock16Block29Step = 172 ifTrue: [
            recoveredBlock16Block29Stack3 := (recoveredBlock16Block29Stack3) create.
            recoveredBlock16Block29PC := 174.
        ].
        recoveredBlock16Block29Step = 174 ifTrue: [
            recoveredBlock16Block29Stack4 := recoveredBlock16Block29Stack3.
            recoveredBlock16Block29PC := 175.
        ].
        recoveredBlock16Block29Step = 175 ifTrue: [
            recoveredBlock16Block29Stack5 := recoveredBlock16Block29Local3.
            recoveredBlock16Block29PC := 178.
        ].
        recoveredBlock16Block29Step = 178 ifTrue: [
            (recoveredBlock16Block29Stack4) name: (recoveredBlock16Block29Stack5).
            recoveredBlock16Block29Stack4 := recoveredBlock16Block29Stack3.
            recoveredBlock16Block29PC := 181.
        ].
        recoveredBlock16Block29Step = 181 ifTrue: [
            recoveredBlock16Block29Stack5 := recoveredBlock16Block29Local1.
            recoveredBlock16Block29PC := 184.
        ].
        recoveredBlock16Block29Step = 184 ifTrue: [
            (recoveredBlock16Block29Stack4) measurementName: (recoveredBlock16Block29Stack5).
            recoveredBlock16Block29Stack4 := recoveredBlock16Block29Stack3.
            recoveredBlock16Block29PC := 187.
        ].
        recoveredBlock16Block29Step = 187 ifTrue: [
            recoveredBlock16Block29Stack5 := recoveredBlock16Block29Local2.
            recoveredBlock16Block29PC := 190.
        ].
        recoveredBlock16Block29Step = 190 ifTrue: [
            (recoveredBlock16Block29Stack4) arrayIndex: (recoveredBlock16Block29Stack5).
            recoveredBlock16Block29PC := 192.
        ].
        recoveredBlock16Block29Step = 192 ifTrue: [
            recoveredBlock16Block29Stack1 := (recoveredBlock16Block29Stack1) key: (recoveredBlock16Block29Stack2) value: (recoveredBlock16Block29Stack3).
            recoveredBlock16Block29PC := 194.
        ].
        recoveredBlock16Block29Step = 194 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) add: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 196.
        ].
        recoveredBlock16Block29Step = 196 ifTrue: [
            recoveredBlock16Block29Stack1 := nil.
            recoveredBlock16Block29PC := 197.
        ].
        recoveredBlock16Block29Step = 197 ifTrue: [
            recoveredBlock16Block29Local1 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 200.
        ].
        recoveredBlock16Block29Step = 200 ifTrue: [
            recoveredBlock16Block29Stack1 := nil.
            recoveredBlock16Block29PC := 201.
        ].
        recoveredBlock16Block29Step = 201 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 204.
        ].
        recoveredBlock16Block29Step = 204 ifTrue: [
            recoveredBlock16Block29Result := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29Done := true.
        ].
    ].
    recoveredBlock16Block29Result
].
    recoveredBlock16Value3 := (recoveredBlock16Value1) ifNotNil: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"EHOOKS.ic method 0x20006a7c; bytecode file offset 0x15c98"
!ASDEHooksConfiguration methodsFor: 'recovered'!
getASCETConfigFileString
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 |
    recoveredValue0 := EtasAPIAsap2Item.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := SGAggregatedSourceFileStructureStrategy.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) initOn: (recoveredValue4) filename: (nil) schema: (nil) sign: (false).
    recoveredValue5 := recoveredLocal2.
    (recoveredValue5) openComplex: ('OEMProject').
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) openComplex: ('FormatVersion').
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) attr: ('major') int: (6).
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) attr: ('minor') int: (1).
    recoveredValue9 := recoveredLocal2.
    (recoveredValue9) closeComplex.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue10) openComplex: ('General').
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) openComplex: ('ProjectInfo').
    recoveredValue12 := recoveredLocal2.
    (self) writeVersionXmlWriter: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    (recoveredValue13) openComplex: ('CreatorTool').
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) attr: ('identifier') string: ('ASCET').
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) attr: ('name') string: ('ASCET').
    recoveredValue16 := recoveredLocal2.
    (self) writeVersionXmlWriter: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    (recoveredValue17) closeComplex.
    recoveredValue18 := recoveredLocal2.
    (recoveredValue18) closeComplex.
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) openComplex: ('SourceFiles').
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) openComplex: ('eHooksConfig').
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (self) identifier.
    (recoveredValue21) attr: ('eHooksIdentifier') string: (recoveredValue22).
    recoveredValue23 := recoveredLocal2.
    recoveredValue24 := (self) backendLocation.
    (recoveredValue23) attr: ('eHooksBackendLocation') string: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    (recoveredValue25) closeComplex.
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) closeComplex.
    recoveredValue27 := recoveredLocal2.
    (recoveredValue27) openComplex: ('Build').
    recoveredValue28 := recoveredLocal2.
    (recoveredValue28) openComplex: ('Options').
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (self) getProjectSettings.
    recoveredValue31 := (recoveredValue30) eHooksBuildOptions.
    (recoveredValue29) pcData: (recoveredValue31).
    recoveredValue32 := recoveredLocal2.
    (recoveredValue32) closeComplex.
    recoveredValue33 := recoveredLocal2.
    (recoveredValue33) closeComplex.
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) closeComplex.
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) openComplex: ('Mapping').
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) openComplex: ('Inputs').
    recoveredValue37 := (self) inputMapping.
    recoveredValue38 := recoveredLocal2.
    (self) writeElements: (recoveredValue37) xmlWriter: (recoveredValue38).
    recoveredValue39 := recoveredLocal2.
    (recoveredValue39) closeComplex.
    recoveredValue40 := recoveredLocal2.
    (recoveredValue40) openComplex: ('Outputs').
    recoveredValue41 := (self) outputMapping.
    recoveredValue42 := recoveredLocal2.
    (self) writeElements: (recoveredValue41) xmlWriter: (recoveredValue42).
    recoveredValue43 := recoveredLocal2.
    (recoveredValue43) closeComplex.
    recoveredValue44 := recoveredLocal2.
    (recoveredValue44) closeComplex.
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) openComplex: ('Functions').
    recoveredValue46 := (self) bypassFunctions.
    recoveredValue47 := [:recoveredBlock266Arg1 | 
    | recoveredBlock266Value0 recoveredBlock266Value1 recoveredBlock266Value2 recoveredBlock266Value3 recoveredBlock266Value4 recoveredBlock266Value5 recoveredBlock266Value6 recoveredBlock266Value7 recoveredBlock266Value8 recoveredBlock266Value9 recoveredBlock266Value10 recoveredBlock266Value11 recoveredBlock266Value12 recoveredBlock266Value13 recoveredBlock266Value14 recoveredBlock266Value15 recoveredBlock266Value16 |
    recoveredBlock266Value0 := recoveredLocal2.
    (recoveredBlock266Value0) openComplex: ('Function').
    recoveredBlock266Value1 := recoveredLocal2.
    recoveredBlock266Value2 := recoveredBlock266Arg1.
    recoveredBlock266Value3 := (recoveredBlock266Value2) funcNodeName.
    (recoveredBlock266Value1) attr: ('name') string: (recoveredBlock266Value3).
    recoveredBlock266Value4 := recoveredLocal2.
    recoveredBlock266Value5 := recoveredBlock266Arg1.
    recoveredBlock266Value6 := (recoveredBlock266Value5) funcNodeName.
    (recoveredBlock266Value4) attr: ('identifier') string: (recoveredBlock266Value6).
    recoveredBlock266Value7 := recoveredBlock266Arg1.
    recoveredBlock266Value8 := (recoveredBlock266Value7) dispatchPoint.
    recoveredBlock266Value9 := [:recoveredBlock266Block308Arg1 | 
    | recoveredBlock266Block308Value0 recoveredBlock266Block308Value1 recoveredBlock266Block308Value2 recoveredBlock266Block308Value3 recoveredBlock266Block308Value4 recoveredBlock266Block308Value5 recoveredBlock266Block308Value6 recoveredBlock266Block308Value7 |
    recoveredBlock266Block308Value0 := recoveredLocal2.
    (recoveredBlock266Block308Value0) openComplex: ('Dispatch').
    recoveredBlock266Block308Value1 := recoveredLocal2.
    recoveredBlock266Block308Value2 := recoveredBlock266Block308Arg1.
    (recoveredBlock266Block308Value1) attr: ('name') string: (recoveredBlock266Block308Value2).
    recoveredBlock266Block308Value3 := recoveredBlock266Arg1.
    recoveredBlock266Block308Value4 := (recoveredBlock266Block308Value3) period.
    recoveredBlock266Block308Value5 := [:recoveredBlock266Block308Block334Arg1 | 
    | recoveredBlock266Block308Block334Value0 recoveredBlock266Block308Block334Value1 recoveredBlock266Block308Block334Value2 |
    recoveredBlock266Block308Block334Value0 := recoveredLocal2.
    recoveredBlock266Block308Block334Value1 := recoveredBlock266Block308Block334Arg1.
    recoveredBlock266Block308Block334Value2 := (recoveredBlock266Block308Block334Value0) attr: ('period') double: (recoveredBlock266Block308Block334Value1).
    recoveredBlock266Block308Block334Value2
].
    (recoveredBlock266Block308Value4) ifNotNil: (recoveredBlock266Block308Value5).
    recoveredBlock266Block308Value6 := recoveredLocal2.
    recoveredBlock266Block308Value7 := (recoveredBlock266Block308Value6) closeComplex.
    recoveredBlock266Block308Value7
].
    (recoveredBlock266Value8) ifNotNil: (recoveredBlock266Value9).
    recoveredBlock266Value10 := recoveredLocal2.
    (recoveredBlock266Value10) openComplex: ('Processes').
    recoveredBlock266Value11 := recoveredBlock266Arg1.
    recoveredBlock266Value12 := (recoveredBlock266Value11) instVarProcessReferences.
    recoveredBlock266Value13 := [:recoveredBlock266Block371Arg1 :recoveredBlock266Block371Arg2 | 
    | recoveredBlock266Block371Value0 recoveredBlock266Block371Value1 recoveredBlock266Block371Value2 recoveredBlock266Block371Value3 recoveredBlock266Block371Value4 recoveredBlock266Block371Value5 recoveredBlock266Block371Value6 recoveredBlock266Block371Value7 recoveredBlock266Block371Value8 recoveredBlock266Block371Value9 recoveredBlock266Block371Value10 recoveredBlock266Block371Value11 recoveredBlock266Block371Value12 |
    recoveredBlock266Block371Value0 := recoveredLocal2.
    (recoveredBlock266Block371Value0) openComplex: ('Process').
    recoveredBlock266Block371Value1 := recoveredLocal2.
    recoveredBlock266Block371Value2 := recoveredBlock266Arg1.
    recoveredBlock266Block371Value3 := recoveredBlock266Block371Arg1.
    recoveredBlock266Block371Value4 := (recoveredBlock266Block371Value2) instVarProcessReferenceLabelFor: (recoveredBlock266Block371Value3).
    (recoveredBlock266Block371Value1) attr: ('name') string: (recoveredBlock266Block371Value4).
    recoveredBlock266Block371Value5 := recoveredLocal2.
    recoveredBlock266Block371Value6 := recoveredBlock266Arg1.
    recoveredBlock266Block371Value7 := recoveredBlock266Block371Arg1.
    recoveredBlock266Block371Value8 := (recoveredBlock266Block371Value6) instVarProcessReferenceStringFor: (recoveredBlock266Block371Value7).
    (recoveredBlock266Block371Value5) attr: ('oid') string: (recoveredBlock266Block371Value8).
    recoveredBlock266Block371Value9 := recoveredLocal2.
    recoveredBlock266Block371Value10 := recoveredBlock266Block371Arg2.
    (recoveredBlock266Block371Value9) attr: ('order_idx') int: (recoveredBlock266Block371Value10).
    recoveredBlock266Block371Value11 := recoveredLocal2.
    recoveredBlock266Block371Value12 := (recoveredBlock266Block371Value11) closeComplex.
    recoveredBlock266Block371Value12
].
    (recoveredBlock266Value12) doWithIndex: (recoveredBlock266Value13).
    recoveredBlock266Value14 := recoveredLocal2.
    (recoveredBlock266Value14) closeComplex.
    recoveredBlock266Value15 := recoveredLocal2.
    recoveredBlock266Value16 := (recoveredBlock266Value15) closeComplex.
    recoveredBlock266Value16
].
    (recoveredValue46) do: (recoveredValue47).
    recoveredValue48 := recoveredLocal2.
    (recoveredValue48) closeComplex.
    recoveredValue49 := recoveredLocal2.
    (recoveredValue49) openComplex: ('Cache').
    recoveredValue50 := recoveredLocal2.
    (recoveredValue50) openComplex: ('Inputs').
    recoveredValue51 := recoveredLocal2.
    (recoveredValue51) closeComplex.
    recoveredValue52 := recoveredLocal2.
    (recoveredValue52) openComplex: ('Outputs').
    recoveredValue53 := recoveredLocal2.
    (recoveredValue53) closeComplex.
    recoveredValue54 := recoveredLocal2.
    (recoveredValue54) closeComplex.
    recoveredValue55 := recoveredLocal2.
    (recoveredValue55) closeComplex.
    recoveredValue56 := recoveredLocal2.
    (recoveredValue56) closeComplex.
    recoveredValue57 := recoveredLocal2.
    recoveredValue58 := (recoveredValue57) driver.
    recoveredValue59 := (recoveredValue58) getResult.
    recoveredValue60 := (recoveredValue59) asXMLSubString.
    ^recoveredValue60
! !

"EHOOKS.ic method 0x20006d6c; bytecode file offset 0x15f94"
!ASDEHooksConfiguration methodsFor: 'recovered'!
readASCETConfigFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) eHooksConfigFileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 |
    recoveredBlock24Value0 := SGParseProtocolStreamDummy.
    recoveredBlock24Value1 := (recoveredBlock24Value0) new.
    recoveredBlock24Value2 := recoveredLocal4.
    recoveredBlock24Value3 := [
    | recoveredBlock24Block37Value0 |
    recoveredBlock24Block37Value0 := (self) runtimeAssert: (false) additionalInfo: ('EHOOKS: Unable to parse file').
    recoveredBlock24Block37Value0
].
    recoveredBlock24Value4 := (recoveredBlock24Value1) parseStream: (recoveredBlock24Value2) ifFail: (recoveredBlock24Value3).
    recoveredBlock24Value5 := [:recoveredBlock24Block52Arg1 | 
    | recoveredBlock24Block52Stack0 recoveredBlock24Block52Stack1 recoveredBlock24Block52Stack2 recoveredBlock24Block52Stack3 recoveredBlock24Block52PC recoveredBlock24Block52Step recoveredBlock24Block52Done recoveredBlock24Block52Result |
    recoveredBlock24Block52Stack0 := self.
    recoveredBlock24Block52PC := 58.
    recoveredBlock24Block52Done := false.
    [recoveredBlock24Block52Done not] whileTrue: [
        recoveredBlock24Block52Step := recoveredBlock24Block52PC.
        recoveredBlock24Block52Step = 58 ifTrue: [
            recoveredBlock24Block52Stack1 := recoveredBlock24Block52Arg1.
            recoveredBlock24Block52PC := 59.
        ].
        recoveredBlock24Block52Step = 59 ifTrue: [
            recoveredBlock24Block52Stack2 := 'OEMProject\General'.
            recoveredBlock24Block52PC := 61.
        ].
        recoveredBlock24Block52Step = 61 ifTrue: [
            recoveredBlock24Block52Stack1 := (recoveredBlock24Block52Stack1) getElementsByTagPath: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 63.
        ].
        recoveredBlock24Block52Step = 63 ifTrue: [
            recoveredBlock24Block52Stack2 := [:recoveredBlock24Block52Block63Arg1 | 
    | recoveredBlock24Block52Block63Value0 recoveredBlock24Block52Block63Value1 recoveredBlock24Block52Block63Value2 recoveredBlock24Block52Block63Value3 |
    recoveredBlock24Block52Block63Value0 := recoveredBlock24Block52Block63Arg1.
    recoveredBlock24Block52Block63Value1 := (recoveredBlock24Block52Block63Value0) getElementByTagName: ('SourceFiles').
    recoveredBlock24Block52Block63Value2 := [:recoveredBlock24Block52Block63Block75Arg1 | 
    | recoveredBlock24Block52Block63Block75Value0 recoveredBlock24Block52Block63Block75Value1 recoveredBlock24Block52Block63Block75Value2 recoveredBlock24Block52Block63Block75Value3 recoveredBlock24Block52Block63Block75Value4 recoveredBlock24Block52Block63Block75Value5 recoveredBlock24Block52Block63Block75Value6 |
    recoveredBlock24Block52Block63Block75Value0 := recoveredBlock24Block52Block63Block75Arg1.
    recoveredBlock24Block52Block63Block75Value1 := (self) readAttribute: ('eHooksIdentifier') inSubElement: ('eHooksConfig') parent: (recoveredBlock24Block52Block63Block75Value0).
    recoveredBlock24Block52Block63Block75Value2 := [:recoveredBlock24Block52Block63Block75Block90Arg1 | 
    | recoveredBlock24Block52Block63Block75Block90Value0 recoveredBlock24Block52Block63Block75Block90Value1 |
    recoveredBlock24Block52Block63Block75Block90Value0 := recoveredBlock24Block52Block63Block75Block90Arg1.
    recoveredBlock24Block52Block63Block75Block90Value1 := (self) identifier: (recoveredBlock24Block52Block63Block75Block90Value0).
    recoveredBlock24Block52Block63Block75Block90Value1
].
    (recoveredBlock24Block52Block63Block75Value1) ifNotNil: (recoveredBlock24Block52Block63Block75Value2).
    recoveredBlock24Block52Block63Block75Value3 := recoveredBlock24Block52Block63Block75Arg1.
    recoveredBlock24Block52Block63Block75Value4 := (self) readAttribute: ('eHooksBackendLocation') inSubElement: ('eHooksConfig') parent: (recoveredBlock24Block52Block63Block75Value3).
    recoveredBlock24Block52Block63Block75Value5 := [:recoveredBlock24Block52Block63Block75Block111Arg1 | 
    | recoveredBlock24Block52Block63Block75Block111Value0 recoveredBlock24Block52Block63Block75Block111Value1 |
    recoveredBlock24Block52Block63Block75Block111Value0 := recoveredBlock24Block52Block63Block75Block111Arg1.
    recoveredBlock24Block52Block63Block75Block111Value1 := (self) backendLocation: (recoveredBlock24Block52Block63Block75Block111Value0).
    recoveredBlock24Block52Block63Block75Block111Value1
].
    recoveredBlock24Block52Block63Block75Value6 := (recoveredBlock24Block52Block63Block75Value4) ifNotNil: (recoveredBlock24Block52Block63Block75Value5).
    recoveredBlock24Block52Block63Block75Value6
].
    recoveredBlock24Block52Block63Value3 := (recoveredBlock24Block52Block63Value1) ifNotNil: (recoveredBlock24Block52Block63Value2).
    recoveredBlock24Block52Block63Value3
].
            recoveredBlock24Block52PC := 128.
        ].
        recoveredBlock24Block52Step = 128 ifTrue: [
            (recoveredBlock24Block52Stack1) ifNotNil: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 130.
        ].
        recoveredBlock24Block52Step = 130 ifTrue: [
            recoveredBlock24Block52Stack1 := recoveredBlock24Block52Arg1.
            recoveredBlock24Block52PC := 131.
        ].
        recoveredBlock24Block52Step = 131 ifTrue: [
            recoveredBlock24Block52Stack2 := 'OEMProject\Cache'.
            recoveredBlock24Block52PC := 133.
        ].
        recoveredBlock24Block52Step = 133 ifTrue: [
            recoveredBlock24Block52Stack1 := (recoveredBlock24Block52Stack1) getElementsByTagPath: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 135.
        ].
        recoveredBlock24Block52Step = 135 ifTrue: [
            recoveredBlock24Block52Stack2 := [:block28001ab8Arg1 | 
    | block28001ab8Stack0 block28001ab8Stack1 block28001ab8Stack2 block28001ab8Stack3 block28001ab8PC block28001ab8Step block28001ab8Done block28001ab8Result |
    block28001ab8Stack0 := self.
    block28001ab8PC := 4.
    block28001ab8Done := false.
    [block28001ab8Done not] whileTrue: [
        block28001ab8Step := block28001ab8PC.
        block28001ab8Step = 4 ifTrue: [
            block28001ab8Stack1 := block28001ab8Arg1.
            block28001ab8PC := 5.
        ].
        block28001ab8Step = 5 ifTrue: [
            block28001ab8Stack2 := 'Inputs'.
            block28001ab8PC := 7.
        ].
        block28001ab8Step = 7 ifTrue: [
            block28001ab8Stack1 := (block28001ab8Stack1) getElementByTagName: (block28001ab8Stack2).
            block28001ab8PC := 9.
        ].
        block28001ab8Step = 9 ifTrue: [
            block28001ab8Stack2 := [:block28001adcArg1 | 
    nil
].
            block28001ab8PC := 11.
        ].
        block28001ab8Step = 11 ifTrue: [
            block28001ab8PC := 16.
        ].
        block28001ab8Step = 16 ifTrue: [
            (block28001ab8Stack1) ifNotNil: (block28001ab8Stack2).
            block28001ab8PC := 18.
        ].
        block28001ab8Step = 18 ifTrue: [
            block28001ab8Stack1 := block28001ab8Arg1.
            block28001ab8PC := 19.
        ].
        block28001ab8Step = 19 ifTrue: [
            block28001ab8Stack2 := 'Outputs'.
            block28001ab8PC := 21.
        ].
        block28001ab8Step = 21 ifTrue: [
            block28001ab8Stack1 := (block28001ab8Stack1) getElementByTagName: (block28001ab8Stack2).
            block28001ab8PC := 23.
        ].
        block28001ab8Step = 23 ifTrue: [
            block28001ab8Stack2 := [:block28001b00Arg1 | 
    nil
].
            block28001ab8PC := 25.
        ].
        block28001ab8Step = 25 ifTrue: [
            block28001ab8PC := 30.
        ].
        block28001ab8Step = 30 ifTrue: [
            block28001ab8Stack1 := (block28001ab8Stack1) ifNotNil: (block28001ab8Stack2).
            block28001ab8PC := 32.
        ].
        block28001ab8Step = 32 ifTrue: [
            block28001ab8Result := block28001ab8Stack1.
            block28001ab8Done := true.
        ].
    ].
    block28001ab8Result
].
            recoveredBlock24Block52PC := 137.
        ].
        recoveredBlock24Block52Step = 137 ifTrue: [
            recoveredBlock24Block52PC := 169.
        ].
        recoveredBlock24Block52Step = 169 ifTrue: [
            (recoveredBlock24Block52Stack1) ifNotNil: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 171.
        ].
        recoveredBlock24Block52Step = 171 ifTrue: [
            recoveredBlock24Block52Stack1 := recoveredBlock24Block52Arg1.
            recoveredBlock24Block52PC := 172.
        ].
        recoveredBlock24Block52Step = 172 ifTrue: [
            recoveredBlock24Block52Stack2 := 'OEMProject\Mapping'.
            recoveredBlock24Block52PC := 174.
        ].
        recoveredBlock24Block52Step = 174 ifTrue: [
            recoveredBlock24Block52Stack1 := (recoveredBlock24Block52Stack1) getElementsByTagPath: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 176.
        ].
        recoveredBlock24Block52Step = 176 ifTrue: [
            recoveredBlock24Block52Stack2 := [:recoveredBlock24Block52Block176Arg1 | 
    | recoveredBlock24Block52Block176Local1 recoveredBlock24Block52Block176Stack0 recoveredBlock24Block52Block176Stack1 recoveredBlock24Block52Block176Stack2 recoveredBlock24Block52Block176Stack3 recoveredBlock24Block52Block176PC recoveredBlock24Block52Block176Step recoveredBlock24Block52Block176Done recoveredBlock24Block52Block176Result |
    recoveredBlock24Block52Block176Stack0 := self.
    recoveredBlock24Block52Block176PC := 182.
    recoveredBlock24Block52Block176Done := false.
    [recoveredBlock24Block52Block176Done not] whileTrue: [
        recoveredBlock24Block52Block176Step := recoveredBlock24Block52Block176PC.
        recoveredBlock24Block52Block176Step = 182 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := Set.
            recoveredBlock24Block52Block176PC := 184.
        ].
        recoveredBlock24Block52Block176Step = 184 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := (recoveredBlock24Block52Block176Stack1) new.
            recoveredBlock24Block52Block176PC := 186.
        ].
        recoveredBlock24Block52Block176Step = 186 ifTrue: [
            recoveredBlock24Block52Block176Local1 := recoveredBlock24Block52Block176Stack1.
            recoveredBlock24Block52Block176PC := 189.
        ].
        recoveredBlock24Block52Block176Step = 189 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := recoveredBlock24Block52Block176Arg1.
            recoveredBlock24Block52Block176PC := 192.
        ].
        recoveredBlock24Block52Block176Step = 192 ifTrue: [
            recoveredBlock24Block52Block176Stack2 := 'Inputs'.
            recoveredBlock24Block52Block176PC := 194.
        ].
        recoveredBlock24Block52Block176Step = 194 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := (recoveredBlock24Block52Block176Stack1) getElementsByTagName: (recoveredBlock24Block52Block176Stack2).
            recoveredBlock24Block52Block176PC := 196.
        ].
        recoveredBlock24Block52Block176Step = 196 ifTrue: [
            recoveredBlock24Block52Block176Stack2 := [:recoveredBlock24Block52Block176Block196Arg1 | 
    | recoveredBlock24Block52Block176Block196Value0 recoveredBlock24Block52Block176Block196Value1 recoveredBlock24Block52Block176Block196Value2 recoveredBlock24Block52Block176Block196Value3 recoveredBlock24Block52Block176Block196Value4 |
    recoveredBlock24Block52Block176Block196Value0 := recoveredBlock24Block52Block176Block196Arg1.
    recoveredBlock24Block52Block176Block196Value1 := recoveredBlock24Block52Block176Local1.
    recoveredBlock24Block52Block176Block196Value2 := (self) getElementMappingAssociationsFor: (recoveredBlock24Block52Block176Block196Value0) unmappedSet: (recoveredBlock24Block52Block176Block196Value1).
    recoveredBlock24Block52Block176Block196Value3 := [:recoveredBlock24Block52Block176Block196Block208Arg1 | 
    | recoveredBlock24Block52Block176Block196Block208Value0 recoveredBlock24Block52Block176Block196Block208Value1 recoveredBlock24Block52Block176Block196Block208Value2 recoveredBlock24Block52Block176Block196Block208Value3 recoveredBlock24Block52Block176Block196Block208Value4 |
    recoveredBlock24Block52Block176Block196Block208Value0 := recoveredBlock24Block52Block176Block196Block208Arg1.
    recoveredBlock24Block52Block176Block196Block208Value1 := (recoveredBlock24Block52Block176Block196Block208Value0) value.
    recoveredBlock24Block52Block176Block196Block208Value2 := recoveredBlock24Block52Block176Block196Block208Arg1.
    recoveredBlock24Block52Block176Block196Block208Value3 := (recoveredBlock24Block52Block176Block196Block208Value2) key.
    recoveredBlock24Block52Block176Block196Block208Value4 := (self) setLocalInputMappingTo: (recoveredBlock24Block52Block176Block196Block208Value1) forAscetVariable: (recoveredBlock24Block52Block176Block196Block208Value3).
    recoveredBlock24Block52Block176Block196Block208Value4
].
    recoveredBlock24Block52Block176Block196Value4 := (recoveredBlock24Block52Block176Block196Value2) do: (recoveredBlock24Block52Block176Block196Value3).
    recoveredBlock24Block52Block176Block196Value4
].
            recoveredBlock24Block52Block176PC := 226.
        ].
        recoveredBlock24Block52Block176Step = 226 ifTrue: [
            (recoveredBlock24Block52Block176Stack1) do: (recoveredBlock24Block52Block176Stack2).
            recoveredBlock24Block52Block176PC := 228.
        ].
        recoveredBlock24Block52Block176Step = 228 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := recoveredBlock24Block52Block176Arg1.
            recoveredBlock24Block52Block176PC := 231.
        ].
        recoveredBlock24Block52Block176Step = 231 ifTrue: [
            recoveredBlock24Block52Block176Stack2 := 'Outputs'.
            recoveredBlock24Block52Block176PC := 233.
        ].
        recoveredBlock24Block52Block176Step = 233 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := (recoveredBlock24Block52Block176Stack1) getElementsByTagName: (recoveredBlock24Block52Block176Stack2).
            recoveredBlock24Block52Block176PC := 235.
        ].
        recoveredBlock24Block52Block176Step = 235 ifTrue: [
            recoveredBlock24Block52Block176Stack2 := [:recoveredBlock24Block52Block176Block235Arg1 | 
    | recoveredBlock24Block52Block176Block235Value0 recoveredBlock24Block52Block176Block235Value1 recoveredBlock24Block52Block176Block235Value2 recoveredBlock24Block52Block176Block235Value3 recoveredBlock24Block52Block176Block235Value4 |
    recoveredBlock24Block52Block176Block235Value0 := recoveredBlock24Block52Block176Block235Arg1.
    recoveredBlock24Block52Block176Block235Value1 := recoveredBlock24Block52Block176Local1.
    recoveredBlock24Block52Block176Block235Value2 := (self) getElementMappingAssociationsFor: (recoveredBlock24Block52Block176Block235Value0) unmappedSet: (recoveredBlock24Block52Block176Block235Value1).
    recoveredBlock24Block52Block176Block235Value3 := [:recoveredBlock24Block52Block176Block235Block248Arg1 | 
    | recoveredBlock24Block52Block176Block235Block248Value0 recoveredBlock24Block52Block176Block235Block248Value1 recoveredBlock24Block52Block176Block235Block248Value2 recoveredBlock24Block52Block176Block235Block248Value3 recoveredBlock24Block52Block176Block235Block248Value4 |
    recoveredBlock24Block52Block176Block235Block248Value0 := recoveredBlock24Block52Block176Block235Block248Arg1.
    recoveredBlock24Block52Block176Block235Block248Value1 := (recoveredBlock24Block52Block176Block235Block248Value0) value.
    recoveredBlock24Block52Block176Block235Block248Value2 := recoveredBlock24Block52Block176Block235Block248Arg1.
    recoveredBlock24Block52Block176Block235Block248Value3 := (recoveredBlock24Block52Block176Block235Block248Value2) key.
    recoveredBlock24Block52Block176Block235Block248Value4 := (self) setLocalOutputMappingTo: (recoveredBlock24Block52Block176Block235Block248Value1) forAscetVariable: (recoveredBlock24Block52Block176Block235Block248Value3).
    recoveredBlock24Block52Block176Block235Block248Value4
].
    recoveredBlock24Block52Block176Block235Value4 := (recoveredBlock24Block52Block176Block235Value2) do: (recoveredBlock24Block52Block176Block235Value3).
    recoveredBlock24Block52Block176Block235Value4
].
            recoveredBlock24Block52Block176PC := 266.
        ].
        recoveredBlock24Block52Block176Step = 266 ifTrue: [
            (recoveredBlock24Block52Block176Stack1) do: (recoveredBlock24Block52Block176Stack2).
            recoveredBlock24Block52Block176PC := 268.
        ].
        recoveredBlock24Block52Block176Step = 268 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := nil.
            recoveredBlock24Block52Block176PC := 269.
        ].
        recoveredBlock24Block52Block176Step = 269 ifTrue: [
            recoveredBlock24Block52Block176Stack2 := recoveredBlock24Block52Block176Local1.
            recoveredBlock24Block52Block176PC := 272.
        ].
        recoveredBlock24Block52Block176Step = 272 ifTrue: [
            recoveredBlock24Block52Block176Stack2 := (recoveredBlock24Block52Block176Stack2) notEmpty.
            recoveredBlock24Block52Block176PC := 274.
        ].
        recoveredBlock24Block52Block176Step = 274 ifTrue: [
            (recoveredBlock24Block52Block176Stack2) ifTrue: [recoveredBlock24Block52Block176PC := 278] ifFalse: [recoveredBlock24Block52Block176PC := 284].
        ].
        recoveredBlock24Block52Block176Step = 278 ifTrue: [
            recoveredBlock24Block52Block176PC := 279.
        ].
        recoveredBlock24Block52Block176Step = 279 ifTrue: [
            recoveredBlock24Block52Block176Stack1 := true.
            recoveredBlock24Block52Block176PC := 280.
        ].
        recoveredBlock24Block52Block176Step = 280 ifTrue: [
            recoveredBlock24Block52Block176Stack2 := recoveredBlock24Block52Block176Stack1.
            recoveredBlock24Block52Block176PC := 281.
        ].
        recoveredBlock24Block52Block176Step = 281 ifTrue: [
            recoveredLocal1 := recoveredBlock24Block52Block176Stack2.
            recoveredBlock24Block52Block176PC := 284.
        ].
        recoveredBlock24Block52Block176Step = 284 ifTrue: [
            recoveredBlock24Block52Block176Result := recoveredBlock24Block52Block176Stack1.
            recoveredBlock24Block52Block176Done := true.
        ].
    ].
    recoveredBlock24Block52Block176Result
].
            recoveredBlock24Block52PC := 285.
        ].
        recoveredBlock24Block52Step = 285 ifTrue: [
            (recoveredBlock24Block52Stack1) ifNotNil: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 287.
        ].
        recoveredBlock24Block52Step = 287 ifTrue: [
            recoveredBlock24Block52Stack1 := recoveredBlock24Block52Arg1.
            recoveredBlock24Block52PC := 288.
        ].
        recoveredBlock24Block52Step = 288 ifTrue: [
            recoveredBlock24Block52Stack2 := 'OEMProject\Functions'.
            recoveredBlock24Block52PC := 290.
        ].
        recoveredBlock24Block52Step = 290 ifTrue: [
            recoveredBlock24Block52Stack1 := (recoveredBlock24Block52Stack1) getElementsByTagPath: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 292.
        ].
        recoveredBlock24Block52Step = 292 ifTrue: [
            recoveredBlock24Block52Stack2 := [:recoveredBlock24Block52Block292Arg1 | 
    | recoveredBlock24Block52Block292Value0 recoveredBlock24Block52Block292Value1 recoveredBlock24Block52Block292Value2 recoveredBlock24Block52Block292Value3 |
    recoveredBlock24Block52Block292Value0 := recoveredBlock24Block52Block292Arg1.
    recoveredBlock24Block52Block292Value1 := (recoveredBlock24Block52Block292Value0) getElementsByTagName: ('Function').
    recoveredBlock24Block52Block292Value2 := [:recoveredBlock24Block52Block292Block303Arg1 | 
    | recoveredBlock24Block52Block292Block303Value0 recoveredBlock24Block52Block292Block303Value1 recoveredBlock24Block52Block292Block303Value2 recoveredBlock24Block52Block292Block303Value3 |
    recoveredBlock24Block52Block292Block303Value0 := recoveredBlock24Block52Block292Block303Arg1.
    recoveredBlock24Block52Block292Block303Value1 := (recoveredBlock24Block52Block292Block303Value0) getAttribute: ('name').
    recoveredBlock24Block52Block292Block303Value2 := [:recoveredBlock24Block52Block292Block303Block317Arg1 | 
    | recoveredBlock24Block52Block292Block303Block317Local1 recoveredBlock24Block52Block292Block303Block317Stack0 recoveredBlock24Block52Block292Block303Block317Stack1 recoveredBlock24Block52Block292Block303Block317Stack2 recoveredBlock24Block52Block292Block303Block317PC recoveredBlock24Block52Block292Block303Block317Step recoveredBlock24Block52Block292Block303Block317Done recoveredBlock24Block52Block292Block303Block317Result |
    recoveredBlock24Block52Block292Block303Block317Stack0 := self.
    recoveredBlock24Block52Block292Block303Block317PC := 324.
    recoveredBlock24Block52Block292Block303Block317Done := false.
    [recoveredBlock24Block52Block292Block303Block317Done not] whileTrue: [
        recoveredBlock24Block52Block292Block303Block317Step := recoveredBlock24Block52Block292Block303Block317PC.
        recoveredBlock24Block52Block292Block303Block317Step = 324 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := (recoveredBlock24Block52Block292Block303Block317Stack0) addBypassFuncLocal.
            recoveredBlock24Block52Block292Block303Block317PC := 326.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 326 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack1 := recoveredBlock24Block52Block292Block303Block317Arg1.
            recoveredBlock24Block52Block292Block303Block317PC := 329.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 329 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := (recoveredBlock24Block52Block292Block303Block317Stack0) funcNodeName: (recoveredBlock24Block52Block292Block303Block317Stack1).
            recoveredBlock24Block52Block292Block303Block317PC := 331.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 331 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Local1 := recoveredBlock24Block52Block292Block303Block317Stack0.
            recoveredBlock24Block52Block292Block303Block317PC := 334.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 334 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := recoveredBlock24Block52Block292Block303Arg1.
            recoveredBlock24Block52Block292Block303Block317PC := 337.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 337 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack1 := 'Dispatch'.
            recoveredBlock24Block52Block292Block303Block317PC := 339.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 339 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := (recoveredBlock24Block52Block292Block303Block317Stack0) getElementByTagName: (recoveredBlock24Block52Block292Block303Block317Stack1).
            recoveredBlock24Block52Block292Block303Block317PC := 341.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 341 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack1 := [:recoveredBlock24Block52Block292Block303Block317Block341Arg1 | 
    | recoveredBlock24Block52Block292Block303Block317Block341Value0 recoveredBlock24Block52Block292Block303Block317Block341Value1 recoveredBlock24Block52Block292Block303Block317Block341Value2 recoveredBlock24Block52Block292Block303Block317Block341Value3 recoveredBlock24Block52Block292Block303Block317Block341Value4 recoveredBlock24Block52Block292Block303Block317Block341Value5 recoveredBlock24Block52Block292Block303Block317Block341Value6 |
    recoveredBlock24Block52Block292Block303Block317Block341Value0 := recoveredBlock24Block52Block292Block303Block317Block341Arg1.
    recoveredBlock24Block52Block292Block303Block317Block341Value1 := (recoveredBlock24Block52Block292Block303Block317Block341Value0) getAttribute: ('name').
    recoveredBlock24Block52Block292Block303Block317Block341Value2 := [:recoveredBlock24Block52Block292Block303Block317Block341Block353Arg1 | 
    | recoveredBlock24Block52Block292Block303Block317Block341Block353Value0 recoveredBlock24Block52Block292Block303Block317Block341Block353Value1 recoveredBlock24Block52Block292Block303Block317Block341Block353Value2 |
    recoveredBlock24Block52Block292Block303Block317Block341Block353Value0 := recoveredBlock24Block52Block292Block303Block317Local1.
    recoveredBlock24Block52Block292Block303Block317Block341Block353Value1 := recoveredBlock24Block52Block292Block303Block317Block341Block353Arg1.
    recoveredBlock24Block52Block292Block303Block317Block341Block353Value2 := (recoveredBlock24Block52Block292Block303Block317Block341Block353Value0) dispatchPoint: (recoveredBlock24Block52Block292Block303Block317Block341Block353Value1).
    recoveredBlock24Block52Block292Block303Block317Block341Block353Value2
].
    (recoveredBlock24Block52Block292Block303Block317Block341Value1) ifNotNil: (recoveredBlock24Block52Block292Block303Block317Block341Value2).
    recoveredBlock24Block52Block292Block303Block317Block341Value3 := recoveredBlock24Block52Block292Block303Block317Block341Arg1.
    recoveredBlock24Block52Block292Block303Block317Block341Value4 := (recoveredBlock24Block52Block292Block303Block317Block341Value3) getAttribute: ('period').
    recoveredBlock24Block52Block292Block303Block317Block341Value5 := [:recoveredBlock24Block52Block292Block303Block317Block341Block374Arg1 | 
    | recoveredBlock24Block52Block292Block303Block317Block341Block374Value0 recoveredBlock24Block52Block292Block303Block317Block341Block374Value1 recoveredBlock24Block52Block292Block303Block317Block341Block374Value2 recoveredBlock24Block52Block292Block303Block317Block341Block374Value3 |
    recoveredBlock24Block52Block292Block303Block317Block341Block374Value0 := recoveredBlock24Block52Block292Block303Block317Local1.
    recoveredBlock24Block52Block292Block303Block317Block341Block374Value1 := recoveredBlock24Block52Block292Block303Block317Block341Block374Arg1.
    recoveredBlock24Block52Block292Block303Block317Block341Block374Value2 := (recoveredBlock24Block52Block292Block303Block317Block341Block374Value1) asFloat.
    recoveredBlock24Block52Block292Block303Block317Block341Block374Value3 := (recoveredBlock24Block52Block292Block303Block317Block341Block374Value0) period: (recoveredBlock24Block52Block292Block303Block317Block341Block374Value2).
    recoveredBlock24Block52Block292Block303Block317Block341Block374Value3
].
    recoveredBlock24Block52Block292Block303Block317Block341Value6 := (recoveredBlock24Block52Block292Block303Block317Block341Value4) ifNotNil: (recoveredBlock24Block52Block292Block303Block317Block341Value5).
    recoveredBlock24Block52Block292Block303Block317Block341Value6
].
            recoveredBlock24Block52Block292Block303Block317PC := 392.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 392 ifTrue: [
            (recoveredBlock24Block52Block292Block303Block317Stack0) ifNotNil: (recoveredBlock24Block52Block292Block303Block317Stack1).
            recoveredBlock24Block52Block292Block303Block317PC := 394.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 394 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := recoveredBlock24Block52Block292Block303Arg1.
            recoveredBlock24Block52Block292Block303Block317PC := 397.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 397 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack1 := 'Process'.
            recoveredBlock24Block52Block292Block303Block317PC := 399.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 399 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := (recoveredBlock24Block52Block292Block303Block317Stack0) getElementsByTagName: (recoveredBlock24Block52Block292Block303Block317Stack1).
            recoveredBlock24Block52Block292Block303Block317PC := 401.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 401 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack1 := [:block28001b24Arg1 | 
    | block28001b24Value0 block28001b24Value1 |
    block28001b24Value0 := block28001b24Arg1.
    block28001b24Value1 := (block28001b24Value0) getAttribute: ('oid').
    block28001b24Value1
].
            recoveredBlock24Block52Block292Block303Block317PC := 403.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 403 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317PC := 412.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 412 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := (recoveredBlock24Block52Block292Block303Block317Stack0) collect: (recoveredBlock24Block52Block292Block303Block317Stack1).
            recoveredBlock24Block52Block292Block303Block317PC := 414.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 414 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack1 := [:recoveredBlock24Block52Block292Block303Block317Block414Arg1 | 
    | recoveredBlock24Block52Block292Block303Block317Block414Local1 recoveredBlock24Block52Block292Block303Block317Block414Local2 recoveredBlock24Block52Block292Block303Block317Block414Local3 recoveredBlock24Block52Block292Block303Block317Block414Stack0 recoveredBlock24Block52Block292Block303Block317Block414Stack1 recoveredBlock24Block52Block292Block303Block317Block414Stack2 recoveredBlock24Block52Block292Block303Block317Block414Stack3 recoveredBlock24Block52Block292Block303Block317Block414Stack4 recoveredBlock24Block52Block292Block303Block317Block414PC recoveredBlock24Block52Block292Block303Block317Block414Step recoveredBlock24Block52Block292Block303Block317Block414Done recoveredBlock24Block52Block292Block303Block317Block414Result |
    recoveredBlock24Block52Block292Block303Block317Block414Stack0 := self.
    recoveredBlock24Block52Block292Block303Block317Block414PC := 420.
    recoveredBlock24Block52Block292Block303Block317Block414Done := false.
    [recoveredBlock24Block52Block292Block303Block317Block414Done not] whileTrue: [
        recoveredBlock24Block52Block292Block303Block317Block414Step := recoveredBlock24Block52Block292Block303Block317Block414PC.
        recoveredBlock24Block52Block292Block303Block317Block414Step = 420 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := nil.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 421.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 421 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := recoveredBlock24Block52Block292Block303Block317Block414Arg1.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 422.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 422 ifTrue: [
            (recoveredBlock24Block52Block292Block303Block317Block414Stack2 == nil) ifTrue: [recoveredBlock24Block52Block292Block303Block317Block414PC := 489] ifFalse: [recoveredBlock24Block52Block292Block303Block317Block414PC := 426].
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 426 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414PC := 427.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 427 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := nil.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 428.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 428 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := recoveredBlock24Block52Block292Block303Block317Block414Arg1.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 429.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 429 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack3 := '/'.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 431.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 431 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := (recoveredBlock24Block52Block292Block303Block317Block414Stack2) asArrayOfSubstringsSeparatedBy: (recoveredBlock24Block52Block292Block303Block317Block414Stack3).
            recoveredBlock24Block52Block292Block303Block317Block414PC := 433.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 433 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack3 := recoveredBlock24Block52Block292Block303Block317Block414Stack2.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 434.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 434 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Local3 := recoveredBlock24Block52Block292Block303Block317Block414Stack3.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 435.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 435 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := (recoveredBlock24Block52Block292Block303Block317Block414Stack2) size.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 437.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 437 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack3 := 2.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 439.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 439 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := (recoveredBlock24Block52Block292Block303Block317Block414Stack2) = (recoveredBlock24Block52Block292Block303Block317Block414Stack3).
            recoveredBlock24Block52Block292Block303Block317Block414PC := 440.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 440 ifTrue: [
            (recoveredBlock24Block52Block292Block303Block317Block414Stack2) ifTrue: [recoveredBlock24Block52Block292Block303Block317Block414PC := 444] ifFalse: [recoveredBlock24Block52Block292Block303Block317Block414PC := 489].
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 444 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414PC := 445.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 445 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := self.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 446.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 446 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := (recoveredBlock24Block52Block292Block303Block317Block414Stack1) library.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 448.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 448 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := (recoveredBlock24Block52Block292Block303Block317Block414Stack1) globalIdServer.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 450.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 450 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := recoveredBlock24Block52Block292Block303Block317Block414Local3.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 451.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 451 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack3 := 1.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 453.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 453 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := (recoveredBlock24Block52Block292Block303Block317Block414Stack2) at: (recoveredBlock24Block52Block292Block303Block317Block414Stack3).
            recoveredBlock24Block52Block292Block303Block317Block414PC := 455.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 455 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := (recoveredBlock24Block52Block292Block303Block317Block414Stack1) fromAlphaNumString: (recoveredBlock24Block52Block292Block303Block317Block414Stack2).
            recoveredBlock24Block52Block292Block303Block317Block414PC := 459.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 459 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Local2 := recoveredBlock24Block52Block292Block303Block317Block414Stack1.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 460.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 460 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := self.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 461.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 461 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := (recoveredBlock24Block52Block292Block303Block317Block414Stack1) library.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 463.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 463 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := (recoveredBlock24Block52Block292Block303Block317Block414Stack1) globalIdServer.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 465.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 465 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := recoveredBlock24Block52Block292Block303Block317Block414Local3.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 466.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 466 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack3 := 2.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 468.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 468 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := (recoveredBlock24Block52Block292Block303Block317Block414Stack2) at: (recoveredBlock24Block52Block292Block303Block317Block414Stack3).
            recoveredBlock24Block52Block292Block303Block317Block414PC := 470.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 470 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := (recoveredBlock24Block52Block292Block303Block317Block414Stack1) fromAlphaNumString: (recoveredBlock24Block52Block292Block303Block317Block414Stack2).
            recoveredBlock24Block52Block292Block303Block317Block414PC := 475.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 475 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Local1 := recoveredBlock24Block52Block292Block303Block317Block414Stack1.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 476.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 476 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := recoveredBlock24Block52Block292Block303Block317Local1.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 479.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 479 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := recoveredBlock24Block52Block292Block303Block317Block414Local1.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 480.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 480 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack3 := recoveredBlock24Block52Block292Block303Block317Block414Local2.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 481.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 481 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack1 := (recoveredBlock24Block52Block292Block303Block317Block414Stack1) addProcessAlias: (recoveredBlock24Block52Block292Block303Block317Block414Stack2) instVarAlias: (recoveredBlock24Block52Block292Block303Block317Block414Stack3).
            recoveredBlock24Block52Block292Block303Block317Block414PC := 485.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 485 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack2 := nil.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 486.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 486 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Stack3 := recoveredBlock24Block52Block292Block303Block317Block414Stack2.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 487.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 487 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Local2 := recoveredBlock24Block52Block292Block303Block317Block414Stack3.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 488.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 488 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Local1 := recoveredBlock24Block52Block292Block303Block317Block414Stack2.
            recoveredBlock24Block52Block292Block303Block317Block414PC := 489.
        ].
        recoveredBlock24Block52Block292Block303Block317Block414Step = 489 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Block414Result := recoveredBlock24Block52Block292Block303Block317Block414Stack1.
            recoveredBlock24Block52Block292Block303Block317Block414Done := true.
        ].
    ].
    recoveredBlock24Block52Block292Block303Block317Block414Result
].
            recoveredBlock24Block52Block292Block303Block317PC := 490.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 490 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Stack0 := (recoveredBlock24Block52Block292Block303Block317Stack0) do: (recoveredBlock24Block52Block292Block303Block317Stack1).
            recoveredBlock24Block52Block292Block303Block317PC := 492.
        ].
        recoveredBlock24Block52Block292Block303Block317Step = 492 ifTrue: [
            recoveredBlock24Block52Block292Block303Block317Result := recoveredBlock24Block52Block292Block303Block317Stack0.
            recoveredBlock24Block52Block292Block303Block317Done := true.
        ].
    ].
    recoveredBlock24Block52Block292Block303Block317Result
].
    recoveredBlock24Block52Block292Block303Value3 := (recoveredBlock24Block52Block292Block303Value1) ifNotNil: (recoveredBlock24Block52Block292Block303Value2).
    recoveredBlock24Block52Block292Block303Value3
].
    recoveredBlock24Block52Block292Value3 := (recoveredBlock24Block52Block292Value1) do: (recoveredBlock24Block52Block292Value2).
    recoveredBlock24Block52Block292Value3
].
            recoveredBlock24Block52PC := 499.
        ].
        recoveredBlock24Block52Step = 499 ifTrue: [
            recoveredBlock24Block52Stack1 := (recoveredBlock24Block52Stack1) ifNotNil: (recoveredBlock24Block52Stack2).
            recoveredBlock24Block52PC := 501.
        ].
        recoveredBlock24Block52Step = 501 ifTrue: [
            recoveredBlock24Block52Result := recoveredBlock24Block52Stack1.
            recoveredBlock24Block52Done := true.
        ].
    ].
    recoveredBlock24Block52Result
].
    recoveredBlock24Value6 := (recoveredBlock24Value4) ifNotNil: (recoveredBlock24Value5).
    recoveredBlock24Value6
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock505Value0 recoveredBlock505Value1 |
    recoveredBlock505Value0 := recoveredLocal4.
    recoveredBlock505Value1 := (recoveredBlock505Value0) close.
    recoveredBlock505Value1
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 532] ifFalse: [recoveredPC := 537].
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1) writeASCETConfigFile.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

