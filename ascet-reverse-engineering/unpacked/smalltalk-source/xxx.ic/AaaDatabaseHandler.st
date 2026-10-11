"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x20000198; bytecode file offset 0x14ca4"
!AaaDatabaseHandler methodsFor: 'recovered'!
mainController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := (recoveredValue0) mainController.
    ^recoveredValue1
! !

"xxx.ic method 0x20000210; bytecode file offset 0x14d0c"
!AaaDatabaseHandler methodsFor: 'recovered'!
apiManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AaaManagement.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"xxx.ic method 0x20000258; bytecode file offset 0x14d28"
!AaaDatabaseHandler methodsFor: 'recovered'!
userInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := (recoveredValue0) mainController.
    recoveredValue2 := (recoveredValue1) userInterface.
    ^recoveredValue2
! !

"xxx.ic method 0x2000071c; bytecode file offset 0x15220"
!AaaDatabaseHandler methodsFor: 'recovered'!
setLongLastingAction
    | recoveredValue0 recoveredValue1 |
    (self) runtimeAssert: (false) additionalInfo: ('Do not use this method. Please use the methods in class AaaManagement').
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := (recoveredValue0) setLongLastingAction.
    ^recoveredValue1
! !

"xxx.ic method 0x20000734; bytecode file offset 0x15220"
!AaaDatabaseHandler methodsFor: 'recovered'!
resetLongLastingAction
    | recoveredValue0 recoveredValue1 |
    (self) runtimeAssert: (false) additionalInfo: ('Do not use this method. Please use the methods in class AaaManagement').
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := (recoveredValue0) resetLongLastingAction.
    ^recoveredValue1
! !

"xxx.ic method 0x2000074c; bytecode file offset 0x15220"
!AaaDatabaseHandler methodsFor: 'recovered'!
isLongLastingAction
    | recoveredValue0 recoveredValue1 |
    (self) runtimeAssert: (false) additionalInfo: ('Do not use this method. Please use the methods in class AaaManagement').
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := (recoveredValue0) isLongLastingAction.
    ^recoveredValue1
! !

"xxx.ic method 0x200007f0; bytecode file offset 0x152c4"
!AaaDatabaseHandler methodsFor: 'recovered'!
doLongLastingAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) runtimeAssert: (false) additionalInfo: ('Do not use this method. Please use the methods in class AaaManagement').
    recoveredValue0 := (self) apiManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) doLongLastingAction: (recoveredValue1).
    ^recoveredValue2
! !

"xxx.ic method 0x20001078; bytecode file offset 0x15b50"
!AaaDatabaseHandler methodsFor: 'recovered'!
databasePath
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDatabaseOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoDatabase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001284; bytecode file offset 0x15d58"
!AaaDatabaseHandler methodsFor: 'recovered'!
isDatabaseOpen
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) library.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isOpen.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) mainController.
    recoveredValue3 := (recoveredValue2) notNil.
    ^recoveredValue3
! !

"xxx.ic method 0x200016e8; bytecode file offset 0x161c4"
!AaaDatabaseHandler methodsFor: 'recovered'!
isDatabasePath: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPath: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathIncludesDatabase: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001c04; bytecode file offset 0x166e8"
!AaaDatabaseHandler methodsFor: 'recovered'!
closeCurrentDatabase
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDatabaseOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AaaExperimentInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) closeExperimentBasic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) closeAllWindows.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) closeDataStorage.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDatabaseOpen.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001c48; bytecode file offset 0x16744"
!AaaDatabaseHandler methodsFor: 'recovered'!
changeWorkspace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) library.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := EtasGeneralDllApi.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) fullPath: (recoveredBlock5Value2).
    recoveredBlock5Value4 := (recoveredBlock5Value0) openDataStorage: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) isDatabaseOpen.
    ^recoveredValue2
! !

