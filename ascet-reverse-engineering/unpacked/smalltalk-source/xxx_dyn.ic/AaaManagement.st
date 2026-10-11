"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200064f0; bytecode file offset 0x675cc"
!AaaManagement methodsFor: 'recovered'!
restart
    (self) shutDown.
    (self) startUp.
    ^self
! !

"xxx_dyn.ic method 0x20008ea4; bytecode file offset 0x69f7c"
!AaaManagement methodsFor: 'recovered'!
containerName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SciSocketManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) getHostName.
    recoveredValue3 := ('AAA_') , (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20008ed0; bytecode file offset 0x69f9c"
!AaaManagement methodsFor: 'recovered'!
shutDownProcessId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := shutDownProcessId.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20008ef0; bytecode file offset 0x69fbc"
!AaaManagement methodsFor: 'recovered'!
clearDeployed
    isDeployed := false.
    (self) broadcast: ('wsStateNotAvailable').
    ^self
! !

"xxx_dyn.ic method 0x20008f10; bytecode file offset 0x69fdc"
!AaaManagement methodsFor: 'recovered'!
setDeployed
    isDeployed := true.
    (self) broadcast: ('wsStateAvailable').
    ^self
! !

"xxx_dyn.ic method 0x200097cc; bytecode file offset 0x6a890"
!AaaManagement methodsFor: 'recovered'!
isDeployed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := isDeployed.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := isDeployed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000a380; bytecode file offset 0x6b44c"
!AaaManagement methodsFor: 'recovered'!
shutDownProcessId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    shutDownProcessId := recoveredValue2.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000e804; bytecode file offset 0x6f8e8"
!AaaManagement methodsFor: 'recovered'!
tempPathForUserDefinedPortWebServices
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := ASDPathOptions.
    recoveredValue2 := (recoveredValue1) instance.
    recoveredValue3 := (recoveredValue2) optionTempPath.
    recoveredValue4 := (recoveredValue3) , ('Web Service').
    recoveredValue5 := (recoveredValue4) asPathname.
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x20013c8c; bytecode file offset 0x74d70"
!AaaManagement methodsFor: 'recovered'!
createShutdownProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    (self) removeShutdownProcess.
    recoveredValue1 := CwAppContext.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := (recoveredValue2) addTimeout: (100) receiver: (self) selector: ('closeTool:') clientData: (nil).
    (self) shutDownProcessId: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x20014bcc; bytecode file offset 0x75cb0"
!AaaManagement methodsFor: 'recovered'!
removeShutdownProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) shutDownProcessId.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := CwAppContext.
    recoveredBlock11Value1 := (recoveredBlock11Value0) default.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    (recoveredBlock11Value1) removeTimeout: (recoveredBlock11Value2).
    recoveredBlock11Value3 := (self) shutDownProcessId: (nil).
    recoveredBlock11Value3
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x2001ca20; bytecode file offset 0x7db08"
!AaaManagement methodsFor: 'recovered'!
shutDown
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeployable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASDAAAOptions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionWebServiceActive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 50.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := Delay.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) forMilliseconds: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeployed.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) clear.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001d680; bytecode file offset 0x7e76c"
!AaaManagement methodsFor: 'recovered'!
fileOutWebServiceWalkbackFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal1 := 'System error in automation API occurred'.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := WSSignal.
    recoveredValue2 := (recoveredValue0) propertyNamed: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) argument.
    recoveredBlock15Value2 := [:recoveredBlock15Block24Arg1 | 
    | recoveredBlock15Block24Value0 recoveredBlock15Block24Value1 |
    recoveredBlock15Block24Value0 := recoveredBlock15Block24Arg1.
    recoveredBlock15Block24Value1 := recoveredBlock15Block24Value0.
    recoveredLocal1 := recoveredBlock15Block24Value1.
    recoveredBlock15Block24Value0
].
    recoveredBlock15Value3 := (recoveredBlock15Value1) ifNotNil: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := System.
    recoveredValue5 := (recoveredValue4) startUpClass.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := Processor.
    recoveredValue8 := (recoveredValue7) activeProcess.
    (recoveredValue5) outputWalkbackIntoSeperateFile: (recoveredValue6) process: (recoveredValue8).
    ^self
