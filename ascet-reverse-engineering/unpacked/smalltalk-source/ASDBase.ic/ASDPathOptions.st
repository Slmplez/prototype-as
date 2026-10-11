"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001586c; bytecode file offset 0x92209c"
!ASDPathOptions methodsFor: 'recovered'!
buildPathsGroup
    ^'Build\Paths'
! !

"ASDBase.ic method 0x2002cc94; bytecode file offset 0x934580"
!ASDPathOptions methodsFor: 'recovered'!
optionCodeGenerationPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionCodeGenerationPathUnresolved.
    recoveredValue1 := (recoveredValue0) asPathname.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f6b4; bytecode file offset 0x934580"
!ASDPathOptions methodsFor: 'recovered'!
optionTempPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionTempPathUnresolved.
    recoveredValue1 := (recoveredValue0) asPathname.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bc418; bytecode file offset 0x9b8ddc"
!ASDPathOptions methodsFor: 'recovered'!
setHWCPathTokenTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pathTokens.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('HWC') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200cd24c; bytecode file offset 0x9c9b84"
!ASDPathOptions methodsFor: 'recovered'!
getDefaultTempPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) getTempPath.
    recoveredValue2 := (recoveredValue1) asUnresolvedPathname.
    recoveredValue3 := (recoveredValue2) , ('ASCET\').
    ^recoveredValue3
! !

"ASDBase.ic method 0x20129640; bytecode file offset 0xa25f5c"
!ASDPathOptions methodsFor: 'recovered'!
pathTokens
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pathTokens.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            pathTokens := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := pathTokens.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202055c0; bytecode file offset 0xb01e90"
!ASDPathOptions methodsFor: 'recovered'!
getDefaultPath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppProgramPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUnresolvedPathname.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getcwd.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUnresolvedPathname.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022622c; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionTargetRootPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc434Arg1 | 
    | block280dc434Value0 block280dc434Value1 block280dc434Value2 |
    block280dc434Value0 := block280dc434Arg1.
    block280dc434Value1 := (block280dc434Value0) attributeName.
    block280dc434Value2 := (block280dc434Value1) = ('TargetRootPath').
    block280dc434Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226258; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionDatabasePath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc458Arg1 | 
    | block280dc458Value0 block280dc458Value1 block280dc458Value2 |
    block280dc458Value0 := block280dc458Arg1.
    block280dc458Value1 := (block280dc458Value0) attributeName.
    block280dc458Value2 := (block280dc458Value1) = ('DatabasePath').
    block280dc458Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226284; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionImportPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc47cArg1 | 
    | block280dc47cValue0 block280dc47cValue1 block280dc47cValue2 |
    block280dc47cValue0 := block280dc47cArg1.
    block280dc47cValue1 := (block280dc47cValue0) attributeName.
    block280dc47cValue2 := (block280dc47cValue1) = ('ImportPath').
    block280dc47cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202262b0; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionDocuWorkingPathUnresolved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc4a0Arg1 | 
    | block280dc4a0Value0 block280dc4a0Value1 block280dc4a0Value2 |
    block280dc4a0Value0 := block280dc4a0Arg1.
    block280dc4a0Value1 := (block280dc4a0Value0) attributeName.
    block280dc4a0Value2 := (block280dc4a0Value1) = ('DocuWorkingPath').
    block280dc4a0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202262dc; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionExportPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc4c4Arg1 | 
    | block280dc4c4Value0 block280dc4c4Value1 block280dc4c4Value2 |
    block280dc4c4Value0 := block280dc4c4Arg1.
    block280dc4c4Value1 := (block280dc4c4Value0) attributeName.
    block280dc4c4Value2 := (block280dc4c4Value1) = ('ExportPath').
    block280dc4c4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226308; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionWorkspacePathUnresolved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc4e8Arg1 | 
    | block280dc4e8Value0 block280dc4e8Value1 block280dc4e8Value2 |
    block280dc4e8Value0 := block280dc4e8Arg1.
    block280dc4e8Value1 := (block280dc4e8Value0) attributeName.
    block280dc4e8Value2 := (block280dc4e8Value1) = ('WorkspacePath').
    block280dc4e8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226334; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionImportPathUnresolved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc50cArg1 | 
    | block280dc50cValue0 block280dc50cValue1 block280dc50cValue2 |
    block280dc50cValue0 := block280dc50cArg1.
    block280dc50cValue1 := (block280dc50cValue0) attributeName.
    block280dc50cValue2 := (block280dc50cValue1) = ('ImportPath').
    block280dc50cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226360; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionSpecificPathUnresolved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc530Arg1 | 
    | block280dc530Value0 block280dc530Value1 block280dc530Value2 |
    block280dc530Value0 := block280dc530Arg1.
    block280dc530Value1 := (block280dc530Value0) attributeName.
    block280dc530Value2 := (block280dc530Value1) = ('SpecificPath').
    block280dc530Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022638c; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionSpecificPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc554Arg1 | 
    | block280dc554Value0 block280dc554Value1 block280dc554Value2 |
    block280dc554Value0 := block280dc554Arg1.
    block280dc554Value1 := (block280dc554Value0) attributeName.
    block280dc554Value2 := (block280dc554Value1) = ('SpecificPath').
    block280dc554Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202263b8; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionWorkspacePath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc578Arg1 | 
    | block280dc578Value0 block280dc578Value1 block280dc578Value2 |
    block280dc578Value0 := block280dc578Arg1.
    block280dc578Value1 := (block280dc578Value0) attributeName.
    block280dc578Value2 := (block280dc578Value1) = ('WorkspacePath').
    block280dc578Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202263e4; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionTargetRootPathUnresolved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc59cArg1 | 
    | block280dc59cValue0 block280dc59cValue1 block280dc59cValue2 |
    block280dc59cValue0 := block280dc59cArg1.
    block280dc59cValue1 := (block280dc59cValue0) attributeName.
    block280dc59cValue2 := (block280dc59cValue1) = ('TargetRootPath').
    block280dc59cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226410; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionDatabasePathUnresolved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc5c0Arg1 | 
    | block280dc5c0Value0 block280dc5c0Value1 block280dc5c0Value2 |
    block280dc5c0Value0 := block280dc5c0Arg1.
    block280dc5c0Value1 := (block280dc5c0Value0) attributeName.
    block280dc5c0Value2 := (block280dc5c0Value1) = ('DatabasePath').
    block280dc5c0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022643c; bytecode file offset 0xb22d14"
!ASDPathOptions methodsFor: 'recovered'!
optionExportPathUnresolved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc5e4Arg1 | 
    | block280dc5e4Value0 block280dc5e4Value1 block280dc5e4Value2 |
    block280dc5e4Value0 := block280dc5e4Arg1.
    block280dc5e4Value1 := (block280dc5e4Value0) attributeName.
    block280dc5e4Value2 := (block280dc5e4Value1) = ('ExportPath').
    block280dc5e4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d1a8; bytecode file offset 0xb39a84"
!ASDPathOptions methodsFor: 'recovered'!
optionDocuWorkingPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dddf0Arg1 | 
    | block280dddf0Value0 block280dddf0Value1 block280dddf0Value2 |
    block280dddf0Value0 := block280dddf0Arg1.
    block280dddf0Value1 := (block280dddf0Value0) attributeName.
    block280dddf0Value2 := (block280dddf0Value1) = ('DocuWorkingPath').
    block280dddf0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) forceSBString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fdcc; bytecode file offset 0xb3c768"
