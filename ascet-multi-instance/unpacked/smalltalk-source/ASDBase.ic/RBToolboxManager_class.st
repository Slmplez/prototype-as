"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002722c; bytecode file offset 0x923b14"
!RBToolboxManager class methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    recoveredValue0 := (self) initializeProgressDialog: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20039d28; bytecode file offset 0x938608"
!RBToolboxManager class methodsFor: 'recovered'!
checkDynamicToolboxFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) checkDynamicIC: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ccf8; bytecode file offset 0x93bf94"
!RBToolboxManager class methodsFor: 'recovered'!
allStaticToolboxClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBToolbox.
    recoveredValue1 := (recoveredValue0) allSubclasses.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f058; bytecode file offset 0x93bf94"
!RBToolboxManager class methodsFor: 'recovered'!
allToolboxClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBToolbox.
    recoveredValue1 := (recoveredValue0) allSubclasses.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053e4c; bytecode file offset 0x951190"
!RBToolboxManager class methodsFor: 'recovered'!
toolboxes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Toolboxes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200581b8; bytecode file offset 0x956284"
!RBToolboxManager class methodsFor: 'recovered'!
includesDynamicLoadedFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dynamicLoadedFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058968; bytecode file offset 0x956284"
!RBToolboxManager class methodsFor: 'recovered'!
addDynamicLoadedFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dynamicLoadedFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ee48; bytecode file offset 0x95b7f0"
!RBToolboxManager class methodsFor: 'recovered'!
reset
    (self) toolboxes: (nil).
    ^self
! !

"ASDBase.ic method 0x20081908; bytecode file offset 0x97e234"
!RBToolboxManager class methodsFor: 'recovered'!
loadToolboxFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDImageComponentManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) loadImageComponentFromFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c3dc; bytecode file offset 0x998d48"
!RBToolboxManager class methodsFor: 'recovered'!
toolboxPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) startUpDirectoryPath.
    recoveredValue2 := (recoveredValue1) , ('TOOLBOX\').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aaaac; bytecode file offset 0x9a7438"
!RBToolboxManager class methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ab83c; bytecode file offset 0x9a8250"
!RBToolboxManager class methodsFor: 'recovered'!
removeDynamicLoadedFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dynamicLoadedFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d6ff0; bytecode file offset 0x9d38b0"
!RBToolboxManager class methodsFor: 'recovered'!
toolboxIsLoaded: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) classAt: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) notNil.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7e84; bytecode file offset 0x9f4e38"
!RBToolboxManager class methodsFor: 'recovered'!
finalizeToolboxes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allToolboxClasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c53c4Arg1 | 
    | block280c53c4Value0 block280c53c4Value1 |
    block280c53c4Value0 := block280c53c4Arg1.
    block280c53c4Value1 := (block280c53c4Value0) finalizeToolbox.
    block280c53c4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fad68; bytecode file offset 0x9f762c"
