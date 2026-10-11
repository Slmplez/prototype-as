"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000488; bytecode file offset 0x8ffcfc"
!SGDatabaseAccess methodsFor: 'recovered'!
getLibrary
    ^self
! !

"ASDBase.ic method 0x20001198; bytecode file offset 0x8ffcfc"
!SGDatabaseAccess methodsFor: 'recovered'!
getTopLevelFolder
    ^self
! !

"ASDBase.ic method 0x20003400; bytecode file offset 0x8ffcfc"
!SGDatabaseAccess methodsFor: 'recovered'!
reinitialize
    ^self
! !

"ASDBase.ic method 0x20004e58; bytecode file offset 0x90206c"
!SGDatabaseAccess methodsFor: 'recovered'!
readKeyIfUndefined: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000899c; bytecode file offset 0x908be4"
!SGDatabaseAccess methodsFor: 'recovered'!
pathString
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008e34; bytecode file offset 0x908be4"
!SGDatabaseAccess methodsFor: 'recovered'!
isDisallowOverwriteSet
    | recoveredValue0 |
    recoveredValue0 := (self) isDisallowOverwrite.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008e94; bytecode file offset 0x908be4"
!SGDatabaseAccess methodsFor: 'recovered'!
childrenProxies
    | recoveredValue0 |
    recoveredValue0 := (self) libraryKeys.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000caf4; bytecode file offset 0x909658"
!SGDatabaseAccess methodsFor: 'recovered'!
isDIFFComparableWith: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000d194; bytecode file offset 0x909ab8"
!SGDatabaseAccess methodsFor: 'recovered'!
createAdditionalToolbarWidgets: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2001de94; bytecode file offset 0x92209c"
!SGDatabaseAccess methodsFor: 'recovered'!
libraryPath
    ^''
! !

"ASDBase.ic method 0x2001e350; bytecode file offset 0x92209c"
!SGDatabaseAccess methodsFor: 'recovered'!
modifiedTimeStampString
    ^''
! !

"ASDBase.ic method 0x2001f970; bytecode file offset 0x92209c"
!SGDatabaseAccess methodsFor: 'recovered'!
xmlPathString
    ^'/'
! !

"ASDBase.ic method 0x20024b90; bytecode file offset 0x92209c"
!SGDatabaseAccess methodsFor: 'recovered'!
comment
    ^''
! !

"ASDBase.ic method 0x20026428; bytecode file offset 0x923928"
!SGDatabaseAccess methodsFor: 'recovered'!
accessString
    ^''
! !

"ASDBase.ic method 0x20029c14; bytecode file offset 0x934580"
!SGDatabaseAccess methodsFor: 'recovered'!
lowerCaseLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) asLowercase.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002add4; bytecode file offset 0x934580"
!SGDatabaseAccess methodsFor: 'recovered'!
typeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) typeLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048f1c; bytecode file offset 0x9457e0"
!SGDatabaseAccess methodsFor: 'recovered'!
resetChildrenCache
    children := nil.
    ^self
! !

"ASDBase.ic method 0x2005cf84; bytecode file offset 0x9599ac"
!SGDatabaseAccess methodsFor: 'recovered'!
allNotFolderChildren
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBDummyProgressReporter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) allNotFolderChildrenWithProgressDialog: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200623e8; bytecode file offset 0x95f8b0"
!SGDatabaseAccess methodsFor: 'recovered'!
readLibraryKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) queryForLibraryKeys.
    recoveredValue1 := (self) library.
    recoveredValue2 := (recoveredValue0) searchDropOlderVersions: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200755d4; bytecode file offset 0x9757c8"
!SGDatabaseAccess methodsFor: 'recovered'!
isRootItem
    ^true
! !

"ASDBase.ic method 0x20077b7c; bytecode file offset 0x9757c8"
!SGDatabaseAccess methodsFor: 'recovered'!
existsCached
    ^true
! !

"ASDBase.ic method 0x20078ab4; bytecode file offset 0x9757c8"
!SGDatabaseAccess methodsFor: 'recovered'!
isFolder
    ^true
! !

"ASDBase.ic method 0x20079594; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isLibrary
    ^false
! !

"ASDBase.ic method 0x2007a6d4; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isARModeGroup
    ^false
! !

