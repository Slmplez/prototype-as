"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200404d4; bytecode file offset 0x93d278"
!DBAdministrationController methodsFor: 'recovered'!
loadConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (recoveredValue0) loadConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c7a4; bytecode file offset 0x9692b0"
!DBAdministrationController methodsFor: 'recovered'!
interfaceClass
    | recoveredValue0 |
    recoveredValue0 := interfaceClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cbe8; bytecode file offset 0x969c04"
!DBAdministrationController methodsFor: 'recovered'!
interfaceType
    | recoveredValue0 |
    recoveredValue0 := interfaceType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009cda8; bytecode file offset 0x999668"
!DBAdministrationController methodsFor: 'recovered'!
initializeInstances
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DBInterface32.
    recoveredValue1 := (recoveredValue0) interfaceTypes.
    recoveredValue2 := (recoveredValue1) first.
    interfaceType := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200c2ecc; bytecode file offset 0x9bfde0"
!DBAdministrationController methodsFor: 'recovered'!
interfaceClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interfaceClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c36a8; bytecode file offset 0x9c058c"
!DBAdministrationController methodsFor: 'recovered'!
interfaceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interfaceType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f06bc; bytecode file offset 0x9ecf78"
!DBAdministrationController methodsFor: 'recovered'!
closeDatabase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) closeDataStorage.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f0d30; bytecode file offset 0x9ed5f8"
!DBAdministrationController methodsFor: 'recovered'!
dllClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := interfaceType.
    recoveredValue1 := (recoveredValue0) dllClasses.
    recoveredValue2 := Array.
    recoveredValue3 := UndefinedObject.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201268d0; bytecode file offset 0xa23190"
!DBAdministrationController methodsFor: 'recovered'!
addInterface: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := interfaceType.
    (recoveredValue3) interfaceType: (recoveredValue4).
    (recoveredValue2) changeInterface.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20129074; bytecode file offset 0xa25934"
!DBAdministrationController methodsFor: 'recovered'!
rebuildDatabase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) restoreDoDa.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) rebuildLocalDatabase.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d0884; bytecode file offset 0xacd150"
!DBAdministrationController methodsFor: 'recovered'!
compactDatabaseBasic
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) allFiles.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            progressCount := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) attachedFilesGarbageCollect: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) compactLocalDatabase.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5838; bytecode file offset 0xad20f4"
!DBAdministrationController methodsFor: 'recovered'!
commit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := progressWindow.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) commit.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := progressWindow.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) commitShowProgressOn: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            progressWindow := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f08c4; bytecode file offset 0xaed184"
!DBAdministrationController methodsFor: 'recovered'!
progressCount
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := progressCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := progressCount.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := super progressCount.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := progressCount.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) progressCount.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20212c20; bytecode file offset 0xb0f4ec"
!DBAdministrationController methodsFor: 'recovered'!
deleteRejectedObjects: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) readRejectedProxysFrom: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block280daa0cArg1 | 
    | block280daa0cStack0 block280daa0cStack1 block280daa0cStack2 block280daa0cStack3 block280daa0cPC block280daa0cStep block280daa0cDone block280daa0cResult |
    block280daa0cStack0 := self.
    block280daa0cPC := 4.
    block280daa0cDone := false.
    [block280daa0cDone not] whileTrue: [
        block280daa0cStep := block280daa0cPC.
        block280daa0cStep = 4 ifTrue: [
            block280daa0cStack1 := nil.
            block280daa0cPC := 5.
        ].
        block280daa0cStep = 5 ifTrue: [
            block280daa0cStack2 := block280daa0cArg1.
            block280daa0cPC := 6.
        ].
        block280daa0cStep = 6 ifTrue: [
            block280daa0cStack2 := (block280daa0cStack2) isError.
            block280daa0cPC := 7.
        ].
        block280daa0cStep = 7 ifTrue: [
            (block280daa0cStack2) ifTrue: [block280daa0cPC := 13] ifFalse: [block280daa0cPC := 10].
        ].
        block280daa0cStep = 10 ifTrue: [
            block280daa0cPC := 11.
        ].
        block280daa0cStep = 11 ifTrue: [
            block280daa0cStack1 := block280daa0cArg1.
            block280daa0cPC := 12.
        ].
        block280daa0cStep = 12 ifTrue: [
            block280daa0cStack1 := (block280daa0cStack1) delete.
            block280daa0cPC := 13.
        ].
        block280daa0cStep = 13 ifTrue: [
            block280daa0cResult := block280daa0cStack1.
            block280daa0cDone := true.
        ].
    ].
    block280daa0cResult
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20354470; bytecode file offset 0xc50d64"
!DBAdministrationController methodsFor: 'recovered'!
allFiles
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allFiles.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
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
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := DBInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) location.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) asPathname.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := 'workbase'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) findFileNames: (recoveredStack3) local: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := DBInterface.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) location.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) asPathname.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'signal'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) findFileNames: (recoveredStack3) local: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:block280ef7c0Arg1 | 
    | block280ef7c0Value0 block280ef7c0Value1 |
    block280ef7c0Value0 := block280ef7c0Arg1.
    block280ef7c0Value1 := (block280ef7c0Value0) asLowercase.
    block280ef7c0Value1
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203a0b2c; bytecode file offset 0xc9d40c"
!DBAdministrationController methodsFor: 'recovered'!
getNewDBDirectories: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := (recoveredValue0) location.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := CfsDirectoryDescriptor.
    recoveredValue5 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg2.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) dName.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := dbInterface.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local2.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            (recoveredBlock19Stack1) changePath: (recoveredBlock19Stack2).
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := dbInterface.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) existsFiles.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 48] ifFalse: [recoveredBlock19PC := 54].
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal4.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local2.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) not.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    recoveredValue6 := recoveredArg1.
    (recoveredValue4) do: (nil) recursive: (recoveredValue5) with: ('*') in: (recoveredValue6).
    recoveredValue7 := dbInterface.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) changePath: (recoveredValue8).
    recoveredValue9 := recoveredLocal4.
    ^recoveredValue9
! !