"xxx.ic method 0x20001c68; bytecode file offset 0x16744"
!AaaDatabaseHandler methodsFor: 'recovered'!
changeDatabase: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) library.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := EtasGeneralDllApi.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) fullPath: (recoveredBlock5Value2).
    recoveredBlock5Value4 := (recoveredBlock5Value0) openDataStorage: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) isDatabaseOpen.
    ^recoveredValue2
! !

"xxx.ic method 0x20001fb8; bytecode file offset 0x16a94"
!AaaDatabaseHandler methodsFor: 'recovered'!
isCurrentDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
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
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) location.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullPath: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPath: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20002678; bytecode file offset 0x1715c"
!AaaDatabaseHandler methodsFor: 'recovered'!
isWorkspaceFilePath: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPath: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) workspaceExtension.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) endsWith: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx.ic method 0x20003a40; bytecode file offset 0x18538"
!AaaDatabaseHandler methodsFor: 'recovered'!
getItemFromDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDatabaseOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoDatabase.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInvalidComponentPath.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyReplaceAll: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookForItemInDatabase: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block28000d40Arg1 | 
    | block28000d40Value0 block28000d40Value1 |
    block28000d40Value0 := AaaResult.
    block28000d40Value1 := (block28000d40Value0) createItemNotFoundInDatabase.
    block28000d40Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20003e70; bytecode file offset 0x1895c"
!AaaDatabaseHandler methodsFor: 'recovered'!
getDatabaseVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) library.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) getDataBaseInfo.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 recoveredBlock5Block14Value2 recoveredBlock5Block14Value3 |
    recoveredBlock5Block14Value0 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value1 := (recoveredBlock5Block14Value0) applicationInfo.
    recoveredBlock5Block14Value2 := [:recoveredBlock5Block14Block22Arg1 | 
    | recoveredBlock5Block14Block22Stack0 recoveredBlock5Block14Block22Stack1 recoveredBlock5Block14Block22Stack2 recoveredBlock5Block14Block22Stack3 recoveredBlock5Block14Block22Stack4 recoveredBlock5Block14Block22PC recoveredBlock5Block14Block22Step recoveredBlock5Block14Block22Done recoveredBlock5Block14Block22Result |
    recoveredBlock5Block14Block22Stack0 := self.
    recoveredBlock5Block14Block22PC := 28.
    recoveredBlock5Block14Block22Done := false.
    [recoveredBlock5Block14Block22Done not] whileTrue: [
        recoveredBlock5Block14Block22Step := recoveredBlock5Block14Block22PC.
        recoveredBlock5Block14Block22Step = 28 ifTrue: [
            recoveredBlock5Block14Block22Stack1 := recoveredBlock5Block14Block22Arg1.
            recoveredBlock5Block14Block22PC := 29.
        ].
        recoveredBlock5Block14Block22Step = 29 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := self.
            recoveredBlock5Block14Block22PC := 30.
        ].
        recoveredBlock5Block14Block22Step = 30 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := (recoveredBlock5Block14Block22Stack2) mainController.
            recoveredBlock5Block14Block22PC := 31.
        ].
        recoveredBlock5Block14Block22Step = 31 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := (recoveredBlock5Block14Block22Stack2) class.
            recoveredBlock5Block14Block22PC := 33.
        ].
        recoveredBlock5Block14Block22Step = 33 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := (recoveredBlock5Block14Block22Stack2) versionKey.
            recoveredBlock5Block14Block22PC := 35.
        ].
        recoveredBlock5Block14Block22Step = 35 ifTrue: [
            recoveredBlock5Block14Block22Stack3 := [
    #[0 0 0 0 0 0 240 63]
].
            recoveredBlock5Block14Block22PC := 37.
        ].
        recoveredBlock5Block14Block22Step = 37 ifTrue: [
            recoveredBlock5Block14Block22PC := 43.
        ].
        recoveredBlock5Block14Block22Step = 43 ifTrue: [
            recoveredBlock5Block14Block22Stack1 := (recoveredBlock5Block14Block22Stack1) at: (recoveredBlock5Block14Block22Stack2) ifAbsent: (recoveredBlock5Block14Block22Stack3).
            recoveredBlock5Block14Block22PC := 45.
        ].
        recoveredBlock5Block14Block22Step = 45 ifTrue: [
            ^recoveredBlock5Block14Block22Stack1
        ].
    ].
    recoveredBlock5Block14Block22Result
].
    recoveredBlock5Block14Value3 := (recoveredBlock5Block14Value1) ifNotNil: (recoveredBlock5Block14Value2).
    recoveredBlock5Block14Value3
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^#[0 0 0 0 0 0 240 63]
! !

