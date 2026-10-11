"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e0d9c; bytecode file offset 0x9dd680"
!ASDIntecrioApiWrapperCommandController methodsFor: 'recovered'!
cmdAddModuleToFunction
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDIntecrioApiWrapperCmdAddModuleToFunction.
    recoveredValue1 := (recoveredValue0) createObject.
    recoveredValue2 := (self) createCommand: ('CmdAddModuleToFunction').
    recoveredValue3 := (recoveredValue1) automationObject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e0db8; bytecode file offset 0x9dd680"
!ASDIntecrioApiWrapperCommandController methodsFor: 'recovered'!
cmdImportModule
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDIntecrioApiWrapperCmdImportModule.
    recoveredValue1 := (recoveredValue0) createObject.
    recoveredValue2 := (self) createCommand: ('CmdImportModule').
    recoveredValue3 := (recoveredValue1) automationObject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019a24c; bytecode file offset 0xa97444"
!ASDIntecrioApiWrapperCommandController methodsFor: 'recovered'!
createCommand: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('CreateCommand') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a2d8; bytecode file offset 0xa97444"
!ASDIntecrioApiWrapperCommandController methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('Execute') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