!ASDPathOptions methodsFor: 'recovered'!
optionDocuWorkingPath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280de12cArg1 | 
    | block280de12cValue0 block280de12cValue1 block280de12cValue2 |
    block280de12cValue0 := block280de12cArg1.
    block280de12cValue1 := (block280de12cValue0) attributeName.
    block280de12cValue2 := (block280de12cValue1) = ('DocuWorkingPath').
    block280de12cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fdf4; bytecode file offset 0xb3c768"
!ASDPathOptions methodsFor: 'recovered'!
optionDatabasePath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280de150Arg1 | 
    | block280de150Value0 block280de150Value1 block280de150Value2 |
    block280de150Value0 := block280de150Arg1.
    block280de150Value1 := (block280de150Value0) attributeName.
    block280de150Value2 := (block280de150Value1) = ('DatabasePath').
    block280de150Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fe1c; bytecode file offset 0xb3c768"
!ASDPathOptions methodsFor: 'recovered'!
optionWorkspacePath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280de174Arg1 | 
    | block280de174Value0 block280de174Value1 block280de174Value2 |
    block280de174Value0 := block280de174Arg1.
    block280de174Value1 := (block280de174Value0) attributeName.
    block280de174Value2 := (block280de174Value1) = ('WorkspacePath').
    block280de174Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fe44; bytecode file offset 0xb3c768"