"xxx.ic method 0x20004d3c; bytecode file offset 0x19828"
!AaaDatabaseHandler methodsFor: 'recovered'!
checkDatabaseProduct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) library.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) getDataBaseInfo.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 recoveredBlock5Block14Value2 recoveredBlock5Block14Value3 |
    recoveredBlock5Block14Value0 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value1 := (recoveredBlock5Block14Value0) applicationInfo.
    recoveredBlock5Block14Value2 := [:recoveredBlock5Block14Block22Arg1 | 
    | recoveredBlock5Block14Block22Stack0 recoveredBlock5Block14Block22Stack1 recoveredBlock5Block14Block22Stack2 recoveredBlock5Block14Block22Stack3 recoveredBlock5Block14Block22Stack4 recoveredBlock5Block14Block22Stack5 recoveredBlock5Block14Block22Stack6 recoveredBlock5Block14Block22PC recoveredBlock5Block14Block22Step recoveredBlock5Block14Block22Done recoveredBlock5Block14Block22Result |
    recoveredBlock5Block14Block22Stack0 := self.
    recoveredBlock5Block14Block22PC := 28.
    recoveredBlock5Block14Block22Done := false.
    [recoveredBlock5Block14Block22Done not] whileTrue: [
        recoveredBlock5Block14Block22Step := recoveredBlock5Block14Block22PC.
        recoveredBlock5Block14Block22Step = 28 ifTrue: [
            recoveredBlock5Block14Block22Stack1 := nil.
            recoveredBlock5Block14Block22PC := 29.
        ].
        recoveredBlock5Block14Block22Step = 29 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := self.
            recoveredBlock5Block14Block22PC := 30.
        ].
        recoveredBlock5Block14Block22Step = 30 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := (recoveredBlock5Block14Block22Stack2) mainController.
            recoveredBlock5Block14Block22PC := 31.
        ].
        recoveredBlock5Block14Block22Step = 31 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := (recoveredBlock5Block14Block22Stack2) class.
            recoveredBlock5Block14Block22PC := 33.
        ].
        recoveredBlock5Block14Block22Step = 33 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := (recoveredBlock5Block14Block22Stack2) product.
            recoveredBlock5Block14Block22PC := 35.
        ].
        recoveredBlock5Block14Block22Step = 35 ifTrue: [
            recoveredBlock5Block14Block22Stack3 := recoveredBlock5Block14Block22Arg1.
            recoveredBlock5Block14Block22PC := 36.
        ].
        recoveredBlock5Block14Block22Step = 36 ifTrue: [
            recoveredBlock5Block14Block22Stack4 := self.
            recoveredBlock5Block14Block22PC := 37.
        ].
        recoveredBlock5Block14Block22Step = 37 ifTrue: [
            recoveredBlock5Block14Block22Stack4 := (recoveredBlock5Block14Block22Stack4) mainController.
            recoveredBlock5Block14Block22PC := 38.
        ].
        recoveredBlock5Block14Block22Step = 38 ifTrue: [
            recoveredBlock5Block14Block22Stack4 := (recoveredBlock5Block14Block22Stack4) class.
            recoveredBlock5Block14Block22PC := 40.
        ].
        recoveredBlock5Block14Block22Step = 40 ifTrue: [
            recoveredBlock5Block14Block22Stack4 := (recoveredBlock5Block14Block22Stack4) productKey.
            recoveredBlock5Block14Block22PC := 42.
        ].
        recoveredBlock5Block14Block22Step = 42 ifTrue: [
            recoveredBlock5Block14Block22Stack5 := [].
            recoveredBlock5Block14Block22PC := 44.
        ].
        recoveredBlock5Block14Block22Step = 44 ifTrue: [
            recoveredBlock5Block14Block22Stack3 := (recoveredBlock5Block14Block22Stack3) at: (recoveredBlock5Block14Block22Stack4) ifAbsent: (recoveredBlock5Block14Block22Stack5).
            recoveredBlock5Block14Block22PC := 46.
        ].
        recoveredBlock5Block14Block22Step = 46 ifTrue: [
            recoveredBlock5Block14Block22Stack2 := (recoveredBlock5Block14Block22Stack2) = (recoveredBlock5Block14Block22Stack3).
            recoveredBlock5Block14Block22PC := 47.
        ].
        recoveredBlock5Block14Block22Step = 47 ifTrue: [
            (recoveredBlock5Block14Block22Stack2) ifTrue: [recoveredBlock5Block14Block22PC := 50] ifFalse: [recoveredBlock5Block14Block22PC := 53].
        ].
        recoveredBlock5Block14Block22Step = 50 ifTrue: [
            recoveredBlock5Block14Block22PC := 51.
        ].
        recoveredBlock5Block14Block22Step = 51 ifTrue: [
            recoveredBlock5Block14Block22Stack1 := true.
            recoveredBlock5Block14Block22PC := 52.
        ].
        recoveredBlock5Block14Block22Step = 52 ifTrue: [
            ^recoveredBlock5Block14Block22Stack1
        ].
        recoveredBlock5Block14Block22Step = 53 ifTrue: [
            recoveredBlock5Block14Block22Result := recoveredBlock5Block14Block22Stack1.
            recoveredBlock5Block14Block22Done := true.
        ].
    ].
    recoveredBlock5Block14Block22Result
].
    recoveredBlock5Block14Value3 := (recoveredBlock5Block14Value1) ifNotNil: (recoveredBlock5Block14Value2).
    recoveredBlock5Block14Value3
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"xxx.ic method 0x20006204; bytecode file offset 0x1acfc"
!AaaDatabaseHandler methodsFor: 'recovered'!
lookForItemInDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPathOnly.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookForPathInDatabase: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPathNotFoundInDatabase.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := AaaResult.
    recoveredBlock34Value1 := (recoveredBlock34Value0) createPathNotFoundInDatabase.
    ^recoveredBlock34Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 |
    recoveredBlock63Value0 := recoveredBlock63Arg1.
    recoveredBlock63Value1 := (recoveredBlock63Value0) label.
    recoveredBlock63Value2 := (recoveredBlock63Value1) asLowercase.
    recoveredBlock63Value3 := recoveredLocal2.
    recoveredBlock63Value4 := (recoveredBlock63Value2) = (recoveredBlock63Value3).
    recoveredBlock63Value4
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [
    | block28000f14Value0 block28000f14Value1 |
    block28000f14Value0 := AaaResult.
    block28000f14Value1 := (block28000f14Value0) createItemNotFoundInDatabase.
    block28000f14Value1
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20006764; bytecode file offset 0x1b260"
!AaaDatabaseHandler methodsFor: 'recovered'!
openWorkspace: recoveredArg1 forceConversion: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceFilePath: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoWorkspace.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createResultOkay.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCurrentDatabase: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) closeAllWindows.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) closeCurrentDatabase.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOperationFailed.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
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
            recoveredBlock52Stack2 := self.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack3 := recoveredArg1.
            recoveredBlock52PC := 63.
        ].
        recoveredBlock52Step = 63 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) changeWorkspace: (recoveredBlock52Stack3).
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 77] ifFalse: [recoveredBlock52PC := 68].
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack1 := AaaResult.
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) createOperationFailed.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 74.
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredLocal2 := recoveredBlock52Stack2.
            recoveredBlock52PC := 77.
        ].
        recoveredBlock52Step = 77 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) suppressDialogsFor: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) closeCurrentDatabase.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) doChangeDBActivities.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20007b54; bytecode file offset 0x1c660"