!RBToolboxManager class methodsFor: 'recovered'!
initializeProgressDialog: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) toolboxes: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) addAllToolboxes: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011331c; bytecode file offset 0xa0fbd4"
!RBToolboxManager class methodsFor: 'recovered'!
checkLicenseFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) licenseInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201202d4; bytecode file offset 0xa1cb98"
!RBToolboxManager class methodsFor: 'recovered'!
addToolboxIfLicensedAndCompatible: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeToolbox.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolboxes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolboxDescriptor.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128460; bytecode file offset 0xa24eb0"
!RBToolboxManager class methodsFor: 'recovered'!
toolboxes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Toolboxes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Toolboxes := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Toolboxes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128564; bytecode file offset 0xa24eb0"
!RBToolboxManager class methodsFor: 'recovered'!
dynamicLoadedFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DynamicLoadedFiles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            DynamicLoadedFiles := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := DynamicLoadedFiles.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201683d8; bytecode file offset 0xa64c98"
!RBToolboxManager class methodsFor: 'recovered'!
toolbarCallsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toolbarCalls.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) caller.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201741b0; bytecode file offset 0xa70a7c"
!RBToolboxManager class methodsFor: 'recovered'!
existsToolbox: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) icRootPath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017d5a0; bytecode file offset 0xa79e64"
!RBToolboxManager class methodsFor: 'recovered'!
callToolboxForMenuItem: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) callForMenuItemName: (recoveredStack1) caller: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) callFrom: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b7b1c; bytecode file offset 0xab4400"
!RBToolboxManager class methodsFor: 'recovered'!
logFilePath
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
            recoveredStack1 := (recoveredStack1) getETASLogFilePath.
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'toolbox.log'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bd4b4; bytecode file offset 0xab9d74"
!RBToolboxManager class methodsFor: 'recovered'!
checkDynamicICLoadOnlyOnce: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesDynamicLoadedFile: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) checkDynamicIC: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addDynamicLoadedFile: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d51bc; bytecode file offset 0xad1a98"
!RBToolboxManager class methodsFor: 'recovered'!
icRootPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Ic path'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) iniFileGetContentsArray: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'IC_ROOT'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [
    | block280d54f8Value0 block280d54f8Value1 block280d54f8Value2 |
    block280d54f8Value0 := CfsDirectoryDescriptor.
    block280d54f8Value1 := (block280d54f8Value0) startUpDirectory.
    block280d54f8Value2 := (block280d54f8Value1) , ('\').
    block280d54f8Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dc768; bytecode file offset 0xad9028"
!RBToolboxManager class methodsFor: 'recovered'!
addToolboxMenuBar: recoveredArg1 caller: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toolboxes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) addToolboxMenuBar: (recoveredBlock5Value1) caller: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f63e4; bytecode file offset 0xaf2ca4"
!RBToolboxManager class methodsFor: 'recovered'!
checkPrerequisiteToolboxes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) toolboxPrerequisites.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) checkDynamicToolboxFile: (recoveredBlock8Stack3).
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack2 ~~ nil) ifTrue: [recoveredBlock8PC := 25] ifFalse: [recoveredBlock8PC := 22].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := false.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x201f6da4; bytecode file offset 0xaf367c"
!RBToolboxManager class methodsFor: 'recovered'!
existsToolbox: recoveredArg1 application: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) icRootPath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20206c24; bytecode file offset 0xb034fc"
!RBToolboxManager class methodsFor: 'recovered'!
logLoadingToolbox: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFilePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAppend: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := LoadPackageFromFile.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20212364; bytecode file offset 0xb0ecb0"
!RBToolboxManager class methodsFor: 'recovered'!
toolbarCalls
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) toolboxes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) toolbarCalls.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20212384; bytecode file offset 0xb0ecb0"
!RBToolboxManager class methodsFor: 'recovered'!
menuCalls
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) toolboxes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) staticAndDynamicMenuCalls.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202355c0; bytecode file offset 0xb31e88"
!RBToolboxManager class methodsFor: 'recovered'!
callForMenuItemName: recoveredArg1 caller: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) menuCalls.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) caller.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg2.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) item.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20236330; bytecode file offset 0xb32c0c"
!RBToolboxManager class methodsFor: 'recovered'!
resetLogFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFilePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := Date.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) dateAndTimeNow.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a554; bytecode file offset 0xb36e18"
!RBToolboxManager class methodsFor: 'recovered'!
checkDynamicIC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := (self) loadToolboxFromFile: (recoveredBlock12Value0).
    recoveredBlock12Value2 := recoveredBlock12Value1.
    recoveredLocal2 := recoveredBlock12Value2.
    recoveredBlock12Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025b7bc; bytecode file offset 0xb5808c"