"ASDBase.ic method 0x2007a764; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isDIFFComparable
    ^false
! !

"ASDBase.ic method 0x2007c094; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isSGEnumeration
    ^false
! !

"ASDBase.ic method 0x2007c92c; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isComponentEditable
    ^false
! !

"ASDBase.ic method 0x2007d0cc; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isContainer
    ^false
! !

"ASDBase.ic method 0x2007e41c; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
hasAccessRightsPassword
    ^false
! !

"ASDBase.ic method 0x2007e64c; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isDisallowOverwrite
    ^false
! !

"ASDBase.ic method 0x2007ee64; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
isMarkAsDeleted
    ^false
! !

"ASDBase.ic method 0x2007efc4; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
modifiable
    ^false
! !

"ASDBase.ic method 0x2007f55c; bytecode file offset 0x97c330"
!SGDatabaseAccess methodsFor: 'recovered'!
checkAccessRightsPassword
    ^false
! !

"ASDBase.ic method 0x20096770; bytecode file offset 0x993080"
!SGDatabaseAccess methodsFor: 'recovered'!
readExactNameKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) queryExactForName: (recoveredValue0).
    recoveredValue2 := (self) library.
    recoveredValue3 := (recoveredValue1) search: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20096784; bytecode file offset 0x993080"
!SGDatabaseAccess methodsFor: 'recovered'!
readClassKeys: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) queryForClass: (recoveredValue0).
    recoveredValue2 := (self) library.
    recoveredValue3 := (recoveredValue1) search: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200967c0; bytecode file offset 0x993080"
!SGDatabaseAccess methodsFor: 'recovered'!
readExactClassKeys: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) queryExactForClass: (recoveredValue0).
    recoveredValue2 := (self) library.
    recoveredValue3 := (recoveredValue1) search: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009dcd8; bytecode file offset 0x99a59c"
!SGDatabaseAccess methodsFor: 'recovered'!
completeLibraryPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) libraryPath.
    recoveredValue1 := ('\') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009df78; bytecode file offset 0x99a848"
!SGDatabaseAccess methodsFor: 'recovered'!
dbChanged
    closed := false.
    (self) resetChildrenCache.
    ^self
! !

"ASDBase.ic method 0x2009df84; bytecode file offset 0x99a848"
!SGDatabaseAccess methodsFor: 'recovered'!
itemsImported
    closed := false.
    (self) resetChildrenCache.
    ^self
! !

"ASDBase.ic method 0x2009df90; bytecode file offset 0x99a848"
!SGDatabaseAccess methodsFor: 'recovered'!
libraryCreated
    closed := false.
    (self) resetChildrenCache.
    ^self
! !

"ASDBase.ic method 0x200a4314; bytecode file offset 0x9a0bcc"
!SGDatabaseAccess methodsFor: 'recovered'!
eventOpenDataStorage: recoveredArg1
    closed := false.
    (self) resetChildrenCache.
    ^self
! !

"ASDBase.ic method 0x200a5c20; bytecode file offset 0x9a24d8"
!SGDatabaseAccess methodsFor: 'recovered'!
eventCloseDataStorage: recoveredArg1
    closed := true.
    (self) resetChildrenCache.
    ^self
! !

"ASDBase.ic method 0x200d2094; bytecode file offset 0x9ce978"
!SGDatabaseAccess methodsFor: 'recovered'!
widgetCachingKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) library.
    recoveredValue1 := (recoveredValue0) isOpen.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('root') , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d5a00; bytecode file offset 0x9d22cc"
!SGDatabaseAccess methodsFor: 'recovered'!
initialize
    super initialize.
    closed := false.
    ^self
! !

"ASDBase.ic method 0x200eef9c; bytecode file offset 0x9eb85c"
!SGDatabaseAccess methodsFor: 'recovered'!
queryExactForName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) library.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryExactForName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) showPerformance: (true).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7b3c; bytecode file offset 0x9f4e38"
!SGDatabaseAccess methodsFor: 'recovered'!
sortedChildrenKeys
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4ed8Arg1 | 
    | block280c4ed8Value0 block280c4ed8Value1 |
    block280c4ed8Value0 := block280c4ed8Arg1.
    block280c4ed8Value1 := (block280c4ed8Value0) asRBDBReference.
    block280c4ed8Value1
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

