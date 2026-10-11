"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200486ec; bytecode file offset 0x9451f8"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
closeExperiment
    | recoveredValue0 |
    recoveredValue0 := (self) doCommand: ('Core.CloseExperiment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004872c; bytecode file offset 0x9451f8"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
closeWorkspace
    | recoveredValue0 |
    recoveredValue0 := (self) doCommand: ('Core.CloseWorkspace').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a8ea8; bytecode file offset 0x9a57cc"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
doCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Dictionary.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) doCommand: (recoveredValue0) withParameters: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20130c3c; bytecode file offset 0xa2d528"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
openWorkspace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: ('File') put: (recoveredValue3).
    recoveredValue4 := (self) doCommand: ('Core.OpenWorkspace') withParameters: (recoveredValue1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20130c5c; bytecode file offset 0xa2d528"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
openExperiment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: ('File') put: (recoveredValue3).
    recoveredValue4 := (self) doCommand: ('Core.OpenExperiment') withParameters: (recoveredValue1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20196f38; bytecode file offset 0xa9382c"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
createExperiment: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: ('Name') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: ('Path') put: (recoveredValue5).
    recoveredValue6 := (self) doCommand: ('Core.CreateExperiment') withParameters: (recoveredValue1).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20196f5c; bytecode file offset 0xa9382c"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
createWorkspace: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: ('Name') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: ('Path') put: (recoveredValue5).
    recoveredValue6 := (self) doCommand: ('Core.CreateWorkspace') withParameters: (recoveredValue1).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20290820; bytecode file offset 0xb8d134"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
declareVPSignalSource: recoveredArg1 name: recoveredArg2 a2lFile: recoveredArg3 hexFile: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('Type') put: ('VP').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) at: ('ID') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) at: ('Name') put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) at: ('A2LFile') put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) at: ('HexFile') put: (recoveredValue10).
    recoveredValue11 := (self) doCommand: ('ETargetINTECRIO.DeclareSignalSource') withParameters: (recoveredValue1).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20290854; bytecode file offset 0xb8d134"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
declareETargetSignalSource: recoveredArg1 name: recoveredArg2 a2lFile: recoveredArg3 hexFile: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('Type') put: ('ETargetINTECRIO').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) at: ('ID') put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) at: ('Name') put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) at: ('A2LFile') put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) at: ('HexFile') put: (recoveredValue10).
    recoveredValue11 := (self) doCommand: ('ETargetINTECRIO.DeclareSignalSource') withParameters: (recoveredValue1).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20290af0; bytecode file offset 0xb8d3cc"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
declareSignalSource: recoveredArg1 name: recoveredArg2 a2lFile: recoveredArg3 hexFile: recoveredArg4 type: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg5.
    (recoveredValue2) at: ('Type') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) at: ('ID') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) at: ('Name') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) at: ('A2LFile') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg4.
    (recoveredValue10) at: ('HexFile') put: (recoveredValue11).
    recoveredValue12 := (self) doCommand: ('ETargetINTECRIO.DeclareSignalSource') withParameters: (recoveredValue1).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202c6528; bytecode file offset 0xbc2e04"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
createCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := (self) invoke: ('CreateCommand') withArguments: (recoveredValue1) returnType: (true).
    recoveredValue5 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 |
    recoveredBlock23Value0 := ASDExperimentEnvironmentApiWrapperCommand.
    recoveredBlock23Value1 := (recoveredBlock23Value0) new.
    recoveredBlock23Value2 := recoveredBlock23Value1.
    recoveredBlock23Value3 := recoveredBlock23Arg1.
    (recoveredBlock23Value2) automationObject: (recoveredBlock23Value3).
    recoveredBlock23Value4 := recoveredArg1.
    recoveredBlock23Value5 := (recoveredBlock23Value1) command: (recoveredBlock23Value4).
    ^recoveredBlock23Value5
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    ^nil
! !

"ASDBase.ic method 0x203ce218; bytecode file offset 0xccaaf8"
!ASDExperimentEnvironmentApiWrapperCommandProvider methodsFor: 'recovered'!
doCommand: recoveredArg1 withParameters: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createCommand: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := ExASDExperimentEnvironmentError.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := ('Error creating command %1') bindWith: (recoveredBlock12Value1).
    recoveredBlock12Value3 := (recoveredBlock12Value0) signalWith: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) parameters.
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := ExASDExperimentEnvironmentError.
    recoveredBlock40Value1 := recoveredArg1.
    recoveredBlock40Value2 := ('Error getting parameters for command %1') bindWith: (recoveredBlock40Value1).
    recoveredBlock40Value3 := (recoveredBlock40Value0) signalWith: (recoveredBlock40Value2).
    recoveredBlock40Value3
].
    (recoveredValue5) ifNil: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := [:recoveredBlock62Arg1 :recoveredBlock62Arg2 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 |
    recoveredBlock62Value0 := recoveredLocal1.
    recoveredBlock62Value1 := recoveredBlock62Arg1.
    recoveredBlock62Value2 := recoveredBlock62Arg2.
    recoveredBlock62Value3 := (recoveredBlock62Value0) setParameter: (recoveredBlock62Value1) value: (recoveredBlock62Value2).
    recoveredBlock62Value3
].
    (recoveredValue8) keysAndValuesDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) do.
    ^recoveredValue11
! !

