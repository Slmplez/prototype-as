"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x200002bc; bytecode file offset 0xf474"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
backendLocation
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('BackendLocation').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200007d4; bytecode file offset 0xf99c"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
setOutputA2LFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('SetOutputA2LFile') put: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x200007e4; bytecode file offset 0xf99c"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
setInputECUImage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('SetInputECUImage') put: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20000824; bytecode file offset 0xf99c"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
setOutputECUImage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) propertyAt: ('SetOutputECUImage') put: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20000844; bytecode file offset 0xf99c"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
isHookableMeasurement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) setProperty: ('IsHookableMeasurement') withArg: (recoveredValue0).
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20000cc8; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
inputA2LFile
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('InputA2LFile') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000cf0; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
save
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Save') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000d40; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
outputA2LFile
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('OutputA2LFile') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000d7c; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
inputECUImage
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('InputECUImage') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000db8; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
outputECUImage
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('OutputECUImage') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000de0; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Identifier') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000e08; bytecode file offset 0xffa8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
filePath
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('FilePath') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20001a1c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
newVariableWrite
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewVariableWrite'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWrite.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001a5c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
newSourceFileCollection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewSourceFileCollection'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperNewSourceFileCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001a9c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
newVariableWriteCollection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewVariableWriteCollection'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWriteCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001abc; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
newVariable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewVariable'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001adc; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
newBypassFunctionCollection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewBypassFunctionCollection'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperBypassFunctionCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001b3c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
newIncludeDirCollection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewIncludeDirCollection'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperNewIncludeDirCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001b5c; bytecode file offset 0x10ca4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
newBypassFunction
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewBypassFunction'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperBypassFunction.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001e40; bytecode file offset 0x10f84"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
importA2LFile: recoveredArg1 password: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: ('ImportA2lFile') withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"EHOOKS.ic method 0x2000288c; bytecode file offset 0x119d4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
synchronizeVarHooks: recoveredArg1 bypassFuncs: recoveredArg2 sourceFiles: recoveredArg3 sourceDirs: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) automationObject.
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) automationObject.
    (recoveredValue5) at: (2) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (recoveredValue9) automationObject.
    (recoveredValue8) at: (3) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg4.
    recoveredValue13 := (recoveredValue12) automationObject.
    (recoveredValue11) at: (4) put: (recoveredValue13).
    recoveredLocal1 := recoveredValue1.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) invoke: ('Synchronize') withArguments: (recoveredValue14) returnType: (true).
    ^recoveredValue15
! !

"EHOOKS.ic method 0x20003850; bytecode file offset 0x129b8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
ecuTriggerConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'NewBypassFunction'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'ECUTriggerConfiguration'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) objIDispatch.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) objIDispatch.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperBypassFunction.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassContainer.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200043fc; bytecode file offset 0x135bc"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
ecuReadSelection
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'NewVariableReadCollection'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'ECUReadSelection'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableReadCollection.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) count.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReadAt: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := EtasAbstractEHooksOleObjectWrapperVariable.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) arrayIndex.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004448; bytecode file offset 0x135bc"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
ecuWriteSelection
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'NewVariableWriteCollection'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'ECUWriteSelection'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWriteCollection.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) count.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) getWriteAt: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWrite.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) arrayIndex.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004720; bytecode file offset 0x138e8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
ecuSingleReadSelectionName: recoveredArg1 measurementName: recoveredArg2 index: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewVariableRead'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasAbstractEHooksOleObjectWrapperVariable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) measurementName: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) arrayIndex: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'ECUSingleReadSelection'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := EtasAbstractEHooksOleObjectWrapperVariable.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := ASDEHooksVariable.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) measurementName.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) measurementName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) arrayIndex.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) arrayIndex: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004770; bytecode file offset 0x138e8"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
ecuSingleWriteSelectionName: recoveredArg1 measurementName: recoveredArg2 index: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewVariableWrite'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWrite.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) measurementName: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) arrayIndex: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'ECUSingleWriteSelection'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWrite.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := ASDEHooksVariable.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) measurementName.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) measurementName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) arrayIndex.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) arrayIndex: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004b50; bytecode file offset 0x13cd4"
!EtasEHooksOleObjectWrapperProject methodsFor: 'recovered'!
ecuReadBackupCopySelectionName: recoveredArg1 measurementName: recoveredArg2 index: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'NewVariableReadCollection'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWriteCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'ECUReadBackupCopySelection'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperVariableWriteCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) count.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReadAt: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := EtasAbstractEHooksOleObjectWrapperVariable.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := ASDEHooksVariable.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) measurementName.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) measurementName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) arrayIndex.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) arrayIndex: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

