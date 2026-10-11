"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000e84; bytecode file offset 0x6209c"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
configSpecClass
    | recoveredValue0 |
    recoveredValue0 := SstWebServerSpecification.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001acc; bytecode file offset 0x62c08"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
defaultUtcOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultUtcOffset.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001b1c; bytecode file offset 0x62c08"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
defaultServerUrl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultServerUrl.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002638; bytecode file offset 0x636fc"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
haltOnStartUp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := haltPath.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002994; bytecode file offset 0x63b1c"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
prepare
    (self) registerSupportedSchemeInvocationConfigurations.
    ^self
! !

"xxx_dyn.ic method 0x20003894; bytecode file offset 0x649e8"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
logFileName
    | recoveredValue0 |
    recoveredValue0 := logFileName.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003960; bytecode file offset 0x64bac"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
serverId
    | recoveredValue0 |
    recoveredValue0 := serverId.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c6c; bytecode file offset 0x64d78"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
serverUrl
    | recoveredValue0 |
    recoveredValue0 := serverUrl.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f24; bytecode file offset 0x64fe8"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
config
    | recoveredValue0 |
    recoveredValue0 := config.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004000; bytecode file offset 0x650c4"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
haltPath
    | recoveredValue0 |
    recoveredValue0 := haltPath.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006674; bytecode file offset 0x67758"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
printCommandLineUsage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TranscriptTTY.
    recoveredValue1 := (recoveredValue0) default.
    (self) printCommandLineUsageOn: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007dfc; bytecode file offset 0x68f50"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
logFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logFileName := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007ff8; bytecode file offset 0x69104"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
serverId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    serverId := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008084; bytecode file offset 0x692b8"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
serverUrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    serverUrl := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200082c8; bytecode file offset 0x69404"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
configFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configFileName := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008414; bytecode file offset 0x69508"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
config: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    config := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008458; bytecode file offset 0x695c4"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
haltPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    haltPath := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a818; bytecode file offset 0x6b8e0"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
configFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := configFileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultConfigFileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := configFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000ad6c; bytecode file offset 0x6be44"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
printCommandLineUsageOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := MxSSTH66.
    recoveredValue3 := (self) getProgramName.
    recoveredValue4 := (recoveredValue2) bindWith: (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    ^self
! !

"xxx_dyn.ic method 0x2000b31c; bytecode file offset 0x6c3fc"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
getProgramName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) commandLine.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := CfsDirectoryDescriptor.
    recoveredValue4 := (recoveredValue3) pathSeparator.
    recoveredValue5 := (recoveredValue2) subStrings: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) last.
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x2000ef74; bytecode file offset 0x70050"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
registerSupportedSchemeInvocationConfigurations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SstInvocationHandler.
    recoveredValue1 := SstHttpServletSupport.
    recoveredValue2 := (recoveredValue1) httpInvocationConfiguration.
    (recoveredValue0) register: (recoveredValue2) asScheme: ('http').
    recoveredValue3 := SstInvocationHandler.
    recoveredValue4 := SstHttpServletSupport.
    recoveredValue5 := (recoveredValue4) httpInvocationConfiguration.
    (recoveredValue3) register: (recoveredValue5) asScheme: ('https').
    ^self
! !

"xxx_dyn.ic method 0x20012980; bytecode file offset 0x73a68"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
startUpError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TranscriptTTY.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := MxSSTH68.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) exit.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001573c; bytecode file offset 0x76830"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
defaultLogFileName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProgramName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := '.log'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20015758; bytecode file offset 0x76830"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
defaultConfigFileName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProgramName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := '.cfg'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20017318; bytecode file offset 0x78400"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) prepare.
    (self) loadServerConfigurationSpec.
    (self) applyConfigurationOverrides.
    recoveredValue0 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := (self) config.
    recoveredBlock12Value1 := (recoveredBlock12Value0) instantiateAndRun.
    recoveredBlock12Value1
].
    recoveredValue1 := ExSstSetupError.
    recoveredValue2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) printString.
    recoveredBlock24Value2 := (self) startUpError: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20020d38; bytecode file offset 0x81e20"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