! !

"xxx_dyn.ic method 0x2001da28; bytecode file offset 0x7eb14"
!AaaManagement methodsFor: 'recovered'!
isDeployable
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAAAOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWebServiceDescriptionPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectory: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := AbtXmlConfiguration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultResourceQualifier.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectory: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200271ec; bytecode file offset 0x88300"
!AaaManagement methodsFor: 'recovered'!
clear
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstWSContainer.
    recoveredValue1 := (self) containerName.
    recoveredValue2 := (recoveredValue0) containerNamed: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) allServices.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := [:recoveredBlock9Block20Arg1 | 
    | recoveredBlock9Block20Value0 recoveredBlock9Block20Value1 recoveredBlock9Block20Value2 |
    recoveredBlock9Block20Value0 := recoveredBlock9Arg1.
    recoveredBlock9Block20Value1 := recoveredBlock9Block20Arg1.
    recoveredBlock9Block20Value2 := (recoveredBlock9Block20Value0) undeploy: (recoveredBlock9Block20Value1).
    recoveredBlock9Block20Value2
].
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            (recoveredBlock9Stack1) do: (recoveredBlock9Stack2).
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack1 := SstWSContainer.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            (recoveredBlock9Stack1) removeContainer: (recoveredBlock9Stack2).
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            (recoveredBlock9Stack1) clear.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) portManager.
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack2 := [:block2800bfacArg1 | 
    | block2800bfacStack0 block2800bfacStack1 block2800bfacStack2 block2800bfacStack3 block2800bfacPC block2800bfacStep block2800bfacDone block2800bfacResult |
    block2800bfacStack0 := self.
    block2800bfacPC := 4.
    block2800bfacDone := false.
    [block2800bfacDone not] whileTrue: [
        block2800bfacStep := block2800bfacPC.
        block2800bfacStep = 4 ifTrue: [
            block2800bfacPC := 12.
        ].
        block2800bfacStep = 8 ifTrue: [
            block2800bfacStack1 := Processor.
            block2800bfacPC := 10.
        ].
        block2800bfacStep = 10 ifTrue: [
            (block2800bfacStack1) yield.
            block2800bfacPC := 12.
        ].
        block2800bfacStep = 12 ifTrue: [
            block2800bfacStack1 := block2800bfacArg1.
            block2800bfacPC := 13.
        ].
        block2800bfacStep = 13 ifTrue: [
            block2800bfacStack1 := (block2800bfacStack1) endpoints.
            block2800bfacPC := 15.
        ].
        block2800bfacStep = 15 ifTrue: [
            block2800bfacStack2 := [:block2800bfd0Arg1 | 
    | block2800bfd0Stack0 block2800bfd0Stack1 block2800bfd0Stack2 block2800bfd0Stack3 block2800bfd0PC block2800bfd0Step block2800bfd0Done block2800bfd0Result |
    block2800bfd0Stack0 := self.
    block2800bfd0PC := 4.
    block2800bfd0Done := false.
    [block2800bfd0Done not] whileTrue: [
        block2800bfd0Step := block2800bfd0PC.
        block2800bfd0Step = 4 ifTrue: [
            block2800bfd0Stack1 := block2800bfd0Arg1.
            block2800bfd0PC := 5.
        ].
        block2800bfd0Step = 5 ifTrue: [
            block2800bfd0Stack1 := (block2800bfd0Stack1) handlers.
            block2800bfd0PC := 7.
        ].
        block2800bfd0Step = 7 ifTrue: [
            block2800bfd0Stack2 := [:block2800bff4Arg1 | 
    | block2800bff4Value0 block2800bff4Value1 |
    block2800bff4Value0 := block2800bff4Arg1.
    block2800bff4Value1 := (block2800bff4Value0) isRunning.
    block2800bff4Value1
].
            block2800bfd0PC := 9.
        ].
        block2800bfd0Step = 9 ifTrue: [
            block2800bfd0PC := 16.
        ].
        block2800bfd0Step = 16 ifTrue: [
            block2800bfd0Stack1 := (block2800bfd0Stack1) anySatisfy: (block2800bfd0Stack2).
            block2800bfd0PC := 18.
        ].
        block2800bfd0Step = 18 ifTrue: [
            block2800bfd0Result := block2800bfd0Stack1.
            block2800bfd0Done := true.
        ].
    ].
    block2800bfd0Result
].
            block2800bfacPC := 17.
        ].
        block2800bfacStep = 17 ifTrue: [
            block2800bfacPC := 35.
        ].
        block2800bfacStep = 35 ifTrue: [
            block2800bfacStack1 := (block2800bfacStack1) anySatisfy: (block2800bfacStack2).
            block2800bfacPC := 37.
        ].
        block2800bfacStep = 37 ifTrue: [
            (block2800bfacStack1) ifTrue: [block2800bfacPC := 8] ifFalse: [block2800bfacPC := 39].
        ].
        block2800bfacStep = 39 ifTrue: [
            block2800bfacStack1 := nil.
            block2800bfacPC := 40.
        ].
        block2800bfacStep = 40 ifTrue: [
            block2800bfacResult := block2800bfacStack1.
            block2800bfacDone := true.
        ].
    ].
    block2800bfacResult
].
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9PC := 95.
        ].
        recoveredBlock9Step = 95 ifTrue: [
            (recoveredBlock9Stack1) ifNotNil: (recoveredBlock9Stack2).
            recoveredBlock9PC := 97.
        ].
        recoveredBlock9Step = 97 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) clearDeployed.
            recoveredBlock9PC := 99.
        ].
        recoveredBlock9Step = 99 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x2002a9d4; bytecode file offset 0x8bb00"