"ASDBase.ic method 0x203ccc9c; bytecode file offset 0xcc9574"
!DBAdministrationController methodsFor: 'recovered'!
loadAllProgressBlock: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDatabaseSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack3 := 256.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) / (recoveredBlock26Stack3).
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isInteger.
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 46] ifFalse: [recoveredBlock26PC := 82].
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack1 := CwAppContext.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) default.
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack2 := [
    | recoveredBlock26Block51Value0 recoveredBlock26Block51Value1 recoveredBlock26Block51Value2 |
    recoveredBlock26Block51Value0 := progressWindow.
    recoveredBlock26Block51Value1 := [:recoveredBlock26Block51Block60Arg1 | 
    | recoveredBlock26Block51Block60Value0 recoveredBlock26Block51Block60Value1 recoveredBlock26Block51Block60Value2 recoveredBlock26Block51Block60Value3 recoveredBlock26Block51Block60Value4 |
    recoveredBlock26Block51Block60Value0 := recoveredBlock26Block51Block60Arg1.
    recoveredBlock26Block51Block60Value1 := recoveredBlock26Arg1.
    recoveredBlock26Block51Block60Value2 := recoveredLocal1.
    recoveredBlock26Block51Block60Value3 := (recoveredBlock26Block51Block60Value1) / (recoveredBlock26Block51Block60Value2).
    recoveredBlock26Block51Block60Value4 := (recoveredBlock26Block51Block60Value0) fractionComplete: (recoveredBlock26Block51Block60Value3).
    recoveredBlock26Block51Block60Value4
].
    recoveredBlock26Block51Value2 := (recoveredBlock26Block51Value0) ifNotNil: (recoveredBlock26Block51Value1).
    recoveredBlock26Block51Value2
].
            recoveredBlock26PC := 80.
        ].
        recoveredBlock26Step = 80 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) syncExecInUI: (recoveredBlock26Stack2).
            recoveredBlock26PC := 82.
        ].
        recoveredBlock26Step = 82 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043418c; bytecode file offset 0xd30a90"
!DBAdministrationController methodsFor: 'recovered'!
restoreBackReferences
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_89333'.
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
            recoveredStack1 := dbInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeInterface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    (recoveredBlock13Value0) closeDataFile.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    recoveredBlock13Value3 := (recoveredBlock13Value2) defaultDataFilename.
    (recoveredBlock13Value1) copyFiles: (recoveredBlock13Value3) to: ('temp').
    recoveredBlock13Value4 := dbInterface.
    recoveredBlock13Value5 := (recoveredBlock13Value4) openAttributeFile.
    recoveredBlock13Value5
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) restoreBackReferencesLocal.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := dbInterface.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeInterface.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    (recoveredBlock47Value0) closeDataFile.
    recoveredBlock47Value1 := recoveredBlock47Arg1.
    recoveredBlock47Value2 := recoveredBlock47Arg1.
    recoveredBlock47Value3 := (recoveredBlock47Value2) defaultDataFilename.
    (recoveredBlock47Value1) copyFiles: ('temp') to: (recoveredBlock47Value3).
    recoveredBlock47Value4 := dbInterface.
    recoveredBlock47Value5 := (recoveredBlock47Value4) openAttributeFile.
    recoveredBlock47Value5
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'temp.*'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := dbInterface.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributeInterface.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFileNames: (recoveredStack1) local: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:block280fd998Arg1 | 
    | block280fd998Value0 block280fd998Value1 block280fd998Value2 block280fd998Value3 block280fd998Value4 |
    block280fd998Value0 := CfsStat.
    block280fd998Value1 := block280fd998Arg1.
    (block280fd998Value0) clearReadOnly: (block280fd998Value1).
    block280fd998Value2 := CfsFileDescriptor.
    block280fd998Value3 := block280fd998Arg1.
    block280fd998Value4 := (block280fd998Value2) remove: (block280fd998Value3).
    block280fd998Value4
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047c7cc; bytecode file offset 0xd790cc"
!DBAdministrationController methodsFor: 'recovered'!
createMissingMessage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 :recoveredBlock26Arg2 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack3 := 16.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) < (recoveredBlock26Stack3).
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 42] ifFalse: [recoveredBlock26PC := 85].
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal2.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            (recoveredBlock26Stack2) cr.
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg2.
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            (recoveredBlock26Stack2) nextPutAll: (recoveredBlock26Stack3).
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack3 := ' in '.
            recoveredBlock26PC := 56.
        ].
        recoveredBlock26Step = 56 ifTrue: [
            (recoveredBlock26Stack2) nextPutAll: (recoveredBlock26Stack3).
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 60.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) class.
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) name.
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            (recoveredBlock26Stack2) nextPutAll: (recoveredBlock26Stack3).
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 67.
        ].
        recoveredBlock26Step = 67 ifTrue: [
            recoveredBlock26Stack3 := $:.
            recoveredBlock26PC := 70.
        ].
        recoveredBlock26Step = 70 ifTrue: [
            (recoveredBlock26Stack2) nextPut: (recoveredBlock26Stack3).
            recoveredBlock26PC := 72.
        ].
        recoveredBlock26Step = 72 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 73.
        ].
        recoveredBlock26Step = 73 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) label.
            recoveredBlock26PC := 75.
        ].
        recoveredBlock26Step = 75 ifTrue: [
            (recoveredBlock26Stack1) nextPutAll: (recoveredBlock26Stack2).
            recoveredBlock26PC := 77.
        ].
        recoveredBlock26Step = 77 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 80.
        ].
        recoveredBlock26Step = 80 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) + (1).
            recoveredBlock26PC := 81.
        ].
        recoveredBlock26Step = 81 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 82.
        ].
        recoveredBlock26Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 85.
        ].
        recoveredBlock26Step = 85 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := DBErrorMissingAttachedFiles.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20484148; bytecode file offset 0xd80a38"