!RBToolboxManager class methodsFor: 'recovered'!
getToolboxOptionsOfType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allToolboxClasses.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) toolboxDescriptor.
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := recoveredBlock11Arg1.
    recoveredBlock11Value5 := (recoveredBlock11Value2) optionsForKey: (recoveredBlock11Value3) toolbox: (recoveredBlock11Value4).
    recoveredBlock11Value6 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202a6364; bytecode file offset 0xba2c2c"
!RBToolboxManager class methodsFor: 'recovered'!
allToolboxClassesPerform: recoveredArg1 withArguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allToolboxClasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) respondsTo: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredArg1.
    recoveredBlock25Value2 := recoveredArg2.
    recoveredBlock25Value3 := (recoveredBlock25Value0) perform: (recoveredBlock25Value1) withArguments: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2030ad7c; bytecode file offset 0xc076a0"
!RBToolboxManager class methodsFor: 'recovered'!
toolboxFiles
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolboxPath.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '*.ic'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := FREG.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdirName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20386038; bytecode file offset 0xc82918"
!RBToolboxManager class methodsFor: 'recovered'!
initializeToolboxesForTool: recoveredArg1 progressWnd: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allToolboxClasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) allToolboxClasses.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg2.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            (recoveredBlock25Stack1 == nil) ifTrue: [recoveredBlock25PC := 61] ifFalse: [recoveredBlock25PC := 38].
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg2.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack3 := InitializePackageFromFile.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack4 := recoveredBlock25Arg1.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) toolboxDescriptor.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) label.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) bindWith: (recoveredBlock25Stack4).
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            (recoveredBlock25Stack2) messageString: (recoveredBlock25Stack3).
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg2.
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack3 := recoveredLocal1.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) / (recoveredBlock25Stack3).
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            (recoveredBlock25Stack1) fractionComplete: (recoveredBlock25Stack2).
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Stack2 := recoveredArg1.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) initializeToolboxAfterLoadForTool: (recoveredBlock25Stack2).
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f4a28; bytecode file offset 0xcf130c"
!RBToolboxManager class methodsFor: 'recovered'!
loadExternalToolboxes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toolboxFiles.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
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
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) fileName.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := [
    | recoveredBlock9Block23Stack0 recoveredBlock9Block23Stack1 recoveredBlock9Block23Stack2 recoveredBlock9Block23Stack3 recoveredBlock9Block23Stack4 recoveredBlock9Block23Stack5 recoveredBlock9Block23PC recoveredBlock9Block23Step recoveredBlock9Block23Done recoveredBlock9Block23Result |
    recoveredBlock9Block23Stack0 := nil.
    recoveredBlock9Block23PC := 30.
    recoveredBlock9Block23Done := false.
    [recoveredBlock9Block23Done not] whileTrue: [
        recoveredBlock9Block23Step := recoveredBlock9Block23PC.
        recoveredBlock9Block23Step = 30 ifTrue: [
            recoveredBlock9Block23Stack1 := nil.
            recoveredBlock9Block23PC := 31.
        ].
        recoveredBlock9Block23Step = 31 ifTrue: [
            recoveredBlock9Block23Stack2 := recoveredArg1.
            recoveredBlock9Block23PC := 34.
        ].
        recoveredBlock9Block23Step = 34 ifTrue: [
            (recoveredBlock9Block23Stack2 == nil) ifTrue: [recoveredBlock9Block23PC := 63] ifFalse: [recoveredBlock9Block23PC := 38].
        ].
        recoveredBlock9Block23Step = 38 ifTrue: [
            recoveredBlock9Block23PC := 39.
        ].
        recoveredBlock9Block23Step = 39 ifTrue: [
            recoveredBlock9Block23Stack1 := recoveredArg1.
            recoveredBlock9Block23PC := 42.
        ].
        recoveredBlock9Block23Step = 42 ifTrue: [
            recoveredBlock9Block23Stack2 := recoveredBlock9Block23Stack1.
            recoveredBlock9Block23PC := 43.
        ].
        recoveredBlock9Block23Step = 43 ifTrue: [
            recoveredBlock9Block23Stack3 := LoadPackageFromFile.
            recoveredBlock9Block23PC := 45.
        ].
        recoveredBlock9Block23Step = 45 ifTrue: [
            recoveredBlock9Block23Stack4 := recoveredBlock9Local1.
            recoveredBlock9Block23PC := 48.
        ].
        recoveredBlock9Block23Step = 48 ifTrue: [
            recoveredBlock9Block23Stack3 := (recoveredBlock9Block23Stack3) bindWith: (recoveredBlock9Block23Stack4).
            recoveredBlock9Block23PC := 49.
        ].
        recoveredBlock9Block23Step = 49 ifTrue: [
            (recoveredBlock9Block23Stack2) messageString: (recoveredBlock9Block23Stack3).
            recoveredBlock9Block23PC := 51.
        ].
        recoveredBlock9Block23Step = 51 ifTrue: [
            recoveredBlock9Block23Stack2 := recoveredBlock9Arg2.
            recoveredBlock9Block23PC := 54.
        ].
        recoveredBlock9Block23Step = 54 ifTrue: [
            recoveredBlock9Block23Stack3 := recoveredLocal1.
            recoveredBlock9Block23PC := 57.
        ].
        recoveredBlock9Block23Step = 57 ifTrue: [
            recoveredBlock9Block23Stack3 := (recoveredBlock9Block23Stack3) size.
            recoveredBlock9Block23PC := 59.
        ].
        recoveredBlock9Block23Step = 59 ifTrue: [
            recoveredBlock9Block23Stack2 := (recoveredBlock9Block23Stack2) / (recoveredBlock9Block23Stack3).
            recoveredBlock9Block23PC := 61.
        ].
        recoveredBlock9Block23Step = 61 ifTrue: [
            recoveredBlock9Block23Stack1 := (recoveredBlock9Block23Stack1) fractionComplete: (recoveredBlock9Block23Stack2).
            recoveredBlock9Block23PC := 63.
        ].
        recoveredBlock9Block23Step = 63 ifTrue: [
            recoveredBlock9Block23Result := recoveredBlock9Block23Stack1.
            recoveredBlock9Block23Done := true.
        ].
    ].
    recoveredBlock9Block23Result
].
            recoveredBlock9PC := 64.
        ].
        recoveredBlock9Step = 64 ifTrue: [
            (recoveredBlock9Stack1) critical.
            recoveredBlock9PC := 66.
        ].
        recoveredBlock9Step = 66 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 68.
        ].
        recoveredBlock9Step = 68 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Arg1.
            recoveredBlock9PC := 71.
        ].
        recoveredBlock9Step = 71 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) loadToolboxFromFile: (recoveredBlock9Stack3).
            recoveredBlock9PC := 73.
        ].
        recoveredBlock9Step = 73 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Stack2.
            recoveredBlock9PC := 74.
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack3.
            recoveredBlock9PC := 77.
        ].
        recoveredBlock9Step = 77 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 80] ifFalse: [recoveredBlock9PC := 87].
        ].
        recoveredBlock9Step = 80 ifTrue: [
            recoveredBlock9PC := 81.
        ].
        recoveredBlock9Step = 81 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 82.
        ].
        recoveredBlock9Step = 82 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 85.
        ].
        recoveredBlock9Step = 85 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) logLoadingToolbox: (recoveredBlock9Stack2).
            recoveredBlock9PC := 87.
        ].
        recoveredBlock9Step = 87 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue0) doWithIndex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203fd5b4; bytecode file offset 0xcf9ea8"
