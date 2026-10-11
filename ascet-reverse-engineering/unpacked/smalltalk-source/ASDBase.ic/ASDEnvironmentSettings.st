"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200032d8; bytecode file offset 0x8ffcfc"
!ASDEnvironmentSettings methodsFor: 'recovered'!
updateOSMacroSettings
    ^self
! !

"ASDBase.ic method 0x2001b8f0; bytecode file offset 0x92209c"
!ASDEnvironmentSettings methodsFor: 'recovered'!
osRootPathVarName
    ^'P_OS_ROOT'
! !

"ASDBase.ic method 0x2002288c; bytecode file offset 0x92209c"
!ASDEnvironmentSettings methodsFor: 'recovered'!
groupLabel
    ^'Path Macros'
! !

"ASDBase.ic method 0x200335c4; bytecode file offset 0x934580"
!ASDEnvironmentSettings methodsFor: 'recovered'!
allPathMacros
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) macroDefinitions.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066a5c; bytecode file offset 0x963428"
!ASDEnvironmentSettings methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := target.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c14; bytecode file offset 0x9646f8"
!ASDEnvironmentSettings methodsFor: 'recovered'!
macroDefinitions
    | recoveredValue0 |
    recoveredValue0 := macroDefinitions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069084; bytecode file offset 0x965b90"
!ASDEnvironmentSettings methodsFor: 'recovered'!
osSettings
    | recoveredValue0 |
    recoveredValue0 := osSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089678; bytecode file offset 0x985fa4"
!ASDEnvironmentSettings methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    macroDefinitions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200d67fc; bytecode file offset 0x9d3134"
!ASDEnvironmentSettings methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reset.
    ^self
! !

"ASDBase.ic method 0x200e875c; bytecode file offset 0x9e5018"
!ASDEnvironmentSettings methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 |
    (self) reset.
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    (self) updatePathMacroSettings.
    ^self
! !

"ASDBase.ic method 0x20133c60; bytecode file offset 0xa305e4"
!ASDEnvironmentSettings methodsFor: 'recovered'!
pathVariableSetting: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) macroDefinitions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013fa54; bytecode file offset 0xa3c328"
!ASDEnvironmentSettings methodsFor: 'recovered'!
externalMakePathVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allPathMacros.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) osRootPathVarName.
    recoveredBlock5Value2 := (recoveredBlock5Value0) = (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) reject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20143684; bytecode file offset 0xa3ff40"
!ASDEnvironmentSettings methodsFor: 'recovered'!
osSettings: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    osSettings := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) updateOSMacroSettings.
    recoveredBlock8Value0
].
    (recoveredValue0) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203275b0; bytecode file offset 0xc23e7c"
!ASDEnvironmentSettings methodsFor: 'recovered'!
convertFileName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allPathMacros.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := (self) pathVariableSetting: (recoveredBlock12Value2).
    recoveredBlock12Value4 := (recoveredBlock12Value0) replace: (recoveredBlock12Value1) with: (recoveredBlock12Value3).
    recoveredBlock12Value5 := recoveredBlock12Value4.
    recoveredBlock12Local1 := recoveredBlock12Value5.
    recoveredBlock12Value6 := [
    | recoveredBlock12Block35Value0 recoveredBlock12Block35Value1 |
    recoveredBlock12Block35Value0 := recoveredBlock12Local1.
    recoveredBlock12Block35Value1 := recoveredBlock12Block35Value0.
    recoveredLocal1 := recoveredBlock12Block35Value1.
    recoveredBlock12Block35Value0
].
    recoveredBlock12Value7 := (recoveredBlock12Value4) notNil: (recoveredBlock12Value6).
    recoveredBlock12Value7
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20343f74; bytecode file offset 0xc4086c"
!ASDEnvironmentSettings methodsFor: 'recovered'!
updatePathMacroSettings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) macroDefinitions.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) target.
    recoveredValue3 := (recoveredValue2) getTargetBasePath.
    (recoveredValue1) at: ('P_TGROOT') put: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) target.
    recoveredValue6 := (recoveredValue5) getTargetSpecificPath.
    (recoveredValue4) at: ('P_TARGET') put: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) target.
    recoveredValue9 := (recoveredValue8) getDocumentationPath.
    (recoveredValue7) at: ('P_DOCGEN') put: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) target.
    recoveredValue12 := (recoveredValue11) getDatabasePath.
    (recoveredValue10) at: ('P_DATABASE') put: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) target.
    recoveredValue15 := (recoveredValue14) getProjectDatabasePath.
    recoveredValue16 := ('$(P_DATABASE)\') , (recoveredValue15).
    (recoveredValue13) at: ('P_DATABASE_PROJ') put: (recoveredValue16).
    recoveredValue17 := (self) target.
    recoveredValue18 := (recoveredValue17) getWorkingPath.
    (recoveredValue0) at: ('P_CGEN') put: (recoveredValue18).
    ^self
! !