!DBAdministrationController methodsFor: 'recovered'!
compareRecords: recoveredArg1 in: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal2.
    (recoveredValue7) at: ('same') put: (recoveredValue8).
    recoveredValue9 := recoveredLocal3.
    (recoveredValue6) at: ('different') put: (recoveredValue9).
    recoveredValue10 := DBTitleCompareRecords.
    recoveredValue11 := (self) createProgressWindow: (recoveredValue10).
    progressWindow := recoveredValue11.
    progressCount := 0.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Local2 recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg2.
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 64.
        ].
        recoveredBlock53Step = 64 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) readRecord: (recoveredBlock53Stack2).
            recoveredBlock53PC := 66.
        ].
        recoveredBlock53Step = 66 ifTrue: [
            recoveredBlock53Local2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg3.
            recoveredBlock53PC := 70.
        ].
        recoveredBlock53Step = 70 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 71.
        ].
        recoveredBlock53Step = 71 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) readRecord: (recoveredBlock53Stack2).
            recoveredBlock53PC := 73.
        ].
        recoveredBlock53Step = 73 ifTrue: [
            recoveredBlock53Local1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Local2.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Local1.
            recoveredBlock53PC := 76.
        ].
        recoveredBlock53Step = 76 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) = (recoveredBlock53Stack2).
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 80] ifFalse: [recoveredBlock53PC := 90].
        ].
        recoveredBlock53Step = 80 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal2.
            recoveredBlock53PC := 83.
        ].
        recoveredBlock53Step = 83 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 84.
        ].
        recoveredBlock53Step = 84 ifTrue: [
            (recoveredBlock53Stack1) add: (recoveredBlock53Stack2).
            recoveredBlock53PC := 86.
        ].
        recoveredBlock53Step = 86 ifTrue: [
            recoveredBlock53PC := 96.
        ].
        recoveredBlock53Step = 90 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal3.
            recoveredBlock53PC := 93.
        ].
        recoveredBlock53Step = 93 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 94.
        ].
        recoveredBlock53Step = 94 ifTrue: [
            (recoveredBlock53Stack1) add: (recoveredBlock53Stack2).
            recoveredBlock53PC := 96.
        ].
        recoveredBlock53Step = 96 ifTrue: [
            recoveredBlock53Stack1 := progressCount.
            recoveredBlock53PC := 98.
        ].
        recoveredBlock53Step = 98 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) + (1).
            recoveredBlock53PC := 99.
        ].
        recoveredBlock53Step = 99 ifTrue: [
            progressCount := recoveredBlock53Stack1.
            recoveredBlock53PC := 101.
        ].
        recoveredBlock53Step = 101 ifTrue: [
            recoveredBlock53Stack1 := progressWindow.
            recoveredBlock53PC := 103.
        ].
        recoveredBlock53Step = 103 ifTrue: [
            recoveredBlock53Stack2 := progressCount.
            recoveredBlock53PC := 105.
        ].
        recoveredBlock53Step = 105 ifTrue: [
            recoveredBlock53Stack3 := recoveredArg1.
            recoveredBlock53PC := 108.
        ].
        recoveredBlock53Step = 108 ifTrue: [
            recoveredBlock53Stack3 := (recoveredBlock53Stack3) size.
            recoveredBlock53PC := 110.
        ].
        recoveredBlock53Step = 110 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) / (recoveredBlock53Stack3).
            recoveredBlock53PC := 112.
        ].
        recoveredBlock53Step = 112 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) fractionComplete: (recoveredBlock53Stack2).
            recoveredBlock53PC := 114.
        ].
        recoveredBlock53Step = 114 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := progressWindow.
    (recoveredValue14) close.
    progressWindow := nil.
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2051cf54; bytecode file offset 0xe19860"
!DBAdministrationController methodsFor: 'recovered'!
compareDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInterfaceGlobal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reopenDataBase.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) reopenDataBase.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := DBTitleLoadAllProxys.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createProgressWindow: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadAllProgressBlock: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) progressBlock: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadAllProxys.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := progressWindow.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) progressBlock: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := DBTitleLoadAllProxys.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) createProgressWindow: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadAllProgressBlock: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) progressBlock: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadAllProxys.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) progressBlock: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := progressWindow.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            progressWindow := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareRecords: (recoveredStack1) in: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'new'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'deleted'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) closeLocalDatabase.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) setDBInterfaceGlobal: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052cc4c; bytecode file offset 0xe29580"
!DBAdministrationController methodsFor: 'recovered'!
checkAttachedFiles: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) reopenDataBase.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := dbInterface.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) allFiles.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:block2810d098Arg1 | 
    | block2810d098Value0 block2810d098Value1 |
    block2810d098Value0 := block2810d098Arg1.
    block2810d098Value1 := (block2810d098Value0) asLowercase.
    block2810d098Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := DBQueries.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := dbInterface.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := DBClassNameKey.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := DBExImportController.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) AttachedClassNames.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) setExactSearch: (recoveredStack2) index: (recoveredStack3) keyValue: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) search.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Local1 recoveredBlock72Stack0 recoveredBlock72Stack1 recoveredBlock72Stack2 recoveredBlock72Stack3 recoveredBlock72PC recoveredBlock72Step recoveredBlock72Done recoveredBlock72Result |
    recoveredBlock72Stack0 := self.
    recoveredBlock72PC := 78.
    recoveredBlock72Done := false.
    [recoveredBlock72Done not] whileTrue: [
        recoveredBlock72Step := recoveredBlock72PC.
        recoveredBlock72Step = 78 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Arg1.
            recoveredBlock72PC := 81.
        ].
        recoveredBlock72Step = 81 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) loadFromDatabase.
            recoveredBlock72PC := 83.
        ].
        recoveredBlock72Step = 83 ifTrue: [
            recoveredBlock72Local1 := recoveredBlock72Stack1.
            recoveredBlock72PC := 86.
        ].
        recoveredBlock72Step = 86 ifTrue: [
            recoveredBlock72Stack1 := nil.
            recoveredBlock72PC := 87.
        ].
        recoveredBlock72Step = 87 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Local1.
            recoveredBlock72PC := 90.
        ].
        recoveredBlock72Step = 90 ifTrue: [
            recoveredBlock72Stack2 := (recoveredBlock72Stack2) isError.
            recoveredBlock72PC := 92.
        ].
        recoveredBlock72Step = 92 ifTrue: [
            (recoveredBlock72Stack2) ifTrue: [recoveredBlock72PC := 142] ifFalse: [recoveredBlock72PC := 96].
        ].
        recoveredBlock72Step = 96 ifTrue: [
            recoveredBlock72PC := 97.
        ].
        recoveredBlock72Step = 97 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Local1.
            recoveredBlock72PC := 100.
        ].
        recoveredBlock72Step = 100 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) attachedFilesForImport.
            recoveredBlock72PC := 102.
        ].
        recoveredBlock72Step = 102 ifTrue: [
            recoveredBlock72Stack2 := [:recoveredBlock72Block102Arg1 | 
    | recoveredBlock72Block102Stack0 recoveredBlock72Block102Stack1 recoveredBlock72Block102Stack2 recoveredBlock72Block102Stack3 recoveredBlock72Block102Stack4 recoveredBlock72Block102PC recoveredBlock72Block102Step recoveredBlock72Block102Done recoveredBlock72Block102Result |
    recoveredBlock72Block102Stack0 := nil.
    recoveredBlock72Block102PC := 108.
    recoveredBlock72Block102Done := false.
    [recoveredBlock72Block102Done not] whileTrue: [
        recoveredBlock72Block102Step := recoveredBlock72Block102PC.
        recoveredBlock72Block102Step = 108 ifTrue: [
            recoveredBlock72Block102Stack1 := CfsStat.
            recoveredBlock72Block102PC := 110.
        ].
        recoveredBlock72Block102Step = 110 ifTrue: [
            recoveredBlock72Block102Stack2 := recoveredBlock72Block102Arg1.
            recoveredBlock72Block102PC := 111.
        ].
        recoveredBlock72Block102Step = 111 ifTrue: [
            recoveredBlock72Block102Stack1 := (recoveredBlock72Block102Stack1) exists: (recoveredBlock72Block102Stack2).
            recoveredBlock72Block102PC := 113.
        ].
        recoveredBlock72Block102Step = 113 ifTrue: [
            (recoveredBlock72Block102Stack1) ifTrue: [recoveredBlock72Block102PC := 116] ifFalse: [recoveredBlock72Block102PC := 130].
        ].
        recoveredBlock72Block102Step = 116 ifTrue: [
            recoveredBlock72Block102Stack1 := recoveredArg1.
            recoveredBlock72Block102PC := 119.
        ].
        recoveredBlock72Block102Step = 119 ifTrue: [
            recoveredBlock72Block102Stack2 := recoveredBlock72Block102Arg1.
            recoveredBlock72Block102PC := 120.
        ].
        recoveredBlock72Block102Step = 120 ifTrue: [
            recoveredBlock72Block102Stack2 := (recoveredBlock72Block102Stack2) asLowercase.
            recoveredBlock72Block102PC := 122.
        ].
        recoveredBlock72Block102Step = 122 ifTrue: [
            recoveredBlock72Block102Stack3 := [].
            recoveredBlock72Block102PC := 124.
        ].
        recoveredBlock72Block102Step = 124 ifTrue: [
            recoveredBlock72Block102Stack1 := (recoveredBlock72Block102Stack1) remove: (recoveredBlock72Block102Stack2) ifAbsent: (recoveredBlock72Block102Stack3).
            recoveredBlock72Block102PC := 126.
        ].
        recoveredBlock72Block102Step = 126 ifTrue: [
            recoveredBlock72Block102PC := 139.
        ].
        recoveredBlock72Block102Step = 130 ifTrue: [
            recoveredBlock72Block102Stack1 := recoveredLocal3.
            recoveredBlock72Block102PC := 133.
        ].
        recoveredBlock72Block102Step = 133 ifTrue: [
            recoveredBlock72Block102Stack2 := recoveredBlock72Local1.
            recoveredBlock72Block102PC := 136.
        ].
        recoveredBlock72Block102Step = 136 ifTrue: [
            recoveredBlock72Block102Stack3 := recoveredBlock72Block102Arg1.
            recoveredBlock72Block102PC := 137.
        ].
        recoveredBlock72Block102Step = 137 ifTrue: [
            recoveredBlock72Block102Stack1 := (recoveredBlock72Block102Stack1) at: (recoveredBlock72Block102Stack2) put: (recoveredBlock72Block102Stack3).
            recoveredBlock72Block102PC := 139.
        ].
        recoveredBlock72Block102Step = 139 ifTrue: [
            recoveredBlock72Block102Result := recoveredBlock72Block102Stack1.
            recoveredBlock72Block102Done := true.
        ].
    ].
    recoveredBlock72Block102Result
].
            recoveredBlock72PC := 140.
        ].
        recoveredBlock72Step = 140 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) do: (recoveredBlock72Stack2).
            recoveredBlock72PC := 142.
        ].
        recoveredBlock72Step = 142 ifTrue: [
            recoveredBlock72Result := recoveredBlock72Stack1.
            recoveredBlock72Done := true.
        ].
    ].
    recoveredBlock72Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) closeDataStorage.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := 'missing'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := 'attachedFiles'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'attachedObjects'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) createMissingMessage: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205308a4; bytecode file offset 0xe2d1b4"