!AaaManagement methodsFor: 'recovered'!
copyWSDLFilesToTempDirectoryUsePort: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) tempPathForUserDefinedPortWebServices.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := CfsStat.
    recoveredValue3 := recoveredLocal3.
    (recoveredValue2) ensurePath: (recoveredValue3).
    recoveredValue4 := AaaWebServiceInterface.
    recoveredValue5 := (recoveredValue4) getDefaultResourceQualifierKey.
    recoveredValue6 := (recoveredValue5) asPathname.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := CfsDirectoryDescriptor.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue7) findFileNames: ('Aaa*interface.wsdl') local: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Local1 recoveredBlock45Local2 recoveredBlock45Local3 recoveredBlock45Local4 recoveredBlock45Local5 recoveredBlock45Local6 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45Stack6 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := CfsReadFileStream.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) open: (recoveredBlock45Stack2).
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Local6 := recoveredBlock45Stack1.
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 61.
        ].
        recoveredBlock45Step = 61 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local6.
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) isCfsError.
            recoveredBlock45PC := 65.
        ].
        recoveredBlock45Step = 65 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 135] ifFalse: [recoveredBlock45PC := 68].
        ].
        recoveredBlock45Step = 68 ifTrue: [
            recoveredBlock45PC := 69.
        ].
        recoveredBlock45Step = 69 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local6.
            recoveredBlock45PC := 71.
        ].
        recoveredBlock45Step = 71 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) contents.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Local5 := recoveredBlock45Stack1.
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local6.
            recoveredBlock45PC := 77.
        ].
        recoveredBlock45Step = 77 ifTrue: [
            (recoveredBlock45Stack1) close.
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 79 ifTrue: [
            recoveredBlock45Stack1 := '<soap:address location="http://localhost:32510/SstWSServlet"/>'.
            recoveredBlock45PC := 81.
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Local4 := recoveredBlock45Stack1.
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack1 := '<soap:address location="http://localhost:%1/SstWSServlet"/>'.
            recoveredBlock45PC := 84.
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45Stack2 := recoveredArg1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) bindWith: (recoveredBlock45Stack2).
            recoveredBlock45PC := 89.
        ].
        recoveredBlock45Step = 89 ifTrue: [
            recoveredBlock45Local3 := recoveredBlock45Stack1.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 93.
        ].
        recoveredBlock45Step = 93 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 95.
        ].
        recoveredBlock45Step = 95 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) fileName.
            recoveredBlock45PC := 97.
        ].
        recoveredBlock45Step = 97 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) , (recoveredBlock45Stack2).
            recoveredBlock45PC := 99.
        ].
        recoveredBlock45Step = 99 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 100.
        ].
        recoveredBlock45Step = 100 ifTrue: [
            recoveredBlock45Stack1 := CfsReadWriteFileStream.
            recoveredBlock45PC := 102.
        ].
        recoveredBlock45Step = 102 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local1.
            recoveredBlock45PC := 103.
        ].
        recoveredBlock45Step = 103 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) openEmpty: (recoveredBlock45Stack2).
            recoveredBlock45PC := 105.
        ].
        recoveredBlock45Step = 105 ifTrue: [
            recoveredBlock45Local2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 106.
        ].
        recoveredBlock45Step = 106 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 107.
        ].
        recoveredBlock45Step = 107 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local2.
            recoveredBlock45PC := 108.
        ].
        recoveredBlock45Step = 108 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) isCfsError.
            recoveredBlock45PC := 110.
        ].
        recoveredBlock45Step = 110 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 127] ifFalse: [recoveredBlock45PC := 114].
        ].
        recoveredBlock45Step = 114 ifTrue: [
            recoveredBlock45PC := 115.
        ].
        recoveredBlock45Step = 115 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local2.
            recoveredBlock45PC := 116.
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 117.
        ].
        recoveredBlock45Step = 117 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Local5.
            recoveredBlock45PC := 119.
        ].
        recoveredBlock45Step = 119 ifTrue: [
            recoveredBlock45Stack4 := recoveredBlock45Local4.
            recoveredBlock45PC := 120.
        ].
        recoveredBlock45Step = 120 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local3.
            recoveredBlock45PC := 121.
        ].
        recoveredBlock45Step = 121 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) replaceAllStrings: (recoveredBlock45Stack4) with: (recoveredBlock45Stack5).
            recoveredBlock45PC := 123.
        ].
        recoveredBlock45Step = 123 ifTrue: [
            (recoveredBlock45Stack2) nextPutAll: (recoveredBlock45Stack3).
            recoveredBlock45PC := 125.
        ].
        recoveredBlock45Step = 125 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) close.
            recoveredBlock45PC := 127.
        ].
        recoveredBlock45Step = 127 ifTrue: [
            recoveredBlock45Stack2 := nil.
            recoveredBlock45PC := 128.
        ].
        recoveredBlock45Step = 128 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 129.
        ].
        recoveredBlock45Step = 129 ifTrue: [
            recoveredBlock45Local4 := recoveredBlock45Stack3.
            recoveredBlock45PC := 130.
        ].
        recoveredBlock45Step = 130 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 131.
        ].
        recoveredBlock45Step = 131 ifTrue: [
            recoveredBlock45Local3 := recoveredBlock45Stack3.
            recoveredBlock45PC := 132.
        ].
        recoveredBlock45Step = 132 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 133.
        ].
        recoveredBlock45Step = 133 ifTrue: [
            recoveredBlock45Local2 := recoveredBlock45Stack3.
            recoveredBlock45PC := 134.
        ].
        recoveredBlock45Step = 134 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack2.
            recoveredBlock45PC := 135.
        ].
        recoveredBlock45Step = 135 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
    (recoveredValue10) do: (recoveredValue11).
    ^self