!ASDPathOptions methodsFor: 'recovered'!
optionExportPath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280de198Arg1 | 
    | block280de198Value0 block280de198Value1 block280de198Value2 |
    block280de198Value0 := block280de198Arg1.
    block280de198Value1 := (block280de198Value0) attributeName.
    block280de198Value2 := (block280de198Value1) = ('ExportPath').
    block280de198Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fe6c; bytecode file offset 0xb3c768"
!ASDPathOptions methodsFor: 'recovered'!
optionImportPath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280de1bcArg1 | 
    | block280de1bcValue0 block280de1bcValue1 block280de1bcValue2 |
    block280de1bcValue0 := block280de1bcArg1.
    block280de1bcValue1 := (block280de1bcValue0) attributeName.
    block280de1bcValue2 := (block280de1bcValue1) = ('ImportPath').
    block280de1bcValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fe94; bytecode file offset 0xb3c768"
!ASDPathOptions methodsFor: 'recovered'!
optionTempPath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280de1e0Arg1 | 
    | block280de1e0Value0 block280de1e0Value1 block280de1e0Value2 |
    block280de1e0Value0 := block280de1e0Arg1.
    block280de1e0Value1 := (block280de1e0Value0) attributeName.
    block280de1e0Value2 := (block280de1e0Value1) = ('TempPath').
    block280de1e0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultTempPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030b034; bytecode file offset 0xc07928"
!ASDPathOptions methodsFor: 'recovered'!
initializeTempPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasPathOption.
    recoveredValue2 := (self) getDefaultTempPath.
    recoveredValue3 := (self) getDefaultTempPath.
    recoveredValue4 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 |
    recoveredBlock30Value0 := (self) initializePathTokens.
    recoveredBlock30Value0
].
    recoveredValue5 := (recoveredValue1) label: ('Temp Path') description: ('Defines the path that shall be used to zip/unzip AXL files or to store other temporary documents.<br><b>NOTE:</b> The content of this path may be deleted on each startup of ASCET!!') toolTip: ('The path, where all temporary files shall be stored in') value: (recoveredValue2) default: (recoveredValue3) group: ('Environment\Paths') visible: (true) sensitive: (true) type: ('USER') userField: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) requiredPath: (true).
    recoveredValue7 := (recoveredValue5) setNewDir: (true).
    recoveredValue8 := (self) userOptionFile.
    recoveredValue9 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: ('TempPath') optionClass: (recoveredValue7) optionFile: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2030b0b4; bytecode file offset 0xc079a8"