!DBAdministrationController methodsFor: 'recovered'!
restoreBackReferencesLocal
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := ('hw') == ('call_89333').
    recoveredValue1 := dbInterface.
    recoveredValue2 := dbInterface.
    recoveredValue3 := (recoveredValue2) uniqueKey.
    recoveredValue4 := (recoveredValue1) loadFirstProxy: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asDBReferencedByLinkProxy.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := DBAttributeKey.
    recoveredValue7 := (recoveredValue6) create.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue8) setKeyValue: (recoveredValue9).
    recoveredValue10 := dbInterface.
    recoveredValue11 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := [
    | block2810d584Value0 block2810d584Value1 block2810d584Value2 |
    block2810d584Value0 := CwAppContext.
    block2810d584Value1 := (block2810d584Value0) default.
    block2810d584Value2 := (block2810d584Value1) readAndDispatch.
    block2810d584Value2
].
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            (recoveredBlock38Stack1) whileTrue.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 60.
        ].
        recoveredBlock38Step = 60 ifTrue: [
            (recoveredBlock38Stack1) delete.
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack1 := progressWindow.
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack2 := [:recoveredBlock38Block64Arg1 | 
    | recoveredBlock38Block64Stack0 recoveredBlock38Block64Stack1 recoveredBlock38Block64Stack2 recoveredBlock38Block64Stack3 recoveredBlock38Block64Stack4 recoveredBlock38Block64PC recoveredBlock38Block64Step recoveredBlock38Block64Done recoveredBlock38Block64Result |
    recoveredBlock38Block64Stack0 := self.
    recoveredBlock38Block64PC := 70.
    recoveredBlock38Block64Done := false.
    [recoveredBlock38Block64Done not] whileTrue: [
        recoveredBlock38Block64Step := recoveredBlock38Block64PC.
        recoveredBlock38Block64Step = 70 ifTrue: [
            recoveredBlock38Block64Stack1 := recoveredBlock38Block64Arg1.
            recoveredBlock38Block64PC := 71.
        ].
        recoveredBlock38Block64Step = 71 ifTrue: [
            recoveredBlock38Block64Stack1 := (recoveredBlock38Block64Stack1) cancelled.
            recoveredBlock38Block64PC := 73.
        ].
        recoveredBlock38Block64Step = 73 ifTrue: [
            (recoveredBlock38Block64Stack1) ifTrue: [recoveredBlock38Block64PC := 76] ifFalse: [recoveredBlock38Block64PC := 78].
        ].
        recoveredBlock38Block64Step = 76 ifTrue: [
            recoveredBlock38Block64Stack1 := nil.
            recoveredBlock38Block64PC := 77.
        ].
        recoveredBlock38Block64Step = 77 ifTrue: [
            ^recoveredBlock38Block64Stack1
        ].
        recoveredBlock38Block64Step = 78 ifTrue: [
            recoveredBlock38Block64Stack1 := recoveredBlock38Block64Arg1.
            recoveredBlock38Block64PC := 79.
        ].
        recoveredBlock38Block64Step = 79 ifTrue: [
            recoveredBlock38Block64Stack2 := dbInterface.
            recoveredBlock38Block64PC := 81.
        ].
        recoveredBlock38Block64Step = 81 ifTrue: [
            recoveredBlock38Block64Stack3 := 1.
            recoveredBlock38Block64PC := 83.
        ].
        recoveredBlock38Block64Step = 83 ifTrue: [
            recoveredBlock38Block64Stack2 := (recoveredBlock38Block64Stack2) showProgress: (recoveredBlock38Block64Stack3).
            recoveredBlock38Block64PC := 85.
        ].
        recoveredBlock38Block64Step = 85 ifTrue: [
            recoveredBlock38Block64Stack3 := 1.
            recoveredBlock38Block64PC := 87.
        ].
        recoveredBlock38Block64Step = 87 ifTrue: [
            recoveredBlock38Block64Stack2 := (recoveredBlock38Block64Stack2) * (recoveredBlock38Block64Stack3).
            recoveredBlock38Block64PC := 88.
        ].
        recoveredBlock38Block64Step = 88 ifTrue: [
            recoveredBlock38Block64Stack3 := 2.
            recoveredBlock38Block64PC := 90.
        ].
        recoveredBlock38Block64Step = 90 ifTrue: [
            recoveredBlock38Block64Stack2 := (recoveredBlock38Block64Stack2) / (recoveredBlock38Block64Stack3).
            recoveredBlock38Block64PC := 92.
        ].
        recoveredBlock38Block64Step = 92 ifTrue: [
            recoveredBlock38Block64Stack1 := (recoveredBlock38Block64Stack1) fractionComplete: (recoveredBlock38Block64Stack2).
            recoveredBlock38Block64PC := 94.
        ].
        recoveredBlock38Block64Step = 94 ifTrue: [
            recoveredBlock38Block64Result := recoveredBlock38Block64Stack1.
            recoveredBlock38Block64Done := true.
        ].
    ].
    recoveredBlock38Block64Result
].
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) ifNotNil: (recoveredBlock38Stack2).
            recoveredBlock38PC := 97.
        ].
        recoveredBlock38Step = 97 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    recoveredValue12 := recoveredLocal1.
    (recoveredValue10) allAttributeSetObjectsSpecialDo: (recoveredValue11) forSet: (recoveredValue12).
    recoveredValue13 := dbInterface.
    recoveredValue14 := dbInterface.
    recoveredValue15 := (recoveredValue14) uniqueKey.
    recoveredValue16 := (recoveredValue13) loadFirstProxy: (recoveredValue15).
    recoveredValue17 := (recoveredValue16) asDBReferenceLinkProxy.
    recoveredLocal2 := recoveredValue17.
    recoveredValue18 := DBAttributeKey.
    recoveredValue19 := (recoveredValue18) create.
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredLocal2.
    (recoveredValue20) setKeyValue: (recoveredValue21).
    recoveredValue22 := dbInterface.
    recoveredValue23 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Stack0 recoveredBlock131Stack1 recoveredBlock131Stack2 recoveredBlock131Stack3 recoveredBlock131PC recoveredBlock131Step recoveredBlock131Done recoveredBlock131Result |
    recoveredBlock131Stack0 := self.
    recoveredBlock131PC := 138.
    recoveredBlock131Done := false.
    [recoveredBlock131Done not] whileTrue: [
        recoveredBlock131Step := recoveredBlock131PC.
        recoveredBlock131Step = 138 ifTrue: [
            recoveredBlock131Stack1 := [
    | block2810d5a8Value0 block2810d5a8Value1 block2810d5a8Value2 |
    block2810d5a8Value0 := CwAppContext.
    block2810d5a8Value1 := (block2810d5a8Value0) default.
    block2810d5a8Value2 := (block2810d5a8Value1) readAndDispatch.
    block2810d5a8Value2
].
            recoveredBlock131PC := 140.
        ].
        recoveredBlock131Step = 140 ifTrue: [
            recoveredBlock131PC := 151.
        ].
        recoveredBlock131Step = 151 ifTrue: [
            (recoveredBlock131Stack1) whileTrue.
            recoveredBlock131PC := 153.
        ].
        recoveredBlock131Step = 153 ifTrue: [
            recoveredBlock131Stack1 := recoveredBlock131Arg1.
            recoveredBlock131PC := 154.
        ].
        recoveredBlock131Step = 154 ifTrue: [
            (recoveredBlock131Stack1) restoreBackReferences.
            recoveredBlock131PC := 156.
        ].
        recoveredBlock131Step = 156 ifTrue: [
            recoveredBlock131Stack1 := progressWindow.
            recoveredBlock131PC := 158.
        ].
        recoveredBlock131Step = 158 ifTrue: [
            recoveredBlock131Stack2 := [:recoveredBlock131Block158Arg1 | 
    | recoveredBlock131Block158Stack0 recoveredBlock131Block158Stack1 recoveredBlock131Block158Stack2 recoveredBlock131Block158Stack3 recoveredBlock131Block158Stack4 recoveredBlock131Block158PC recoveredBlock131Block158Step recoveredBlock131Block158Done recoveredBlock131Block158Result |
    recoveredBlock131Block158Stack0 := self.
    recoveredBlock131Block158PC := 164.
    recoveredBlock131Block158Done := false.
    [recoveredBlock131Block158Done not] whileTrue: [
        recoveredBlock131Block158Step := recoveredBlock131Block158PC.
        recoveredBlock131Block158Step = 164 ifTrue: [
            recoveredBlock131Block158Stack1 := recoveredBlock131Block158Arg1.
            recoveredBlock131Block158PC := 165.
        ].
        recoveredBlock131Block158Step = 165 ifTrue: [
            recoveredBlock131Block158Stack1 := (recoveredBlock131Block158Stack1) cancelled.
            recoveredBlock131Block158PC := 167.
        ].
        recoveredBlock131Block158Step = 167 ifTrue: [
            (recoveredBlock131Block158Stack1) ifTrue: [recoveredBlock131Block158PC := 170] ifFalse: [recoveredBlock131Block158PC := 172].
        ].
        recoveredBlock131Block158Step = 170 ifTrue: [
            recoveredBlock131Block158Stack1 := nil.
            recoveredBlock131Block158PC := 171.
        ].
        recoveredBlock131Block158Step = 171 ifTrue: [
            ^recoveredBlock131Block158Stack1
        ].
        recoveredBlock131Block158Step = 172 ifTrue: [
            recoveredBlock131Block158Stack1 := recoveredBlock131Block158Arg1.
            recoveredBlock131Block158PC := 173.
        ].
        recoveredBlock131Block158Step = 173 ifTrue: [
            recoveredBlock131Block158Stack2 := dbInterface.
            recoveredBlock131Block158PC := 175.
        ].
        recoveredBlock131Block158Step = 175 ifTrue: [
            recoveredBlock131Block158Stack3 := 1.
            recoveredBlock131Block158PC := 177.
        ].
        recoveredBlock131Block158Step = 177 ifTrue: [
            recoveredBlock131Block158Stack2 := (recoveredBlock131Block158Stack2) showProgress: (recoveredBlock131Block158Stack3).
            recoveredBlock131Block158PC := 179.
        ].
        recoveredBlock131Block158Step = 179 ifTrue: [
            recoveredBlock131Block158Stack3 := 1.
            recoveredBlock131Block158PC := 181.
        ].
        recoveredBlock131Block158Step = 181 ifTrue: [
            recoveredBlock131Block158Stack2 := (recoveredBlock131Block158Stack2) * (recoveredBlock131Block158Stack3).
            recoveredBlock131Block158PC := 182.
        ].
        recoveredBlock131Block158Step = 182 ifTrue: [
            recoveredBlock131Block158Stack3 := 2.
            recoveredBlock131Block158PC := 184.
        ].
        recoveredBlock131Block158Step = 184 ifTrue: [
            recoveredBlock131Block158Stack2 := (recoveredBlock131Block158Stack2) / (recoveredBlock131Block158Stack3).
            recoveredBlock131Block158PC := 186.
        ].
        recoveredBlock131Block158Step = 186 ifTrue: [
            recoveredBlock131Block158Stack2 := (recoveredBlock131Block158Stack2) + (1).
            recoveredBlock131Block158PC := 187.
        ].
        recoveredBlock131Block158Step = 187 ifTrue: [
            recoveredBlock131Block158Stack3 := 2.
            recoveredBlock131Block158PC := 189.
        ].
        recoveredBlock131Block158Step = 189 ifTrue: [
            recoveredBlock131Block158Stack2 := (recoveredBlock131Block158Stack2) / (recoveredBlock131Block158Stack3).
            recoveredBlock131Block158PC := 191.
        ].
        recoveredBlock131Block158Step = 191 ifTrue: [
            recoveredBlock131Block158Stack1 := (recoveredBlock131Block158Stack1) fractionComplete: (recoveredBlock131Block158Stack2).
            recoveredBlock131Block158PC := 193.
        ].
        recoveredBlock131Block158Step = 193 ifTrue: [
            recoveredBlock131Block158Result := recoveredBlock131Block158Stack1.
            recoveredBlock131Block158Done := true.
        ].
    ].
    recoveredBlock131Block158Result
].
            recoveredBlock131PC := 194.
        ].
        recoveredBlock131Step = 194 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) ifNotNil: (recoveredBlock131Stack2).
            recoveredBlock131PC := 196.
        ].
        recoveredBlock131Step = 196 ifTrue: [
            recoveredBlock131Result := recoveredBlock131Stack1.
            recoveredBlock131Done := true.
        ].
    ].
    recoveredBlock131Result
].
    recoveredValue24 := recoveredLocal1.
    (recoveredValue22) allAttributeSetObjectsSpecialDo: (recoveredValue23) forSet: (recoveredValue24).
    ^self