! !

"xxx_dyn.ic method 0x2002ae48; bytecode file offset 0x8bf58"
!AaaManagement methodsFor: 'recovered'!
registerHandlers
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstWSContainer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) containerName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) containerNamed: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlerFactory.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SstWSPluggableHandler.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (self) broadcast: ('wsStateRequest:') with: (recoveredBlock26Value0).
    recoveredBlock26Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) invokeBlock: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := SstWSSimpleChain.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) addHandler: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 'wsHttpServerRequestHandler'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) handlerNamed: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) addHandler: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 'wsHttpServerRequestHandler'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) globalNamespace.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) register: (recoveredStack2) named: (recoveredStack3) inNamespace: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := SstWSPluggableHandler.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := (self) broadcast: ('wsStateResponse:') with: (recoveredBlock72Value0).
    recoveredBlock72Value1
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) invokeBlock: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := SstWSSimpleChain.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := 'wsHttpServerResponseHandler'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) handlerNamed: (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) addHandler: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) addHandler: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := 'wsHttpServerResponseHandler'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := (recoveredStack4) globalNamespace.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) register: (recoveredStack2) named: (recoveredStack3) inNamespace: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := SstWSPluggableHandler.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 recoveredBlock118Value1 |
    recoveredBlock118Value0 := recoveredBlock118Arg1.
    recoveredBlock118Value1 := (self) fileOutWebServiceWalkbackFor: (recoveredBlock118Value0).
    recoveredBlock118Value1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) invokeBlock: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := WSGlobalFaultServerHandler.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := (recoveredStack4) globalNamespace.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) register: (recoveredStack2) named: (recoveredStack3) inNamespace: (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002bf64; bytecode file offset 0x8d0a0"
!AaaManagement methodsFor: 'recovered'!
copyXMLFilesToTempDirectory
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeployable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempPathForUserDefinedPortWebServices.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ensurePath: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := ASDAAAOptions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionWebServiceDescriptionPath.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := '*.xml'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFileNames: (recoveredStack1) local: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Local1 recoveredBlock54Local2 recoveredBlock54Local3 recoveredBlock54Local4 recoveredBlock54Local5 recoveredBlock54Local6 recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54Stack5 recoveredBlock54Stack6 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := CfsReadFileStream.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) open: (recoveredBlock54Stack2).
            recoveredBlock54PC := 66.
        ].
        recoveredBlock54Step = 66 ifTrue: [
            recoveredBlock54Local6 := recoveredBlock54Stack1.
            recoveredBlock54PC := 68.
        ].
        recoveredBlock54Step = 68 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 69.
        ].
        recoveredBlock54Step = 69 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local6.
            recoveredBlock54PC := 71.
        ].
        recoveredBlock54Step = 71 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) isCfsError.
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 153] ifFalse: [recoveredBlock54PC := 76].
        ].
        recoveredBlock54Step = 76 ifTrue: [
            recoveredBlock54PC := 77.
        ].
        recoveredBlock54Step = 77 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local6.
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) contents.
            recoveredBlock54PC := 81.
        ].
        recoveredBlock54Step = 81 ifTrue: [
            recoveredBlock54Local5 := recoveredBlock54Stack1.
            recoveredBlock54PC := 83.
        ].
        recoveredBlock54Step = 83 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local6.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            (recoveredBlock54Stack1) close.
            recoveredBlock54PC := 87.
        ].
        recoveredBlock54Step = 87 ifTrue: [
            recoveredBlock54Stack1 := '<wsdlUrl>%1.wsdl</wsdlUrl>'.
            recoveredBlock54PC := 89.
        ].
        recoveredBlock54Step = 89 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 91.
        ].
        recoveredBlock54Step = 91 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) fileNameOnly.
            recoveredBlock54PC := 93.
        ].
        recoveredBlock54Step = 93 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) bindWith: (recoveredBlock54Stack2).
            recoveredBlock54PC := 95.
        ].
        recoveredBlock54Step = 95 ifTrue: [
            recoveredBlock54Local4 := recoveredBlock54Stack1.
            recoveredBlock54PC := 96.
        ].
        recoveredBlock54Step = 96 ifTrue: [
            recoveredBlock54Stack1 := '<wsdlUrl>%1%2.wsdl</wsdlUrl>'.
            recoveredBlock54PC := 98.
        ].
        recoveredBlock54Step = 98 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal3.
            recoveredBlock54PC := 101.
        ].
        recoveredBlock54Step = 101 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg1.
            recoveredBlock54PC := 103.
        ].
        recoveredBlock54Step = 103 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) fileNameOnly.
            recoveredBlock54PC := 105.
        ].
        recoveredBlock54Step = 105 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) bindWith: (recoveredBlock54Stack2) with: (recoveredBlock54Stack3).
            recoveredBlock54PC := 107.
        ].
        recoveredBlock54Step = 107 ifTrue: [
            recoveredBlock54Local3 := recoveredBlock54Stack1.
            recoveredBlock54PC := 108.
        ].
        recoveredBlock54Step = 108 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal3.
            recoveredBlock54PC := 111.
        ].
        recoveredBlock54Step = 111 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 113.
        ].
        recoveredBlock54Step = 113 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) fileName.
            recoveredBlock54PC := 115.
        ].
        recoveredBlock54Step = 115 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) , (recoveredBlock54Stack2).
            recoveredBlock54PC := 117.
        ].
        recoveredBlock54Step = 117 ifTrue: [
            recoveredBlock54Local1 := recoveredBlock54Stack1.
            recoveredBlock54PC := 118.
        ].
        recoveredBlock54Step = 118 ifTrue: [
            recoveredBlock54Stack1 := CfsReadWriteFileStream.
            recoveredBlock54PC := 120.
        ].
        recoveredBlock54Step = 120 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local1.
            recoveredBlock54PC := 121.
        ].
        recoveredBlock54Step = 121 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) openEmpty: (recoveredBlock54Stack2).
            recoveredBlock54PC := 123.
        ].
        recoveredBlock54Step = 123 ifTrue: [
            recoveredBlock54Local2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 124.
        ].
        recoveredBlock54Step = 124 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 125.
        ].
        recoveredBlock54Step = 125 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local2.
            recoveredBlock54PC := 126.
        ].
        recoveredBlock54Step = 126 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) isCfsError.
            recoveredBlock54PC := 128.
        ].
        recoveredBlock54Step = 128 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 145] ifFalse: [recoveredBlock54PC := 132].
        ].
        recoveredBlock54Step = 132 ifTrue: [
            recoveredBlock54PC := 133.
        ].
        recoveredBlock54Step = 133 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local2.
            recoveredBlock54PC := 134.
        ].
        recoveredBlock54Step = 134 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 135.
        ].
        recoveredBlock54Step = 135 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Local5.
            recoveredBlock54PC := 137.
        ].
        recoveredBlock54Step = 137 ifTrue: [
            recoveredBlock54Stack4 := recoveredBlock54Local4.
            recoveredBlock54PC := 138.
        ].
        recoveredBlock54Step = 138 ifTrue: [
            recoveredBlock54Stack5 := recoveredBlock54Local3.
            recoveredBlock54PC := 139.
        ].
        recoveredBlock54Step = 139 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) replaceAllStrings: (recoveredBlock54Stack4) with: (recoveredBlock54Stack5).
            recoveredBlock54PC := 141.
        ].
        recoveredBlock54Step = 141 ifTrue: [
            (recoveredBlock54Stack2) nextPutAll: (recoveredBlock54Stack3).
            recoveredBlock54PC := 143.
        ].
        recoveredBlock54Step = 143 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) close.
            recoveredBlock54PC := 145.
        ].
        recoveredBlock54Step = 145 ifTrue: [
            recoveredBlock54Stack2 := nil.
            recoveredBlock54PC := 146.
        ].
        recoveredBlock54Step = 146 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 147.
        ].
        recoveredBlock54Step = 147 ifTrue: [
            recoveredBlock54Local4 := recoveredBlock54Stack3.
            recoveredBlock54PC := 148.
        ].
        recoveredBlock54Step = 148 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 149.
        ].
        recoveredBlock54Step = 149 ifTrue: [
            recoveredBlock54Local3 := recoveredBlock54Stack3.
            recoveredBlock54PC := 150.
        ].
        recoveredBlock54Step = 150 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 151.
        ].
        recoveredBlock54Step = 151 ifTrue: [
            recoveredBlock54Local2 := recoveredBlock54Stack3.
            recoveredBlock54PC := 152.
        ].
        recoveredBlock54Step = 152 ifTrue: [
            recoveredBlock54Local1 := recoveredBlock54Stack2.
            recoveredBlock54PC := 153.
        ].
        recoveredBlock54Step = 153 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002e67c; bytecode file offset 0x8f808"
