"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20119944; bytecode file offset 0xa16880"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
releaseOLEObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7bd8Arg1 | 
    | block280c7bd8Value0 block280c7bd8Value1 |
    block280c7bd8Value0 := block280c7bd8Arg1.
    block280c7bd8Value1 := (block280c7bd8Value0) releaseObject.
    block280c7bd8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x20177ef8; bytecode file offset 0xa7490c"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
importFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) intecrio.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) importModule: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20247a0c; bytecode file offset 0xb442d8"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
intecrio
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := intecrioOLEObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_73464'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ASDIntecrioConnectorActivexCalls.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getScriptingTool.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            intecrioOLEObject := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorStartINTECRIO.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := intecrioOLEObject.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) initializeScriptWrapper.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := intecrioOLEObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a0dd0; bytecode file offset 0xb9d6a4"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
intecrio: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := intecrioOLEObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_73464'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Cp'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'PROD42761'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ASDIntecrioConnectorActivexCalls.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getScriptingTool: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            intecrioOLEObject := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorStartINTECRIO.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := intecrioOLEObject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) initializeScriptWrapper.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := intecrioOLEObject.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20476434; bytecode file offset 0xd72d3c"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
openWorkspace: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDIntecrioConnectorActivexCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) resetCachedReferences.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorStartINTECRIO.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) workspace.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'workspacedirectory'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPath: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPathOnly.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) workspace.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPathOnly.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) continueOnDifferentWorkspace: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) closeWorkspace.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) openReadOnly: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWorkspace: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Could not create workspace'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) openWorkspace: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'Could not open workspace'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048ed48; bytecode file offset 0xd8b654"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
startTransfer: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionStringIntecrio.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) workspacePath.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) openWorkspace: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetProject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateModule: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) scoopIXFile.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) importFiles: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) system.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) workspacePath.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSystems: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) system.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) system.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorSystemNotInWorkspace: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrio.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) system.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSystem: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableBuild.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'HasMappedECU'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'Build'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1) withArguments: (recoveredStack2) returnType: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorBuildFailed.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a9304; bytecode file offset 0xda5bf8"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
getSystems: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) intecrio.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) workspace.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack1) openWorkspace: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) workspace.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) systems.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredLocal3 := recoveredBlock5Stack1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal3.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 62] ifFalse: [recoveredBlock5PC := 44].
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal3.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack2 := 'Count'.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) propertyAt: (recoveredBlock5Stack2).
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack2.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack2 := 0.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 62] ifFalse: [recoveredBlock5PC := 64].
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := OrderedCollection.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new.
            recoveredBlock5PC := 68.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack1 := Array.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack2 := 1.
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new: (recoveredBlock5Stack2).
            recoveredBlock5PC := 77.
        ].
        recoveredBlock5Step = 77 ifTrue: [
            recoveredLocal4 := recoveredBlock5Stack1.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack1 := -1.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) + (-1).
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 87 ifTrue: [
            recoveredBlock5PC := 117.
        ].
        recoveredBlock5Step = 90 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal4.
            recoveredBlock5PC := 93.
        ].
        recoveredBlock5Step = 93 ifTrue: [
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 95.
        ].
        recoveredBlock5Step = 95 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Local1.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            (recoveredBlock5Stack2) at: (recoveredBlock5Stack3) put: (recoveredBlock5Stack4).
            recoveredBlock5PC := 98.
        ].
        recoveredBlock5Step = 98 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 101.
        ].
        recoveredBlock5Step = 101 ifTrue: [
            recoveredBlock5Stack3 := recoveredLocal3.
            recoveredBlock5PC := 104.
        ].
        recoveredBlock5Step = 104 ifTrue: [
            recoveredBlock5Stack4 := 'Item'.
            recoveredBlock5PC := 106.
        ].
        recoveredBlock5Step = 106 ifTrue: [
            recoveredBlock5Stack5 := recoveredLocal4.
            recoveredBlock5PC := 109.
        ].
        recoveredBlock5Step = 109 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) propertyAt: (recoveredBlock5Stack4) withArguments: (recoveredBlock5Stack5).
            recoveredBlock5PC := 111.
        ].
        recoveredBlock5Step = 111 ifTrue: [
            recoveredBlock5Stack4 := 'Name'.
            recoveredBlock5PC := 113.
        ].
        recoveredBlock5Step = 113 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) propertyAt: (recoveredBlock5Stack4).
            recoveredBlock5PC := 115.
        ].
        recoveredBlock5Step = 115 ifTrue: [
            (recoveredBlock5Stack2) add: (recoveredBlock5Stack3).
            recoveredBlock5PC := 117.
        ].
        recoveredBlock5Step = 117 ifTrue: [
            (recoveredBlock5Stack1 isInteger and: [recoveredBlock5Local1 isInteger]) ifTrue: [(recoveredBlock5Local1 + 1 <= recoveredBlock5Stack1) ifTrue: [recoveredBlock5Local1 := recoveredBlock5Local1 + 1. recoveredBlock5PC := 90] ifFalse: [recoveredBlock5Local1 := nil. recoveredBlock5PC := 131]] ifFalse: [recoveredBlock5PC := 121].
        ].
        recoveredBlock5Step = 121 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 122.
        ].
        recoveredBlock5Step = 122 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 123.
        ].
        recoveredBlock5Step = 123 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) + (1).
            recoveredBlock5PC := 124.
        ].
        recoveredBlock5Step = 124 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Stack3.
            recoveredBlock5PC := 125.
        ].
        recoveredBlock5Step = 125 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack4.
            recoveredBlock5PC := 126.
        ].
        recoveredBlock5Step = 126 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) < (recoveredBlock5Stack3).
            recoveredBlock5PC := 127.
        ].
        recoveredBlock5Step = 127 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 129] ifFalse: [recoveredBlock5PC := 90].
        ].
        recoveredBlock5Step = 129 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 130.
        ].
        recoveredBlock5Step = 130 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 131.
        ].
        recoveredBlock5Step = 131 ifTrue: [
            recoveredBlock5PC := 132.
        ].
        recoveredBlock5Step = 132 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 135.
        ].
        recoveredBlock5Step = 135 ifTrue: [
            ^recoveredBlock5Stack1
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x204aebb4; bytecode file offset 0xdab4b0"
!ASDIntecrioScriptingConnectorTransfer methodsFor: 'recovered'!
getSystems: recoveredArg1 version: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Cp') == ('PROD42761').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) intecrio: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack0) openWorkspace: (recoveredBlock14Stack1).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack0 := recoveredBlock14Arg1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) workspace.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            (recoveredBlock14Stack0 ~~ nil) ifTrue: [recoveredBlock14PC := 34] ifFalse: [recoveredBlock14PC := 32].
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack0 := recoveredBlock14Arg1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) systems.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack0.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal3.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            (recoveredBlock14Stack0 == nil) ifTrue: [recoveredBlock14PC := 64] ifFalse: [recoveredBlock14PC := 46].
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal3.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack1 := 'Count'.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) propertyAt: (recoveredBlock14Stack1).
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack1 := 0.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) = (recoveredBlock14Stack1).
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 64] ifFalse: [recoveredBlock14PC := 66].
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack0 := OrderedCollection.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) new.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Stack0 := Array.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack1 := 1.
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) new: (recoveredBlock14Stack1).
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredLocal4 := recoveredBlock14Stack0.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack0 := -1.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal2.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) + (-1).
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14PC := 119.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal4.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack2 := 1.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 103.
        ].
        recoveredBlock14Step = 103 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 106.
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredBlock14Stack3 := 'Item'.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack4 := recoveredLocal4.
            recoveredBlock14PC := 111.
        ].
        recoveredBlock14Step = 111 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) propertyAt: (recoveredBlock14Stack3) withArguments: (recoveredBlock14Stack4).
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredBlock14Stack3 := 'Name'.
            recoveredBlock14PC := 115.
        ].
        recoveredBlock14Step = 115 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) propertyAt: (recoveredBlock14Stack3).
            recoveredBlock14PC := 117.
        ].
        recoveredBlock14Step = 117 ifTrue: [
            (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 119.
        ].
        recoveredBlock14Step = 119 ifTrue: [
            (recoveredBlock14Stack0 isInteger and: [recoveredBlock14Local1 isInteger]) ifTrue: [(recoveredBlock14Local1 + 1 <= recoveredBlock14Stack0) ifTrue: [recoveredBlock14Local1 := recoveredBlock14Local1 + 1. recoveredBlock14PC := 92] ifFalse: [recoveredBlock14Local1 := nil. recoveredBlock14PC := 133]] ifFalse: [recoveredBlock14PC := 123].
        ].
        recoveredBlock14Step = 123 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 124.
        ].
        recoveredBlock14Step = 124 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 125.
        ].
        recoveredBlock14Step = 125 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (1).
            recoveredBlock14PC := 126.
        ].
        recoveredBlock14Step = 126 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 127.
        ].
        recoveredBlock14Step = 127 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack3.
            recoveredBlock14PC := 128.
        ].
        recoveredBlock14Step = 128 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) < (recoveredBlock14Stack2).
            recoveredBlock14PC := 129.
        ].
        recoveredBlock14Step = 129 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 131] ifFalse: [recoveredBlock14PC := 92].
        ].
        recoveredBlock14Step = 131 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 132.
        ].
        recoveredBlock14Step = 132 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 133.
        ].
        recoveredBlock14Step = 133 ifTrue: [
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 134 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal1.
            recoveredBlock14PC := 137.
        ].
        recoveredBlock14Step = 137 ifTrue: [
            ^recoveredBlock14Stack0
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^nil
! !