! !

"ASDBase.ic method 0x205459e4; bytecode file offset 0xe42348"
!DBAdministrationController methodsFor: 'recovered'!
attachedFilesGarbageCollect: recoveredArg1
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
            recoveredStack2 := [:block2810e760Arg1 | 
    | block2810e760Value0 block2810e760Value1 |
    block2810e760Value0 := block2810e760Arg1.
    block2810e760Value1 := (block2810e760Value0) asLowercase.
    block2810e760Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAttachedFiles: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'attachedFiles'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := DBExImportController.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) AttachedClassNames.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50Stack5 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal1.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack2 := Smalltalk.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Arg1.
            recoveredBlock50PC := 62.
        ].
        recoveredBlock50Step = 62 ifTrue: [
            recoveredBlock50Stack3 := (recoveredBlock50Stack3) asSymbol.
            recoveredBlock50PC := 64.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack4 := [
    | block2810e7a8Value0 |
    block2810e7a8Value0 := Object.
    block2810e7a8Value0
].
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            recoveredBlock50PC := 73.
        ].
        recoveredBlock50Step = 73 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) at: (recoveredBlock50Stack3) ifAbsent: (recoveredBlock50Stack4).
            recoveredBlock50PC := 75.
        ].
        recoveredBlock50Step = 75 ifTrue: [
            recoveredBlock50Stack3 := dbInterface.
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) allDefaultFilesIn: (recoveredBlock50Stack3).
            recoveredBlock50PC := 79.
        ].
        recoveredBlock50Step = 79 ifTrue: [
            recoveredBlock50Stack3 := [].
            recoveredBlock50PC := 81.
        ].
        recoveredBlock50Step = 81 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) removeAll: (recoveredBlock50Stack2) ifAbsent: (recoveredBlock50Stack3).
            recoveredBlock50PC := 83.
        ].
        recoveredBlock50Step = 83 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'attachedObjects'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := DBAttachFilesGarbageSkipped.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'attachedFiles'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := [:recoveredBlock131Arg1 :recoveredBlock131Arg2 | 
    | recoveredBlock131Stack0 recoveredBlock131Stack1 recoveredBlock131Stack2 recoveredBlock131Stack3 recoveredBlock131Stack4 recoveredBlock131PC recoveredBlock131Step recoveredBlock131Done recoveredBlock131Result |
    recoveredBlock131Stack0 := self.
    recoveredBlock131PC := 138.
    recoveredBlock131Done := false.
    [recoveredBlock131Done not] whileTrue: [
        recoveredBlock131Step := recoveredBlock131PC.
        recoveredBlock131Step = 138 ifTrue: [
            recoveredBlock131Stack1 := System.
            recoveredBlock131PC := 140.
        ].
        recoveredBlock131Step = 140 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) isRuntime.
            recoveredBlock131PC := 142.
        ].
        recoveredBlock131Step = 142 ifTrue: [
            (recoveredBlock131Stack1) ifTrue: [recoveredBlock131PC := 146] ifFalse: [recoveredBlock131PC := 150].
        ].
        recoveredBlock131Step = 146 ifTrue: [
            recoveredBlock131Stack1 := true.
            recoveredBlock131PC := 147.
        ].
        recoveredBlock131Step = 147 ifTrue: [
            recoveredBlock131PC := 166.
        ].
        recoveredBlock131Step = 150 ifTrue: [
            recoveredBlock131Stack1 := RBUserQuestion.
            recoveredBlock131PC := 152.
        ].
        recoveredBlock131Step = 152 ifTrue: [
            recoveredBlock131Stack2 := DBOkToDelete.
            recoveredBlock131PC := 154.
        ].
        recoveredBlock131Step = 154 ifTrue: [
            recoveredBlock131Stack3 := recoveredBlock131Arg1.
            recoveredBlock131PC := 157.
        ].
        recoveredBlock131Step = 157 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) , (recoveredBlock131Stack3).
            recoveredBlock131PC := 159.
        ].
        recoveredBlock131Step = 159 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) confirm: (recoveredBlock131Stack2).
            recoveredBlock131PC := 161.
        ].
        recoveredBlock131Step = 161 ifTrue: [
            recoveredBlock131Stack2 := recoveredBlock131Stack1.
            recoveredBlock131PC := 162.
        ].
        recoveredBlock131Step = 162 ifTrue: [
            (recoveredBlock131Stack2) yesNo.
            recoveredBlock131PC := 164.
        ].
        recoveredBlock131Step = 164 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) prompt.
            recoveredBlock131PC := 166.
        ].
        recoveredBlock131Step = 166 ifTrue: [
            recoveredLocal2 := recoveredBlock131Stack1.
            recoveredBlock131PC := 169.
        ].
        recoveredBlock131Step = 169 ifTrue: [
            recoveredBlock131Stack1 := recoveredLocal2.
            recoveredBlock131PC := 172.
        ].
        recoveredBlock131Step = 172 ifTrue: [
            (recoveredBlock131Stack1) ifTrue: [recoveredBlock131PC := 176] ifFalse: [recoveredBlock131PC := 190].
        ].
        recoveredBlock131Step = 176 ifTrue: [
            recoveredBlock131Stack1 := CfsStat.
            recoveredBlock131PC := 178.
        ].
        recoveredBlock131Step = 178 ifTrue: [
            recoveredBlock131Stack2 := recoveredBlock131Arg1.
            recoveredBlock131PC := 181.
        ].
        recoveredBlock131Step = 181 ifTrue: [
            (recoveredBlock131Stack1) clearReadOnly: (recoveredBlock131Stack2).
            recoveredBlock131PC := 183.
        ].
        recoveredBlock131Step = 183 ifTrue: [
            recoveredBlock131Stack1 := CfsFileDescriptor.
            recoveredBlock131PC := 185.
        ].
        recoveredBlock131Step = 185 ifTrue: [
            recoveredBlock131Stack2 := recoveredBlock131Arg1.
            recoveredBlock131PC := 188.
        ].
        recoveredBlock131Step = 188 ifTrue: [
            (recoveredBlock131Stack1) remove: (recoveredBlock131Stack2).
            recoveredBlock131PC := 190.
        ].
        recoveredBlock131Step = 190 ifTrue: [
            recoveredBlock131Stack1 := progressWindow.
            recoveredBlock131PC := 192.
        ].
        recoveredBlock131Step = 192 ifTrue: [
            recoveredBlock131Stack2 := [:recoveredBlock131Block192Arg1 | 
    | recoveredBlock131Block192Value0 recoveredBlock131Block192Value1 recoveredBlock131Block192Value2 recoveredBlock131Block192Value3 recoveredBlock131Block192Value4 |
    recoveredBlock131Block192Value0 := recoveredBlock131Block192Arg1.
    recoveredBlock131Block192Value1 := recoveredBlock131Arg2.
    recoveredBlock131Block192Value2 := progressCount.
    recoveredBlock131Block192Value3 := (recoveredBlock131Block192Value1) / (recoveredBlock131Block192Value2).
    recoveredBlock131Block192Value4 := (recoveredBlock131Block192Value0) fractionComplete: (recoveredBlock131Block192Value3).
    recoveredBlock131Block192Value4
].
            recoveredBlock131PC := 209.
        ].
        recoveredBlock131Step = 209 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) ifNotNil: (recoveredBlock131Stack2).
            recoveredBlock131PC := 211.
        ].
        recoveredBlock131Step = 211 ifTrue: [
            recoveredBlock131Result := recoveredBlock131Stack1.
            recoveredBlock131Done := true.
        ].
    ].
    recoveredBlock131Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054c1b0; bytecode file offset 0xe48abc"