!AaaDatabaseHandler methodsFor: 'recovered'!
lookForPathInDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidPathName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) databaseAccess.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryKeys.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := false.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) isRBDBUndefinedObject.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 58] ifFalse: [recoveredBlock34PC := 48].
        ].
        recoveredBlock34Step = 48 ifTrue: [
            recoveredBlock34PC := 49.
        ].
        recoveredBlock34Step = 49 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) label.
            recoveredBlock34PC := 52.
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) asLowercase.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack2 := recoveredLocal3.
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) = (recoveredBlock34Stack2).
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 |
    recoveredBlock59Value0 := AaaResult.
    recoveredBlock59Value1 := (recoveredBlock59Value0) createPathNotFoundInDatabase.
    ^recoveredBlock59Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFirst.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) childrenKeys.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := false.
            recoveredBlock93PC := 101.
        ].
        recoveredBlock93Step = 101 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg1.
            recoveredBlock93PC := 102.
        ].
        recoveredBlock93Step = 102 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) isRBDBUndefinedObject.
            recoveredBlock93PC := 104.
        ].
        recoveredBlock93Step = 104 ifTrue: [
            (recoveredBlock93Stack2) ifTrue: [recoveredBlock93PC := 118] ifFalse: [recoveredBlock93PC := 108].
        ].
        recoveredBlock93Step = 108 ifTrue: [
            recoveredBlock93PC := 109.
        ].
        recoveredBlock93Step = 109 ifTrue: [
            recoveredBlock93Stack1 := recoveredBlock93Arg1.
            recoveredBlock93PC := 110.
        ].
        recoveredBlock93Step = 110 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) label.
            recoveredBlock93PC := 112.
        ].
        recoveredBlock93Step = 112 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) asLowercase.
            recoveredBlock93PC := 114.
        ].
        recoveredBlock93Step = 114 ifTrue: [
            recoveredBlock93Stack2 := recoveredLocal3.
            recoveredBlock93PC := 117.
        ].
        recoveredBlock93Step = 117 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) = (recoveredBlock93Stack2).
            recoveredBlock93PC := 118.
        ].
        recoveredBlock93Step = 118 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock119Value0 recoveredBlock119Value1 |
    recoveredBlock119Value0 := AaaResult.
    recoveredBlock119Value1 := (recoveredBlock119Value0) createPathNotFoundInDatabase.
    ^recoveredBlock119Value1
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 |
    recoveredBlock139Value0 := AaaResult.
    recoveredBlock139Value1 := (recoveredBlock139Value0) createItemNotLoadable.
    ^recoveredBlock139Value1
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) asRBDBReference.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20009310; bytecode file offset 0x1de90"
!AaaDatabaseHandler methodsFor: 'recovered'!
openDatabase: recoveredArg1 forceConversion: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDatabasePath: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoDatabase.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Call_80522'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTempFileNameIn: (recoveredStack1) prefix: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInvalidPathName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) createResultOkay.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCurrentDatabase: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 333] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) closeAllWindows.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) closeCurrentDatabase.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOperationFailed.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90Stack3 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := recoveredArg1.
            recoveredBlock90PC := 99.
        ].
        recoveredBlock90Step = 99 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) changeDatabase: (recoveredBlock90Stack1).
            recoveredBlock90PC := 101.
        ].
        recoveredBlock90Step = 101 ifTrue: [
            (recoveredBlock90Stack0) ifTrue: [recoveredBlock90PC := 104] ifFalse: [recoveredBlock90PC := 302].
        ].
        recoveredBlock90Step = 104 ifTrue: [
            recoveredBlock90Stack0 := self.
            recoveredBlock90PC := 105.
        ].
        recoveredBlock90Step = 105 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) checkDatabaseProduct.
            recoveredBlock90PC := 107.
        ].
        recoveredBlock90Step = 107 ifTrue: [
            (recoveredBlock90Stack0) ifTrue: [recoveredBlock90PC := 110] ifFalse: [recoveredBlock90PC := 290].
        ].
        recoveredBlock90Step = 110 ifTrue: [
            recoveredBlock90Stack0 := self.
            recoveredBlock90PC := 111.
        ].
        recoveredBlock90Step = 111 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) getDatabaseVersion.
            recoveredBlock90PC := 113.
        ].
        recoveredBlock90Step = 113 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 114.
        ].
        recoveredBlock90Step = 114 ifTrue: [
            recoveredLocal3 := recoveredBlock90Stack1.
            recoveredBlock90PC := 117.
        ].
        recoveredBlock90Step = 117 ifTrue: [
            recoveredBlock90Stack1 := #[246 40 92 143 194 245 244 63].
            recoveredBlock90PC := 119.
        ].
        recoveredBlock90Step = 119 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) < (recoveredBlock90Stack1).
            recoveredBlock90PC := 120.
        ].
        recoveredBlock90Step = 120 ifTrue: [
            (recoveredBlock90Stack0) ifTrue: [recoveredBlock90PC := 136] ifFalse: [recoveredBlock90PC := 124].
        ].
        recoveredBlock90Step = 124 ifTrue: [
            recoveredBlock90Stack0 := recoveredLocal3.
            recoveredBlock90PC := 127.
        ].
        recoveredBlock90Step = 127 ifTrue: [
            recoveredBlock90Stack1 := ASDPersistenceController.
            recoveredBlock90PC := 129.
        ].
        recoveredBlock90Step = 129 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) currentDBVersion.
            recoveredBlock90PC := 131.
        ].
        recoveredBlock90Step = 131 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) > (recoveredBlock90Stack1).
            recoveredBlock90PC := 132.
        ].
        recoveredBlock90Step = 132 ifTrue: [
            (recoveredBlock90Stack0) ifTrue: [recoveredBlock90PC := 136] ifFalse: [recoveredBlock90PC := 148].
        ].
        recoveredBlock90Step = 136 ifTrue: [
            recoveredBlock90Stack0 := AaaResult.
            recoveredBlock90PC := 138.
        ].
        recoveredBlock90Step = 138 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) createIncompatibleDatabaseVersion.
            recoveredBlock90PC := 140.
        ].
        recoveredBlock90Step = 140 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 141.
        ].
        recoveredBlock90Step = 141 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 144.
        ].
        recoveredBlock90Step = 144 ifTrue: [
            recoveredBlock90PC := 286.
        ].
        recoveredBlock90Step = 148 ifTrue: [
            recoveredBlock90Stack0 := nil.
            recoveredBlock90PC := 149.
        ].
        recoveredBlock90Step = 149 ifTrue: [
            recoveredBlock90Stack1 := recoveredLocal3.
            recoveredBlock90PC := 152.
        ].
        recoveredBlock90Step = 152 ifTrue: [
            recoveredBlock90Stack2 := ASDPersistenceController.
            recoveredBlock90PC := 154.
        ].
        recoveredBlock90Step = 154 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) currentDBVersion.
            recoveredBlock90PC := 156.
        ].
        recoveredBlock90Step = 156 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) = (recoveredBlock90Stack2).
            recoveredBlock90PC := 157.
        ].
        recoveredBlock90Step = 157 ifTrue: [
            (recoveredBlock90Stack1) ifTrue: [recoveredBlock90PC := 286] ifFalse: [recoveredBlock90PC := 160].
        ].
        recoveredBlock90Step = 160 ifTrue: [
            recoveredBlock90PC := 161.
        ].
        recoveredBlock90Step = 161 ifTrue: [
            recoveredBlock90Stack0 := recoveredArg2.
            recoveredBlock90PC := 164.
        ].
        recoveredBlock90Step = 164 ifTrue: [
            (recoveredBlock90Stack0) ifTrue: [recoveredBlock90PC := 168] ifFalse: [recoveredBlock90PC := 278].
        ].
        recoveredBlock90Step = 168 ifTrue: [
            recoveredBlock90Stack0 := self.
            recoveredBlock90PC := 169.
        ].
        recoveredBlock90Step = 169 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) library.
            recoveredBlock90PC := 171.
        ].
        recoveredBlock90Step = 171 ifTrue: [
            (recoveredBlock90Stack0) closeDataStorage.
            recoveredBlock90PC := 173.
        ].
        recoveredBlock90Step = 173 ifTrue: [
            recoveredBlock90Stack0 := self.
            recoveredBlock90PC := 174.
        ].
        recoveredBlock90Step = 174 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) library.
            recoveredBlock90PC := 176.
        ].
        recoveredBlock90Step = 176 ifTrue: [
            (recoveredBlock90Stack0) deleteConfigFile.
            recoveredBlock90PC := 178.
        ].
        recoveredBlock90Step = 178 ifTrue: [
            recoveredBlock90Stack0 := self.
            recoveredBlock90PC := 179.
        ].
        recoveredBlock90Step = 179 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) library.
            recoveredBlock90PC := 181.
        ].
        recoveredBlock90Step = 181 ifTrue: [
            (recoveredBlock90Stack0) openCurrentDataStorage.
            recoveredBlock90PC := 183.
        ].
        recoveredBlock90Step = 183 ifTrue: [
            recoveredBlock90Stack0 := [
    | recoveredBlock90Block183Value0 recoveredBlock90Block183Value1 |
    recoveredBlock90Block183Value0 := (self) userInterface.
    recoveredBlock90Block183Value1 := [
    | recoveredBlock90Block183Block192Value0 recoveredBlock90Block183Block192Value1 recoveredBlock90Block183Block192Value2 recoveredBlock90Block183Block192Value3 recoveredBlock90Block183Block192Value4 |
    recoveredBlock90Block183Block192Value0 := EtasDatabaseAdministrationDialog.
    recoveredBlock90Block183Block192Value1 := (recoveredBlock90Block183Block192Value0) create.
    recoveredBlock90Block183Block192Value2 := (self) userInterface.
    (recoveredBlock90Block183Block192Value1) convertDatabaseToNewVersionUI: (recoveredBlock90Block183Block192Value2).
    recoveredBlock90Block183Block192Value3 := (self) mainController.
    recoveredBlock90Block183Block192Value4 := (recoveredBlock90Block183Block192Value3) setCurrentVersionToDatabase.
    recoveredBlock90Block183Block192Value4
].
    (recoveredBlock90Block183Value0) terminateRefreshProcessWhile: (recoveredBlock90Block183Value1).
    true
].
            recoveredBlock90PC := 216.
        ].
        recoveredBlock90Step = 216 ifTrue: [
            recoveredBlock90Stack1 := ExError.
            recoveredBlock90PC := 218.
        ].
        recoveredBlock90Step = 218 ifTrue: [
            recoveredBlock90Stack2 := [:block28001208Arg1 | 
    | block28001208Stack0 block28001208Stack1 block28001208Stack2 block28001208Stack3 block28001208PC block28001208Step block28001208Done block28001208Result |
    block28001208Stack0 := self.
    block28001208PC := 4.
    block28001208Done := false.
    [block28001208Done not] whileTrue: [
        block28001208Step := block28001208PC.
        block28001208Step = 4 ifTrue: [
            block28001208Stack1 := System.
            block28001208PC := 6.
        ].
        block28001208Step = 6 ifTrue: [
            block28001208Stack1 := (block28001208Stack1) isRuntime.
            block28001208PC := 8.
        ].
        block28001208Step = 8 ifTrue: [
            (block28001208Stack1) ifTrue: [block28001208PC := 12] ifFalse: [block28001208PC := 20].
        ].
        block28001208Step = 12 ifTrue: [
            block28001208Stack1 := block28001208Arg1.
            block28001208PC := 13.
        ].
        block28001208Step = 13 ifTrue: [
            block28001208Stack2 := false.
            block28001208PC := 14.
        ].
        block28001208Step = 14 ifTrue: [
            block28001208Stack1 := (block28001208Stack1) exitWith: (block28001208Stack2).
            block28001208PC := 16.
        ].
        block28001208Step = 16 ifTrue: [
            block28001208PC := 23.
        ].
        block28001208Step = 20 ifTrue: [
            block28001208Stack1 := block28001208Arg1.
            block28001208PC := 21.
        ].
        block28001208Step = 21 ifTrue: [
            block28001208Stack1 := (block28001208Stack1) signal.
            block28001208PC := 23.
        ].
        block28001208Step = 23 ifTrue: [
            block28001208Result := block28001208Stack1.
            block28001208Done := true.
        ].
    ].
    block28001208Result
].
            recoveredBlock90PC := 220.
        ].
        recoveredBlock90Step = 220 ifTrue: [
            recoveredBlock90PC := 244.
        ].
        recoveredBlock90Step = 244 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) when: (recoveredBlock90Stack1) do: (recoveredBlock90Stack2).
            recoveredBlock90PC := 246.
        ].
        recoveredBlock90Step = 246 ifTrue: [
            (recoveredBlock90Stack0) ifTrue: [recoveredBlock90PC := 250] ifFalse: [recoveredBlock90PC := 262].
        ].
        recoveredBlock90Step = 250 ifTrue: [
            recoveredBlock90Stack0 := AaaResult.
            recoveredBlock90PC := 252.
        ].
        recoveredBlock90Step = 252 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) createResultOkay.
            recoveredBlock90PC := 254.
        ].
        recoveredBlock90Step = 254 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 255.
        ].
        recoveredBlock90Step = 255 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 258.
        ].
        recoveredBlock90Step = 258 ifTrue: [
            recoveredBlock90PC := 270.
        ].
        recoveredBlock90Step = 262 ifTrue: [
            recoveredBlock90Stack0 := AaaResult.
            recoveredBlock90PC := 264.
        ].
        recoveredBlock90Step = 264 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) createOperationFailed.
            recoveredBlock90PC := 266.
        ].
        recoveredBlock90Step = 266 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 267.
        ].
        recoveredBlock90Step = 267 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 270.
        ].
        recoveredBlock90Step = 270 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 271.
        ].
        recoveredBlock90Step = 271 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 274.
        ].
        recoveredBlock90Step = 274 ifTrue: [
            recoveredBlock90PC := 286.
        ].
        recoveredBlock90Step = 278 ifTrue: [
            recoveredBlock90Stack0 := AaaResult.
            recoveredBlock90PC := 280.
        ].
        recoveredBlock90Step = 280 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) createIncompatibleDatabaseVersion.
            recoveredBlock90PC := 282.
        ].
        recoveredBlock90Step = 282 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 283.
        ].
        recoveredBlock90Step = 283 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 286.
        ].
        recoveredBlock90Step = 286 ifTrue: [
            recoveredBlock90PC := 298.
        ].
        recoveredBlock90Step = 290 ifTrue: [
            recoveredBlock90Stack0 := AaaResult.
            recoveredBlock90PC := 292.
        ].
        recoveredBlock90Step = 292 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) createIncompatibleDatabase.
            recoveredBlock90PC := 294.
        ].
        recoveredBlock90Step = 294 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 295.
        ].
        recoveredBlock90Step = 295 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 298.
        ].
        recoveredBlock90Step = 298 ifTrue: [
            recoveredBlock90PC := 310.
        ].
        recoveredBlock90Step = 302 ifTrue: [
            recoveredBlock90Stack0 := AaaResult.
            recoveredBlock90PC := 304.
        ].
        recoveredBlock90Step = 304 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) createOperationFailed.
            recoveredBlock90PC := 306.
        ].
        recoveredBlock90Step = 306 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 307.
        ].
        recoveredBlock90Step = 307 ifTrue: [
            recoveredLocal2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 310.
        ].
        recoveredBlock90Step = 310 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack0.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) suppressDialogsFor: (recoveredStack1).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) closeCurrentDatabase.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) doChangeDBActivities.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