!ASDPathOptions methodsFor: 'recovered'!
initializeDocuWorkingPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasPathOption.
    recoveredValue2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 |
    recoveredBlock30Value0 := (self) initializePathTokens.
    recoveredBlock30Value0
].
    recoveredValue3 := (recoveredValue1) label: ('Documentor Working Path') description: ('The path where the Documentor stores temporary files') toolTip: ('Documentor Working Path') value: ('%DATA%\Docu\') default: ('%DATA%\Docu\') group: ('Environment\Paths') visible: (true) sensitive: (true) type: ('STATION') userField: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) requiredPath: (true).
    recoveredValue5 := (recoveredValue3) setNewDir: (true).
    recoveredValue6 := (self) stationOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: ('DocuWorkingPath') oldName: ('DocuWorkingDirectory') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2030b134; bytecode file offset 0xc07a78"
!ASDPathOptions methodsFor: 'recovered'!
initializeExportPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasPathOption.
    recoveredValue2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 |
    recoveredBlock30Value0 := (self) initializePathTokens.
    recoveredBlock30Value0
].
    recoveredValue3 := (recoveredValue1) label: ('Default Export Path') description: ('If a component or its data shall be exported, this path is used as default when asking for the file name of the export file.') toolTip: ('The default path, where all exported files shall be stored') value: ('%DATA%\Export\') default: ('%DATA%\Export\') group: ('Environment\Paths') visible: (true) sensitive: (true) type: ('STATION') userField: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) requiredPath: (true).
    recoveredValue5 := (recoveredValue3) setNewDir: (true).
    recoveredValue6 := (self) stationOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: ('ExportPath') oldName: ('Export') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2030b180; bytecode file offset 0xc07a78"
!ASDPathOptions methodsFor: 'recovered'!
initializeImportPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasPathOption.
    recoveredValue2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 |
    recoveredBlock30Value0 := (self) initializePathTokens.
    recoveredBlock30Value0
].
    recoveredValue3 := (recoveredValue1) label: ('Default Import Path') description: ('If components or other files shall be imported, ASCET will open the file browser in this path.') toolTip: ('The default path, where to look for export files') value: ('%DATA%\Export\') default: ('%DATA%\Export\') group: ('Environment\Paths') visible: (true) sensitive: (true) type: ('STATION') userField: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) requiredPath: (true).
    recoveredValue5 := (recoveredValue3) setNewDir: (true).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('ToolSettings') attributeName: ('ImportPath') oldName: ('Import') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20314370; bytecode file offset 0xc10c54"
!ASDPathOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeDatabasePath.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeWorkspacePath.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeTempPath.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeExportPath.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initializeImportPath.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) initializeBuildPathGroup.
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) initializeDocuWorkingPath.
    (recoveredValue13) add: (recoveredValue14).
    (self) initializePathTokens.
    ^self
! !