"ASDBase.ic method 0x20103840; bytecode file offset 0xa0011c"
!SGDatabaseAccess methodsFor: 'recovered'!
queryForClass: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) library.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue0) queryForClassName: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) showPerformance: (true).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20103858; bytecode file offset 0xa0011c"
!SGDatabaseAccess methodsFor: 'recovered'!
queryForFirstVersionId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) library.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) createFirstVersionIdKey.
    recoveredValue3 := (recoveredValue0) queryForFirstVersionId: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) showPerformance: (true).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20105514; bytecode file offset 0xa01dd8"
!SGDatabaseAccess methodsFor: 'recovered'!
versionStringExtended
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMInstalled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) scmVersionStringExtended.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013837c; bytecode file offset 0xa34c38"
!SGDatabaseAccess methodsFor: 'recovered'!
getOrCreateLibraryName: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getLibraryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) addLibraryNamed: (recoveredStack1).
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014aef8; bytecode file offset 0xa477c0"
!SGDatabaseAccess methodsFor: 'recovered'!
queryForSettingsKey: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) library.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryForClassName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) setSearchMode: ('all').
    (recoveredValue3) showPerformance: (false).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015783c; bytecode file offset 0xa540f8"
!SGDatabaseAccess methodsFor: 'recovered'!
xmlPathUpTo: recoveredArg1 badNameBlock: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isNil.
    recoveredBlock4Value1
].
    (self) runtimeAssert: (recoveredValue0).
    ^#()
! !

"ASDBase.ic method 0x2016b018; bytecode file offset 0xa678e8"
!SGDatabaseAccess methodsFor: 'recovered'!
queryForLibraryKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) library.
    recoveredValue1 := SGLibrary.
    recoveredValue2 := (recoveredValue1) className.
    recoveredValue3 := (recoveredValue0) queryForClassName: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) setSearchMode: ('all').
    (recoveredValue4) showPerformance: (false).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201aaab4; bytecode file offset 0xaa7378"
!SGDatabaseAccess methodsFor: 'recovered'!
getDBInfoDict
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataBaseInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ac278; bytecode file offset 0xaa8b44"
!SGDatabaseAccess methodsFor: 'recovered'!
queriesForFirstVersionId: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFirstVersionIdKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) queriesForFirstVersionId: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d3674Arg1 | 
    | block280d3674Value0 block280d3674Value1 |
    block280d3674Value0 := block280d3674Arg1.
    block280d3674Value1 := (block280d3674Value0) showPerformance: (true).
    block280d3674Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d9be0; bytecode file offset 0xad64a8"
!SGDatabaseAccess methodsFor: 'recovered'!
checkUndefinedLibraries: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isRBDBUndefinedObject.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) library.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) dbObject.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) delete: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ef6f8; bytecode file offset 0xaebfc0"
!SGDatabaseAccess methodsFor: 'recovered'!
queryExactForClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryExactForClassName: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) showPerformance: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202122c4; bytecode file offset 0xb0ecb0"
!SGDatabaseAccess methodsFor: 'recovered'!
allClassChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) allClassChildren.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20237d50; bytecode file offset 0xb34630"
!SGDatabaseAccess methodsFor: 'recovered'!
addLibraryNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGLibrary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := ('hw') == ('call_85223').
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) buildUniqueName: (recoveredValue5).
    recoveredValue6 := Array.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) with: (recoveredValue7).
    (self) checkUndefinedLibraries: (recoveredValue8).
    recoveredValue9 := (self) class.
    (recoveredValue9) broadcast: ('updateTopFolders').
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20239a1c; bytecode file offset 0xb36340"
!SGDatabaseAccess methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredBlock10Value0.
    recoveredBlock10Value2 := recoveredArg3.
    (recoveredBlock10Value1) owner: (recoveredBlock10Value2).
    recoveredBlock10Value3 := (recoveredBlock10Value0) item: (self).
    recoveredBlock10Value3
].
    recoveredValue3 := (recoveredValue0) createEtasNotebookFolderWidget: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20239a80; bytecode file offset 0xb36340"