!AaaManagement methodsFor: 'recovered'!
startUp
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_81450'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeployed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeployable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) alternativeWebServicePort.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := ASDAAAOptions.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionWebServiceDescriptionPath.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempPathForUserDefinedPortWebServices.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := SstHttpCommunications.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverTransportConfiguration.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := SstHttpCommunications.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) lightTransportConfiguration.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) transportIdentifier.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) transportIdentifier.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := SstTransport.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) transportIdentifier.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) unregister: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := AaaHttpConnectionManager.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) connectionManagerClass: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := SstTransport.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) register: (recoveredStack1) mutuallyReachableBy: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := SstWSContainer.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) clearAll.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := SstWSContainer.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) containerName.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := SstWSContainerConfiguration.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultConfiguration.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContainerNamed: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) serializationManager.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) deserializationConfigurations.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := SstSoapDefaultEnvelopeNamespace.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementConfigurations.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := SstSoapDefaultEnvelopeNamespace.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := SstSoapBodyString.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := AaaWebServiceBodyContentHandler.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) handlerClass: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'Call_81450'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 'Aaa*Interface.xml'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFileNames: (recoveredStack1) local: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 267].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := [
    | recoveredBlock200Block206Value0 recoveredBlock200Block206Value1 recoveredBlock200Block206Value2 |
    recoveredBlock200Block206Value0 := recoveredLocal12.
    recoveredBlock200Block206Value1 := [:recoveredBlock200Block206Block215Arg1 | 
    | recoveredBlock200Block206Block215Value0 recoveredBlock200Block206Block215Value1 recoveredBlock200Block206Block215Value2 recoveredBlock200Block206Block215Value3 |
    recoveredBlock200Block206Block215Value0 := recoveredLocal13.
    recoveredBlock200Block206Block215Value1 := recoveredBlock200Block206Block215Arg1.
    recoveredBlock200Block206Block215Value2 := (recoveredBlock200Block206Block215Value0) deploy: (recoveredBlock200Block206Block215Value1).
    recoveredBlock200Block206Block215Value3 := recoveredBlock200Block206Block215Value2.
    recoveredLocal11 := recoveredBlock200Block206Block215Value3.
    recoveredBlock200Block206Block215Value2
].
    (recoveredBlock200Block206Value0) do: (recoveredBlock200Block206Value1).
    (self) registerHandlers.
    recoveredBlock200Block206Value2 := (self) setDeployed.
    recoveredBlock200Block206Value2
].
            recoveredBlock200PC := 241.
        ].
        recoveredBlock200Step = 241 ifTrue: [
            recoveredBlock200Stack2 := [].
            recoveredBlock200PC := 243.
        ].
        recoveredBlock200Step = 243 ifTrue: [
            (recoveredBlock200Stack1) valueIfFail: (recoveredBlock200Stack2).
            recoveredBlock200PC := 245.
        ].
        recoveredBlock200Step = 245 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 246.
        ].
        recoveredBlock200Step = 246 ifTrue: [
            recoveredBlock200Stack2 := ASDAscetController.
            recoveredBlock200PC := 248.
        ].
        recoveredBlock200Step = 248 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) instance.
            recoveredBlock200PC := 250.
        ].
        recoveredBlock200Step = 250 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) alternativeWebServicePort.
            recoveredBlock200PC := 252.
        ].
        recoveredBlock200Step = 252 ifTrue: [
            (recoveredBlock200Stack2 == nil) ifTrue: [recoveredBlock200PC := 264] ifFalse: [recoveredBlock200PC := 256].
        ].
        recoveredBlock200Step = 256 ifTrue: [
            recoveredBlock200PC := 257.
        ].
        recoveredBlock200Step = 257 ifTrue: [
            recoveredBlock200Stack1 := CfsDirectoryDescriptor.
            recoveredBlock200PC := 259.
        ].
        recoveredBlock200Step = 259 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal14.
            recoveredBlock200PC := 262.
        ].
        recoveredBlock200Step = 262 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) deletePathRecursiveWait: (recoveredBlock200Stack2).
            recoveredBlock200PC := 264.
        ].
        recoveredBlock200Step = 264 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) fork.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