"ASDBase.ic method 0x20358dfc; bytecode file offset 0xc556f0"
!ASDPathOptions methodsFor: 'recovered'!
initializeWorkspacePath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'WorkspacePath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'WorkspacePath'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasPathOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Workspace Path'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'The workspace path is the default path that is browsed for workspaces to be opened. Newly created workspaces are stored in that path.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Workspace Path'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '%DATA%\Workspaces'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := '%DATA%\Workspaces'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := 'Environment\Paths'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack15 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) initializePathTokens.
    recoveredBlock44Value0
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) requiredPath: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) userOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20358e88; bytecode file offset 0xc5577c"
!ASDPathOptions methodsFor: 'recovered'!
initializeSpecificPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'SpecificPath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'SpecificPath'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasPathOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Specific Path'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Specific Path - used in the context of project files'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Specific Path - used in the context of project files'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '%ASCET%\Specific\'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := '%ASCET%\Specific\'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := (recoveredStack11) buildPathsGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := 'STATION'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack15 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) initializePathTokens.
    recoveredBlock44Value0
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) requiredPath: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) stationOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20358f14; bytecode file offset 0xc5580c"
!ASDPathOptions methodsFor: 'recovered'!
initializeOSRootPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'OSRootPath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'OSRootPath'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasPathOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'OS Root Path'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Root path for operating systems'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Operating System root path'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '%ASCET%'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := '%ASCET%'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := (recoveredStack11) buildPathsGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := 'STATION'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack15 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) initializePathTokens.
    recoveredBlock44Value0
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) requiredPath: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) stationOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20358fa4; bytecode file offset 0xc5589c"
!ASDPathOptions methodsFor: 'recovered'!
initializeDatabasePath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'DatabasePath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'Databasepath'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasPathOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Database Path'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'The database path is the default path that is browsed for databases to be opened. Newly created databases are stored in that path.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Database Path'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '%DATA%\Database'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := '%DATA%\Database'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := 'Environment\Paths'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := 'USER'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack15 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) initializePathTokens.
    recoveredBlock44Value0
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) requiredPath: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) userOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203590d4; bytecode file offset 0xc55a20"
!ASDPathOptions methodsFor: 'recovered'!
initializeTargetRootPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'TargetRootPath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'CRootPathSys'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasPathOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Target Root Path'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Root path for target descriptions and necessary make files. ASCET scans this directory for target descriptions and makes those targets available for code generation.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Target root path'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '%ASCET%\Target\'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := '%ASCET%\Target\'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := (recoveredStack11) buildPathsGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := 'STATION'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack15 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) initializePathTokens.
    recoveredBlock44Value0
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) requiredPath: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) stationOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20359124; bytecode file offset 0xc55a20"
!ASDPathOptions methodsFor: 'recovered'!
initializeCodeGenerationPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'CodeGenerationPath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'CRootPathGen'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasPathOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Code Generation Path'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Directory to be used as intermediate storage for generating code. Please be aware that any file in that directory may be deleted or otherwise modified at any time during ASCET operation. If you want to use the generated code yourself, please always use one of the <i>Export generated code</i> commands.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Code generation directory'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := '%ASCET%\CGen\'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := '%ASCET%\CGen\'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := (recoveredStack11) buildPathsGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := 'STATION'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack15 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := (self) initializePathTokens.
    recoveredBlock44Value0
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) requiredPath: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) stationOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037e540; bytecode file offset 0xc7ae7c"
!ASDPathOptions methodsFor: 'recovered'!
optionCodeGenerationPathUnresolved
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f29acArg1 | 
    | block280f29acValue0 block280f29acValue1 block280f29acValue2 |
    block280f29acValue0 := block280f29acArg1.
    block280f29acValue1 := (block280f29acValue0) attributeName.
    block280f29acValue2 := (block280f29acValue1) = ('CodeGenerationPath').
    block280f29acValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathSuffixForMultipleInstances.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) , (recoveredBlock48Value1).
    recoveredBlock48Value3 := recoveredBlock48Value2.
    recoveredLocal1 := recoveredBlock48Value3.
    recoveredBlock48Value2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037e588; bytecode file offset 0xc7ae7c"
!ASDPathOptions methodsFor: 'recovered'!
optionTempPathUnresolved
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f29d0Arg1 | 
    | block280f29d0Value0 block280f29d0Value1 block280f29d0Value2 |
    block280f29d0Value0 := block280f29d0Arg1.
    block280f29d0Value1 := (block280f29d0Value0) attributeName.
    block280f29d0Value2 := (block280f29d0Value1) = ('TempPath').
    block280f29d0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) getDefaultTempPath.
    ^recoveredBlock16Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUnresolvedPathname.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathSuffixForMultipleInstances.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) , (recoveredBlock48Value1).
    recoveredBlock48Value3 := recoveredBlock48Value2.
    recoveredLocal1 := recoveredBlock48Value3.
    recoveredBlock48Value2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a9e38; bytecode file offset 0xca6730"