!SGDatabaseAccess methodsFor: 'recovered'!
createHwcInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredBlock10Value0.
    recoveredBlock10Value2 := recoveredArg3.
    (recoveredBlock10Value1) owner: (recoveredBlock10Value2).
    recoveredBlock10Value3 := (recoveredBlock10Value0) item: (self).
    recoveredBlock10Value3
].
    recoveredValue3 := (recoveredValue0) createEtasItemTextWidget: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024d9f0; bytecode file offset 0xb4a2b0"
!SGDatabaseAccess methodsFor: 'recovered'!
xmlCollectExportItems: recoveredArg1 root: recoveredArg2 invalid: recoveredArg3 ambigous: recoveredArg4 seen: recoveredArg5 controller: recoveredArg6
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg3.
    recoveredBlock5Value3 := recoveredArg4.
    recoveredBlock5Value4 := recoveredArg5.
    recoveredBlock5Value5 := recoveredArg6.
    recoveredBlock5Value6 := (recoveredBlock5Value0) xmlCollectExportItems: (recoveredBlock5Value1) root: (nil) invalid: (recoveredBlock5Value2) ambigous: (recoveredBlock5Value3) seen: (recoveredBlock5Value4) controller: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20250170; bytecode file offset 0xb4ca40"
!SGDatabaseAccess methodsFor: 'recovered'!
readFirstVersionId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) queriesForFirstVersionId: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (self) library.
    recoveredBlock14Value3 := (recoveredBlock14Value1) search: (recoveredBlock14Value2).
    recoveredBlock14Value4 := (recoveredBlock14Value0) addAll: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2029df94; bytecode file offset 0xb9a880"
!SGDatabaseAccess methodsFor: 'recovered'!
userSettings
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGUserSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryForSettingsKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchFirst.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGUserSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := SGUserSettings.
    recoveredBlock24Value1 := (recoveredBlock24Value0) create.
    ^recoveredBlock24Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029dfb4; bytecode file offset 0xb9a880"
!SGDatabaseAccess methodsFor: 'recovered'!
dbSettings
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGDBSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryForSettingsKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchFirst.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGDBSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := SGDBSettings.
    recoveredBlock24Value1 := (recoveredBlock24Value0) create.
    ^recoveredBlock24Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b94fc; bytecode file offset 0xbb5dbc"
!SGDatabaseAccess methodsFor: 'recovered'!
searchAllChildren: recoveredArg1 progress: recoveredArg2 exact: recoveredArg3 wild: recoveredArg4 itemBlock: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := recoveredArg2.
    recoveredBlock10Value3 := recoveredArg3.
    recoveredBlock10Value4 := recoveredArg4.
    recoveredBlock10Value5 := recoveredLocal1.
    recoveredBlock10Value6 := recoveredArg5.
    recoveredBlock10Value7 := (recoveredBlock10Value0) searchAllChildren: (recoveredBlock10Value1) progress: (recoveredBlock10Value2) exact: (recoveredBlock10Value3) wild: (recoveredBlock10Value4) count: (recoveredBlock10Value5) itemBlock: (recoveredBlock10Value6).
    recoveredBlock10Value8 := recoveredBlock10Value7.
    recoveredLocal1 := recoveredBlock10Value8.
    recoveredBlock10Value7
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d7c9c; bytecode file offset 0xbd4578"
!SGDatabaseAccess methodsFor: 'recovered'!
label
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := '<No '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := '>'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20307704; bytecode file offset 0xc03fe8"
!SGDatabaseAccess methodsFor: 'recovered'!
libraryKeys
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) readLibraryKeys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280e9f70Arg1 | 
    | block280e9f70Stack0 block280e9f70Stack1 block280e9f70Stack2 block280e9f70Stack3 block280e9f70PC block280e9f70Step block280e9f70Done block280e9f70Result |
    block280e9f70Stack0 := self.
    block280e9f70PC := 4.
    block280e9f70Done := false.
    [block280e9f70Done not] whileTrue: [
        block280e9f70Step := block280e9f70PC.
        block280e9f70Step = 4 ifTrue: [
            block280e9f70Stack1 := block280e9f70Arg1.
            block280e9f70PC := 5.
        ].
        block280e9f70Step = 5 ifTrue: [
            block280e9f70Stack2 := [:block280e9f94Arg1 | 
    nil
].
            block280e9f70PC := 7.
        ].
        block280e9f70Step = 7 ifTrue: [
            block280e9f70PC := 12.
        ].
        block280e9f70Step = 12 ifTrue: [
            block280e9f70Stack1 := (block280e9f70Stack1) getObjectIfUndefined: (block280e9f70Stack2).
            block280e9f70PC := 14.
        ].
        block280e9f70Step = 14 ifTrue: [
            block280e9f70Stack1 := (block280e9f70Stack1) notNil.
            block280e9f70PC := 15.
        ].
        block280e9f70Step = 15 ifTrue: [
            block280e9f70Result := block280e9f70Stack1.
            block280e9f70Done := true.
        ].
    ].
    block280e9f70Result
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:block280e9fb8Arg1 | 
    | block280e9fb8Value0 block280e9fb8Value1 |
    block280e9fb8Value0 := block280e9fb8Arg1.
    block280e9fb8Value1 := (block280e9fb8Value0) getObjectOrUndefined.
    block280e9fb8Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) checkUndefinedLibraries: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033de00; bytecode file offset 0xc3a6d8"