!RBToolboxManager class methodsFor: 'recovered'!
addAllToolboxes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetLogFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280f9f18Arg1 | 
    | block280f9f18Value0 block280f9f18Value1 |
    block280f9f18Value0 := block280f9f18Arg1.
    block280f9f18Value1 := (block280f9f18Value0) bringToFront.
    block280f9f18Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) loadExternalToolboxes: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280f9f3cArg1 | 
    | block280f9f3cValue0 block280f9f3cValue1 block280f9f3cValue2 |
    block280f9f3cValue0 := block280f9f3cArg1.
    block280f9f3cValue1 := (Fraction) numerator: (1) denominator: (2).
    block280f9f3cValue2 := (block280f9f3cValue0) fractionComplete: (block280f9f3cValue1).
    block280f9f3cValue2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredArg1.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            (recoveredBlock52Stack2 == nil) ifTrue: [recoveredBlock52PC := 74] ifFalse: [recoveredBlock52PC := 66].
        ].
        recoveredBlock52Step = 66 ifTrue: [
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg1.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52Stack2 := RegisterPackage.
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) messageString: (recoveredBlock52Stack2).
            recoveredBlock52PC := 74.
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) allToolboxClasses.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 |
    recoveredBlock80Value0 := recoveredBlock80Arg1.
    recoveredBlock80Value1 := (self) addToolboxIfLicensedAndCompatible: (recoveredBlock80Value0).
    recoveredBlock80Value1
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049eeec; bytecode file offset 0xd9b7e8"
!RBToolboxManager class methodsFor: 'recovered'!
checkCompatibilityFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) apiClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) apiClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseVersion.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseVersion.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) apiVersion.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) apiVersion.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 135] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'Cannot load the installed version of  <'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := '>. 
It is incompatible with your base system. 
Base system version needed: '.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) baseVersion.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := ', found: '.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) baseVersion.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := '
Base API version needed:  '.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) apiVersion.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := ' or higher, found: '.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) apiVersion.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := '
Please contact ETAS for the correct version of the toolbox.'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20555f18; bytecode file offset 0xe52824"
!RBToolboxManager class methodsFor: 'recovered'!
menuCallsFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) menuCalls.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Local3 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) caller.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) = (recoveredBlock11Stack3).
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 30] ifFalse: [recoveredBlock11PC := 220].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) menu.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block39Value0 recoveredBlock11Block39Value1 recoveredBlock11Block39Value2 recoveredBlock11Block39Value3 recoveredBlock11Block39Value4 recoveredBlock11Block39Value5 |
    recoveredBlock11Block39Value0 := recoveredLocal1.
    recoveredBlock11Block39Value1 := recoveredBlock11Arg1.
    recoveredBlock11Block39Value2 := (recoveredBlock11Block39Value1) menu.
    recoveredBlock11Block39Value3 := OrderedCollection.
    recoveredBlock11Block39Value4 := (recoveredBlock11Block39Value3) new.
    recoveredBlock11Block39Value5 := (recoveredBlock11Block39Value0) at: (recoveredBlock11Block39Value2) put: (recoveredBlock11Block39Value4).
    recoveredBlock11Block39Value5
].
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsent: (recoveredBlock11Stack3).
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local3.
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block68Arg1 | 
    | recoveredBlock11Block68Value0 recoveredBlock11Block68Value1 recoveredBlock11Block68Value2 recoveredBlock11Block68Value3 recoveredBlock11Block68Value4 recoveredBlock11Block68Value5 recoveredBlock11Block68Value6 |
    recoveredBlock11Block68Value0 := recoveredBlock11Block68Arg1.
    recoveredBlock11Block68Value1 := (recoveredBlock11Block68Value0) key.
    recoveredBlock11Block68Value2 := (recoveredBlock11Block68Value1) packageName.
    recoveredBlock11Block68Value3 := recoveredBlock11Arg1.
    recoveredBlock11Block68Value4 := (recoveredBlock11Block68Value3) toolbox.
    recoveredBlock11Block68Value5 := (recoveredBlock11Block68Value4) packageName.
    recoveredBlock11Block68Value6 := (recoveredBlock11Block68Value2) = (recoveredBlock11Block68Value5).
    recoveredBlock11Block68Value6
].
            recoveredBlock11PC := 88.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block88Value0 recoveredBlock11Block88Value1 recoveredBlock11Block88Value2 recoveredBlock11Block88Value3 recoveredBlock11Block88Value4 recoveredBlock11Block88Value5 recoveredBlock11Block88Value6 recoveredBlock11Block88Value7 |
    recoveredBlock11Block88Value0 := recoveredBlock11Local3.
    recoveredBlock11Block88Value1 := Association.
    recoveredBlock11Block88Value2 := recoveredBlock11Arg1.
    recoveredBlock11Block88Value3 := (recoveredBlock11Block88Value2) toolbox.
    recoveredBlock11Block88Value4 := OrderedCollection.
    recoveredBlock11Block88Value5 := (recoveredBlock11Block88Value4) new.
    recoveredBlock11Block88Value6 := (recoveredBlock11Block88Value1) key: (recoveredBlock11Block88Value3) value: (recoveredBlock11Block88Value5).
    recoveredBlock11Block88Value7 := (recoveredBlock11Block88Value0) add: (recoveredBlock11Block88Value6).
    recoveredBlock11Block88Value7
].
            recoveredBlock11PC := 112.
        ].
        recoveredBlock11Step = 112 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) detect: (recoveredBlock11Stack2) ifNone: (recoveredBlock11Stack3).
            recoveredBlock11PC := 114.
        ].
        recoveredBlock11Step = 114 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) value.
            recoveredBlock11PC := 116.
        ].
        recoveredBlock11Step = 116 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 119 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 122.
        ].
        recoveredBlock11Step = 122 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isSubmenuCall.
            recoveredBlock11PC := 124.
        ].
        recoveredBlock11Step = 124 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 128] ifFalse: [recoveredBlock11PC := 204].
        ].
        recoveredBlock11Step = 128 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 131.
        ].
        recoveredBlock11Step = 131 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block131Arg1 | 
    | recoveredBlock11Block131Stack0 recoveredBlock11Block131Stack1 recoveredBlock11Block131Stack2 recoveredBlock11Block131Stack3 recoveredBlock11Block131PC recoveredBlock11Block131Step recoveredBlock11Block131Done recoveredBlock11Block131Result |
    recoveredBlock11Block131Stack0 := nil.
    recoveredBlock11Block131PC := 138.
    recoveredBlock11Block131Done := false.
    [recoveredBlock11Block131Done not] whileTrue: [
        recoveredBlock11Block131Step := recoveredBlock11Block131PC.
        recoveredBlock11Block131Step = 138 ifTrue: [
            recoveredBlock11Block131Stack1 := false.
            recoveredBlock11Block131PC := 139.
        ].
        recoveredBlock11Block131Step = 139 ifTrue: [
            recoveredBlock11Block131Stack2 := recoveredBlock11Block131Arg1.
            recoveredBlock11Block131PC := 140.
        ].
        recoveredBlock11Block131Step = 140 ifTrue: [
            recoveredBlock11Block131Stack2 := (recoveredBlock11Block131Stack2) isCollection.
            recoveredBlock11Block131PC := 142.
        ].
        recoveredBlock11Block131Step = 142 ifTrue: [
            (recoveredBlock11Block131Stack2) ifTrue: [recoveredBlock11Block131PC := 146] ifFalse: [recoveredBlock11Block131PC := 166].
        ].
        recoveredBlock11Block131Step = 146 ifTrue: [
            recoveredBlock11Block131PC := 147.
        ].
        recoveredBlock11Block131Step = 147 ifTrue: [
            recoveredBlock11Block131Stack1 := false.
            recoveredBlock11Block131PC := 148.
        ].
        recoveredBlock11Block131Step = 148 ifTrue: [
            recoveredBlock11Block131Stack2 := recoveredBlock11Block131Arg1.
            recoveredBlock11Block131PC := 149.
        ].
        recoveredBlock11Block131Step = 149 ifTrue: [
            recoveredBlock11Block131Stack2 := (recoveredBlock11Block131Stack2) notEmpty.
            recoveredBlock11Block131PC := 151.
        ].
        recoveredBlock11Block131Step = 151 ifTrue: [
            (recoveredBlock11Block131Stack2) ifTrue: [recoveredBlock11Block131PC := 154] ifFalse: [recoveredBlock11Block131PC := 166].
        ].
        recoveredBlock11Block131Step = 154 ifTrue: [
            recoveredBlock11Block131PC := 155.
        ].
        recoveredBlock11Block131Step = 155 ifTrue: [
            recoveredBlock11Block131Stack1 := recoveredBlock11Block131Arg1.
            recoveredBlock11Block131PC := 156.
        ].
        recoveredBlock11Block131Step = 156 ifTrue: [
            recoveredBlock11Block131Stack1 := (recoveredBlock11Block131Stack1) first.
            recoveredBlock11Block131PC := 158.
        ].
        recoveredBlock11Block131Step = 158 ifTrue: [
            recoveredBlock11Block131Stack1 := (recoveredBlock11Block131Stack1) submenu.
            recoveredBlock11Block131PC := 160.
        ].
        recoveredBlock11Block131Step = 160 ifTrue: [
            recoveredBlock11Block131Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block131PC := 163.
        ].
        recoveredBlock11Block131Step = 163 ifTrue: [
            recoveredBlock11Block131Stack2 := (recoveredBlock11Block131Stack2) submenu.
            recoveredBlock11Block131PC := 165.
        ].
        recoveredBlock11Block131Step = 165 ifTrue: [
            recoveredBlock11Block131Stack1 := (recoveredBlock11Block131Stack1) = (recoveredBlock11Block131Stack2).
            recoveredBlock11Block131PC := 166.
        ].
        recoveredBlock11Block131Step = 166 ifTrue: [
            recoveredBlock11Block131Result := recoveredBlock11Block131Stack1.
            recoveredBlock11Block131Done := true.
        ].
    ].
    recoveredBlock11Block131Result
].
            recoveredBlock11PC := 167.
        ].
        recoveredBlock11Step = 167 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block167Value0 recoveredBlock11Block167Value1 recoveredBlock11Block167Value2 recoveredBlock11Block167Value3 |
    recoveredBlock11Block167Value0 := recoveredBlock11Local2.
    recoveredBlock11Block167Value1 := OrderedCollection.
    recoveredBlock11Block167Value2 := (recoveredBlock11Block167Value1) new.
    recoveredBlock11Block167Value3 := (recoveredBlock11Block167Value0) add: (recoveredBlock11Block167Value2).
    recoveredBlock11Block167Value3
].
            recoveredBlock11PC := 183.
        ].
        recoveredBlock11Step = 183 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) detect: (recoveredBlock11Stack2) ifNone: (recoveredBlock11Stack3).
            recoveredBlock11PC := 185.
        ].
        recoveredBlock11Step = 185 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 188.
        ].
        recoveredBlock11Step = 188 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 191.
        ].
        recoveredBlock11Step = 191 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 194.
        ].
        recoveredBlock11Step = 194 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 196.
        ].
        recoveredBlock11Step = 196 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 197.
        ].
        recoveredBlock11Step = 197 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 200.
        ].
        recoveredBlock11Step = 200 ifTrue: [
            recoveredBlock11PC := 212.
        ].
        recoveredBlock11Step = 204 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 207.
        ].
        recoveredBlock11Step = 207 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 210.
        ].
        recoveredBlock11Step = 210 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 212.
        ].
        recoveredBlock11Step = 212 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 213.
        ].
        recoveredBlock11Step = 213 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 214.
        ].
        recoveredBlock11Step = 214 ifTrue: [
            recoveredBlock11Local3 := recoveredBlock11Stack3.
            recoveredBlock11PC := 217.
        ].
        recoveredBlock11Step = 217 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack2.
            recoveredBlock11PC := 220.
        ].
        recoveredBlock11Step = 220 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