!ASDPathOptions methodsFor: 'recovered'!
initializeBuildPathGroup
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'Paths'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Paths'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Paths'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Paths'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) buildPathsGroup.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeCodeGenerationPath.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeTargetRootPath.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeSpecificPath.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203aaaf0; bytecode file offset 0xca73d4"
!ASDPathOptions methodsFor: 'recovered'!
optionRedirectedCodeGenerationPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) optionCodeGenerationPath.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := WinProfile.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) , ('redirect.ini').
    recoveredValue4 := (recoveredValue1) create: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Local2 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) sectionEntries.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := 'CodeGenPath'.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack3 := [
    | recoveredBlock18Block29Value0 |
    recoveredBlock18Block29Value0 := recoveredLocal1.
    ^recoveredBlock18Block29Value0
].
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) ifAbsent: (recoveredBlock18Stack3).
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Local2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Local2.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack2 := 'redirectPath'.
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack3 := [
    | recoveredBlock18Block46Value0 |
    recoveredBlock18Block46Value0 := recoveredLocal1.
    ^recoveredBlock18Block46Value0
].
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) ifAbsent: (recoveredBlock18Stack3).
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack2 := CfsStat.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Local1.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) exists: (recoveredBlock18Stack3).
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 68] ifFalse: [recoveredBlock18PC := 71].
        ].
        recoveredBlock18Step = 68 ifTrue: [
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Local1.
            recoveredBlock18PC := 70.
        ].
        recoveredBlock18Step = 70 ifTrue: [
            ^recoveredBlock18Stack1
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x204d88a4; bytecode file offset 0xdd51fc"
!ASDPathOptions methodsFor: 'recovered'!
initializePathTokens
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) pathTokens.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := EtasGeneralDllApi.
    recoveredValue4 := (recoveredValue3) getAppProgramPath.
    recoveredValue5 := (recoveredValue4) asUnresolvedPathname.
    (recoveredValue2) at: ('ASCET') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := EtasGeneralDllApi.
    recoveredValue8 := (recoveredValue7) getAppDataPath.
    recoveredValue9 := (recoveredValue8) asUnresolvedPathname.
    (recoveredValue6) at: ('DATA') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) optionDatabasePathUnresolved.
    (recoveredValue10) at: ('DATABASE') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) optionWorkspacePathUnresolved.
    (recoveredValue12) at: ('WORKSPACE') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) optionCodeGenerationPathUnresolved.
    (recoveredValue14) at: ('CGEN') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) optionTargetRootPathUnresolved.
    (recoveredValue16) at: ('TARGETROOT') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) optionSpecificPathUnresolved.
    (recoveredValue18) at: ('SPECIFIC') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) optionDocuWorkingPathUnresolved.
    (recoveredValue20) at: ('DOCU') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) optionExportPathUnresolved.
    (recoveredValue22) at: ('EXPORT') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) optionImportPathUnresolved.
    (recoveredValue24) at: ('IMPORT') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := EtasGeneralDllApi.
    recoveredValue28 := (recoveredValue27) getETASLogFilePath.
    recoveredValue29 := (recoveredValue28) asUnresolvedPathname.
    (recoveredValue26) at: ('LOG') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := CfsDirectoryDescriptor.
    recoveredValue32 := (recoveredValue31) getTempPath.
    recoveredValue33 := (recoveredValue32) asUnresolvedPathname.
    (recoveredValue30) at: ('TEMP') put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := (self) optionTempPathUnresolved.
    (recoveredValue34) at: ('ASCETTEMP') put: (recoveredValue35).
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := ASDAscetController.
    recoveredValue38 := (recoveredValue37) instance.
    recoveredValue39 := (recoveredValue38) pathSuffixForMultipleInstancesNotNil.
    (recoveredValue36) at: ('INSTANCE') put: (recoveredValue39).
    recoveredValue40 := (self) pathTokens.
    recoveredValue41 := [
    | recoveredBlock143Value0 |
    recoveredBlock143Value0 := (self) setHWCPathTokenTo: ('%ASCET%').
    recoveredBlock143Value0
].
    (recoveredValue40) at: ('HWC') ifAbsent: (recoveredValue41).
    ^self
! !