!SGDatabaseAccess methodsFor: 'recovered'!
allNotFolderChildrenWithProgressDialog: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isRBDBUndefinedObject.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 53] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) allNotFolderChildrenWithProgressDialog: (recoveredBlock11Stack3).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            (recoveredBlock11Stack1) addAll: (recoveredBlock11Stack2).
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) cancelled.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 46] ifFalse: [recoveredBlock11PC := 53].
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) asArray.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203d4da4; bytecode file offset 0xcd1698"
!SGDatabaseAccess methodsFor: 'recovered'!
children
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := closed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryKeys.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280f7944Arg1 :block280f7944Arg2 | 
    | block280f7944Value0 block280f7944Value1 block280f7944Value2 block280f7944Value3 block280f7944Value4 block280f7944Value5 block280f7944Value6 |
    block280f7944Value0 := EsString.
    block280f7944Value1 := (block280f7944Value0) sortBlockNumeric.
    block280f7944Value2 := block280f7944Arg1.
    block280f7944Value3 := (block280f7944Value2) label.
    block280f7944Value4 := block280f7944Arg2.
    block280f7944Value5 := (block280f7944Value4) label.
    block280f7944Value6 := (block280f7944Value1) value: (block280f7944Value3) value: (block280f7944Value5).
    block280f7944Value6
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:block280f7968Arg1 | 
    | block280f7968Value0 block280f7968Value1 |
    block280f7968Value0 := block280f7968Arg1.
    block280f7968Value1 := (block280f7968Value0) asRBDBReference.
    block280f7968Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            children := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:block280f798cArg1 | 
    | block280f798cStack0 block280f798cStack1 block280f798cStack2 block280f798cStack3 block280f798cPC block280f798cStep block280f798cDone block280f798cResult |
    block280f798cStack0 := self.
    block280f798cPC := 4.
    block280f798cDone := false.
    [block280f798cDone not] whileTrue: [
        block280f798cStep := block280f798cPC.
        block280f798cStep = 4 ifTrue: [
            block280f798cStack1 := block280f798cArg1.
            block280f798cPC := 5.
        ].
        block280f798cStep = 5 ifTrue: [
            block280f798cStack2 := [:block280f79b0Arg1 | 
    nil
].
            block280f798cPC := 7.
        ].
        block280f798cStep = 7 ifTrue: [
            block280f798cPC := 12.
        ].
        block280f798cStep = 12 ifTrue: [
            block280f798cStack1 := (block280f798cStack1) getObjectIfUndefined: (block280f798cStack2).
            block280f798cPC := 14.
        ].
        block280f798cStep = 14 ifTrue: [
            block280f798cResult := block280f798cStack1.
            block280f798cDone := true.
        ].
    ].
    block280f798cResult
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:block280f79d4Arg1 | 
    | block280f79d4Value0 block280f79d4Value1 |
    block280f79d4Value0 := block280f79d4Arg1.
    block280f79d4Value1 := (block280f79d4Value0) notNil.
    block280f79d4Value1
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040ba74; bytecode file offset 0xd08350"
!SGDatabaseAccess methodsFor: 'recovered'!
getLibraryNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) queryForLibraryKeys.
    recoveredValue1 := (recoveredValue0) searchDatabase.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := [:block280fad94Arg1 | 
    nil
].
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) getObjectIfUndefined: (recoveredBlock6Stack2).
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := [
    | recoveredBlock6Block27Stack0 recoveredBlock6Block27Stack1 recoveredBlock6Block27Stack2 recoveredBlock6Block27Stack3 recoveredBlock6Block27PC recoveredBlock6Block27Step recoveredBlock6Block27Done recoveredBlock6Block27Result |
    recoveredBlock6Block27Stack0 := nil.
    recoveredBlock6Block27PC := 34.
    recoveredBlock6Block27Done := false.
    [recoveredBlock6Block27Done not] whileTrue: [
        recoveredBlock6Block27Step := recoveredBlock6Block27PC.
        recoveredBlock6Block27Step = 34 ifTrue: [
            recoveredBlock6Block27Stack1 := false.
            recoveredBlock6Block27PC := 35.
        ].
        recoveredBlock6Block27Step = 35 ifTrue: [
            recoveredBlock6Block27Stack2 := recoveredBlock6Local1.
            recoveredBlock6Block27PC := 38.
        ].
        recoveredBlock6Block27Step = 38 ifTrue: [
            recoveredBlock6Block27Stack2 := (recoveredBlock6Block27Stack2) isRBDBUndefinedObject.
            recoveredBlock6Block27PC := 40.
        ].
        recoveredBlock6Block27Step = 40 ifTrue: [
            (recoveredBlock6Block27Stack2) ifTrue: [recoveredBlock6Block27PC := 54] ifFalse: [recoveredBlock6Block27PC := 44].
        ].
        recoveredBlock6Block27Step = 44 ifTrue: [
            recoveredBlock6Block27PC := 45.
        ].
        recoveredBlock6Block27Step = 45 ifTrue: [
            recoveredBlock6Block27Stack1 := recoveredBlock6Local1.
            recoveredBlock6Block27PC := 48.
        ].
        recoveredBlock6Block27Step = 48 ifTrue: [
            recoveredBlock6Block27Stack1 := (recoveredBlock6Block27Stack1) label.
            recoveredBlock6Block27PC := 50.
        ].
        recoveredBlock6Block27Step = 50 ifTrue: [
            recoveredBlock6Block27Stack2 := recoveredArg1.
            recoveredBlock6Block27PC := 53.
        ].
        recoveredBlock6Block27Step = 53 ifTrue: [
            recoveredBlock6Block27Stack1 := (recoveredBlock6Block27Stack1) = (recoveredBlock6Block27Stack2).
            recoveredBlock6Block27PC := 54.
        ].
        recoveredBlock6Block27Step = 54 ifTrue: [
            recoveredBlock6Block27Result := recoveredBlock6Block27Stack1.
            recoveredBlock6Block27Done := true.
        ].
    ].
    recoveredBlock6Block27Result
].
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) notNil: (recoveredBlock6Stack2).
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue3 := [
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 |
    recoveredBlock58Value0 := (self) libraryKeys.
    recoveredBlock58Value1 := [:recoveredBlock58Block66Arg1 | 
    | recoveredBlock58Block66Stack0 recoveredBlock58Block66Stack1 recoveredBlock58Block66Stack2 recoveredBlock58Block66Stack3 recoveredBlock58Block66PC recoveredBlock58Block66Step recoveredBlock58Block66Done recoveredBlock58Block66Result |
    recoveredBlock58Block66Stack0 := nil.
    recoveredBlock58Block66PC := 72.
    recoveredBlock58Block66Done := false.
    [recoveredBlock58Block66Done not] whileTrue: [
        recoveredBlock58Block66Step := recoveredBlock58Block66PC.
        recoveredBlock58Block66Step = 72 ifTrue: [
            recoveredBlock58Block66Stack1 := false.
            recoveredBlock58Block66PC := 73.
        ].
        recoveredBlock58Block66Step = 73 ifTrue: [
            recoveredBlock58Block66Stack2 := recoveredBlock58Block66Arg1.
            recoveredBlock58Block66PC := 74.
        ].
        recoveredBlock58Block66Step = 74 ifTrue: [
            recoveredBlock58Block66Stack2 := (recoveredBlock58Block66Stack2) isRBDBUndefinedObject.
            recoveredBlock58Block66PC := 76.
        ].
        recoveredBlock58Block66Step = 76 ifTrue: [
            (recoveredBlock58Block66Stack2) ifTrue: [recoveredBlock58Block66PC := 88] ifFalse: [recoveredBlock58Block66PC := 80].
        ].
        recoveredBlock58Block66Step = 80 ifTrue: [
            recoveredBlock58Block66PC := 81.
        ].
        recoveredBlock58Block66Step = 81 ifTrue: [
            recoveredBlock58Block66Stack1 := recoveredBlock58Block66Arg1.
            recoveredBlock58Block66PC := 82.
        ].
        recoveredBlock58Block66Step = 82 ifTrue: [
            recoveredBlock58Block66Stack1 := (recoveredBlock58Block66Stack1) label.
            recoveredBlock58Block66PC := 84.
        ].
        recoveredBlock58Block66Step = 84 ifTrue: [
            recoveredBlock58Block66Stack2 := recoveredArg1.
            recoveredBlock58Block66PC := 87.
        ].
        recoveredBlock58Block66Step = 87 ifTrue: [
            recoveredBlock58Block66Stack1 := (recoveredBlock58Block66Stack1) = (recoveredBlock58Block66Stack2).
            recoveredBlock58Block66PC := 88.
        ].
        recoveredBlock58Block66Step = 88 ifTrue: [
            recoveredBlock58Block66Result := recoveredBlock58Block66Stack1.
            recoveredBlock58Block66Done := true.
        ].
    ].
    recoveredBlock58Block66Result
].
    recoveredBlock58Value2 := [].
    recoveredBlock58Value3 := (recoveredBlock58Value0) detect: (recoveredBlock58Value1) ifNone: (recoveredBlock58Value2).
    ^recoveredBlock58Value3
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x204758f0; bytecode file offset 0xd721f0"
!SGDatabaseAccess methodsFor: 'recovered'!
printASDInfoOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Database'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '-directory: '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInfoDict.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := '-name: '.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'comment'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := '-comment: '.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := EtNoDatabaseOpened.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a7ac4; bytecode file offset 0xda43ac"
!SGDatabaseAccess methodsFor: 'recovered'!
searchAllChildren: recoveredArg1 progress: recoveredArg2 exact: recoveredArg3 wild: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (32) min: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) copyFrom: (1) to: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := [:recoveredBlock33Arg1 :recoveredBlock33Arg2 :recoveredBlock33Arg3 | 
    | recoveredBlock33Local1 recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33Stack5 recoveredBlock33Stack6 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) name.
            recoveredBlock33PC := 45.
        ].
        recoveredBlock33Step = 45 ifTrue: [
            recoveredBlock33Stack3 := 1.
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            recoveredBlock33Stack4 := 32.
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredBlock33Stack5 := recoveredBlock33Arg1.
            recoveredBlock33PC := 50.
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack5 := (recoveredBlock33Stack5) name.
            recoveredBlock33PC := 51.
        ].
        recoveredBlock33Step = 51 ifTrue: [
            recoveredBlock33Stack5 := (recoveredBlock33Stack5) size.
            recoveredBlock33PC := 52.
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Stack4 := (recoveredBlock33Stack4) min: (recoveredBlock33Stack5).
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) copyFrom: (recoveredBlock33Stack3) to: (recoveredBlock33Stack4).
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) match: (recoveredBlock33Stack2).
            recoveredBlock33PC := 57.
        ].
        recoveredBlock33Step = 57 ifTrue: [
            (recoveredBlock33Stack1) ifTrue: [recoveredBlock33PC := 60] ifFalse: [recoveredBlock33PC := 92].
        ].
        recoveredBlock33Step = 60 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack2 := [:block28104e84Arg1 | 
    nil
].
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33PC := 68.
        ].
        recoveredBlock33Step = 68 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) getObjectIfUndefined: (recoveredBlock33Stack2).
            recoveredBlock33PC := 70.
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Stack1.
            recoveredBlock33PC := 71.
        ].
        recoveredBlock33Step = 71 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack2.
            recoveredBlock33PC := 72.
        ].
        recoveredBlock33Step = 72 ifTrue: [
            (recoveredBlock33Stack1 == nil) ifTrue: [recoveredBlock33PC := 92] ifFalse: [recoveredBlock33PC := 76].
        ].
        recoveredBlock33Step = 76 ifTrue: [
            recoveredBlock33Stack1 := recoveredArg1.
            recoveredBlock33PC := 79.
        ].
        recoveredBlock33Step = 79 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 80.
        ].
        recoveredBlock33Step = 80 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) dbObject.
            recoveredBlock33PC := 82.
        ].
        recoveredBlock33Step = 82 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) name.
            recoveredBlock33PC := 83.
        ].
        recoveredBlock33Step = 83 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) match: (recoveredBlock33Stack2).
            recoveredBlock33PC := 85.
        ].
        recoveredBlock33Step = 85 ifTrue: [
            (recoveredBlock33Stack1) ifTrue: [recoveredBlock33PC := 88] ifFalse: [recoveredBlock33PC := 92].
        ].
        recoveredBlock33Step = 88 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg2.
            recoveredBlock33PC := 89.
        ].
        recoveredBlock33Step = 89 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 90.
        ].
        recoveredBlock33Step = 90 ifTrue: [
            (recoveredBlock33Stack1) add: (recoveredBlock33Stack2).
            recoveredBlock33PC := 92.
        ].
        recoveredBlock33Step = 92 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 93.
        ].
        recoveredBlock33Step = 93 ifTrue: [
            recoveredBlock33Stack2 := '*'.
            recoveredBlock33PC := 95.
        ].
        recoveredBlock33Step = 95 ifTrue: [
            recoveredBlock33Stack3 := recoveredArg1.
            recoveredBlock33PC := 98.
        ].
        recoveredBlock33Step = 98 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) , (recoveredBlock33Stack3).
            recoveredBlock33PC := 100.
        ].
        recoveredBlock33Step = 100 ifTrue: [
            recoveredBlock33Stack3 := '*'.
            recoveredBlock33PC := 102.
        ].
        recoveredBlock33Step = 102 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) , (recoveredBlock33Stack3).
            recoveredBlock33PC := 104.
        ].
        recoveredBlock33Step = 104 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Arg1.
            recoveredBlock33PC := 105.
        ].
        recoveredBlock33Step = 105 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) name.
            recoveredBlock33PC := 106.
        ].
        recoveredBlock33Step = 106 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) match: (recoveredBlock33Stack3).
            recoveredBlock33PC := 108.
        ].
        recoveredBlock33Step = 108 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 112] ifFalse: [recoveredBlock33PC := 135].
        ].
        recoveredBlock33Step = 112 ifTrue: [
            recoveredBlock33PC := 113.
        ].
        recoveredBlock33Step = 113 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 114.
        ].
        recoveredBlock33Step = 114 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 115.
        ].
        recoveredBlock33Step = 115 ifTrue: [
            recoveredBlock33Stack3 := [:block28104ea8Arg1 | 
    nil
].
            recoveredBlock33PC := 117.
        ].
        recoveredBlock33Step = 117 ifTrue: [
            recoveredBlock33PC := 122.
        ].
        recoveredBlock33Step = 122 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) getObjectIfUndefined: (recoveredBlock33Stack3).
            recoveredBlock33PC := 124.
        ].
        recoveredBlock33Step = 124 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Stack2.
            recoveredBlock33PC := 125.
        ].
        recoveredBlock33Step = 125 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack3.
            recoveredBlock33PC := 126.
        ].
        recoveredBlock33Step = 126 ifTrue: [
            (recoveredBlock33Stack2 == nil) ifTrue: [recoveredBlock33PC := 135] ifFalse: [recoveredBlock33PC := 130].
        ].
        recoveredBlock33Step = 130 ifTrue: [
            recoveredBlock33PC := 131.
        ].
        recoveredBlock33Step = 131 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg3.
            recoveredBlock33PC := 132.
        ].
        recoveredBlock33Step = 132 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 133.
        ].
        recoveredBlock33Step = 133 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) add: (recoveredBlock33Stack2).
            recoveredBlock33PC := 135.
        ].
        recoveredBlock33Step = 135 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
    recoveredValue10 := (self) searchAllChildren: (recoveredValue5) progress: (recoveredValue6) exact: (recoveredValue7) wild: (recoveredValue8) itemBlock: (recoveredValue9).
    ^recoveredValue10
! !

