"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201149c8; bytecode file offset 0xa11290"
!EtasCebra class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasToolboxDescriptor.
    recoveredValue1 := (recoveredValue0) createLabel: ('ASCET Cebra Package') packageName: ('BIP-Cebra') application: ('None') fileName: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2039a2c0; bytecode file offset 0xc96bc8"
!EtasCebra class methodsFor: 'recovered'!
finalizeToolbox
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Fassade.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) unregisterOnErrorManager.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInitialized.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    | block280f3f54Stack0 block280f3f54Stack1 block280f3f54Stack2 block280f3f54PC block280f3f54Step block280f3f54Done block280f3f54Result |
    block280f3f54Stack0 := self.
    block280f3f54PC := 4.
    block280f3f54Done := false.
    [block280f3f54Done not] whileTrue: [
        block280f3f54Step := block280f3f54PC.
        block280f3f54Step = 4 ifTrue: [
            block280f3f54Stack1 := [
    | block280f3f78Stack0 block280f3f78Stack1 block280f3f78Stack2 block280f3f78Stack3 block280f3f78PC block280f3f78Step block280f3f78Done block280f3f78Result |
    block280f3f78Stack0 := self.
    block280f3f78PC := 4.
    block280f3f78Done := false.
    [block280f3f78Done not] whileTrue: [
        block280f3f78Step := block280f3f78PC.
        block280f3f78Step = 4 ifTrue: [
            block280f3f78Stack1 := EtasCebraMain.
            block280f3f78PC := 6.
        ].
        block280f3f78Step = 6 ifTrue: [
            (block280f3f78Stack1) shutDownCebra.
            block280f3f78PC := 8.
        ].
        block280f3f78Step = 8 ifTrue: [
            block280f3f78Stack1 := nil.
            block280f3f78PC := 9.
        ].
        block280f3f78Step = 9 ifTrue: [
            block280f3f78Stack2 := toolServer.
            block280f3f78PC := 11.
        ].
        block280f3f78Step = 11 ifTrue: [
            (block280f3f78Stack2 == nil) ifTrue: [block280f3f78PC := 23] ifFalse: [block280f3f78PC := 14].
        ].
        block280f3f78Step = 14 ifTrue: [
            block280f3f78PC := 15.
        ].
        block280f3f78Step = 15 ifTrue: [
            block280f3f78Stack1 := toolServer.
            block280f3f78PC := 17.
        ].
        block280f3f78Step = 17 ifTrue: [
            (block280f3f78Stack1) shutDown.
            block280f3f78PC := 19.
        ].
        block280f3f78Step = 19 ifTrue: [
            block280f3f78Stack1 := nil.
            block280f3f78PC := 20.
        ].
        block280f3f78Step = 20 ifTrue: [
            block280f3f78Stack2 := block280f3f78Stack1.
            block280f3f78PC := 21.
        ].
        block280f3f78Step = 21 ifTrue: [
            toolServer := block280f3f78Stack2.
            block280f3f78PC := 23.
        ].
        block280f3f78Step = 23 ifTrue: [
            block280f3f78Result := block280f3f78Stack1.
            block280f3f78Done := true.
        ].
    ].
    block280f3f78Result
].
            block280f3f54PC := 6.
        ].
        block280f3f54Step = 6 ifTrue: [
            block280f3f54PC := 30.
        ].
        block280f3f54Step = 30 ifTrue: [
            block280f3f54Result := block280f3f54Stack1.
            block280f3f54Done := true.
        ].
    ].
    block280f3f54Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) critical.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'Call_58793'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'Call_70113'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := SGObjectHandle.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := super finalizeToolbox.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20429330; bytecode file offset 0xd25c40"
!EtasCebra class methodsFor: 'recovered'!
initializeToolboxAfterLoadForTool: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) programPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) initialized: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := EtasCebraMain.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) initializedClass: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SGToolServer.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) initializedClass: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolName.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := EtasCebraMain.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) toolName: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := EtasCebraMain.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := SGToolServer.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInitialized.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionToolServer.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := SGToolServer.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := EtasCebraMain.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolName.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            toolServer := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := toolServer.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := toolServer.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) start.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) setCOMServerInformationInRegistryForTool: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := Fassade.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) registerOnErrorManager.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20571a78; bytecode file offset 0xe6e3f0"
!EtasCebra class methodsFor: 'recovered'!
setCOMServerInformationInRegistryForTool: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionToolServer.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) programCebraPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseDotNetToolServer.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'Net.reg'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := '.reg'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'reReg.bat'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := EtasOleAutomationObject.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) clsidFrom: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := ETASDosBox.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 'regedit.exe /s '.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := 'Register com-API'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) executeCmdLine: (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 500.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := EtasOleAutomationObject.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) clsidFrom: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := 'Registration from Ascet should be done manually with admin rights. \'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := ' not found!! \Please execute: %1'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrLfs.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack2) addDateAndTime.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := 'ASDASCETRegistrationCheckDialog'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := 'DONTSHOWAGAIN'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack2) nextTimeButtonText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := 'OK'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := 'info'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

