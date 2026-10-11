"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200000dc; bytecode file offset 0x4b1b0"
!Core class methodsFor: 'recovered'!
_PRAGMA_SystemPrimitives
    ^self
! !

"kernel.ic method 0x20000124; bytecode file offset 0x4b1b0"
!Core class methodsFor: 'recovered'!
_PRAGMA_SystemExceptions
    ^self
! !

"kernel.ic method 0x2000016c; bytecode file offset 0x4b1b0"
!Core class methodsFor: 'recovered'!
_PRAGMA_EsVMConstants
    ^self
! !

"kernel.ic method 0x200001fc; bytecode file offset 0x4b1b0"
!Core class methodsFor: 'recovered'!
_PRAGMA_Globals
    ^self
! !

"kernel.ic method 0x20000234; bytecode file offset 0x4b1b0"
!Core class methodsFor: 'recovered'!
_PRAGMA_SystemPrimitiveErrors
    ^self
! !

"kernel.ic method 0x200016ac; bytecode file offset 0x4c844"
!Core class methodsFor: 'recovered'!
registry
    | recoveredValue0 |
    recoveredValue0 := EsVMRegistry.
    ^recoveredValue0
! !

"kernel.ic method 0x20001a20; bytecode file offset 0x4c9a8"
!Core class methodsFor: 'recovered'!
packagerIgnoreSelectors
    ^#('logSave')
! !

"kernel.ic method 0x20001a5c; bytecode file offset 0x4c9a8"
!Core class methodsFor: 'recovered'!
packagerIgnoreReferencesInSelectors
    ^#('removeComponentsFromImage:')
! !

"kernel.ic method 0x200029fc; bytecode file offset 0x4d99c"
!Core class methodsFor: 'recovered'!
loaded
    (self) bindSharedLibrary.
    ^self
! !

"kernel.ic method 0x20002a74; bytecode file offset 0x4d99c"
!Core class methodsFor: 'recovered'!
removing
    (self) unbindSharedLibrary.
    ^self
! !

"kernel.ic method 0x20003334; bytecode file offset 0x4e2f8"
!Core class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := Smalltalk.
    (recoveredValue0) purgeRemovedAssociations.
    ^self
! !

"kernel.ic method 0x20005ef8; bytecode file offset 0x50e10"
!Core class methodsFor: 'recovered'!
unbindSharedLibrary
    | recoveredValue0 |
    recoveredValue0 := PlatformLibrary.
    (recoveredValue0) removeMappingForLogicalName: ('esverifydll').
    ^self
! !

"kernel.ic method 0x2001890c; bytecode file offset 0x6383c"
!Core class methodsFor: 'recovered'!
packagerKnownSymbols
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
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
            recoveredStack1 := PlatformFunction.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) conversionTypes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) addAll: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:block28009020Arg1 | 
    | block28009020Value0 block28009020Value1 |
    block28009020Value0 := block28009020Arg1.
    block28009020Value1 := (block28009020Value0) asSymbol.
    block28009020Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20019680; bytecode file offset 0x645b4"
!Core class methodsFor: 'recovered'!
bindSharedLibrary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) osType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Linux'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) osType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'MVS'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'EsVer'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := System.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) vmVersionId.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := PlatformLibrary.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'esverifydll'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) mapLogicalName: (recoveredStack2) toPhysicalName: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20027700; bytecode file offset 0x72658"
!Core class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Object.
    recoveredValue4 := (recoveredValue3) >> ('halt').
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := EmSystemConfiguration.
    recoveredValue7 := (recoveredValue6) >> ('startUpClass').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := EmSystemConfiguration.
    recoveredValue10 := (recoveredValue9) >> ('startUpClass:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := EsImageStartUp.
    recoveredValue13 := (recoveredValue12) class.
    recoveredValue14 := (recoveredValue13) >> ('applicationCopyright').
    (recoveredValue11) add: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := EsImageStartUp.
    recoveredValue17 := (recoveredValue16) class.
    recoveredValue18 := (recoveredValue17) >> ('applicationName').
    (recoveredValue15) add: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := EsImageStartUp.
    recoveredValue21 := (recoveredValue20) class.
    recoveredValue22 := (recoveredValue21) >> ('configurationFileName').
    (recoveredValue19) add: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := EsImageStartUp.
    recoveredValue25 := (recoveredValue24) class.
    recoveredValue26 := (recoveredValue25) >> ('configurationFileName:').
    (recoveredValue23) add: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := EsImageStartUp.
    recoveredValue29 := (recoveredValue28) class.
    recoveredValue30 := (recoveredValue29) >> ('debuggerClass').
    (recoveredValue27) add: (recoveredValue30).
    recoveredValue31 := recoveredValue1.
    recoveredValue32 := EsImageStartUp.
    recoveredValue33 := (recoveredValue32) class.
    recoveredValue34 := (recoveredValue33) >> ('debuggerClass:').
    (recoveredValue31) add: (recoveredValue34).
    recoveredValue35 := recoveredValue1.
    recoveredValue36 := EsImageStartUp.
    recoveredValue37 := (recoveredValue36) class.
    recoveredValue38 := (recoveredValue37) >> ('walkbackFileName').
    (recoveredValue35) add: (recoveredValue38).
    recoveredValue39 := recoveredValue1.
    recoveredValue40 := EsImageStartUp.
    recoveredValue41 := (recoveredValue40) class.
    recoveredValue42 := (recoveredValue41) >> ('walkbackFileName:').
    (recoveredValue39) add: (recoveredValue42).
    ^recoveredValue1
! !

"kernel.ic method 0x200284ec; bytecode file offset 0x73480"
!Core class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '9635'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'EsCompactMethod'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) excludeInstancesOfClassNamed: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'MethodContext'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) excludeInstancesOfClassNamed: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'BlockContext'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) excludeInstancesOfClassNamed: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'ExitAfterWalkback'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'EsImageStartUp'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block28009434Arg1 | 
    | block28009434Value0 block28009434Value1 block28009434Value2 |
    block28009434Value0 := block28009434Arg1.
    block28009434Value1 := (block28009434Value0) reductionPolicy.
    block28009434Value2 := (block28009434Value1) isRuntimeReductionPolicy.
    block28009434Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := [:block28009458Arg1 | 
    | block28009458Value0 block28009458Value1 |
    block28009458Value0 := block28009458Arg1.
    block28009458Value1 := (block28009458Value0) ignoreNoImplementorErrorsForMessageSend: ('callWith:callData:') inMethod: ('callCallbackList:callData:') inClassNamed: ('EsCallbackInterface').
    block28009458Value1
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := [:block2800947cArg1 | 
    nil
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) condition: (recoveredStack2) ifTrue: (recoveredStack3) ifFalse: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'EsAsyncQueue'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'EsAsyncMessageQueue new: 512'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := 'Core'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'Dependents'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 'IdentityDictionary new'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := 'Object'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'ConfigurationFileName'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := 'System startUpClass configurationFileName'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := 'EsImageStartUp'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'NlsConfigurationFileName'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := 'System startUpClass nlsConfigurationFileName'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := 'EsImageStartUp'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'WalkbackFileName'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 'System startUpClass walkbackFileName'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := 'EsImageStartUp'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