applyConfigurationOverrides
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) config.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) logFileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) logFileName: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) config.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) logFileName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) config.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLogFileName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) logFileName: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverUrl.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) config.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) serverUrl.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) serverUrl: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverId.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) config.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) serverId.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) serverId: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) config.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverUrl.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) config.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultServerUrl.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) serverUrl: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200237e4; bytecode file offset 0x848fc"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
run
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := MxSSTH67.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) parseCommandLine.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) haltOnStartUp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) halt.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) debugPrintString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpError: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) haltOnStartUp.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) trapExceptions: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) forwardExceptions: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) haltPath.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) haltPath: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := Semaphore.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20026c64; bytecode file offset 0x87d64"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
loadServerConfigurationSpec
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) configFileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := MxSSTH65.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) configFileName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpError: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := (self) configSpecClass.
    recoveredBlock35Value1 := recoveredLocal2.
    recoveredBlock35Value2 := (recoveredBlock35Value0) readFrom: (recoveredBlock35Value1).
    recoveredBlock35Value3 := recoveredBlock35Value2.
    recoveredLocal1 := recoveredBlock35Value3.
    recoveredBlock35Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 |
    recoveredBlock54Value0 := recoveredLocal2.
    recoveredBlock54Value1 := (recoveredBlock54Value0) close.
    recoveredBlock54Value1
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := MxSSTH65.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) configFileName.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := (recoveredStack4) debugPrintString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpError: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) config: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002f0c4; bytecode file offset 0x901d8"
!SstHttpServletEngineBootstrap methodsFor: 'recovered'!
parseCommandLine
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) commandLine.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := '--halt'.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sameAs: (recoveredBlock7Stack2).
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 56].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal2.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 52] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack2 := System.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) commandLine.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) < (recoveredBlock7Stack2).
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 38] ifFalse: [recoveredBlock7PC := 52].
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := System.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) commandLine.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg2.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) + (1).
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) printCommandLineUsage.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack2 := '--conf'.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sameAs: (recoveredBlock7Stack2).
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 64] ifFalse: [recoveredBlock7PC := 98].
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal6.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 94] ifFalse: [recoveredBlock7PC := 70].
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Stack2 := System.
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) commandLine.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) < (recoveredBlock7Stack2).
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 80] ifFalse: [recoveredBlock7PC := 94].
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Stack1 := System.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) commandLine.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg2.
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) + (1).
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredLocal6 := recoveredBlock7Stack1.
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 94 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) printCommandLineUsage.
            recoveredBlock7PC := 97.
        ].
        recoveredBlock7Step = 97 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7Stack2 := '--sid'.
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sameAs: (recoveredBlock7Stack2).
            recoveredBlock7PC := 102.
        ].
        recoveredBlock7Step = 102 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 106] ifFalse: [recoveredBlock7PC := 140].
        ].
        recoveredBlock7Step = 106 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal4.
            recoveredBlock7PC := 109.
        ].
        recoveredBlock7Step = 109 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 136] ifFalse: [recoveredBlock7PC := 112].
        ].
        recoveredBlock7Step = 112 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 113.
        ].
        recoveredBlock7Step = 113 ifTrue: [
            recoveredBlock7Stack2 := System.
            recoveredBlock7PC := 115.
        ].
        recoveredBlock7Step = 115 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) commandLine.
            recoveredBlock7PC := 116.
        ].
        recoveredBlock7Step = 116 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 118.
        ].
        recoveredBlock7Step = 118 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) < (recoveredBlock7Stack2).
            recoveredBlock7PC := 119.
        ].
        recoveredBlock7Step = 119 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 122] ifFalse: [recoveredBlock7PC := 136].
        ].
        recoveredBlock7Step = 122 ifTrue: [
            recoveredBlock7Stack1 := System.
            recoveredBlock7PC := 124.
        ].
        recoveredBlock7Step = 124 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) commandLine.
            recoveredBlock7PC := 125.
        ].
        recoveredBlock7Step = 125 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg2.
            recoveredBlock7PC := 126.
        ].
        recoveredBlock7Step = 126 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) + (1).
            recoveredBlock7PC := 127.
        ].
        recoveredBlock7Step = 127 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 129.
        ].
        recoveredBlock7Step = 129 ifTrue: [
            recoveredLocal4 := recoveredBlock7Stack1.
            recoveredBlock7PC := 132.
        ].
        recoveredBlock7Step = 132 ifTrue: [
            recoveredBlock7PC := 140.
        ].
        recoveredBlock7Step = 136 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 137.
        ].
        recoveredBlock7Step = 137 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) printCommandLineUsage.
            recoveredBlock7PC := 139.
        ].
        recoveredBlock7Step = 139 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 140 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 141.
        ].
        recoveredBlock7Step = 141 ifTrue: [
            recoveredBlock7Stack2 := '--log'.
            recoveredBlock7PC := 143.
        ].
        recoveredBlock7Step = 143 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sameAs: (recoveredBlock7Stack2).
            recoveredBlock7PC := 144.
        ].
        recoveredBlock7Step = 144 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 148] ifFalse: [recoveredBlock7PC := 182].
        ].
        recoveredBlock7Step = 148 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal5.
            recoveredBlock7PC := 151.
        ].
        recoveredBlock7Step = 151 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 178] ifFalse: [recoveredBlock7PC := 154].
        ].
        recoveredBlock7Step = 154 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 155.
        ].
        recoveredBlock7Step = 155 ifTrue: [
            recoveredBlock7Stack2 := System.
            recoveredBlock7PC := 157.
        ].
        recoveredBlock7Step = 157 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) commandLine.
            recoveredBlock7PC := 158.
        ].
        recoveredBlock7Step = 158 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 160.
        ].
        recoveredBlock7Step = 160 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) < (recoveredBlock7Stack2).
            recoveredBlock7PC := 161.
        ].
        recoveredBlock7Step = 161 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 164] ifFalse: [recoveredBlock7PC := 178].
        ].
        recoveredBlock7Step = 164 ifTrue: [
            recoveredBlock7Stack1 := System.
            recoveredBlock7PC := 166.
        ].
        recoveredBlock7Step = 166 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) commandLine.
            recoveredBlock7PC := 167.
        ].
        recoveredBlock7Step = 167 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg2.
            recoveredBlock7PC := 168.
        ].
        recoveredBlock7Step = 168 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) + (1).
            recoveredBlock7PC := 169.
        ].
        recoveredBlock7Step = 169 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 171.
        ].
        recoveredBlock7Step = 171 ifTrue: [
            recoveredLocal5 := recoveredBlock7Stack1.
            recoveredBlock7PC := 174.
        ].
        recoveredBlock7Step = 174 ifTrue: [
            recoveredBlock7PC := 182.
        ].
        recoveredBlock7Step = 178 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 179.
        ].
        recoveredBlock7Step = 179 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) printCommandLineUsage.
            recoveredBlock7PC := 181.
        ].
        recoveredBlock7Step = 181 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 182 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 183.
        ].
        recoveredBlock7Step = 183 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 184.
        ].
        recoveredBlock7Step = 184 ifTrue: [
            recoveredBlock7Stack3 := '--listen'.
            recoveredBlock7PC := 186.
        ].
        recoveredBlock7Step = 186 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) sameAs: (recoveredBlock7Stack3).
            recoveredBlock7PC := 187.
        ].
        recoveredBlock7Step = 187 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 190] ifFalse: [recoveredBlock7PC := 226].
        ].
        recoveredBlock7Step = 190 ifTrue: [
            recoveredBlock7PC := 191.
        ].
        recoveredBlock7Step = 191 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal7.
            recoveredBlock7PC := 194.
        ].
        recoveredBlock7Step = 194 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 222] ifFalse: [recoveredBlock7PC := 198].
        ].
        recoveredBlock7Step = 198 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 199.
        ].
        recoveredBlock7Step = 199 ifTrue: [
            recoveredBlock7Stack2 := System.
            recoveredBlock7PC := 201.
        ].
        recoveredBlock7Step = 201 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) commandLine.
            recoveredBlock7PC := 202.
        ].
        recoveredBlock7Step = 202 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 204.
        ].
        recoveredBlock7Step = 204 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) < (recoveredBlock7Stack2).
            recoveredBlock7PC := 205.
        ].
        recoveredBlock7Step = 205 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 208] ifFalse: [recoveredBlock7PC := 222].
        ].
        recoveredBlock7Step = 208 ifTrue: [
            recoveredBlock7Stack1 := System.
            recoveredBlock7PC := 210.
        ].
        recoveredBlock7Step = 210 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) commandLine.
            recoveredBlock7PC := 211.
        ].
        recoveredBlock7Step = 211 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg2.
            recoveredBlock7PC := 212.
        ].
        recoveredBlock7Step = 212 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) + (1).
            recoveredBlock7PC := 213.
        ].
        recoveredBlock7Step = 213 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 215.
        ].
        recoveredBlock7Step = 215 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 216.
        ].
        recoveredBlock7Step = 216 ifTrue: [
            recoveredLocal7 := recoveredBlock7Stack2.
            recoveredBlock7PC := 219.
        ].
        recoveredBlock7Step = 219 ifTrue: [
            recoveredBlock7PC := 226.
        ].
        recoveredBlock7Step = 222 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 223.
        ].
        recoveredBlock7Step = 223 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) printCommandLineUsage.
            recoveredBlock7PC := 225.
        ].
        recoveredBlock7Step = 225 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 226 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstAsUrl.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := 'http://:'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstAsUrl.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) printCommandLineUsage.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) serverUrl: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) configFileName: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) logFileName: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) serverId: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) haltPath: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