!DBAdministrationController methodsFor: 'recovered'!
createDBReferences
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := progressWindow.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := progressWindow.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := DBTitleCollectDBAttributes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDatabaseSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Local1 recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48Stack4 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := recoveredLocal3.
            recoveredBlock48PC := 57.
        ].
        recoveredBlock48Step = 57 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) + (1).
            recoveredBlock48PC := 58.
        ].
        recoveredBlock48Step = 58 ifTrue: [
            recoveredLocal3 := recoveredBlock48Stack1.
            recoveredBlock48PC := 61.
        ].
        recoveredBlock48Step = 61 ifTrue: [
            recoveredBlock48Stack1 := progressWindow.
            recoveredBlock48PC := 63.
        ].
        recoveredBlock48Step = 63 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) notNil.
            recoveredBlock48PC := 64.
        ].
        recoveredBlock48Step = 64 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal3.
            recoveredBlock48PC := 67.
        ].
        recoveredBlock48Step = 67 ifTrue: [
            recoveredBlock48Stack3 := 100.
            recoveredBlock48PC := 70.
        ].
        recoveredBlock48Step = 70 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) \\ (recoveredBlock48Stack3).
            recoveredBlock48PC := 71.
        ].
        recoveredBlock48Step = 71 ifTrue: [
            recoveredBlock48Stack3 := 0.
            recoveredBlock48PC := 73.
        ].
        recoveredBlock48Step = 73 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) = (recoveredBlock48Stack3).
            recoveredBlock48PC := 74.
        ].
        recoveredBlock48Step = 74 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) & (recoveredBlock48Stack2).
            recoveredBlock48PC := 76.
        ].
        recoveredBlock48Step = 76 ifTrue: [
            (recoveredBlock48Stack1) ifTrue: [recoveredBlock48PC := 80] ifFalse: [recoveredBlock48PC := 92].
        ].
        recoveredBlock48Step = 80 ifTrue: [
            recoveredBlock48Stack1 := progressWindow.
            recoveredBlock48PC := 82.
        ].
        recoveredBlock48Step = 82 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal3.
            recoveredBlock48PC := 85.
        ].
        recoveredBlock48Step = 85 ifTrue: [
            recoveredBlock48Stack3 := recoveredLocal1.
            recoveredBlock48PC := 88.
        ].
        recoveredBlock48Step = 88 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) / (recoveredBlock48Stack3).
            recoveredBlock48PC := 90.
        ].
        recoveredBlock48Step = 90 ifTrue: [
            (recoveredBlock48Stack1) fractionComplete: (recoveredBlock48Stack2).
            recoveredBlock48PC := 92.
        ].
        recoveredBlock48Step = 92 ifTrue: [
            recoveredBlock48Stack1 := nil.
            recoveredBlock48PC := 93.
        ].
        recoveredBlock48Step = 93 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 94.
        ].
        recoveredBlock48Step = 94 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) getDBAttributesWithoutReferences.
            recoveredBlock48PC := 96.
        ].
        recoveredBlock48Step = 96 ifTrue: [
            recoveredBlock48Stack3 := recoveredBlock48Stack2.
            recoveredBlock48PC := 97.
        ].
        recoveredBlock48Step = 97 ifTrue: [
            recoveredBlock48Local1 := recoveredBlock48Stack3.
            recoveredBlock48PC := 98.
        ].
        recoveredBlock48Step = 98 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) notEmpty.
            recoveredBlock48PC := 100.
        ].
        recoveredBlock48Step = 100 ifTrue: [
            (recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 104] ifFalse: [recoveredBlock48PC := 111].
        ].
        recoveredBlock48Step = 104 ifTrue: [
            recoveredBlock48PC := 105.
        ].
        recoveredBlock48Step = 105 ifTrue: [
            recoveredBlock48Stack1 := recoveredLocal4.
            recoveredBlock48PC := 108.
        ].
        recoveredBlock48Step = 108 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Local1.
            recoveredBlock48PC := 109.
        ].
        recoveredBlock48Step = 109 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) add: (recoveredBlock48Stack2).
            recoveredBlock48PC := 111.
        ].
        recoveredBlock48Step = 111 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack1.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) allProxysDo: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNewReferenceFile.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) readWriteAll.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := progressWindow.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := progressWindow.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := DBTitleRestoreDBAttributes.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := [:recoveredBlock154Arg1 | 
    | recoveredBlock154Stack0 recoveredBlock154Stack1 recoveredBlock154Stack2 recoveredBlock154Stack3 recoveredBlock154Stack4 recoveredBlock154Stack5 recoveredBlock154PC recoveredBlock154Step recoveredBlock154Done recoveredBlock154Result |
    recoveredBlock154Stack0 := self.
    recoveredBlock154PC := 160.
    recoveredBlock154Done := false.
    [recoveredBlock154Done not] whileTrue: [
        recoveredBlock154Step := recoveredBlock154PC.
        recoveredBlock154Step = 160 ifTrue: [
            recoveredBlock154Stack1 := recoveredBlock154Arg1.
            recoveredBlock154PC := 161.
        ].
        recoveredBlock154Step = 161 ifTrue: [
            recoveredBlock154Stack2 := [:block2810f0f0Arg1 | 
    | block2810f0f0Value0 block2810f0f0Value1 |
    block2810f0f0Value0 := block2810f0f0Arg1.
    block2810f0f0Value1 := (block2810f0f0Value0) modified.
    block2810f0f0Value1
].
            recoveredBlock154PC := 163.
        ].
        recoveredBlock154Step = 163 ifTrue: [
            recoveredBlock154PC := 170.
        ].
        recoveredBlock154Step = 170 ifTrue: [
            (recoveredBlock154Stack1) do: (recoveredBlock154Stack2).
            recoveredBlock154PC := 172.
        ].
        recoveredBlock154Step = 172 ifTrue: [
            recoveredBlock154Stack1 := recoveredLocal3.
            recoveredBlock154PC := 175.
        ].
        recoveredBlock154Step = 175 ifTrue: [
            recoveredBlock154Stack1 := (recoveredBlock154Stack1) + (1).
            recoveredBlock154PC := 176.
        ].
        recoveredBlock154Step = 176 ifTrue: [
            recoveredLocal3 := recoveredBlock154Stack1.
            recoveredBlock154PC := 179.
        ].
        recoveredBlock154Step = 179 ifTrue: [
            recoveredBlock154Stack1 := nil.
            recoveredBlock154PC := 180.
        ].
        recoveredBlock154Step = 180 ifTrue: [
            recoveredBlock154Stack2 := progressWindow.
            recoveredBlock154PC := 182.
        ].
        recoveredBlock154Step = 182 ifTrue: [
            recoveredBlock154Stack2 := (recoveredBlock154Stack2) notNil.
            recoveredBlock154PC := 183.
        ].
        recoveredBlock154Step = 183 ifTrue: [
            recoveredBlock154Stack3 := recoveredLocal3.
            recoveredBlock154PC := 186.
        ].
        recoveredBlock154Step = 186 ifTrue: [
            recoveredBlock154Stack4 := 100.
            recoveredBlock154PC := 190.
        ].
        recoveredBlock154Step = 190 ifTrue: [
            recoveredBlock154Stack3 := (recoveredBlock154Stack3) \\ (recoveredBlock154Stack4).
            recoveredBlock154PC := 191.
        ].
        recoveredBlock154Step = 191 ifTrue: [
            recoveredBlock154Stack4 := 0.
            recoveredBlock154PC := 193.
        ].
        recoveredBlock154Step = 193 ifTrue: [
            recoveredBlock154Stack3 := (recoveredBlock154Stack3) = (recoveredBlock154Stack4).
            recoveredBlock154PC := 194.
        ].
        recoveredBlock154Step = 194 ifTrue: [
            recoveredBlock154Stack2 := (recoveredBlock154Stack2) & (recoveredBlock154Stack3).
            recoveredBlock154PC := 196.
        ].
        recoveredBlock154Step = 196 ifTrue: [
            (recoveredBlock154Stack2) ifTrue: [recoveredBlock154PC := 200] ifFalse: [recoveredBlock154PC := 215].
        ].
        recoveredBlock154Step = 200 ifTrue: [
            recoveredBlock154PC := 201.
        ].
        recoveredBlock154Step = 201 ifTrue: [
            recoveredBlock154Stack1 := progressWindow.
            recoveredBlock154PC := 203.
        ].
        recoveredBlock154Step = 203 ifTrue: [
            recoveredBlock154Stack2 := recoveredLocal3.
            recoveredBlock154PC := 206.
        ].
        recoveredBlock154Step = 206 ifTrue: [
            recoveredBlock154Stack3 := recoveredLocal4.
            recoveredBlock154PC := 209.
        ].
        recoveredBlock154Step = 209 ifTrue: [
            recoveredBlock154Stack3 := (recoveredBlock154Stack3) size.
            recoveredBlock154PC := 211.
        ].
        recoveredBlock154Step = 211 ifTrue: [
            recoveredBlock154Stack2 := (recoveredBlock154Stack2) / (recoveredBlock154Stack3).
            recoveredBlock154PC := 213.
        ].
        recoveredBlock154Step = 213 ifTrue: [
            recoveredBlock154Stack1 := (recoveredBlock154Stack1) fractionComplete: (recoveredBlock154Stack2).
            recoveredBlock154PC := 215.
        ].
        recoveredBlock154Step = 215 ifTrue: [
            recoveredBlock154Result := recoveredBlock154Stack1.
            recoveredBlock154Done := true.
        ].
    ].
    recoveredBlock154Result
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

