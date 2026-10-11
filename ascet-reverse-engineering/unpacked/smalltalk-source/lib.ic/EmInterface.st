"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200011d8; bytecode file offset 0x3d210"
!EmInterface methodsFor: 'recovered'!
applicationsNotInImage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := (self) applicationsNotInImage: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200011e8; bytecode file offset 0x3d210"
!EmInterface methodsFor: 'recovered'!
subApplicationsNotInImage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := (self) subApplicationsNotInImage: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001730; bytecode file offset 0x3d760"
!EmInterface methodsFor: 'recovered'!
flushCache
    (self) initializeCache.
    ^self
! !

"lib.ic method 0x2000235c; bytecode file offset 0x3e394"
!EmInterface methodsFor: 'recovered'!
progressDialog
    | recoveredValue0 |
    recoveredValue0 := progressDialog.
    ^recoveredValue0
! !

"lib.ic method 0x20002ffc; bytecode file offset 0x3f024"
!EmInterface methodsFor: 'recovered'!
initializeCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    cache := recoveredValue1.
    ^self
! !

"lib.ic method 0x200033c0; bytecode file offset 0x3f414"
!EmInterface methodsFor: 'recovered'!
declarationsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmClassDevelopment.
    recoveredValue1 := (recoveredValue0) imageBuilder.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) declarationsFor: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200033d4; bytecode file offset 0x3f414"
!EmInterface methodsFor: 'recovered'!
allDeclarationsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmClassDevelopment.
    recoveredValue1 := (recoveredValue0) imageBuilder.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) allDeclarationsFor: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200033e8; bytecode file offset 0x3f414"
!EmInterface methodsFor: 'recovered'!
removeApplications: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmClassDevelopment.
    recoveredValue1 := (recoveredValue0) imageBuilder.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) removeApplications: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003648; bytecode file offset 0x3f670"
!EmInterface methodsFor: 'recovered'!
checkMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) application.
    (recoveredValue0) testVisibilityIn: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20003690; bytecode file offset 0x3f6c8"
!EmInterface methodsFor: 'recovered'!
availableConfigMapVersionNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) cachedConfigMapVersionNameInfoFor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) at: (1).
    ^recoveredValue2
! !

"lib.ic method 0x200036a0; bytecode file offset 0x3f6c8"
!EmInterface methodsFor: 'recovered'!
availableApplicationVersionNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) cachedApplicationVersionNameInfoFor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) at: (1).
    ^recoveredValue2
! !

"lib.ic method 0x20004630; bytecode file offset 0x4065c"
!EmInterface methodsFor: 'recovered'!
userManages: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmUser.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) managerFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) = (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200047c4; bytecode file offset 0x407fc"
!EmInterface methodsFor: 'recovered'!
progressDialog: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    progressDialog := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004af4; bytecode file offset 0x40b34"
!EmInterface methodsFor: 'recovered'!
applicationVersionName: recoveredArg1 alreadyUsedBy: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) cachedApplicationVersionNameInfoFor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) at: (2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) includes: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004b08; bytecode file offset 0x40b34"
!EmInterface methodsFor: 'recovered'!
configMapVersionName: recoveredArg1 alreadyUsedBy: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) cachedConfigMapVersionNameInfoFor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) at: (2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) includes: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004bf8; bytecode file offset 0x40c20"
!EmInterface methodsFor: 'recovered'!
availableClassVersionNameFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) cachedClassVersionNameInfoFor: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) at: (1).
    ^recoveredValue3
! !

"lib.ic method 0x20005a8c; bytecode file offset 0x41ab8"
!EmInterface methodsFor: 'recovered'!
classVersionName: recoveredArg1 alreadyUsedBy: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) cachedClassVersionNameInfoFor: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) includes: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20005bc8; bytecode file offset 0x41c00"
!EmInterface methodsFor: 'recovered'!
reportSystemConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmSystemConfigurationDumper.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := System.
    recoveredValue3 := (recoveredValue2) image.
    recoveredValue4 := (recoveredValue3) errorLog.
    (recoveredValue1) dumpOn: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20005fb0; bytecode file offset 0x42008"
!EmInterface methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20005fe0; bytecode file offset 0x42008"
!EmInterface methodsFor: 'recovered'!
fractionComplete: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressDialog.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200062a8; bytecode file offset 0x422d4"
!EmInterface methodsFor: 'recovered'!
selectSubApplications: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) selectSubApplicationsOnly: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) selectApplicationsOnly: (recoveredValue3).
    (recoveredValue2) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x2000657c; bytecode file offset 0x425b4"
!EmInterface methodsFor: 'recovered'!
rebuildNamespaceFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmClassDevelopment.
    recoveredValue1 := (recoveredValue0) imageBuilder.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rootApplication.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue1) rebuildFramesFor: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x200065d8; bytecode file offset 0x42600"
!EmInterface methodsFor: 'recovered'!
isEdition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isScratch.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20006c7c; bytecode file offset 0x42cac"
!EmInterface methodsFor: 'recovered'!
moveUsers: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := EmLibrary.
    recoveredValue5 := (recoveredValue4) default.
    recoveredValue6 := recoveredArg2.
    (recoveredValue2) moveUsers: (recoveredValue3) from: (recoveredValue5) to: (recoveredValue6).
    ^self
! !

"lib.ic method 0x20007c1c; bytecode file offset 0x43c48"
!EmInterface methodsFor: 'recovered'!
previousVersionOf: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) previousTimeStamp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) shadowAt: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20007e74; bytecode file offset 0x43eb0"
!EmInterface methodsFor: 'recovered'!
possibleDependentApplicationsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) owningImage.
    recoveredValue2 := (recoveredValue1) loadedApplications.
    recoveredValue3 := (recoveredValue2) reverse.
    recoveredValue4 := (recoveredValue3) asOrderedCollection.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) remove: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) allDependentApplications.
    (recoveredValue7) removeAll: (recoveredValue9).
    ^recoveredValue4
! !

"lib.ic method 0x200084a0; bytecode file offset 0x444d4"
!EmInterface methodsFor: 'recovered'!
removeMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) consistentMethod.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeSelector: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20009cbc; bytecode file offset 0x45cf0"
!EmInterface methodsFor: 'recovered'!
cache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmLibraryInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := cache.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) initializeCache.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := cache.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000ae18; bytecode file offset 0x46e50"
!EmInterface methodsFor: 'recovered'!
deleteSubApplication: recoveredArg1 from: recoveredArg2 in: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeApplications: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteSubApplicationNamed: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000b2dc; bytecode file offset 0x47310"
!EmInterface methodsFor: 'recovered'!
ownerOfClass: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EmUser.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) cachedClassOwnersFor: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) symbol.
    recoveredValue5 := [
    ^nil
].
    recoveredValue6 := (recoveredValue2) at: (recoveredValue4) ifAbsent: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) called: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x2000b318; bytecode file offset 0x4734c"
!EmInterface methodsFor: 'recovered'!
classVersionsOf: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) symbol.
    recoveredValue3 := (recoveredValue0) classEditionsFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asArray.
    recoveredValue5 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg2.
    recoveredBlock13Value2 := (recoveredBlock13Value0) isVersionIn: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    recoveredValue6 := (recoveredValue4) select: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x2000cdf8; bytecode file offset 0x48e28"
!EmInterface methodsFor: 'recovered'!
isClassReleased: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassInstalled: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) releasedClassTimeStampFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000d4bc; bytecode file offset 0x494f4"
!EmInterface methodsFor: 'recovered'!
findLibraryReferencesToSubApplicationName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (self) possibleSubApplicationNamesFor: (recoveredBlock14Value0).
    recoveredBlock14Value2 := recoveredArg1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) includes: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue4 := (self) selectSubApplications: (recoveredValue3).
    (recoveredValue2) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x2000d664; bytecode file offset 0x496b4"
!EmInterface methodsFor: 'recovered'!
logMethodCreation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) selector.
    recoveredValue4 := EmUser.
    recoveredValue5 := (recoveredValue4) current.
    recoveredValue6 := (recoveredValue5) fullName.
    recoveredValue7 := ('Created by ') , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , (' at ').
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) timeStamp.
    recoveredValue11 := (recoveredValue10) signature.
    recoveredValue12 := (recoveredValue8) , (recoveredValue11).
    (recoveredValue1) descriptionFor: (recoveredValue3) is: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (self) logPrimitivePath: (recoveredValue13).
    ^self
! !

"lib.ic method 0x2000dac4; bytecode file offset 0x49b00"
!EmInterface methodsFor: 'recovered'!
usersThatAreNotPartOf: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) groupMembersFor: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := EmUser.
    recoveredValue3 := (recoveredValue2) allUsers.
    recoveredValue4 := EmUser.
    recoveredValue5 := (recoveredValue4) sortBlock.
    recoveredValue6 := (recoveredValue3) asSortedCollection: (recoveredValue5).
    recoveredValue7 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredLocal1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) includes: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    recoveredValue8 := (recoveredValue6) reject: (recoveredValue7).
    ^recoveredValue8
! !

"lib.ic method 0x2000dd40; bytecode file offset 0x49d7c"
!EmInterface methodsFor: 'recovered'!
editionRecordFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'editionRecordFor:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280044b0Value0 block280044b0Value1 |
    block280044b0Value0 := Dictionary.
    block280044b0Value1 := (block280044b0Value0) new.
    block280044b0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) editionRecord.
    recoveredBlock22Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000dfd8; bytecode file offset 0x4a00c"
!EmInterface methodsFor: 'recovered'!
previousVersionOf: recoveredArg1 in: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) previousTimeStampIn: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) classEditionNamed: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000e328; bytecode file offset 0x4a360"
!EmInterface methodsFor: 'recovered'!
findLibraryReferencesToUser: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) manager.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value1) = (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (self) selectConfigurationMaps: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) groupMembers.
    recoveredBlock19Value2 := recoveredArg1.
    recoveredBlock19Value3 := (recoveredBlock19Value1) includes: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
    recoveredValue3 := (self) selectSubApplications: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000e514; bytecode file offset 0x4a57c"
!EmInterface methodsFor: 'recovered'!
possiblePrerequisiteNamesFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) prerequisiteConfigurations.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) value.
    recoveredBlock14Value3 := (recoveredBlock14Value2) keys.
    recoveredBlock14Value4 := (recoveredBlock14Value0) addAll: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asSortedCollection.
    ^recoveredValue6
! !

"lib.ic method 0x2000e53c; bytecode file offset 0x4a57c"
!EmInterface methodsFor: 'recovered'!
possibleSubApplicationNamesFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) subApplicationConfigurations.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) value.
    recoveredBlock14Value3 := (recoveredBlock14Value2) keys.
    recoveredBlock14Value4 := (recoveredBlock14Value0) addAll: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asSortedCollection.
    ^recoveredValue6
! !

"lib.ic method 0x2000e89c; bytecode file offset 0x4a8dc"
!EmInterface methodsFor: 'recovered'!
cachedClassOwnersFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'cachedClassOwnersFor:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280045acValue0 block280045acValue1 |
    block280045acValue0 := Dictionary.
    block280045acValue1 := (block280045acValue0) new.
    block280045acValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (self) editionRecordFor: (recoveredBlock22Value0).
    recoveredBlock22Value2 := (recoveredBlock22Value1) namesAndOwners.
    recoveredBlock22Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000e934; bytecode file offset 0x4a98c"
!EmInterface methodsFor: 'recovered'!
versionApplication: recoveredArg1 withName: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionName: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'cachedApplicationVersionNameInfoFor:'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000e954; bytecode file offset 0x4a98c"
!EmInterface methodsFor: 'recovered'!
versionConfigMap: recoveredArg1 withName: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionName: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'cachedConfigMapVersionNameInfoFor:'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000ebc0; bytecode file offset 0x4ac00"
!EmInterface methodsFor: 'recovered'!
rebuildNamespacesFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) rootApplication.
    recoveredBlock13Value3 := (recoveredBlock13Value0) add: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := EmClassDevelopment.
    recoveredValue5 := (recoveredValue4) imageBuilder.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) rebuildFramesFor: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x2000f15c; bytecode file offset 0x4b194"
!EmInterface methodsFor: 'recovered'!
ownersOfClasses: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := recoveredArg2.
    recoveredBlock13Value3 := (self) ownerOfClass: (recoveredBlock13Value1) in: (recoveredBlock13Value2).
    recoveredBlock13Value4 := (recoveredBlock13Value0) add: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"lib.ic method 0x2000f4b0; bytecode file offset 0x4b4f8"
!EmInterface methodsFor: 'recovered'!
connectImageToLibrary: recoveredArg1 reportProgressTo: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSameAs: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) makeDefaultLibraryBe: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) resetMethodCache.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) connectImageToDefaultLibraryReportProgressTo: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f50c; bytecode file offset 0x4b53c"
!EmInterface methodsFor: 'recovered'!
isSubApplicationReleased: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassInstalled: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassInstalled: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) releasedSubApplicationTimeStampFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000fb60; bytecode file offset 0x4bbb8"
!EmInterface methodsFor: 'recovered'!
makeDefaultLibraryBe: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) serverAddress.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) serverAddress: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) defaultName: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) allUsers.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := MxEMc44.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) fullName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200107cc; bytecode file offset 0x4c80c"
!EmInterface methodsFor: 'recovered'!
logPrimitivePath: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isUserPrimitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveSourceVersion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := MxEMc43.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt: (recoveredStack2) answer: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) primitiveSourceVersion: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010c18; bytecode file offset 0x4cc54"
!EmInterface methodsFor: 'recovered'!
isVersion: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isScratch.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecordFor: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) versionName: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 375.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) becomeScratchBecause: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010f44; bytecode file offset 0x4cf80"
!EmInterface methodsFor: 'recovered'!
userOwns: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBehavior.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerOfClass: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownersOfClasses: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200112d0; bytecode file offset 0x4d308"
!EmInterface methodsFor: 'recovered'!
removeMethods: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) removeMethod: (recoveredBlock17Stack3).
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 32] ifFalse: [recoveredBlock17PC := 39].
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"lib.ic method 0x20011320; bytecode file offset 0x4d35c"
!EmInterface methodsFor: 'recovered'!
selectUsers: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := EmUser.
    recoveredValue3 := (recoveredValue2) allUsers.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) value: (recoveredBlock13Stack3).
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack3 := true.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) = (recoveredBlock13Stack3).
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 39].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x200121a4; bytecode file offset 0x4e1e4"
!EmInterface methodsFor: 'recovered'!
allMethodsFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 36] ifFalse: [recoveredBlock17PC := 30].
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := CompiledMethod.
    recoveredValue8 := (recoveredValue7) sortBlock.
    recoveredValue9 := (recoveredValue6) asSortedCollection: (recoveredValue8).
    ^recoveredValue9
! !

"lib.ic method 0x2001233c; bytecode file offset 0x4e374"
!EmInterface methodsFor: 'recovered'!
methodsDefinedBy: recoveredArg1 categorizedIn: recoveredArg2 all: recoveredArg3 controlledBy: recoveredArg4 filter: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsDefinedBy: (recoveredStack1) categorizedIn: (recoveredStack2) all: (recoveredStack3) controlledBy: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'public'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) publicMethodsFrom: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'private'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateMethodsFrom: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMethodsFrom: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200126c4; bytecode file offset 0x4e704"
!EmInterface methodsFor: 'recovered'!
versionClass: recoveredArg1 in: recoveredArg2 withName: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionNameIn: (recoveredStack2) is: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'cachedClassVersionNameInfoFor:in:'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200128a4; bytecode file offset 0x4e8ec"
!EmInterface methodsFor: 'recovered'!
applicationsNotInImage: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1FI579S'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadedApplications.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block28004930Arg1 | 
    | block28004930Value0 block28004930Value1 |
    block28004930Value0 := block28004930Arg1.
    block28004930Value1 := (block28004930Value0) symbol.
    block28004930Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := Application.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) allNamesWithoutPackages.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredLocal1.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value0) includes: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20013828; bytecode file offset 0x4f86c"
!EmInterface methodsFor: 'recovered'!
moveClasses: recoveredArg1 in: recoveredArg2 from: recoveredArg3 to: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 recoveredBlock7Value13 |
    recoveredBlock7Value0 := EmImageSupport.
    recoveredBlock7Value1 := (recoveredBlock7Value0) errorReporter.
    recoveredBlock7Value2 := Array.
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := recoveredArg2.
    recoveredBlock7Value5 := (recoveredBlock7Value3) signatureIn: (recoveredBlock7Value4).
    recoveredBlock7Value6 := recoveredArg2.
    recoveredBlock7Value7 := (recoveredBlock7Value6) name.
    recoveredBlock7Value8 := (recoveredBlock7Value2) with: (recoveredBlock7Value5) with: (recoveredBlock7Value7).
    (recoveredBlock7Value1) logError: (192) withParms: (recoveredBlock7Value8).
    recoveredBlock7Value9 := recoveredArg2.
    recoveredBlock7Value10 := recoveredBlock7Arg1.
    recoveredBlock7Value11 := recoveredArg3.
    recoveredBlock7Value12 := recoveredArg4.
    recoveredBlock7Value13 := (recoveredBlock7Value9) move: (recoveredBlock7Value10) from: (recoveredBlock7Value11) to: (recoveredBlock7Value12).
    recoveredBlock7Value13
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2001394c; bytecode file offset 0x4f9e4"
!EmInterface methodsFor: 'recovered'!
logConfigMapVersion: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'Versioned at: '.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := EmTimeStamp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) now.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := ' by: '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := EmUser.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := '\\'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001398c; bytecode file offset 0x4f9e4"
!EmInterface methodsFor: 'recovered'!
logApplicationVersion: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'Versioned at: '.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := EmTimeStamp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) now.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := ' by: '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := EmUser.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := '\\'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001426c; bytecode file offset 0x502c0"
!EmInterface methodsFor: 'recovered'!
releasedClassTimeStampFor: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'releasedClassTimeStampFor:in:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280049e4Value0 block280049e4Value1 |
    block280049e4Value0 := Dictionary.
    block280049e4Value1 := (block280049e4Value0) new.
    block280049e4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredArg2.
    recoveredBlock22Value1 := (self) editionRecordFor: (recoveredBlock22Value0).
    recoveredBlock22Value2 := (recoveredBlock22Value1) releasedNamesAndTimeStamps.
    recoveredBlock22Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [
    | block28004a08Value0 block28004a08Value1 |
    block28004a08Value0 := EmTimeStamp.
    block28004a08Value1 := (block28004a08Value0) undefined.
    block28004a08Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001467c; bytecode file offset 0x506ec"
!EmInterface methodsFor: 'recovered'!
privateMethodsFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 43] ifFalse: [recoveredBlock17PC := 30].
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isPrivate.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 36] ifFalse: [recoveredBlock17PC := 43].
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := CompiledMethod.
    recoveredValue8 := (recoveredValue7) sortBlock.
    recoveredValue9 := (recoveredValue6) asSortedCollection: (recoveredValue8).
    ^recoveredValue9
! !

"lib.ic method 0x200146a8; bytecode file offset 0x506ec"
!EmInterface methodsFor: 'recovered'!
publicMethodsFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 43] ifFalse: [recoveredBlock17PC := 30].
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isPublic.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 36] ifFalse: [recoveredBlock17PC := 43].
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := CompiledMethod.
    recoveredValue8 := (recoveredValue7) sortBlock.
    recoveredValue9 := (recoveredValue6) asSortedCollection: (recoveredValue8).
    ^recoveredValue9
! !

"lib.ic method 0x200148cc; bytecode file offset 0x50924"
!EmInterface methodsFor: 'recovered'!
logClassVersion: recoveredArg1 in: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) descriptionFrom: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'Versioned at: '.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := EmTimeStamp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) now.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ' by: '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := EmUser.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := '\\'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) description: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20014fac; bytecode file offset 0x51004"
!EmInterface methodsFor: 'recovered'!
managerFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassInstalled: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'managerFor:'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    | block28004a74Value0 block28004a74Value1 |
    block28004a74Value0 := Dictionary.
    block28004a74Value1 := (block28004a74Value0) new.
    block28004a74Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 |
    recoveredBlock34Value0 := EmUser.
    recoveredBlock34Value1 := recoveredArg1.
    recoveredBlock34Value2 := (self) editionRecordFor: (recoveredBlock34Value1).
    recoveredBlock34Value3 := (recoveredBlock34Value2) manager.
    recoveredBlock34Value4 := [].
    recoveredBlock34Value5 := (recoveredBlock34Value0) called: (recoveredBlock34Value3) ifAbsent: (recoveredBlock34Value4).
    recoveredBlock34Value5
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20015028; bytecode file offset 0x51080"
!EmInterface methodsFor: 'recovered'!
groupMembersFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'groupMembersFor:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block28004a98Value0 block28004a98Value1 |
    block28004a98Value0 := Dictionary.
    block28004a98Value1 := (block28004a98Value0) new.
    block28004a98Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) editionRecordFor: (recoveredBlock22Stack1).
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) groupMembers.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := [:block28004abcArg1 | 
    | block28004abcValue0 block28004abcValue1 block28004abcValue2 |
    block28004abcValue0 := EmUser.
    block28004abcValue1 := block28004abcArg1.
    block28004abcValue2 := (block28004abcValue0) called: (block28004abcValue1).
    block28004abcValue2
].
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) collect: (recoveredBlock22Stack1).
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack1 := EmUser.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) sortBlock.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) asSortedCollection: (recoveredBlock22Stack1).
            recoveredBlock22PC := 54.
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack0.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001533c; bytecode file offset 0x51388"
!EmInterface methodsFor: 'recovered'!
subApplicationsNotInImage: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) loadedSubApplications.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isSubApplication.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 26] ifFalse: [recoveredBlock14PC := 35].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) symbol.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := SubApplication.
    recoveredValue6 := (recoveredValue5) allNames.
    recoveredValue7 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 |
    recoveredBlock42Value0 := recoveredLocal1.
    recoveredBlock42Value1 := recoveredBlock42Arg1.
    recoveredBlock42Value2 := (recoveredBlock42Value0) includes: (recoveredBlock42Value1).
    recoveredBlock42Value2
].
    recoveredValue8 := (recoveredValue6) reject: (recoveredValue7).
    ^recoveredValue8
! !

"lib.ic method 0x20015930; bytecode file offset 0x51984"
!EmInterface methodsFor: 'recovered'!
releasedSubApplicationTimeStampFor: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'releasedSubApplicationTimeStampFor:in:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block28004b04Value0 block28004b04Value1 |
    block28004b04Value0 := Dictionary.
    block28004b04Value1 := (block28004b04Value0) new.
    block28004b04Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredArg2.
    recoveredBlock22Value1 := recoveredArg2.
    recoveredBlock22Value2 := (self) editionRecordFor: (recoveredBlock22Value1).
    recoveredBlock22Value3 := (recoveredBlock22Value0) releasedSubApplicationsUsing: (recoveredBlock22Value2).
    recoveredBlock22Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [
    | block28004b28Value0 block28004b28Value1 |
    block28004b28Value0 := EmTimeStamp.
    block28004b28Value1 := (block28004b28Value0) undefined.
    block28004b28Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20015e08; bytecode file offset 0x51e48"
!EmInterface methodsFor: 'recovered'!
selectSubApplicationsOnly: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SubApplication.
    recoveredValue3 := (recoveredValue2) allNames.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := SubApplication.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) shadowsFor: (recoveredBlock13Value1).
    recoveredBlock13Value3 := [:recoveredBlock13Block25Arg1 | 
    | recoveredBlock13Block25Stack0 recoveredBlock13Block25Stack1 recoveredBlock13Block25Stack2 recoveredBlock13Block25Stack3 recoveredBlock13Block25Stack4 recoveredBlock13Block25PC recoveredBlock13Block25Step recoveredBlock13Block25Done recoveredBlock13Block25Result |
    recoveredBlock13Block25Stack0 := nil.
    recoveredBlock13Block25PC := 32.
    recoveredBlock13Block25Done := false.
    [recoveredBlock13Block25Done not] whileTrue: [
        recoveredBlock13Block25Step := recoveredBlock13Block25PC.
        recoveredBlock13Block25Step = 32 ifTrue: [
            recoveredBlock13Block25Stack1 := nil.
            recoveredBlock13Block25PC := 33.
        ].
        recoveredBlock13Block25Step = 33 ifTrue: [
            recoveredBlock13Block25Stack2 := recoveredArg1.
            recoveredBlock13Block25PC := 36.
        ].
        recoveredBlock13Block25Step = 36 ifTrue: [
            recoveredBlock13Block25Stack3 := recoveredBlock13Block25Arg1.
            recoveredBlock13Block25PC := 37.
        ].
        recoveredBlock13Block25Step = 37 ifTrue: [
            recoveredBlock13Block25Stack2 := (recoveredBlock13Block25Stack2) value: (recoveredBlock13Block25Stack3).
            recoveredBlock13Block25PC := 39.
        ].
        recoveredBlock13Block25Step = 39 ifTrue: [
            recoveredBlock13Block25Stack3 := true.
            recoveredBlock13Block25PC := 40.
        ].
        recoveredBlock13Block25Step = 40 ifTrue: [
            recoveredBlock13Block25Stack2 := (recoveredBlock13Block25Stack2) = (recoveredBlock13Block25Stack3).
            recoveredBlock13Block25PC := 41.
        ].
        recoveredBlock13Block25Step = 41 ifTrue: [
            (recoveredBlock13Block25Stack2) ifTrue: [recoveredBlock13Block25PC := 44] ifFalse: [recoveredBlock13Block25PC := 51].
        ].
        recoveredBlock13Block25Step = 44 ifTrue: [
            recoveredBlock13Block25PC := 45.
        ].
        recoveredBlock13Block25Step = 45 ifTrue: [
            recoveredBlock13Block25Stack1 := recoveredLocal1.
            recoveredBlock13Block25PC := 48.
        ].
        recoveredBlock13Block25Step = 48 ifTrue: [
            recoveredBlock13Block25Stack2 := recoveredBlock13Block25Arg1.
            recoveredBlock13Block25PC := 49.
        ].
        recoveredBlock13Block25Step = 49 ifTrue: [
            recoveredBlock13Block25Stack1 := (recoveredBlock13Block25Stack1) add: (recoveredBlock13Block25Stack2).
            recoveredBlock13Block25PC := 51.
        ].
        recoveredBlock13Block25Step = 51 ifTrue: [
            recoveredBlock13Block25Result := recoveredBlock13Block25Stack1.
            recoveredBlock13Block25Done := true.
        ].
    ].
    recoveredBlock13Block25Result
].
    recoveredBlock13Value4 := (recoveredBlock13Value2) do: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x20016ad0; bytecode file offset 0x52b14"
!EmInterface methodsFor: 'recovered'!
findLibraryReferencesToApplicationName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ('PR') = ('1ERYMJL').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asSymbol.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) applicationNames.
    recoveredBlock17Value2 := recoveredArg1.
    recoveredBlock17Value3 := (recoveredBlock17Value1) includes: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    recoveredValue4 := (self) selectConfigurationMaps: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := (recoveredBlock41Value0) prerequisiteNames.
    recoveredBlock41Value2 := recoveredLocal2.
    recoveredBlock41Value3 := (recoveredBlock41Value1) includes: (recoveredBlock41Value2).
    recoveredBlock41Value3
].
    recoveredValue7 := (self) selectApplicationsOnly: (recoveredValue6).
    (recoveredValue5) addAll: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"lib.ic method 0x200170e4; bytecode file offset 0x5315c"
!EmInterface methodsFor: 'recovered'!
selectApplicationsOnly: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('PR') = ('1FI579S').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := Application.
    recoveredValue4 := (recoveredValue3) allNamesWithoutPackages.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := Application.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) shadowsFor: (recoveredBlock20Value1).
    recoveredBlock20Value3 := [:recoveredBlock20Block31Arg1 | 
    | recoveredBlock20Block31Stack0 recoveredBlock20Block31Stack1 recoveredBlock20Block31Stack2 recoveredBlock20Block31Stack3 recoveredBlock20Block31Stack4 recoveredBlock20Block31PC recoveredBlock20Block31Step recoveredBlock20Block31Done recoveredBlock20Block31Result |
    recoveredBlock20Block31Stack0 := nil.
    recoveredBlock20Block31PC := 38.
    recoveredBlock20Block31Done := false.
    [recoveredBlock20Block31Done not] whileTrue: [
        recoveredBlock20Block31Step := recoveredBlock20Block31PC.
        recoveredBlock20Block31Step = 38 ifTrue: [
            recoveredBlock20Block31Stack1 := nil.
            recoveredBlock20Block31PC := 39.
        ].
        recoveredBlock20Block31Step = 39 ifTrue: [
            recoveredBlock20Block31Stack2 := recoveredArg1.
            recoveredBlock20Block31PC := 42.
        ].
        recoveredBlock20Block31Step = 42 ifTrue: [
            recoveredBlock20Block31Stack3 := recoveredBlock20Block31Arg1.
            recoveredBlock20Block31PC := 43.
        ].
        recoveredBlock20Block31Step = 43 ifTrue: [
            recoveredBlock20Block31Stack2 := (recoveredBlock20Block31Stack2) value: (recoveredBlock20Block31Stack3).
            recoveredBlock20Block31PC := 45.
        ].
        recoveredBlock20Block31Step = 45 ifTrue: [
            recoveredBlock20Block31Stack3 := true.
            recoveredBlock20Block31PC := 46.
        ].
        recoveredBlock20Block31Step = 46 ifTrue: [
            recoveredBlock20Block31Stack2 := (recoveredBlock20Block31Stack2) = (recoveredBlock20Block31Stack3).
            recoveredBlock20Block31PC := 47.
        ].
        recoveredBlock20Block31Step = 47 ifTrue: [
            (recoveredBlock20Block31Stack2) ifTrue: [recoveredBlock20Block31PC := 50] ifFalse: [recoveredBlock20Block31PC := 57].
        ].
        recoveredBlock20Block31Step = 50 ifTrue: [
            recoveredBlock20Block31PC := 51.
        ].
        recoveredBlock20Block31Step = 51 ifTrue: [
            recoveredBlock20Block31Stack1 := recoveredLocal1.
            recoveredBlock20Block31PC := 54.
        ].
        recoveredBlock20Block31Step = 54 ifTrue: [
            recoveredBlock20Block31Stack2 := recoveredBlock20Block31Arg1.
            recoveredBlock20Block31PC := 55.
        ].
        recoveredBlock20Block31Step = 55 ifTrue: [
            recoveredBlock20Block31Stack1 := (recoveredBlock20Block31Stack1) add: (recoveredBlock20Block31Stack2).
            recoveredBlock20Block31PC := 57.
        ].
        recoveredBlock20Block31Step = 57 ifTrue: [
            recoveredBlock20Block31Result := recoveredBlock20Block31Stack1.
            recoveredBlock20Block31Done := true.
        ].
    ].
    recoveredBlock20Block31Result
].
    recoveredBlock20Value4 := (recoveredBlock20Value2) do: (recoveredBlock20Value3).
    recoveredBlock20Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"lib.ic method 0x20017114; bytecode file offset 0x5315c"
!EmInterface methodsFor: 'recovered'!
selectConfigurationMaps: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('PR') = ('1FI579S').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := EmConfigurationMap.
    recoveredValue4 := (recoveredValue3) configurationMapNamesWithoutProjects.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := EmConfigurationMap.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) editionsFor: (recoveredBlock20Value1).
    recoveredBlock20Value3 := [:recoveredBlock20Block31Arg1 | 
    | recoveredBlock20Block31Stack0 recoveredBlock20Block31Stack1 recoveredBlock20Block31Stack2 recoveredBlock20Block31Stack3 recoveredBlock20Block31Stack4 recoveredBlock20Block31PC recoveredBlock20Block31Step recoveredBlock20Block31Done recoveredBlock20Block31Result |
    recoveredBlock20Block31Stack0 := nil.
    recoveredBlock20Block31PC := 38.
    recoveredBlock20Block31Done := false.
    [recoveredBlock20Block31Done not] whileTrue: [
        recoveredBlock20Block31Step := recoveredBlock20Block31PC.
        recoveredBlock20Block31Step = 38 ifTrue: [
            recoveredBlock20Block31Stack1 := nil.
            recoveredBlock20Block31PC := 39.
        ].
        recoveredBlock20Block31Step = 39 ifTrue: [
            recoveredBlock20Block31Stack2 := recoveredArg1.
            recoveredBlock20Block31PC := 42.
        ].
        recoveredBlock20Block31Step = 42 ifTrue: [
            recoveredBlock20Block31Stack3 := recoveredBlock20Block31Arg1.
            recoveredBlock20Block31PC := 43.
        ].
        recoveredBlock20Block31Step = 43 ifTrue: [
            recoveredBlock20Block31Stack2 := (recoveredBlock20Block31Stack2) value: (recoveredBlock20Block31Stack3).
            recoveredBlock20Block31PC := 45.
        ].
        recoveredBlock20Block31Step = 45 ifTrue: [
            recoveredBlock20Block31Stack3 := true.
            recoveredBlock20Block31PC := 46.
        ].
        recoveredBlock20Block31Step = 46 ifTrue: [
            recoveredBlock20Block31Stack2 := (recoveredBlock20Block31Stack2) = (recoveredBlock20Block31Stack3).
            recoveredBlock20Block31PC := 47.
        ].
        recoveredBlock20Block31Step = 47 ifTrue: [
            (recoveredBlock20Block31Stack2) ifTrue: [recoveredBlock20Block31PC := 50] ifFalse: [recoveredBlock20Block31PC := 57].
        ].
        recoveredBlock20Block31Step = 50 ifTrue: [
            recoveredBlock20Block31PC := 51.
        ].
        recoveredBlock20Block31Step = 51 ifTrue: [
            recoveredBlock20Block31Stack1 := recoveredLocal1.
            recoveredBlock20Block31PC := 54.
        ].
        recoveredBlock20Block31Step = 54 ifTrue: [
            recoveredBlock20Block31Stack2 := recoveredBlock20Block31Arg1.
            recoveredBlock20Block31PC := 55.
        ].
        recoveredBlock20Block31Step = 55 ifTrue: [
            recoveredBlock20Block31Stack1 := (recoveredBlock20Block31Stack1) add: (recoveredBlock20Block31Stack2).
            recoveredBlock20Block31PC := 57.
        ].
        recoveredBlock20Block31Step = 57 ifTrue: [
            recoveredBlock20Block31Result := recoveredBlock20Block31Stack1.
            recoveredBlock20Block31Done := true.
        ].
    ].
    recoveredBlock20Block31Result
].
    recoveredBlock20Value4 := (recoveredBlock20Value2) do: (recoveredBlock20Value3).
    recoveredBlock20Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"lib.ic method 0x2001884c; bytecode file offset 0x5489c"
!EmInterface methodsFor: 'recovered'!
rebindAllMethodsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodsWithStaleBindingsFor: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) new: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) image.
    recoveredValue8 := (recoveredValue7) globalNamespace.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 recoveredBlock33Value6 recoveredBlock33Value7 recoveredBlock33Value8 recoveredBlock33Value9 recoveredBlock33Value10 recoveredBlock33Value11 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (recoveredBlock33Value0) methodClass.
    recoveredBlock33Value2 := recoveredBlock33Arg1.
    recoveredBlock33Value3 := recoveredLocal1.
    recoveredBlock33Value4 := (recoveredBlock33Value1) rebindVariablesIn: (recoveredBlock33Value2) using: (recoveredBlock33Value3).
    recoveredBlock33Local1 := recoveredBlock33Value4.
    recoveredBlock33Value5 := recoveredBlock33Arg1.
    recoveredBlock33Value6 := (recoveredBlock33Value5) methodClass.
    recoveredBlock33Value7 := (recoveredBlock33Value6) methodDictionary.
    recoveredBlock33Value8 := recoveredBlock33Local1.
    (recoveredBlock33Value7) add: (recoveredBlock33Value8).
    recoveredBlock33Value9 := recoveredLocal2.
    recoveredBlock33Value10 := recoveredBlock33Local1.
    recoveredBlock33Value11 := (recoveredBlock33Value9) add: (recoveredBlock33Value10).
    recoveredBlock33Value11
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"lib.ic method 0x20018b40; bytecode file offset 0x54b98"
!EmInterface methodsFor: 'recovered'!
loadPreviousMethodEditionFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) record.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) previousTimeStamp.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) shadowEditionsOf: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) timeStamp.
    recoveredBlock22Value2 := recoveredLocal1.
    recoveredBlock22Value3 := (recoveredBlock22Value1) = (recoveredBlock22Value2).
    recoveredBlock22Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'MxEMb38'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) load.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001b7a4; bytecode file offset 0x577f4"
!EmInterface methodsFor: 'recovered'!
allVisibleClassesFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rootApplication.
    recoveredValue4 := (recoveredValue3) allPrerequisitesWithSubApplications.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) publicClasses.
    recoveredBlock15Value3 := (recoveredBlock15Value0) addAll: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) rootApplication.
    recoveredValue8 := (recoveredValue7) withAllSubApplications.
    recoveredValue9 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack3 := recoveredArg1.
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) = (recoveredBlock39Stack3).
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 73] ifFalse: [recoveredBlock39PC := 56].
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 60.
        ].
        recoveredBlock39Step = 60 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) publicClasses.
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            (recoveredBlock39Stack1) addAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 65.
        ].
        recoveredBlock39Step = 65 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 68.
        ].
        recoveredBlock39Step = 68 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) privateClasses.
            recoveredBlock39PC := 71.
        ].
        recoveredBlock39Step = 71 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) addAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 73.
        ].
        recoveredBlock39Step = 73 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := Class.
    recoveredValue12 := (recoveredValue11) sortBlock.
    recoveredValue13 := (recoveredValue10) asSortedCollection: (recoveredValue12).
    ^recoveredValue13
! !

"lib.ic method 0x2001d3c8; bytecode file offset 0x59424"
!EmInterface methodsFor: 'recovered'!
moveConfigMaps: recoveredArg1 from: recoveredArg2 to: recoveredArg3 withOptions: recoveredArg4 withAllRequiredMaps: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) withAllPossibleRequiredMaps.
    recoveredBlock19Value3 := (recoveredBlock19Value0) addAll: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'logProgress'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 recoveredBlock60Value9 recoveredBlock60Value10 |
    recoveredBlock60Value0 := EmImageSupport.
    recoveredBlock60Value1 := (recoveredBlock60Value0) errorReporter.
    recoveredBlock60Value2 := Array.
    recoveredBlock60Value3 := recoveredBlock60Arg1.
    recoveredBlock60Value4 := (recoveredBlock60Value3) signature.
    recoveredBlock60Value5 := (recoveredBlock60Value2) with: (recoveredBlock60Value4).
    (recoveredBlock60Value1) logError: (72) withParms: (recoveredBlock60Value5).
    recoveredBlock60Value6 := recoveredBlock60Arg1.
    recoveredBlock60Value7 := recoveredArg2.
    recoveredBlock60Value8 := recoveredArg3.
    recoveredBlock60Value9 := recoveredLocal1.
    recoveredBlock60Value10 := (recoveredBlock60Value6) moveFrom: (recoveredBlock60Value7) to: (recoveredBlock60Value8) options: (recoveredBlock60Value9).
    recoveredBlock60Value10
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001dfc0; bytecode file offset 0x5a01c"
!EmInterface methodsFor: 'recovered'!
moveApplications: recoveredArg1 from: recoveredArg2 to: recoveredArg3 withAllSubs: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) withAllPossibleSubApplications.
    recoveredBlock19Value3 := (recoveredBlock19Value0) addAll: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 recoveredBlock52Value4 recoveredBlock52Value5 recoveredBlock52Value6 recoveredBlock52Value7 recoveredBlock52Value8 recoveredBlock52Value9 recoveredBlock52Value10 recoveredBlock52Value11 recoveredBlock52Value12 recoveredBlock52Value13 recoveredBlock52Value14 recoveredBlock52Value15 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) + (1).
    recoveredLocal1 := recoveredBlock52Value1.
    recoveredBlock52Value2 := EmImageSupport.
    recoveredBlock52Value3 := (recoveredBlock52Value2) errorReporter.
    recoveredBlock52Value4 := Array.
    recoveredBlock52Value5 := recoveredBlock52Arg1.
    recoveredBlock52Value6 := (recoveredBlock52Value5) signature.
    recoveredBlock52Value7 := (recoveredBlock52Value4) with: (recoveredBlock52Value6).
    (recoveredBlock52Value3) logError: (107) withParms: (recoveredBlock52Value7).
    recoveredBlock52Value8 := recoveredBlock52Arg1.
    recoveredBlock52Value9 := recoveredArg2.
    recoveredBlock52Value10 := recoveredArg3.
    (recoveredBlock52Value8) moveFrom: (recoveredBlock52Value9) to: (recoveredBlock52Value10).
    recoveredBlock52Value11 := recoveredLocal1.
    recoveredBlock52Value12 := recoveredLocal2.
    recoveredBlock52Value13 := (recoveredBlock52Value12) size.
    recoveredBlock52Value14 := (recoveredBlock52Value11) / (recoveredBlock52Value13).
    recoveredBlock52Value15 := (self) fractionComplete: (recoveredBlock52Value14).
    recoveredBlock52Value15
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001ecf0; bytecode file offset 0x5ad68"
!EmInterface methodsFor: 'recovered'!
reportUndefinedClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) errorLog.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := MxEMc55.
    (recoveredValue4) show: (recoveredValue5).
    (recoveredValue2) cr.
    (self) flushCache.
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) image.
    recoveredValue8 := (recoveredValue7) loadedSubApplications.
    recoveredValue9 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            (recoveredBlock25Stack0) recomputeUndefinedClassesFor: (recoveredBlock25Stack1).
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack0 := nil.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) undefined.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) notEmpty.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 44] ifFalse: [recoveredBlock25PC := 98].
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack0 := System.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) image.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) errorLog.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Stack0.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            (recoveredBlock25Stack1) tab.
            recoveredBlock25Stack1 := recoveredBlock25Stack0.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack2 := MxEMc53.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) signature.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) bindWith: (recoveredBlock25Stack3).
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            (recoveredBlock25Stack1) show: (recoveredBlock25Stack2).
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            (recoveredBlock25Stack0) cr.
            recoveredBlock25PC := 64.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack0 := recoveredBlock25Arg1.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) undefined.
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Stack1 := Class.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) sortBlock.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) asSortedCollection: (recoveredBlock25Stack1).
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Stack1 := [:block28004e64Arg1 | 
    | block28004e64Value0 block28004e64Value1 block28004e64Value2 block28004e64Value3 block28004e64Value4 block28004e64Value5 block28004e64Value6 block28004e64Value7 block28004e64Value8 |
    block28004e64Value0 := System.
    block28004e64Value1 := (block28004e64Value0) image.
    block28004e64Value2 := (block28004e64Value1) errorLog.
    block28004e64Value3 := block28004e64Value2.
    (block28004e64Value3) tab.
    block28004e64Value4 := block28004e64Value2.
    (block28004e64Value4) tab.
    block28004e64Value5 := block28004e64Value2.
    block28004e64Value6 := block28004e64Arg1.
    block28004e64Value7 := (block28004e64Value6) name.
    (block28004e64Value5) show: (block28004e64Value7).
    block28004e64Value8 := (block28004e64Value2) cr.
    block28004e64Value8
].
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25PC := 96.
        ].
        recoveredBlock25Step = 96 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) do: (recoveredBlock25Stack1).
            recoveredBlock25PC := 98.
        ].
        recoveredBlock25Step = 98 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := System.
    recoveredValue11 := (recoveredValue10) image.
    recoveredValue12 := (recoveredValue11) errorLog.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := MxEMc35.
    (recoveredValue13) show: (recoveredValue14).
    (recoveredValue12) cr.
    ^self
! !

"lib.ic method 0x2001ef1c; bytecode file offset 0x5af7c"
!EmInterface methodsFor: 'recovered'!
selectClasses: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('PR') = ('1FI579S').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) allNames.
    recoveredBlock16Value2 := [:recoveredBlock16Block27Arg1 | 
    | recoveredBlock16Block27Value0 recoveredBlock16Block27Value1 recoveredBlock16Block27Value2 recoveredBlock16Block27Value3 recoveredBlock16Block27Value4 recoveredBlock16Block27Value5 recoveredBlock16Block27Value6 recoveredBlock16Block27Value7 recoveredBlock16Block27Value8 recoveredBlock16Block27Value9 |
    recoveredBlock16Block27Value0 := recoveredBlock16Arg1.
    recoveredBlock16Block27Value1 := (recoveredBlock16Block27Value0) shadowClass.
    recoveredBlock16Block27Value2 := recoveredBlock16Block27Arg1.
    recoveredBlock16Block27Value3 := EmTimeStamp.
    recoveredBlock16Block27Value4 := (recoveredBlock16Block27Value3) undefined.
    recoveredBlock16Block27Value5 := (recoveredBlock16Block27Value1) named: (recoveredBlock16Block27Value2) timeStampWithVersionInfo: (recoveredBlock16Block27Value4).
    recoveredLocal1 := recoveredBlock16Block27Value5.
    recoveredBlock16Block27Value6 := recoveredLocal1.
    recoveredBlock16Block27Value7 := (recoveredBlock16Block27Value6) allClassNames.
    recoveredBlock16Block27Value8 := [:recoveredBlock16Block27Block54Arg1 | 
    | recoveredBlock16Block27Block54Value0 recoveredBlock16Block27Block54Value1 recoveredBlock16Block27Block54Value2 recoveredBlock16Block27Block54Value3 recoveredBlock16Block27Block54Value4 |
    recoveredBlock16Block27Block54Value0 := recoveredLocal1.
    recoveredBlock16Block27Block54Value1 := recoveredBlock16Block27Block54Arg1.
    recoveredBlock16Block27Block54Value2 := (recoveredBlock16Block27Block54Value0) classEditionsFor: (recoveredBlock16Block27Block54Value1).
    recoveredBlock16Block27Block54Value3 := [:recoveredBlock16Block27Block54Block66Arg1 | 
    | recoveredBlock16Block27Block54Block66Stack0 recoveredBlock16Block27Block54Block66Stack1 recoveredBlock16Block27Block54Block66Stack2 recoveredBlock16Block27Block54Block66Stack3 recoveredBlock16Block27Block54Block66Stack4 recoveredBlock16Block27Block54Block66PC recoveredBlock16Block27Block54Block66Step recoveredBlock16Block27Block54Block66Done recoveredBlock16Block27Block54Block66Result |
    recoveredBlock16Block27Block54Block66Stack0 := nil.
    recoveredBlock16Block27Block54Block66PC := 72.
    recoveredBlock16Block27Block54Block66Done := false.
    [recoveredBlock16Block27Block54Block66Done not] whileTrue: [
        recoveredBlock16Block27Block54Block66Step := recoveredBlock16Block27Block54Block66PC.
        recoveredBlock16Block27Block54Block66Step = 72 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack1 := nil.
            recoveredBlock16Block27Block54Block66PC := 73.
        ].
        recoveredBlock16Block27Block54Block66Step = 73 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack2 := recoveredArg1.
            recoveredBlock16Block27Block54Block66PC := 76.
        ].
        recoveredBlock16Block27Block54Block66Step = 76 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack3 := recoveredBlock16Block27Block54Block66Arg1.
            recoveredBlock16Block27Block54Block66PC := 77.
        ].
        recoveredBlock16Block27Block54Block66Step = 77 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack2 := (recoveredBlock16Block27Block54Block66Stack2) value: (recoveredBlock16Block27Block54Block66Stack3).
            recoveredBlock16Block27Block54Block66PC := 79.
        ].
        recoveredBlock16Block27Block54Block66Step = 79 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack3 := true.
            recoveredBlock16Block27Block54Block66PC := 80.
        ].
        recoveredBlock16Block27Block54Block66Step = 80 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack2 := (recoveredBlock16Block27Block54Block66Stack2) = (recoveredBlock16Block27Block54Block66Stack3).
            recoveredBlock16Block27Block54Block66PC := 81.
        ].
        recoveredBlock16Block27Block54Block66Step = 81 ifTrue: [
            (recoveredBlock16Block27Block54Block66Stack2) ifTrue: [recoveredBlock16Block27Block54Block66PC := 84] ifFalse: [recoveredBlock16Block27Block54Block66PC := 91].
        ].
        recoveredBlock16Block27Block54Block66Step = 84 ifTrue: [
            recoveredBlock16Block27Block54Block66PC := 85.
        ].
        recoveredBlock16Block27Block54Block66Step = 85 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack1 := recoveredLocal2.
            recoveredBlock16Block27Block54Block66PC := 88.
        ].
        recoveredBlock16Block27Block54Block66Step = 88 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack2 := recoveredBlock16Block27Block54Block66Arg1.
            recoveredBlock16Block27Block54Block66PC := 89.
        ].
        recoveredBlock16Block27Block54Block66Step = 89 ifTrue: [
            recoveredBlock16Block27Block54Block66Stack1 := (recoveredBlock16Block27Block54Block66Stack1) add: (recoveredBlock16Block27Block54Block66Stack2).
            recoveredBlock16Block27Block54Block66PC := 91.
        ].
        recoveredBlock16Block27Block54Block66Step = 91 ifTrue: [
            recoveredBlock16Block27Block54Block66Result := recoveredBlock16Block27Block54Block66Stack1.
            recoveredBlock16Block27Block54Block66Done := true.
        ].
    ].
    recoveredBlock16Block27Block54Block66Result
].
    recoveredBlock16Block27Block54Value4 := (recoveredBlock16Block27Block54Value2) do: (recoveredBlock16Block27Block54Value3).
    recoveredBlock16Block27Block54Value4
].
    recoveredBlock16Block27Value9 := (recoveredBlock16Block27Value7) do: (recoveredBlock16Block27Value8).
    recoveredBlock16Block27Value9
].
    recoveredBlock16Value3 := (recoveredBlock16Value1) do: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Application.
    (recoveredValue4) value: (recoveredValue5).
    recoveredValue6 := SubApplication.
    (recoveredValue3) value: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"lib.ic method 0x2001efd8; bytecode file offset 0x5b030"
!EmInterface methodsFor: 'recovered'!
applicationsThatCanExtend: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryInstance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrivate.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubApplications.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDependentApplicationsWithSubApplications.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) withAllSubApplications.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) applications.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Stack0 recoveredBlock86Stack1 recoveredBlock86Stack2 recoveredBlock86Stack3 recoveredBlock86PC recoveredBlock86Step recoveredBlock86Done recoveredBlock86Result |
    recoveredBlock86Stack0 := self.
    recoveredBlock86PC := 92.
    recoveredBlock86Done := false.
    [recoveredBlock86Done not] whileTrue: [
        recoveredBlock86Step := recoveredBlock86PC.
        recoveredBlock86Step = 92 ifTrue: [
            recoveredBlock86Stack1 := false.
            recoveredBlock86PC := 93.
        ].
        recoveredBlock86Step = 93 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Arg1.
            recoveredBlock86PC := 94.
        ].
        recoveredBlock86Step = 94 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) timeStamp.
            recoveredBlock86PC := 96.
        ].
        recoveredBlock86Step = 96 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) isEdition.
            recoveredBlock86PC := 98.
        ].
        recoveredBlock86Step = 98 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 102] ifFalse: [recoveredBlock86PC := 110].
        ].
        recoveredBlock86Step = 102 ifTrue: [
            recoveredBlock86PC := 103.
        ].
        recoveredBlock86Step = 103 ifTrue: [
            recoveredBlock86Stack1 := recoveredLocal1.
            recoveredBlock86PC := 106.
        ].
        recoveredBlock86Step = 106 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Arg1.
            recoveredBlock86PC := 107.
        ].
        recoveredBlock86Step = 107 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) includes: (recoveredBlock86Stack2).
            recoveredBlock86PC := 109.
        ].
        recoveredBlock86Step = 109 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) not.
            recoveredBlock86PC := 110.
        ].
        recoveredBlock86Step = 110 ifTrue: [
            recoveredBlock86Result := recoveredBlock86Stack1.
            recoveredBlock86Done := true.
        ].
    ].
    recoveredBlock86Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001f228; bytecode file offset 0x5b280"
!EmInterface methodsFor: 'recovered'!
createClass: recoveredArg1 subclassOf: recoveredArg2 type: recoveredArg3 in: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultApplication.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'pointer'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) subclass: (recoveredStack2) instanceVariableNames: (recoveredStack3) classVariableNames: (recoveredStack4) poolDictionaries: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'indexed'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableSubclass: (recoveredStack2) instanceVariableNames: (recoveredStack3) classVariableNames: (recoveredStack4) poolDictionaries: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'byte'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableByteSubclass: (recoveredStack2) classVariableNames: (recoveredStack3) poolDictionaries: (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'word'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableWordSubclass: (recoveredStack2) classVariableNames: (recoveredStack3) poolDictionaries: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'long'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableLongSubclass: (recoveredStack2) classVariableNames: (recoveredStack3) poolDictionaries: (recoveredStack4).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001f2dc; bytecode file offset 0x5b34c"
!EmInterface methodsFor: 'recovered'!
createUserCalled: recoveredArg1 fullName: recoveredArg2 networkName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := MxEMc36.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) allUsers.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) called: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := MxEMc37.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) fullName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) named: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := MxEMc38.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) uniqueName.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueName: (recoveredStack2) fullName: (recoveredStack3) networkName: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001fd2c; bytecode file offset 0x5bd94"
!EmInterface methodsFor: 'recovered'!
reportClassesOwnedBy: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) errorLog.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := MxEMc48.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) fullName.
    recoveredValue8 := (recoveredValue5) bindWith: (recoveredValue7).
    (recoveredValue4) show: (recoveredValue8).
    (recoveredValue2) cr.
    recoveredValue9 := System.
    recoveredValue10 := (recoveredValue9) image.
    recoveredValue11 := (recoveredValue10) loadedSubApplications.
    recoveredValue12 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30Stack6 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack3 := recoveredArg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) allClassNamesOwnedBy: (recoveredBlock30Stack3).
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack3.
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) notEmpty.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 52] ifFalse: [recoveredBlock30PC := 104].
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack1 := System.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) image.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) errorLog.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            (recoveredBlock30Stack2) tab.
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack3 := MxEMc49.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) signature.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack5 := recoveredArg1.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack5 := (recoveredBlock30Stack5) fullName.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) bindWith: (recoveredBlock30Stack4) with: (recoveredBlock30Stack5).
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            (recoveredBlock30Stack2) show: (recoveredBlock30Stack3).
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            (recoveredBlock30Stack1) cr.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30Stack2 := [:block28004ed0Arg1 | 
    | block28004ed0Value0 block28004ed0Value1 block28004ed0Value2 block28004ed0Value3 block28004ed0Value4 block28004ed0Value5 block28004ed0Value6 block28004ed0Value7 |
    block28004ed0Value0 := System.
    block28004ed0Value1 := (block28004ed0Value0) image.
    block28004ed0Value2 := (block28004ed0Value1) errorLog.
    block28004ed0Value3 := block28004ed0Value2.
    (block28004ed0Value3) tab.
    block28004ed0Value4 := block28004ed0Value2.
    (block28004ed0Value4) tab.
    block28004ed0Value5 := block28004ed0Value2.
    block28004ed0Value6 := block28004ed0Arg1.
    (block28004ed0Value5) show: (block28004ed0Value6).
    block28004ed0Value7 := (block28004ed0Value2) cr.
    block28004ed0Value7
].
            recoveredBlock30PC := 82.
        ].
        recoveredBlock30Step = 82 ifTrue: [
            recoveredBlock30PC := 102.
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) do: (recoveredBlock30Stack2).
            recoveredBlock30PC := 104.
        ].
        recoveredBlock30Step = 104 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := System.
    recoveredValue14 := (recoveredValue13) image.
    recoveredValue15 := (recoveredValue14) errorLog.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := MxEMc35.
    (recoveredValue16) show: (recoveredValue17).
    (recoveredValue15) cr.
    ^self
! !

"lib.ic method 0x20020b94; bytecode file offset 0x5cbe4"
!EmInterface methodsFor: 'recovered'!
applicationsThatCanExtendAll: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationsThatCanExtend: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationsThatCanExtend: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 |
    recoveredBlock61Value0 := recoveredLocal2.
    recoveredBlock61Value1 := recoveredBlock61Arg1.
    recoveredBlock61Value2 := (recoveredBlock61Value0) includes: (recoveredBlock61Value1).
    recoveredBlock61Value2
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 42] ifFalse: [recoveredPC := 121]] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20020ed4; bytecode file offset 0x5cf44"
!EmInterface methodsFor: 'recovered'!
reportOutOfScopeReferences: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) errorLog.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := NlsCatEMb.
    recoveredValue5 := (recoveredValue4) residentMsg: ('MxEMb70').
    (recoveredValue2) show: (recoveredValue5).
    (self) flushCache.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 |
    recoveredBlock24Value0 := System.
    recoveredBlock24Value1 := (recoveredBlock24Value0) image.
    recoveredBlock24Value2 := (recoveredBlock24Value1) errorLog.
    recoveredBlock24Value3 := recoveredBlock24Value2.
    (recoveredBlock24Value3) tab.
    recoveredBlock24Value4 := recoveredBlock24Value2.
    (recoveredBlock24Value4) cr.
    recoveredBlock24Value5 := NlsCatEMb.
    recoveredBlock24Value6 := (recoveredBlock24Value5) residentMsg: ('MxEMb71').
    recoveredBlock24Value7 := recoveredBlock24Arg1.
    recoveredBlock24Value8 := (recoveredBlock24Value7) name.
    recoveredBlock24Value9 := (recoveredBlock24Value6) bindWith: (recoveredBlock24Value8).
    (recoveredBlock24Value2) show: (recoveredBlock24Value9).
    recoveredBlock24Value10 := recoveredBlock24Arg1.
    recoveredBlock24Value11 := (recoveredBlock24Value10) withAllSubApplications.
    recoveredBlock24Value12 := [:recoveredBlock24Block56Arg1 | 
    | recoveredBlock24Block56Value0 recoveredBlock24Block56Value1 recoveredBlock24Block56Value2 recoveredBlock24Block56Value3 |
    recoveredBlock24Block56Value0 := recoveredBlock24Block56Arg1.
    recoveredBlock24Block56Value1 := (recoveredBlock24Block56Value0) classes.
    recoveredBlock24Block56Value2 := [:recoveredBlock24Block56Block67Arg1 | 
    | recoveredBlock24Block56Block67Value0 recoveredBlock24Block56Block67Value1 recoveredBlock24Block56Block67Value2 |
    recoveredBlock24Block56Block67Value0 := recoveredBlock24Block56Block67Arg1.
    recoveredBlock24Block56Block67Value1 := [:recoveredBlock24Block56Block67Block75Arg1 | 
    | recoveredBlock24Block56Block67Block75Stack0 recoveredBlock24Block56Block67Block75Stack1 recoveredBlock24Block56Block67Block75Stack2 recoveredBlock24Block56Block67Block75Stack3 recoveredBlock24Block56Block67Block75Stack4 recoveredBlock24Block56Block67Block75PC recoveredBlock24Block56Block67Block75Step recoveredBlock24Block56Block67Block75Done recoveredBlock24Block56Block67Block75Result |
    recoveredBlock24Block56Block67Block75Stack0 := self.
    recoveredBlock24Block56Block67Block75PC := 82.
    recoveredBlock24Block56Block67Block75Done := false.
    [recoveredBlock24Block56Block67Block75Done not] whileTrue: [
        recoveredBlock24Block56Block67Block75Step := recoveredBlock24Block56Block67Block75PC.
        recoveredBlock24Block56Block67Block75Step = 82 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack1 := nil.
            recoveredBlock24Block56Block67Block75PC := 83.
        ].
        recoveredBlock24Block56Block67Block75Step = 83 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack2 := recoveredBlock24Block56Block67Block75Arg1.
            recoveredBlock24Block56Block67Block75PC := 84.
        ].
        recoveredBlock24Block56Block67Block75Step = 84 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack2 := (recoveredBlock24Block56Block67Block75Stack2) application.
            recoveredBlock24Block56Block67Block75PC := 86.
        ].
        recoveredBlock24Block56Block67Block75Step = 86 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack3 := recoveredBlock24Block56Arg1.
            recoveredBlock24Block56Block67Block75PC := 89.
        ].
        recoveredBlock24Block56Block67Block75Step = 89 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack2 := (recoveredBlock24Block56Block67Block75Stack2) = (recoveredBlock24Block56Block67Block75Stack3).
            recoveredBlock24Block56Block67Block75PC := 90.
        ].
        recoveredBlock24Block56Block67Block75Step = 90 ifTrue: [
            (recoveredBlock24Block56Block67Block75Stack2) ifTrue: [recoveredBlock24Block56Block67Block75PC := 94] ifFalse: [recoveredBlock24Block56Block67Block75PC := 99].
        ].
        recoveredBlock24Block56Block67Block75Step = 94 ifTrue: [
            recoveredBlock24Block56Block67Block75PC := 95.
        ].
        recoveredBlock24Block56Block67Block75Step = 95 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack1 := self.
            recoveredBlock24Block56Block67Block75PC := 96.
        ].
        recoveredBlock24Block56Block67Block75Step = 96 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack2 := recoveredBlock24Block56Block67Block75Arg1.
            recoveredBlock24Block56Block67Block75PC := 97.
        ].
        recoveredBlock24Block56Block67Block75Step = 97 ifTrue: [
            recoveredBlock24Block56Block67Block75Stack1 := (recoveredBlock24Block56Block67Block75Stack1) checkMethod: (recoveredBlock24Block56Block67Block75Stack2).
            recoveredBlock24Block56Block67Block75PC := 99.
        ].
        recoveredBlock24Block56Block67Block75Step = 99 ifTrue: [
            recoveredBlock24Block56Block67Block75Result := recoveredBlock24Block56Block67Block75Stack1.
            recoveredBlock24Block56Block67Block75Done := true.
        ].
    ].
    recoveredBlock24Block56Block67Block75Result
].
    recoveredBlock24Block56Block67Value2 := (recoveredBlock24Block56Block67Value0) methodsDo: (recoveredBlock24Block56Block67Value1).
    recoveredBlock24Block56Block67Value2
].
    recoveredBlock24Block56Value3 := (recoveredBlock24Block56Value1) do: (recoveredBlock24Block56Value2).
    recoveredBlock24Block56Value3
].
    recoveredBlock24Value13 := (recoveredBlock24Value11) do: (recoveredBlock24Value12).
    recoveredBlock24Value13
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := System.
    recoveredValue9 := (recoveredValue8) image.
    recoveredValue10 := (recoveredValue9) errorLog.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) cr.
    recoveredValue12 := recoveredValue10.
    recoveredValue13 := NlsCatEMb.
    recoveredValue14 := (recoveredValue13) residentMsg: ('MxEMb72').
    (recoveredValue12) show: (recoveredValue14).
    (recoveredValue10) cr.
    ^self
! !

"lib.ic method 0x200229e8; bytecode file offset 0x5ea4c"
!EmInterface methodsFor: 'recovered'!
allUnloadedPrerequisitesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isApplication.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 26] ifFalse: [recoveredBlock13PC := 34].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal3.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) prerequisiteNames.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) addAll: (recoveredBlock13Stack2).
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadedApplications.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 |
    recoveredBlock62Value0 := recoveredLocal1.
    recoveredBlock62Value1 := recoveredBlock62Arg1.
    recoveredBlock62Value2 := (recoveredBlock62Value1) symbol.
    recoveredBlock62Value3 := (recoveredBlock62Value0) add: (recoveredBlock62Value2).
    recoveredBlock62Value3
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 recoveredBlock82Value3 |
    recoveredBlock82Value0 := recoveredLocal1.
    recoveredBlock82Value1 := recoveredBlock82Arg1.
    recoveredBlock82Value2 := (recoveredBlock82Value1) symbol.
    recoveredBlock82Value3 := (recoveredBlock82Value0) add: (recoveredBlock82Value2).
    recoveredBlock82Value3
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108Stack4 recoveredBlock108Stack5 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack1 := nil.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack2 := recoveredLocal1.
            recoveredBlock108PC := 118.
        ].
        recoveredBlock108Step = 118 ifTrue: [
            recoveredBlock108Stack3 := recoveredBlock108Arg1.
            recoveredBlock108PC := 119.
        ].
        recoveredBlock108Step = 119 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) includes: (recoveredBlock108Stack3).
            recoveredBlock108PC := 121.
        ].
        recoveredBlock108Step = 121 ifTrue: [
            (recoveredBlock108Stack2) ifTrue: [recoveredBlock108PC := 136] ifFalse: [recoveredBlock108PC := 124].
        ].
        recoveredBlock108Step = 124 ifTrue: [
            recoveredBlock108PC := 125.
        ].
        recoveredBlock108Step = 125 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal2.
            recoveredBlock108PC := 128.
        ].
        recoveredBlock108Step = 128 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 129.
        ].
        recoveredBlock108Step = 129 ifTrue: [
            recoveredBlock108Stack3 := Application.
            recoveredBlock108PC := 131.
        ].
        recoveredBlock108Step = 131 ifTrue: [
            recoveredBlock108Stack4 := recoveredBlock108Arg1.
            recoveredBlock108PC := 132.
        ].
        recoveredBlock108Step = 132 ifTrue: [
            recoveredBlock108Stack3 := (recoveredBlock108Stack3) shadowsFor: (recoveredBlock108Stack4).
            recoveredBlock108PC := 134.
        ].
        recoveredBlock108Step = 134 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) at: (recoveredBlock108Stack2) put: (recoveredBlock108Stack3).
            recoveredBlock108PC := 136.
        ].
        recoveredBlock108Step = 136 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack1.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20023450; bytecode file offset 0x5f4c8"
!EmInterface methodsFor: 'recovered'!
reportOpenEditions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) errorLog.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := MxEMc54.
    (recoveredValue4) show: (recoveredValue5).
    (recoveredValue2) cr.
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) image.
    recoveredValue8 := (recoveredValue7) loadedSubApplications.
    recoveredValue9 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) canBeChangedLocally.
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 40] ifFalse: [recoveredBlock23PC := 133].
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) classes.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack3 := [:recoveredBlock23Block47Arg1 | 
    | recoveredBlock23Block47Value0 recoveredBlock23Block47Value1 recoveredBlock23Block47Value2 |
    recoveredBlock23Block47Value0 := recoveredBlock23Block47Arg1.
    recoveredBlock23Block47Value1 := recoveredBlock23Arg1.
    recoveredBlock23Block47Value2 := (recoveredBlock23Block47Value0) isEditionIn: (recoveredBlock23Block47Value1).
    recoveredBlock23Block47Value2
].
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) select: (recoveredBlock23Stack3).
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack3.
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) notEmpty.
            recoveredBlock23PC := 69.
        ].
        recoveredBlock23Step = 69 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 72] ifFalse: [recoveredBlock23PC := 133].
        ].
        recoveredBlock23Step = 72 ifTrue: [
            recoveredBlock23PC := 73.
        ].
        recoveredBlock23Step = 73 ifTrue: [
            recoveredBlock23Stack1 := System.
            recoveredBlock23PC := 75.
        ].
        recoveredBlock23Step = 75 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) image.
            recoveredBlock23PC := 76.
        ].
        recoveredBlock23Step = 76 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) errorLog.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 78.
        ].
        recoveredBlock23Step = 78 ifTrue: [
            (recoveredBlock23Stack2) tab.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 81.
        ].
        recoveredBlock23Step = 81 ifTrue: [
            recoveredBlock23Stack3 := MxEMc53.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 86.
        ].
        recoveredBlock23Step = 86 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) signature.
            recoveredBlock23PC := 88.
        ].
        recoveredBlock23Step = 88 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) bindWith: (recoveredBlock23Stack4).
            recoveredBlock23PC := 90.
        ].
        recoveredBlock23Step = 90 ifTrue: [
            (recoveredBlock23Stack2) show: (recoveredBlock23Stack3).
            recoveredBlock23PC := 92.
        ].
        recoveredBlock23Step = 92 ifTrue: [
            (recoveredBlock23Stack1) cr.
            recoveredBlock23PC := 94.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 97.
        ].
        recoveredBlock23Step = 97 ifTrue: [
            recoveredBlock23Stack2 := Class.
            recoveredBlock23PC := 99.
        ].
        recoveredBlock23Step = 99 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) sortBlock.
            recoveredBlock23PC := 101.
        ].
        recoveredBlock23Step = 101 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) asSortedCollection: (recoveredBlock23Stack2).
            recoveredBlock23PC := 103.
        ].
        recoveredBlock23Step = 103 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block103Arg1 | 
    | recoveredBlock23Block103Value0 recoveredBlock23Block103Value1 recoveredBlock23Block103Value2 recoveredBlock23Block103Value3 recoveredBlock23Block103Value4 recoveredBlock23Block103Value5 recoveredBlock23Block103Value6 recoveredBlock23Block103Value7 recoveredBlock23Block103Value8 recoveredBlock23Block103Value9 |
    recoveredBlock23Block103Value0 := System.
    recoveredBlock23Block103Value1 := (recoveredBlock23Block103Value0) image.
    recoveredBlock23Block103Value2 := (recoveredBlock23Block103Value1) errorLog.
    recoveredBlock23Block103Value3 := recoveredBlock23Block103Value2.
    (recoveredBlock23Block103Value3) tab.
    recoveredBlock23Block103Value4 := recoveredBlock23Block103Value2.
    (recoveredBlock23Block103Value4) tab.
    recoveredBlock23Block103Value5 := recoveredBlock23Block103Value2.
    recoveredBlock23Block103Value6 := recoveredBlock23Block103Arg1.
    recoveredBlock23Block103Value7 := recoveredBlock23Arg1.
    recoveredBlock23Block103Value8 := (recoveredBlock23Block103Value6) signatureIn: (recoveredBlock23Block103Value7).
    (recoveredBlock23Block103Value5) show: (recoveredBlock23Block103Value8).
    recoveredBlock23Block103Value9 := (recoveredBlock23Block103Value2) cr.
    recoveredBlock23Block103Value9
].
            recoveredBlock23PC := 131.
        ].
        recoveredBlock23Step = 131 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) do: (recoveredBlock23Stack2).
            recoveredBlock23PC := 133.
        ].
        recoveredBlock23Step = 133 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := System.
    recoveredValue11 := (recoveredValue10) image.
    recoveredValue12 := (recoveredValue11) errorLog.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := MxEMc35.
    (recoveredValue13) show: (recoveredValue14).
    (recoveredValue12) cr.
    ^self
! !

"lib.ic method 0x2002372c; bytecode file offset 0x5f7a0"
!EmInterface methodsFor: 'recovered'!
moveConfigMapDifferencesBetween: recoveredArg1 and: recoveredArg2 from: recoveredArg3 to: recoveredArg4 withAllRequiredMaps: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllPossibleRequiredMaps.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) allPossibleRequiredMaps.
    recoveredBlock39Value2 := [:recoveredBlock39Block49Arg1 | 
    | recoveredBlock39Block49Stack0 recoveredBlock39Block49Stack1 recoveredBlock39Block49Stack2 recoveredBlock39Block49Stack3 recoveredBlock39Block49Stack4 recoveredBlock39Block49PC recoveredBlock39Block49Step recoveredBlock39Block49Done recoveredBlock39Block49Result |
    recoveredBlock39Block49Stack0 := nil.
    recoveredBlock39Block49PC := 56.
    recoveredBlock39Block49Done := false.
    [recoveredBlock39Block49Done not] whileTrue: [
        recoveredBlock39Block49Step := recoveredBlock39Block49PC.
        recoveredBlock39Block49Step = 56 ifTrue: [
            recoveredBlock39Block49Stack1 := recoveredLocal2.
            recoveredBlock39Block49PC := 59.
        ].
        recoveredBlock39Block49Step = 59 ifTrue: [
            recoveredBlock39Block49Stack2 := recoveredBlock39Block49Arg1.
            recoveredBlock39Block49PC := 60.
        ].
        recoveredBlock39Block49Step = 60 ifTrue: [
            recoveredBlock39Block49Stack2 := (recoveredBlock39Block49Stack2) name.
            recoveredBlock39Block49PC := 61.
        ].
        recoveredBlock39Block49Step = 61 ifTrue: [
            recoveredBlock39Block49Stack3 := [
    | block28005080Value0 block28005080Value1 |
    block28005080Value0 := OrderedCollection.
    block28005080Value1 := (block28005080Value0) new.
    block28005080Value1
].
            recoveredBlock39Block49PC := 63.
        ].
        recoveredBlock39Block49Step = 63 ifTrue: [
            recoveredBlock39Block49PC := 70.
        ].
        recoveredBlock39Block49Step = 70 ifTrue: [
            recoveredBlock39Block49Stack1 := (recoveredBlock39Block49Stack1) at: (recoveredBlock39Block49Stack2) ifAbsentPut: (recoveredBlock39Block49Stack3).
            recoveredBlock39Block49PC := 72.
        ].
        recoveredBlock39Block49Step = 72 ifTrue: [
            recoveredBlock39Block49Stack2 := recoveredBlock39Block49Arg1.
            recoveredBlock39Block49PC := 73.
        ].
        recoveredBlock39Block49Step = 73 ifTrue: [
            recoveredBlock39Block49Stack1 := (recoveredBlock39Block49Stack1) add: (recoveredBlock39Block49Stack2).
            recoveredBlock39Block49PC := 75.
        ].
        recoveredBlock39Block49Step = 75 ifTrue: [
            recoveredBlock39Block49Result := recoveredBlock39Block49Stack1.
            recoveredBlock39Block49Done := true.
        ].
    ].
    recoveredBlock39Block49Result
].
    recoveredBlock39Value3 := (recoveredBlock39Value1) do: (recoveredBlock39Value2).
    recoveredBlock39Value3
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Stack0 recoveredBlock97Stack1 recoveredBlock97Stack2 recoveredBlock97Stack3 recoveredBlock97Stack4 recoveredBlock97Stack5 recoveredBlock97PC recoveredBlock97Step recoveredBlock97Done recoveredBlock97Result |
    recoveredBlock97Stack0 := self.
    recoveredBlock97PC := 104.
    recoveredBlock97Done := false.
    [recoveredBlock97Done not] whileTrue: [
        recoveredBlock97Step := recoveredBlock97PC.
        recoveredBlock97Step = 104 ifTrue: [
            recoveredBlock97Stack1 := EmImageSupport.
            recoveredBlock97PC := 106.
        ].
        recoveredBlock97Step = 106 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) errorReporter.
            recoveredBlock97PC := 108.
        ].
        recoveredBlock97Step = 108 ifTrue: [
            recoveredBlock97Stack2 := 194.
            recoveredBlock97PC := 112.
        ].
        recoveredBlock97Step = 112 ifTrue: [
            recoveredBlock97Stack3 := Array.
            recoveredBlock97PC := 114.
        ].
        recoveredBlock97Step = 114 ifTrue: [
            recoveredBlock97Stack4 := recoveredBlock97Arg1.
            recoveredBlock97PC := 115.
        ].
        recoveredBlock97Step = 115 ifTrue: [
            recoveredBlock97Stack4 := (recoveredBlock97Stack4) signature.
            recoveredBlock97PC := 117.
        ].
        recoveredBlock97Step = 117 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) with: (recoveredBlock97Stack4).
            recoveredBlock97PC := 119.
        ].
        recoveredBlock97Step = 119 ifTrue: [
            (recoveredBlock97Stack1) logError: (recoveredBlock97Stack2) withParms: (recoveredBlock97Stack3).
            recoveredBlock97PC := 121.
        ].
        recoveredBlock97Step = 121 ifTrue: [
            recoveredBlock97Stack1 := recoveredBlock97Arg1.
            recoveredBlock97PC := 122.
        ].
        recoveredBlock97Step = 122 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal2.
            recoveredBlock97PC := 125.
        ].
        recoveredBlock97Step = 125 ifTrue: [
            recoveredBlock97Stack3 := recoveredBlock97Arg1.
            recoveredBlock97PC := 126.
        ].
        recoveredBlock97Step = 126 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) name.
            recoveredBlock97PC := 127.
        ].
        recoveredBlock97Step = 127 ifTrue: [
            recoveredBlock97Stack4 := [
    #()
].
            recoveredBlock97PC := 129.
        ].
        recoveredBlock97Step = 129 ifTrue: [
            recoveredBlock97PC := 135.
        ].
        recoveredBlock97Step = 135 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) at: (recoveredBlock97Stack3) ifAbsent: (recoveredBlock97Stack4).
            recoveredBlock97PC := 137.
        ].
        recoveredBlock97Step = 137 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg3.
            recoveredBlock97PC := 140.
        ].
        recoveredBlock97Step = 140 ifTrue: [
            recoveredBlock97Stack4 := recoveredArg4.
            recoveredBlock97PC := 143.
        ].
        recoveredBlock97Step = 143 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) moveDifferencesWith: (recoveredBlock97Stack2) from: (recoveredBlock97Stack3) to: (recoveredBlock97Stack4).
            recoveredBlock97PC := 146.
        ].
        recoveredBlock97Step = 146 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack1.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20023820; bytecode file offset 0x5f894"
!EmInterface methodsFor: 'recovered'!
moveApplicationDifferencesBetween: recoveredArg1 and: recoveredArg2 from: recoveredArg3 to: recoveredArg4 withAllSubs: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllPossibleSubApplications.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) allPossibleSubApplications.
    recoveredBlock39Value2 := [:recoveredBlock39Block49Arg1 | 
    | recoveredBlock39Block49Stack0 recoveredBlock39Block49Stack1 recoveredBlock39Block49Stack2 recoveredBlock39Block49Stack3 recoveredBlock39Block49Stack4 recoveredBlock39Block49PC recoveredBlock39Block49Step recoveredBlock39Block49Done recoveredBlock39Block49Result |
    recoveredBlock39Block49Stack0 := nil.
    recoveredBlock39Block49PC := 56.
    recoveredBlock39Block49Done := false.
    [recoveredBlock39Block49Done not] whileTrue: [
        recoveredBlock39Block49Step := recoveredBlock39Block49PC.
        recoveredBlock39Block49Step = 56 ifTrue: [
            recoveredBlock39Block49Stack1 := recoveredLocal2.
            recoveredBlock39Block49PC := 59.
        ].
        recoveredBlock39Block49Step = 59 ifTrue: [
            recoveredBlock39Block49Stack2 := recoveredBlock39Block49Arg1.
            recoveredBlock39Block49PC := 60.
        ].
        recoveredBlock39Block49Step = 60 ifTrue: [
            recoveredBlock39Block49Stack2 := (recoveredBlock39Block49Stack2) name.
            recoveredBlock39Block49PC := 61.
        ].
        recoveredBlock39Block49Step = 61 ifTrue: [
            recoveredBlock39Block49Stack3 := [
    | block280050c8Value0 block280050c8Value1 |
    block280050c8Value0 := OrderedCollection.
    block280050c8Value1 := (block280050c8Value0) new.
    block280050c8Value1
].
            recoveredBlock39Block49PC := 63.
        ].
        recoveredBlock39Block49Step = 63 ifTrue: [
            recoveredBlock39Block49PC := 70.
        ].
        recoveredBlock39Block49Step = 70 ifTrue: [
            recoveredBlock39Block49Stack1 := (recoveredBlock39Block49Stack1) at: (recoveredBlock39Block49Stack2) ifAbsentPut: (recoveredBlock39Block49Stack3).
            recoveredBlock39Block49PC := 72.
        ].
        recoveredBlock39Block49Step = 72 ifTrue: [
            recoveredBlock39Block49Stack2 := recoveredBlock39Block49Arg1.
            recoveredBlock39Block49PC := 73.
        ].
        recoveredBlock39Block49Step = 73 ifTrue: [
            recoveredBlock39Block49Stack1 := (recoveredBlock39Block49Stack1) add: (recoveredBlock39Block49Stack2).
            recoveredBlock39Block49PC := 75.
        ].
        recoveredBlock39Block49Step = 75 ifTrue: [
            recoveredBlock39Block49Result := recoveredBlock39Block49Stack1.
            recoveredBlock39Block49Done := true.
        ].
    ].
    recoveredBlock39Block49Result
].
    recoveredBlock39Value3 := (recoveredBlock39Value1) do: (recoveredBlock39Value2).
    recoveredBlock39Value3
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Stack0 recoveredBlock97Stack1 recoveredBlock97Stack2 recoveredBlock97Stack3 recoveredBlock97Stack4 recoveredBlock97Stack5 recoveredBlock97PC recoveredBlock97Step recoveredBlock97Done recoveredBlock97Result |
    recoveredBlock97Stack0 := self.
    recoveredBlock97PC := 104.
    recoveredBlock97Done := false.
    [recoveredBlock97Done not] whileTrue: [
        recoveredBlock97Step := recoveredBlock97PC.
        recoveredBlock97Step = 104 ifTrue: [
            recoveredBlock97Stack1 := EmImageSupport.
            recoveredBlock97PC := 106.
        ].
        recoveredBlock97Step = 106 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) errorReporter.
            recoveredBlock97PC := 108.
        ].
        recoveredBlock97Step = 108 ifTrue: [
            recoveredBlock97Stack2 := 195.
            recoveredBlock97PC := 112.
        ].
        recoveredBlock97Step = 112 ifTrue: [
            recoveredBlock97Stack3 := Array.
            recoveredBlock97PC := 114.
        ].
        recoveredBlock97Step = 114 ifTrue: [
            recoveredBlock97Stack4 := recoveredBlock97Arg1.
            recoveredBlock97PC := 115.
        ].
        recoveredBlock97Step = 115 ifTrue: [
            recoveredBlock97Stack4 := (recoveredBlock97Stack4) signature.
            recoveredBlock97PC := 117.
        ].
        recoveredBlock97Step = 117 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) with: (recoveredBlock97Stack4).
            recoveredBlock97PC := 119.
        ].
        recoveredBlock97Step = 119 ifTrue: [
            (recoveredBlock97Stack1) logError: (recoveredBlock97Stack2) withParms: (recoveredBlock97Stack3).
            recoveredBlock97PC := 121.
        ].
        recoveredBlock97Step = 121 ifTrue: [
            recoveredBlock97Stack1 := recoveredBlock97Arg1.
            recoveredBlock97PC := 122.
        ].
        recoveredBlock97Step = 122 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal2.
            recoveredBlock97PC := 125.
        ].
        recoveredBlock97Step = 125 ifTrue: [
            recoveredBlock97Stack3 := recoveredBlock97Arg1.
            recoveredBlock97PC := 126.
        ].
        recoveredBlock97Step = 126 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) name.
            recoveredBlock97PC := 127.
        ].
        recoveredBlock97Step = 127 ifTrue: [
            recoveredBlock97Stack4 := [
    #()
].
            recoveredBlock97PC := 129.
        ].
        recoveredBlock97Step = 129 ifTrue: [
            recoveredBlock97PC := 135.
        ].
        recoveredBlock97Step = 135 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) at: (recoveredBlock97Stack3) ifAbsent: (recoveredBlock97Stack4).
            recoveredBlock97PC := 137.
        ].
        recoveredBlock97Step = 137 ifTrue: [
            recoveredBlock97Stack3 := recoveredArg3.
            recoveredBlock97PC := 140.
        ].
        recoveredBlock97Step = 140 ifTrue: [
            recoveredBlock97Stack4 := recoveredArg4.
            recoveredBlock97PC := 143.
        ].
        recoveredBlock97Step = 143 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) moveDifferencesWith: (recoveredBlock97Stack2) from: (recoveredBlock97Stack3) to: (recoveredBlock97Stack4).
            recoveredBlock97PC := 146.
        ].
        recoveredBlock97Step = 146 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack1.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20023cd0; bytecode file offset 0x5fd4c"
!EmInterface methodsFor: 'recovered'!
reportEmptyClassExtensions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) errorLog.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := MxEMc52.
    (recoveredValue4) show: (recoveredValue5).
    (recoveredValue2) cr.
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) image.
    recoveredValue8 := (recoveredValue7) loadedSubApplications.
    recoveredValue9 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) extended.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block35Arg1 | 
    | recoveredBlock23Block35Stack0 recoveredBlock23Block35Stack1 recoveredBlock23Block35Stack2 recoveredBlock23Block35Stack3 recoveredBlock23Block35Stack4 recoveredBlock23Block35PC recoveredBlock23Block35Step recoveredBlock23Block35Done recoveredBlock23Block35Result |
    recoveredBlock23Block35Stack0 := nil.
    recoveredBlock23Block35PC := 42.
    recoveredBlock23Block35Done := false.
    [recoveredBlock23Block35Done not] whileTrue: [
        recoveredBlock23Block35Step := recoveredBlock23Block35PC.
        recoveredBlock23Block35Step = 42 ifTrue: [
            recoveredBlock23Block35Stack1 := false.
            recoveredBlock23Block35PC := 43.
        ].
        recoveredBlock23Block35Step = 43 ifTrue: [
            recoveredBlock23Block35Stack2 := recoveredBlock23Block35Arg1.
            recoveredBlock23Block35PC := 44.
        ].
        recoveredBlock23Block35Step = 44 ifTrue: [
            recoveredBlock23Block35Stack3 := recoveredBlock23Arg1.
            recoveredBlock23Block35PC := 47.
        ].
        recoveredBlock23Block35Step = 47 ifTrue: [
            recoveredBlock23Block35Stack2 := (recoveredBlock23Block35Stack2) methodNamesIn: (recoveredBlock23Block35Stack3).
            recoveredBlock23Block35PC := 49.
        ].
        recoveredBlock23Block35Step = 49 ifTrue: [
            recoveredBlock23Block35Stack2 := (recoveredBlock23Block35Stack2) isEmpty.
            recoveredBlock23Block35PC := 51.
        ].
        recoveredBlock23Block35Step = 51 ifTrue: [
            (recoveredBlock23Block35Stack2) ifTrue: [recoveredBlock23Block35PC := 54] ifFalse: [recoveredBlock23Block35PC := 65].
        ].
        recoveredBlock23Block35Step = 54 ifTrue: [
            recoveredBlock23Block35PC := 55.
        ].
        recoveredBlock23Block35Step = 55 ifTrue: [
            recoveredBlock23Block35Stack1 := recoveredBlock23Block35Arg1.
            recoveredBlock23Block35PC := 56.
        ].
        recoveredBlock23Block35Step = 56 ifTrue: [
            recoveredBlock23Block35Stack1 := (recoveredBlock23Block35Stack1) class.
            recoveredBlock23Block35PC := 58.
        ].
        recoveredBlock23Block35Step = 58 ifTrue: [
            recoveredBlock23Block35Stack2 := recoveredBlock23Arg1.
            recoveredBlock23Block35PC := 61.
        ].
        recoveredBlock23Block35Step = 61 ifTrue: [
            recoveredBlock23Block35Stack1 := (recoveredBlock23Block35Stack1) methodNamesIn: (recoveredBlock23Block35Stack2).
            recoveredBlock23Block35PC := 63.
        ].
        recoveredBlock23Block35Step = 63 ifTrue: [
            recoveredBlock23Block35Stack1 := (recoveredBlock23Block35Stack1) isEmpty.
            recoveredBlock23Block35PC := 65.
        ].
        recoveredBlock23Block35Step = 65 ifTrue: [
            recoveredBlock23Block35Result := recoveredBlock23Block35Stack1.
            recoveredBlock23Block35Done := true.
        ].
    ].
    recoveredBlock23Block35Result
].
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) select: (recoveredBlock23Stack2).
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 72.
        ].
        recoveredBlock23Step = 72 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 75.
        ].
        recoveredBlock23Step = 75 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) notEmpty.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 80] ifFalse: [recoveredBlock23PC := 141].
        ].
        recoveredBlock23Step = 80 ifTrue: [
            recoveredBlock23PC := 81.
        ].
        recoveredBlock23Step = 81 ifTrue: [
            recoveredBlock23Stack1 := System.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) image.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) errorLog.
            recoveredBlock23PC := 85.
        ].
        recoveredBlock23Step = 85 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 86.
        ].
        recoveredBlock23Step = 86 ifTrue: [
            (recoveredBlock23Stack2) tab.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 89.
        ].
        recoveredBlock23Step = 89 ifTrue: [
            recoveredBlock23Stack3 := MxEMc53.
            recoveredBlock23PC := 91.
        ].
        recoveredBlock23Step = 91 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 94.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) signature.
            recoveredBlock23PC := 96.
        ].
        recoveredBlock23Step = 96 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) bindWith: (recoveredBlock23Stack4).
            recoveredBlock23PC := 98.
        ].
        recoveredBlock23Step = 98 ifTrue: [
            (recoveredBlock23Stack2) show: (recoveredBlock23Stack3).
            recoveredBlock23PC := 100.
        ].
        recoveredBlock23Step = 100 ifTrue: [
            (recoveredBlock23Stack1) cr.
            recoveredBlock23PC := 102.
        ].
        recoveredBlock23Step = 102 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 105.
        ].
        recoveredBlock23Step = 105 ifTrue: [
            recoveredBlock23Stack2 := Class.
            recoveredBlock23PC := 107.
        ].
        recoveredBlock23Step = 107 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) sortBlock.
            recoveredBlock23PC := 109.
        ].
        recoveredBlock23Step = 109 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) asSortedCollection: (recoveredBlock23Stack2).
            recoveredBlock23PC := 111.
        ].
        recoveredBlock23Step = 111 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block111Arg1 | 
    | recoveredBlock23Block111Value0 recoveredBlock23Block111Value1 recoveredBlock23Block111Value2 recoveredBlock23Block111Value3 recoveredBlock23Block111Value4 recoveredBlock23Block111Value5 recoveredBlock23Block111Value6 recoveredBlock23Block111Value7 recoveredBlock23Block111Value8 recoveredBlock23Block111Value9 |
    recoveredBlock23Block111Value0 := System.
    recoveredBlock23Block111Value1 := (recoveredBlock23Block111Value0) image.
    recoveredBlock23Block111Value2 := (recoveredBlock23Block111Value1) errorLog.
    recoveredBlock23Block111Value3 := recoveredBlock23Block111Value2.
    (recoveredBlock23Block111Value3) tab.
    recoveredBlock23Block111Value4 := recoveredBlock23Block111Value2.
    (recoveredBlock23Block111Value4) tab.
    recoveredBlock23Block111Value5 := recoveredBlock23Block111Value2.
    recoveredBlock23Block111Value6 := recoveredBlock23Block111Arg1.
    recoveredBlock23Block111Value7 := recoveredBlock23Arg1.
    recoveredBlock23Block111Value8 := (recoveredBlock23Block111Value6) signatureIn: (recoveredBlock23Block111Value7).
    (recoveredBlock23Block111Value5) show: (recoveredBlock23Block111Value8).
    recoveredBlock23Block111Value9 := (recoveredBlock23Block111Value2) cr.
    recoveredBlock23Block111Value9
].
            recoveredBlock23PC := 139.
        ].
        recoveredBlock23Step = 139 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) do: (recoveredBlock23Stack2).
            recoveredBlock23PC := 141.
        ].
        recoveredBlock23Step = 141 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := System.
    recoveredValue11 := (recoveredValue10) image.
    recoveredValue12 := (recoveredValue11) errorLog.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := MxEMc35.
    (recoveredValue13) show: (recoveredValue14).
    (recoveredValue12) cr.
    ^self
! !

"lib.ic method 0x200248c0; bytecode file offset 0x60938"
!EmInterface methodsFor: 'recovered'!
modifyUserCalled: recoveredArg1 fullName: recoveredArg2 networkName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := MxEMc45.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 |
    recoveredBlock60Value0 := System.
    recoveredBlock60Value1 := MxEMc46.
    recoveredBlock60Value2 := recoveredLocal3.
    recoveredBlock60Value3 := EmLibrary.
    recoveredBlock60Value4 := (recoveredBlock60Value3) default.
    recoveredBlock60Value5 := (recoveredBlock60Value4) fullName.
    recoveredBlock60Value6 := (recoveredBlock60Value1) bindWith: (recoveredBlock60Value2) with: (recoveredBlock60Value5).
    recoveredBlock60Value7 := (recoveredBlock60Value0) errorMessage: (recoveredBlock60Value6).
    ^recoveredBlock60Value7
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) called: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullName.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) named: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := MxEMc47.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) fullName: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) networkName.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) networkName: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) allUsers.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002526c; bytecode file offset 0x612e8"
!EmInterface methodsFor: 'recovered'!
cachedConfigMapVersionNameInfoFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'cachedConfigMapVersionNameInfoFor:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block28005278Value0 block28005278Value1 |
    block28005278Value0 := Dictionary.
    block28005278Value1 := (block28005278Value0) new.
    block28005278Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := Set.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) new.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredLocal5 := recoveredBlock22Stack1.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := EmConfigurationMap.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) name.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) editionsDictionaryFor: (recoveredBlock22Stack2).
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredLocal4 := recoveredBlock22Stack1.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal4.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack2 := [:recoveredBlock22Block50Arg1 | 
    | recoveredBlock22Block50Stack0 recoveredBlock22Block50Stack1 recoveredBlock22Block50Stack2 recoveredBlock22Block50Stack3 recoveredBlock22Block50PC recoveredBlock22Block50Step recoveredBlock22Block50Done recoveredBlock22Block50Result |
    recoveredBlock22Block50Stack0 := nil.
    recoveredBlock22Block50PC := 56.
    recoveredBlock22Block50Done := false.
    [recoveredBlock22Block50Done not] whileTrue: [
        recoveredBlock22Block50Step := recoveredBlock22Block50PC.
        recoveredBlock22Block50Step = 56 ifTrue: [
            recoveredBlock22Block50Stack1 := nil.
            recoveredBlock22Block50PC := 57.
        ].
        recoveredBlock22Block50Step = 57 ifTrue: [
            recoveredBlock22Block50Stack2 := recoveredBlock22Block50Arg1.
            recoveredBlock22Block50PC := 58.
        ].
        recoveredBlock22Block50Step = 58 ifTrue: [
            recoveredBlock22Block50Stack2 := (recoveredBlock22Block50Stack2) isVersion.
            recoveredBlock22Block50PC := 60.
        ].
        recoveredBlock22Block50Step = 60 ifTrue: [
            (recoveredBlock22Block50Stack2) ifTrue: [recoveredBlock22Block50PC := 64] ifFalse: [recoveredBlock22Block50PC := 73].
        ].
        recoveredBlock22Block50Step = 64 ifTrue: [
            recoveredBlock22Block50PC := 65.
        ].
        recoveredBlock22Block50Step = 65 ifTrue: [
            recoveredBlock22Block50Stack1 := recoveredLocal5.
            recoveredBlock22Block50PC := 68.
        ].
        recoveredBlock22Block50Step = 68 ifTrue: [
            recoveredBlock22Block50Stack2 := recoveredBlock22Block50Arg1.
            recoveredBlock22Block50PC := 69.
        ].
        recoveredBlock22Block50Step = 69 ifTrue: [
            recoveredBlock22Block50Stack2 := (recoveredBlock22Block50Stack2) versionName.
            recoveredBlock22Block50PC := 71.
        ].
        recoveredBlock22Block50Step = 71 ifTrue: [
            recoveredBlock22Block50Stack1 := (recoveredBlock22Block50Stack1) add: (recoveredBlock22Block50Stack2).
            recoveredBlock22Block50PC := 73.
        ].
        recoveredBlock22Block50Step = 73 ifTrue: [
            recoveredBlock22Block50Result := recoveredBlock22Block50Stack1.
            recoveredBlock22Block50Done := true.
        ].
    ].
    recoveredBlock22Block50Result
].
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            (recoveredBlock22Stack1) do: (recoveredBlock22Stack2).
            recoveredBlock22PC := 76.
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal5.
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isEmpty.
            recoveredBlock22PC := 81.
        ].
        recoveredBlock22Step = 81 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 84] ifFalse: [recoveredBlock22PC := 92].
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack1 := EmConfigurationMap.
            recoveredBlock22PC := 86.
        ].
        recoveredBlock22Step = 86 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) initialVersionName.
            recoveredBlock22PC := 88.
        ].
        recoveredBlock22Step = 88 ifTrue: [
            recoveredBlock22PC := 155.
        ].
        recoveredBlock22Step = 92 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 95.
        ].
        recoveredBlock22Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 98.
        ].
        recoveredBlock22Step = 98 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal4.
            recoveredBlock22PC := 101.
        ].
        recoveredBlock22Step = 101 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal2.
            recoveredBlock22PC := 104.
        ].
        recoveredBlock22Step = 104 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) previousTimeStamp.
            recoveredBlock22PC := 106.
        ].
        recoveredBlock22Step = 106 ifTrue: [
            recoveredBlock22Stack3 := [].
            recoveredBlock22PC := 108.
        ].
        recoveredBlock22Step = 108 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) ifAbsent: (recoveredBlock22Stack3).
            recoveredBlock22PC := 110.
        ].
        recoveredBlock22Step = 110 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 113.
        ].
        recoveredBlock22Step = 113 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 116.
        ].
        recoveredBlock22Step = 116 ifTrue: [
            (recoveredBlock22Stack1 == nil) ifTrue: [recoveredBlock22PC := 133] ifFalse: [recoveredBlock22PC := 120].
        ].
        recoveredBlock22Step = 120 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 123.
        ].
        recoveredBlock22Step = 123 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) versionName.
            recoveredBlock22PC := 125.
        ].
        recoveredBlock22Step = 125 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 126.
        ].
        recoveredBlock22Step = 126 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 129.
        ].
        recoveredBlock22Step = 129 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isEmpty.
            recoveredBlock22PC := 131.
        ].
        recoveredBlock22Step = 131 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 98] ifFalse: [recoveredBlock22PC := 133].
        ].
        recoveredBlock22Step = 133 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 136.
        ].
        recoveredBlock22Step = 136 ifTrue: [
            (recoveredBlock22Stack1 ~~ nil) ifTrue: [recoveredBlock22PC := 146] ifFalse: [recoveredBlock22PC := 140].
        ].
        recoveredBlock22Step = 140 ifTrue: [
            recoveredBlock22Stack1 := ''.
            recoveredBlock22PC := 142.
        ].
        recoveredBlock22Step = 142 ifTrue: [
            recoveredBlock22PC := 155.
        ].
        recoveredBlock22Step = 146 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 147.
        ].
        recoveredBlock22Step = 147 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 150.
        ].
        recoveredBlock22Step = 150 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal5.
            recoveredBlock22PC := 153.
        ].
        recoveredBlock22Step = 153 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) nextVersionNameAfter: (recoveredBlock22Stack2) avoiding: (recoveredBlock22Stack3).
            recoveredBlock22PC := 155.
        ].
        recoveredBlock22Step = 155 ifTrue: [
            recoveredLocal3 := recoveredBlock22Stack1.
            recoveredBlock22PC := 158.
        ].
        recoveredBlock22Step = 158 ifTrue: [
            recoveredBlock22Stack1 := Array.
            recoveredBlock22PC := 160.
        ].
        recoveredBlock22Step = 160 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal3.
            recoveredBlock22PC := 163.
        ].
        recoveredBlock22Step = 163 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal5.
            recoveredBlock22PC := 166.
        ].
        recoveredBlock22Step = 166 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) with: (recoveredBlock22Stack2) with: (recoveredBlock22Stack3).
            recoveredBlock22PC := 168.
        ].
        recoveredBlock22Step = 168 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20025cd0; bytecode file offset 0x61d3c"
!EmInterface methodsFor: 'recovered'!
extend: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) defined.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := MxEMc39.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) extended.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := MxEMc40.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) controller.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootApplication.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBasedOn: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) controller.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootApplication.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := MxEMc41.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembersFor: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := MxEMc42.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'Extended'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEditionOf: (recoveredStack1) type: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20025dd8; bytecode file offset 0x61e54"
!EmInterface methodsFor: 'recovered'!
cachedApplicationVersionNameInfoFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'cachedApplicationVersionNameInfoFor:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280052c0Value0 block280052c0Value1 |
    block280052c0Value0 := Dictionary.
    block280052c0Value1 := (block280052c0Value0) new.
    block280052c0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := Set.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) new.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredLocal5 := recoveredBlock22Stack1.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := Dictionary.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) new.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredLocal4 := recoveredBlock22Stack1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) shadows.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22Stack2 := [:recoveredBlock22Block47Arg1 | 
    | recoveredBlock22Block47Value0 recoveredBlock22Block47Value1 recoveredBlock22Block47Value2 recoveredBlock22Block47Value3 recoveredBlock22Block47Value4 recoveredBlock22Block47Value5 recoveredBlock22Block47Value6 recoveredBlock22Block47Value7 |
    recoveredBlock22Block47Value0 := recoveredLocal4.
    recoveredBlock22Block47Value1 := recoveredBlock22Block47Arg1.
    recoveredBlock22Block47Value2 := (recoveredBlock22Block47Value1) timeStamp.
    recoveredBlock22Block47Value3 := recoveredBlock22Block47Arg1.
    (recoveredBlock22Block47Value0) at: (recoveredBlock22Block47Value2) put: (recoveredBlock22Block47Value3).
    recoveredBlock22Block47Value4 := recoveredLocal5.
    recoveredBlock22Block47Value5 := recoveredBlock22Block47Arg1.
    recoveredBlock22Block47Value6 := (recoveredBlock22Block47Value5) versionName.
    recoveredBlock22Block47Value7 := (recoveredBlock22Block47Value4) add: (recoveredBlock22Block47Value6).
    recoveredBlock22Block47Value7
].
            recoveredBlock22PC := 72.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            (recoveredBlock22Stack1) do: (recoveredBlock22Stack2).
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal5.
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack2 := ''.
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack3 := [].
            recoveredBlock22PC := 81.
        ].
        recoveredBlock22Step = 81 ifTrue: [
            (recoveredBlock22Stack1) remove: (recoveredBlock22Stack2) ifAbsent: (recoveredBlock22Stack3).
            recoveredBlock22PC := 83.
        ].
        recoveredBlock22Step = 83 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal5.
            recoveredBlock22PC := 86.
        ].
        recoveredBlock22Step = 86 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isEmpty.
            recoveredBlock22PC := 88.
        ].
        recoveredBlock22Step = 88 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 92] ifFalse: [recoveredBlock22PC := 100].
        ].
        recoveredBlock22Step = 92 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 95.
        ].
        recoveredBlock22Step = 95 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) initialVersionName.
            recoveredBlock22PC := 97.
        ].
        recoveredBlock22Step = 97 ifTrue: [
            recoveredBlock22PC := 163.
        ].
        recoveredBlock22Step = 100 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 103.
        ].
        recoveredBlock22Step = 103 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 106.
        ].
        recoveredBlock22Step = 106 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal4.
            recoveredBlock22PC := 109.
        ].
        recoveredBlock22Step = 109 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal2.
            recoveredBlock22PC := 112.
        ].
        recoveredBlock22Step = 112 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) previousTimeStamp.
            recoveredBlock22PC := 114.
        ].
        recoveredBlock22Step = 114 ifTrue: [
            recoveredBlock22Stack3 := [].
            recoveredBlock22PC := 116.
        ].
        recoveredBlock22Step = 116 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) ifAbsent: (recoveredBlock22Stack3).
            recoveredBlock22PC := 118.
        ].
        recoveredBlock22Step = 118 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 121.
        ].
        recoveredBlock22Step = 121 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 124.
        ].
        recoveredBlock22Step = 124 ifTrue: [
            (recoveredBlock22Stack1 == nil) ifTrue: [recoveredBlock22PC := 141] ifFalse: [recoveredBlock22PC := 128].
        ].
        recoveredBlock22Step = 128 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 131.
        ].
        recoveredBlock22Step = 131 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) versionName.
            recoveredBlock22PC := 133.
        ].
        recoveredBlock22Step = 133 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 134.
        ].
        recoveredBlock22Step = 134 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 137.
        ].
        recoveredBlock22Step = 137 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isEmpty.
            recoveredBlock22PC := 139.
        ].
        recoveredBlock22Step = 139 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 106] ifFalse: [recoveredBlock22PC := 141].
        ].
        recoveredBlock22Step = 141 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 144.
        ].
        recoveredBlock22Step = 144 ifTrue: [
            (recoveredBlock22Stack1 ~~ nil) ifTrue: [recoveredBlock22PC := 154] ifFalse: [recoveredBlock22PC := 148].
        ].
        recoveredBlock22Step = 148 ifTrue: [
            recoveredBlock22Stack1 := ''.
            recoveredBlock22PC := 150.
        ].
        recoveredBlock22Step = 150 ifTrue: [
            recoveredBlock22PC := 163.
        ].
        recoveredBlock22Step = 154 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 155.
        ].
        recoveredBlock22Step = 155 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 158.
        ].
        recoveredBlock22Step = 158 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal5.
            recoveredBlock22PC := 161.
        ].
        recoveredBlock22Step = 161 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) nextVersionNameAfter: (recoveredBlock22Stack2) avoiding: (recoveredBlock22Stack3).
            recoveredBlock22PC := 163.
        ].
        recoveredBlock22Step = 163 ifTrue: [
            recoveredLocal3 := recoveredBlock22Stack1.
            recoveredBlock22PC := 166.
        ].
        recoveredBlock22Step = 166 ifTrue: [
            recoveredBlock22Stack1 := Array.
            recoveredBlock22PC := 168.
        ].
        recoveredBlock22Step = 168 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal3.
            recoveredBlock22PC := 171.
        ].
        recoveredBlock22Step = 171 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal5.
            recoveredBlock22PC := 174.
        ].
        recoveredBlock22Step = 174 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) with: (recoveredBlock22Stack2) with: (recoveredBlock22Stack3).
            recoveredBlock22PC := 176.
        ].
        recoveredBlock22Step = 176 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20026b34; bytecode file offset 0x62b8c"
!EmInterface methodsFor: 'recovered'!
methodsDefinedBy: recoveredArg1 upto: recoveredArg2 categorizedIn: recoveredArg3 all: recoveredArg4 includeInherited: recoveredArg5 filter: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsDefinedBy: (recoveredStack1) categorizedIn: (recoveredStack2) all: (recoveredStack3) controlledBy: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectors.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsDefinedBy: (recoveredStack1) categorizedIn: (recoveredStack2) all: (recoveredStack3) controlledBy: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Stack0 recoveredBlock97Stack1 recoveredBlock97Stack2 recoveredBlock97Stack3 recoveredBlock97Stack4 recoveredBlock97PC recoveredBlock97Step recoveredBlock97Done recoveredBlock97Result |
    recoveredBlock97Stack0 := self.
    recoveredBlock97PC := 104.
    recoveredBlock97Done := false.
    [recoveredBlock97Done not] whileTrue: [
        recoveredBlock97Step := recoveredBlock97PC.
        recoveredBlock97Step = 104 ifTrue: [
            recoveredBlock97Stack1 := nil.
            recoveredBlock97PC := 105.
        ].
        recoveredBlock97Step = 105 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal3.
            recoveredBlock97PC := 108.
        ].
        recoveredBlock97Step = 108 ifTrue: [
            recoveredBlock97Stack3 := recoveredBlock97Arg1.
            recoveredBlock97PC := 109.
        ].
        recoveredBlock97Step = 109 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) selector.
            recoveredBlock97PC := 111.
        ].
        recoveredBlock97Step = 111 ifTrue: [
            recoveredBlock97Stack2 := (recoveredBlock97Stack2) includes: (recoveredBlock97Stack3).
            recoveredBlock97PC := 113.
        ].
        recoveredBlock97Step = 113 ifTrue: [
            (recoveredBlock97Stack2) ifTrue: [recoveredBlock97PC := 123] ifFalse: [recoveredBlock97PC := 116].
        ].
        recoveredBlock97Step = 116 ifTrue: [
            recoveredBlock97PC := 117.
        ].
        recoveredBlock97Step = 117 ifTrue: [
            recoveredBlock97Stack1 := recoveredLocal4.
            recoveredBlock97PC := 120.
        ].
        recoveredBlock97Step = 120 ifTrue: [
            recoveredBlock97Stack2 := recoveredBlock97Arg1.
            recoveredBlock97PC := 121.
        ].
        recoveredBlock97Step = 121 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) add: (recoveredBlock97Stack2).
            recoveredBlock97PC := 123.
        ].
        recoveredBlock97Step = 123 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack1.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectors.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredArg6.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 'public'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) publicMethodsFrom: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredArg6.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := 'private'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateMethodsFrom: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMethodsFrom: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002731c; bytecode file offset 0x633a8"
!EmInterface methodsFor: 'recovered'!
reportClassesUsingPool: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorLog.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := MxEMc50.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:block28005350Arg1 :block28005350Arg2 | 
    | block28005350Value0 block28005350Value1 block28005350Value2 block28005350Value3 block28005350Value4 |
    block28005350Value0 := block28005350Arg1.
    block28005350Value1 := (block28005350Value0) name.
    block28005350Value2 := block28005350Arg2.
    block28005350Value3 := (block28005350Value2) name.
    block28005350Value4 := (block28005350Value1) < (block28005350Value3).
    block28005350Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) classHierarchyRoots.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) sharedPoolNames.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) subclasses.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := nil.
            recoveredBlock93PC := 101.
        ].
        recoveredBlock93Step = 101 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg1.
            recoveredBlock93PC := 102.
        ].
        recoveredBlock93Step = 102 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) isClass.
            recoveredBlock93PC := 104.
        ].
        recoveredBlock93Step = 104 ifTrue: [
            (recoveredBlock93Stack2) ifTrue: [recoveredBlock93PC := 108] ifFalse: [recoveredBlock93PC := 115].
        ].
        recoveredBlock93Step = 108 ifTrue: [
            recoveredBlock93PC := 109.
        ].
        recoveredBlock93Step = 109 ifTrue: [
            recoveredBlock93Stack1 := recoveredLocal2.
            recoveredBlock93PC := 112.
        ].
        recoveredBlock93Step = 112 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg1.
            recoveredBlock93PC := 113.
        ].
        recoveredBlock93Step = 113 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) addLast: (recoveredBlock93Stack2).
            recoveredBlock93PC := 115.
        ].
        recoveredBlock93Step = 115 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [:block28005374Arg1 | 
    | block28005374Stack0 block28005374Stack1 block28005374Stack2 block28005374Stack3 block28005374Stack4 block28005374Stack5 block28005374PC block28005374Step block28005374Done block28005374Result |
    block28005374Stack0 := self.
    block28005374PC := 4.
    block28005374Done := false.
    [block28005374Done not] whileTrue: [
        block28005374Step := block28005374PC.
        block28005374Step = 4 ifTrue: [
            block28005374Stack1 := block28005374Arg1.
            block28005374PC := 5.
        ].
        block28005374Step = 5 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) subclasses.
            block28005374PC := 7.
        ].
        block28005374Step = 7 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) isEmpty.
            block28005374PC := 9.
        ].
        block28005374Step = 9 ifTrue: [
            (block28005374Stack1) ifTrue: [block28005374PC := 12] ifFalse: [block28005374PC := 30].
        ].
        block28005374Step = 12 ifTrue: [
            block28005374Stack1 := System.
            block28005374PC := 14.
        ].
        block28005374Step = 14 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) image.
            block28005374PC := 15.
        ].
        block28005374Step = 15 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) errorLog.
            block28005374PC := 16.
        ].
        block28005374Step = 16 ifTrue: [
            block28005374Stack2 := block28005374Stack1.
            block28005374PC := 17.
        ].
        block28005374Step = 17 ifTrue: [
            (block28005374Stack2) tab.
            block28005374Stack2 := block28005374Stack1.
            block28005374PC := 20.
        ].
        block28005374Step = 20 ifTrue: [
            block28005374Stack3 := block28005374Arg1.
            block28005374PC := 21.
        ].
        block28005374Step = 21 ifTrue: [
            block28005374Stack3 := (block28005374Stack3) name.
            block28005374PC := 23.
        ].
        block28005374Step = 23 ifTrue: [
            (block28005374Stack2) show: (block28005374Stack3).
            block28005374PC := 25.
        ].
        block28005374Step = 25 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) cr.
            block28005374PC := 26.
        ].
        block28005374Step = 26 ifTrue: [
            block28005374PC := 48.
        ].
        block28005374Step = 30 ifTrue: [
            block28005374Stack1 := System.
            block28005374PC := 32.
        ].
        block28005374Step = 32 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) image.
            block28005374PC := 33.
        ].
        block28005374Step = 33 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) errorLog.
            block28005374PC := 34.
        ].
        block28005374Step = 34 ifTrue: [
            block28005374Stack2 := block28005374Stack1.
            block28005374PC := 35.
        ].
        block28005374Step = 35 ifTrue: [
            (block28005374Stack2) tab.
            block28005374Stack2 := block28005374Stack1.
            block28005374PC := 38.
        ].
        block28005374Step = 38 ifTrue: [
            block28005374Stack3 := MxEMc51.
            block28005374PC := 40.
        ].
        block28005374Step = 40 ifTrue: [
            block28005374Stack4 := block28005374Arg1.
            block28005374PC := 41.
        ].
        block28005374Step = 41 ifTrue: [
            block28005374Stack4 := (block28005374Stack4) name.
            block28005374PC := 43.
        ].
        block28005374Step = 43 ifTrue: [
            block28005374Stack3 := (block28005374Stack3) bindWith: (block28005374Stack4).
            block28005374PC := 45.
        ].
        block28005374Step = 45 ifTrue: [
            (block28005374Stack2) show: (block28005374Stack3).
            block28005374PC := 47.
        ].
        block28005374Step = 47 ifTrue: [
            block28005374Stack1 := (block28005374Stack1) cr.
            block28005374PC := 48.
        ].
        block28005374Step = 48 ifTrue: [
            block28005374Result := block28005374Stack1.
            block28005374Done := true.
        ].
    ].
    block28005374Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorLog.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := MxEMc35.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200278f4; bytecode file offset 0x6396c"
!EmInterface methodsFor: 'recovered'!
recomputeUndefinedClassesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEdition: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecordFor: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) namesAndTypes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := recoveredLocal1.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value1) symbol.
    recoveredBlock37Value3 := (recoveredBlock37Value0) add: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) extended.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 |
    recoveredBlock60Value0 := recoveredLocal1.
    recoveredBlock60Value1 := recoveredBlock60Arg1.
    recoveredBlock60Value2 := (recoveredBlock60Value1) symbol.
    recoveredBlock60Value3 := (recoveredBlock60Value0) add: (recoveredBlock60Value2).
    recoveredBlock60Value3
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefined.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84Stack4 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal2.
            recoveredBlock84PC := 93.
        ].
        recoveredBlock84Step = 93 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 94.
        ].
        recoveredBlock84Step = 94 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) symbol.
            recoveredBlock84PC := 96.
        ].
        recoveredBlock84Step = 96 ifTrue: [
            recoveredBlock84Stack3 := [
    'Deleted'
].
            recoveredBlock84PC := 98.
        ].
        recoveredBlock84Step = 98 ifTrue: [
            recoveredBlock84PC := 105.
        ].
        recoveredBlock84Step = 105 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) at: (recoveredBlock84Stack2) ifAbsent: (recoveredBlock84Stack3).
            recoveredBlock84PC := 107.
        ].
        recoveredBlock84Step = 107 ifTrue: [
            recoveredBlock84Stack2 := 'Deleted'.
            recoveredBlock84PC := 109.
        ].
        recoveredBlock84Step = 109 ifTrue: [
            (recoveredBlock84Stack1 ~~ recoveredBlock84Stack2) ifTrue: [recoveredBlock84PC := 124] ifFalse: [recoveredBlock84PC := 112].
        ].
        recoveredBlock84Step = 112 ifTrue: [
            recoveredBlock84Stack1 := recoveredArg1.
            recoveredBlock84PC := 115.
        ].
        recoveredBlock84Step = 115 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) undefined.
            recoveredBlock84PC := 117.
        ].
        recoveredBlock84Step = 117 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 118.
        ].
        recoveredBlock84Step = 118 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) remove: (recoveredBlock84Stack2).
            recoveredBlock84PC := 120.
        ].
        recoveredBlock84Step = 120 ifTrue: [
            recoveredBlock84PC := 132.
        ].
        recoveredBlock84Step = 124 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal1.
            recoveredBlock84PC := 127.
        ].
        recoveredBlock84Step = 127 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 128.
        ].
        recoveredBlock84Step = 128 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) symbol.
            recoveredBlock84PC := 130.
        ].
        recoveredBlock84Step = 130 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) add: (recoveredBlock84Stack2).
            recoveredBlock84PC := 132.
        ].
        recoveredBlock84Step = 132 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack1.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := [:recoveredBlock153Arg1 | 
    | recoveredBlock153Stack0 recoveredBlock153Stack1 recoveredBlock153Stack2 recoveredBlock153Stack3 recoveredBlock153Stack4 recoveredBlock153PC recoveredBlock153Step recoveredBlock153Done recoveredBlock153Result |
    recoveredBlock153Stack0 := self.
    recoveredBlock153PC := 160.
    recoveredBlock153Done := false.
    [recoveredBlock153Done not] whileTrue: [
        recoveredBlock153Step := recoveredBlock153PC.
        recoveredBlock153Step = 160 ifTrue: [
            recoveredBlock153Stack1 := nil.
            recoveredBlock153PC := 161.
        ].
        recoveredBlock153Step = 161 ifTrue: [
            recoveredBlock153Stack2 := recoveredBlock153Arg1.
            recoveredBlock153PC := 162.
        ].
        recoveredBlock153Step = 162 ifTrue: [
            recoveredBlock153Stack2 := (recoveredBlock153Stack2) value.
            recoveredBlock153PC := 164.
        ].
        recoveredBlock153Step = 164 ifTrue: [
            recoveredBlock153Stack3 := 'Deleted'.
            recoveredBlock153PC := 166.
        ].
        recoveredBlock153Step = 166 ifTrue: [
            (recoveredBlock153Stack2 == recoveredBlock153Stack3) ifTrue: [recoveredBlock153PC := 191] ifFalse: [recoveredBlock153PC := 170].
        ].
        recoveredBlock153Step = 170 ifTrue: [
            recoveredBlock153Stack2 := recoveredLocal1.
            recoveredBlock153PC := 173.
        ].
        recoveredBlock153Step = 173 ifTrue: [
            recoveredBlock153Stack3 := recoveredBlock153Arg1.
            recoveredBlock153PC := 174.
        ].
        recoveredBlock153Step = 174 ifTrue: [
            recoveredBlock153Stack3 := (recoveredBlock153Stack3) key.
            recoveredBlock153PC := 176.
        ].
        recoveredBlock153Step = 176 ifTrue: [
            recoveredBlock153Stack2 := (recoveredBlock153Stack2) includes: (recoveredBlock153Stack3).
            recoveredBlock153PC := 178.
        ].
        recoveredBlock153Step = 178 ifTrue: [
            (recoveredBlock153Stack2) ifTrue: [recoveredBlock153PC := 191] ifFalse: [recoveredBlock153PC := 182].
        ].
        recoveredBlock153Step = 182 ifTrue: [
            recoveredBlock153PC := 183.
        ].
        recoveredBlock153Step = 183 ifTrue: [
            recoveredBlock153Stack1 := recoveredArg1.
            recoveredBlock153PC := 186.
        ].
        recoveredBlock153Step = 186 ifTrue: [
            recoveredBlock153Stack2 := recoveredBlock153Arg1.
            recoveredBlock153PC := 187.
        ].
        recoveredBlock153Step = 187 ifTrue: [
            recoveredBlock153Stack2 := (recoveredBlock153Stack2) key.
            recoveredBlock153PC := 189.
        ].
        recoveredBlock153Step = 189 ifTrue: [
            recoveredBlock153Stack1 := (recoveredBlock153Stack1) addUndefined: (recoveredBlock153Stack2).
            recoveredBlock153PC := 191.
        ].
        recoveredBlock153Step = 191 ifTrue: [
            recoveredBlock153Result := recoveredBlock153Stack1.
            recoveredBlock153Done := true.
        ].
    ].
    recoveredBlock153Result
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200280fc; bytecode file offset 0x64168"
!EmInterface methodsFor: 'recovered'!
requiredDependentApplicationsIncludingReferencesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) withAllSubApplications.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) defined.
    recoveredBlock14Value2 := [:recoveredBlock14Block24Arg1 | 
    | recoveredBlock14Block24Stack0 recoveredBlock14Block24Stack1 recoveredBlock14Block24Stack2 recoveredBlock14Block24Stack3 recoveredBlock14Block24Stack4 recoveredBlock14Block24PC recoveredBlock14Block24Step recoveredBlock14Block24Done recoveredBlock14Block24Result |
    recoveredBlock14Block24Stack0 := nil.
    recoveredBlock14Block24PC := 30.
    recoveredBlock14Block24Done := false.
    [recoveredBlock14Block24Done not] whileTrue: [
        recoveredBlock14Block24Step := recoveredBlock14Block24PC.
        recoveredBlock14Block24Step = 30 ifTrue: [
            recoveredBlock14Block24Stack1 := nil.
            recoveredBlock14Block24PC := 31.
        ].
        recoveredBlock14Block24Step = 31 ifTrue: [
            recoveredBlock14Block24Stack2 := recoveredBlock14Block24Arg1.
            recoveredBlock14Block24PC := 32.
        ].
        recoveredBlock14Block24Step = 32 ifTrue: [
            recoveredBlock14Block24Stack2 := (recoveredBlock14Block24Stack2) superclass.
            recoveredBlock14Block24PC := 34.
        ].
        recoveredBlock14Block24Step = 34 ifTrue: [
            recoveredBlock14Block24Stack3 := recoveredBlock14Block24Stack2.
            recoveredBlock14Block24PC := 35.
        ].
        recoveredBlock14Block24Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock14Block24Stack3.
            recoveredBlock14Block24PC := 38.
        ].
        recoveredBlock14Block24Step = 38 ifTrue: [
            (recoveredBlock14Block24Stack2 == nil) ifTrue: [recoveredBlock14Block24PC := 55] ifFalse: [recoveredBlock14Block24PC := 42].
        ].
        recoveredBlock14Block24Step = 42 ifTrue: [
            recoveredBlock14Block24PC := 43.
        ].
        recoveredBlock14Block24Step = 43 ifTrue: [
            recoveredBlock14Block24Stack1 := recoveredLocal2.
            recoveredBlock14Block24PC := 46.
        ].
        recoveredBlock14Block24Step = 46 ifTrue: [
            recoveredBlock14Block24Stack2 := recoveredLocal1.
            recoveredBlock14Block24PC := 49.
        ].
        recoveredBlock14Block24Step = 49 ifTrue: [
            recoveredBlock14Block24Stack2 := (recoveredBlock14Block24Stack2) controller.
            recoveredBlock14Block24PC := 51.
        ].
        recoveredBlock14Block24Step = 51 ifTrue: [
            recoveredBlock14Block24Stack2 := (recoveredBlock14Block24Stack2) rootApplication.
            recoveredBlock14Block24PC := 53.
        ].
        recoveredBlock14Block24Step = 53 ifTrue: [
            recoveredBlock14Block24Stack1 := (recoveredBlock14Block24Stack1) add: (recoveredBlock14Block24Stack2).
            recoveredBlock14Block24PC := 55.
        ].
        recoveredBlock14Block24Step = 55 ifTrue: [
            recoveredBlock14Block24Result := recoveredBlock14Block24Stack1.
            recoveredBlock14Block24Done := true.
        ].
    ].
    recoveredBlock14Block24Result
].
    (recoveredBlock14Value1) do: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredBlock14Arg1.
    recoveredBlock14Value4 := (recoveredBlock14Value3) extended.
    recoveredBlock14Value5 := [:recoveredBlock14Block63Arg1 | 
    | recoveredBlock14Block63Value0 recoveredBlock14Block63Value1 recoveredBlock14Block63Value2 recoveredBlock14Block63Value3 recoveredBlock14Block63Value4 |
    recoveredBlock14Block63Value0 := recoveredLocal2.
    recoveredBlock14Block63Value1 := recoveredBlock14Block63Arg1.
    recoveredBlock14Block63Value2 := (recoveredBlock14Block63Value1) controller.
    recoveredBlock14Block63Value3 := (recoveredBlock14Block63Value2) rootApplication.
    recoveredBlock14Block63Value4 := (recoveredBlock14Block63Value0) add: (recoveredBlock14Block63Value3).
    recoveredBlock14Block63Value4
].
    (recoveredBlock14Value4) do: (recoveredBlock14Value5).
    recoveredBlock14Value6 := recoveredBlock14Arg1.
    recoveredBlock14Value7 := (recoveredBlock14Value6) defined.
    recoveredBlock14Value8 := recoveredBlock14Arg1.
    recoveredBlock14Value9 := (recoveredBlock14Value8) extended.
    recoveredBlock14Value10 := (recoveredBlock14Value9) asArray.
    recoveredBlock14Value11 := (recoveredBlock14Value7) , (recoveredBlock14Value10).
    recoveredBlock14Value12 := [:recoveredBlock14Block96Arg1 | 
    | recoveredBlock14Block96Value0 recoveredBlock14Block96Value1 recoveredBlock14Block96Value2 recoveredBlock14Block96Value3 recoveredBlock14Block96Value4 recoveredBlock14Block96Value5 recoveredBlock14Block96Value6 recoveredBlock14Block96Value7 recoveredBlock14Block96Value8 recoveredBlock14Block96Value9 |
    recoveredBlock14Block96Value0 := recoveredBlock14Block96Arg1.
    recoveredBlock14Block96Value1 := (recoveredBlock14Block96Value0) class.
    recoveredBlock14Block96Value2 := recoveredBlock14Arg1.
    recoveredBlock14Block96Value3 := (recoveredBlock14Block96Value1) methodsIn: (recoveredBlock14Block96Value2).
    recoveredBlock14Block96Value4 := recoveredBlock14Block96Arg1.
    recoveredBlock14Block96Value5 := recoveredBlock14Arg1.
    recoveredBlock14Block96Value6 := (recoveredBlock14Block96Value4) methodsIn: (recoveredBlock14Block96Value5).
    recoveredBlock14Block96Value7 := (recoveredBlock14Block96Value3) , (recoveredBlock14Block96Value6).
    recoveredBlock14Block96Value8 := [:recoveredBlock14Block96Block118Arg1 | 
    | recoveredBlock14Block96Block118Value0 recoveredBlock14Block96Block118Value1 recoveredBlock14Block96Block118Value2 recoveredBlock14Block96Block118Value3 |
    recoveredBlock14Block96Block118Value0 := recoveredBlock14Block96Block118Arg1.
    recoveredBlock14Block96Block118Value1 := (recoveredBlock14Block96Block118Value0) referencedClasses.
    recoveredBlock14Block96Block118Value2 := [:recoveredBlock14Block96Block118Block127Arg1 | 
    | recoveredBlock14Block96Block118Block127Value0 recoveredBlock14Block96Block118Block127Value1 recoveredBlock14Block96Block118Block127Value2 recoveredBlock14Block96Block118Block127Value3 recoveredBlock14Block96Block118Block127Value4 |
    recoveredBlock14Block96Block118Block127Value0 := recoveredLocal2.
    recoveredBlock14Block96Block118Block127Value1 := recoveredBlock14Block96Block118Block127Arg1.
    recoveredBlock14Block96Block118Block127Value2 := (recoveredBlock14Block96Block118Block127Value1) controller.
    recoveredBlock14Block96Block118Block127Value3 := (recoveredBlock14Block96Block118Block127Value2) rootApplication.
    recoveredBlock14Block96Block118Block127Value4 := (recoveredBlock14Block96Block118Block127Value0) add: (recoveredBlock14Block96Block118Block127Value3).
    recoveredBlock14Block96Block118Block127Value4
].
    recoveredBlock14Block96Block118Value3 := (recoveredBlock14Block96Block118Value1) do: (recoveredBlock14Block96Block118Value2).
    recoveredBlock14Block96Block118Value3
].
    recoveredBlock14Block96Value9 := (recoveredBlock14Block96Value7) do: (recoveredBlock14Block96Value8).
    recoveredBlock14Block96Value9
].
    recoveredBlock14Value13 := (recoveredBlock14Value11) do: (recoveredBlock14Value12).
    recoveredBlock14Value13
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [].
    (recoveredValue5) remove: (recoveredValue6) ifAbsent: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) copy.
    recoveredValue10 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Value0 recoveredBlock171Value1 recoveredBlock171Value2 recoveredBlock171Value3 |
    recoveredBlock171Value0 := recoveredBlock171Arg1.
    recoveredBlock171Value1 := (recoveredBlock171Value0) allPrerequisites.
    recoveredBlock171Value2 := [:recoveredBlock171Block181Arg1 | 
    | recoveredBlock171Block181Value0 recoveredBlock171Block181Value1 recoveredBlock171Block181Value2 recoveredBlock171Block181Value3 |
    recoveredBlock171Block181Value0 := recoveredLocal2.
    recoveredBlock171Block181Value1 := recoveredBlock171Block181Arg1.
    recoveredBlock171Block181Value2 := [].
    recoveredBlock171Block181Value3 := (recoveredBlock171Block181Value0) remove: (recoveredBlock171Block181Value1) ifAbsent: (recoveredBlock171Block181Value2).
    recoveredBlock171Block181Value3
].
    recoveredBlock171Value3 := (recoveredBlock171Value1) do: (recoveredBlock171Value2).
    recoveredBlock171Value3
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"lib.ic method 0x200296c4; bytecode file offset 0x65720"
!EmInterface methodsFor: 'recovered'!
nextVersionNameAfter: recoveredArg1 avoiding: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := $A.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := $0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := $Z.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := $a.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := $A.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := #($9 $Z $z).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := $0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := #($9 $Z $z).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack3) atAllPut: (recoveredStack4).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := $0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := $1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) asCharacter.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 188] ifFalse: [recoveredLocal1 := nil. recoveredPC := 207]] ifFalse: [recoveredPC := 197].
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 205] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredPC := 233.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200297f4; bytecode file offset 0x6587c"
!EmInterface methodsFor: 'recovered'!
cachedClassVersionNameInfoFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'cachedClassVersionNameInfoFor:in:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block28005500Value0 block28005500Value1 |
    block28005500Value0 := Dictionary.
    block28005500Value1 := (block28005500Value0) new.
    block28005500Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := Set.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) new.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredLocal5 := recoveredBlock29Stack1.
            recoveredBlock29PC := 43.
        ].
        recoveredBlock29Step = 43 ifTrue: [
            recoveredBlock29Stack1 := Dictionary.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) new.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            recoveredLocal4 := recoveredBlock29Stack1.
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg2.
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredBlock29Stack2 := recoveredArg1.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) symbol.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) classEditionsFor: (recoveredBlock29Stack2).
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack2 := [:recoveredBlock29Block60Arg1 | 
    | recoveredBlock29Block60Value0 recoveredBlock29Block60Value1 recoveredBlock29Block60Value2 recoveredBlock29Block60Value3 recoveredBlock29Block60Value4 recoveredBlock29Block60Value5 recoveredBlock29Block60Value6 recoveredBlock29Block60Value7 recoveredBlock29Block60Value8 recoveredBlock29Block60Value9 |
    recoveredBlock29Block60Value0 := recoveredLocal4.
    recoveredBlock29Block60Value1 := recoveredBlock29Block60Arg1.
    recoveredBlock29Block60Value2 := recoveredArg2.
    recoveredBlock29Block60Value3 := (recoveredBlock29Block60Value1) timeStampIn: (recoveredBlock29Block60Value2).
    recoveredBlock29Block60Value4 := recoveredBlock29Block60Arg1.
    (recoveredBlock29Block60Value0) at: (recoveredBlock29Block60Value3) put: (recoveredBlock29Block60Value4).
    recoveredBlock29Block60Value5 := recoveredLocal5.
    recoveredBlock29Block60Value6 := recoveredBlock29Block60Arg1.
    recoveredBlock29Block60Value7 := recoveredArg2.
    recoveredBlock29Block60Value8 := (recoveredBlock29Block60Value6) versionNameIn: (recoveredBlock29Block60Value7).
    recoveredBlock29Block60Value9 := (recoveredBlock29Block60Value5) add: (recoveredBlock29Block60Value8).
    recoveredBlock29Block60Value9
].
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            (recoveredBlock29Stack1) do: (recoveredBlock29Stack2).
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal5.
            recoveredBlock29PC := 95.
        ].
        recoveredBlock29Step = 95 ifTrue: [
            recoveredBlock29Stack2 := ''.
            recoveredBlock29PC := 97.
        ].
        recoveredBlock29Step = 97 ifTrue: [
            recoveredBlock29Stack3 := [].
            recoveredBlock29PC := 99.
        ].
        recoveredBlock29Step = 99 ifTrue: [
            (recoveredBlock29Stack1) remove: (recoveredBlock29Stack2) ifAbsent: (recoveredBlock29Stack3).
            recoveredBlock29PC := 101.
        ].
        recoveredBlock29Step = 101 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal5.
            recoveredBlock29PC := 104.
        ].
        recoveredBlock29Step = 104 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) isEmpty.
            recoveredBlock29PC := 106.
        ].
        recoveredBlock29Step = 106 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 110] ifFalse: [recoveredBlock29PC := 118].
        ].
        recoveredBlock29Step = 110 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg2.
            recoveredBlock29PC := 113.
        ].
        recoveredBlock29Step = 113 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) initialVersionName.
            recoveredBlock29PC := 115.
        ].
        recoveredBlock29Step = 115 ifTrue: [
            recoveredBlock29PC := 217.
        ].
        recoveredBlock29Step = 118 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 121.
        ].
        recoveredBlock29Step = 121 ifTrue: [
            recoveredLocal2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 124.
        ].
        recoveredBlock29Step = 124 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal4.
            recoveredBlock29PC := 127.
        ].
        recoveredBlock29Step = 127 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal2.
            recoveredBlock29PC := 130.
        ].
        recoveredBlock29Step = 130 ifTrue: [
            recoveredBlock29Stack3 := recoveredArg2.
            recoveredBlock29PC := 133.
        ].
        recoveredBlock29Step = 133 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) previousTimeStampIn: (recoveredBlock29Stack3).
            recoveredBlock29PC := 135.
        ].
        recoveredBlock29Step = 135 ifTrue: [
            recoveredBlock29Stack3 := [].
            recoveredBlock29PC := 137.
        ].
        recoveredBlock29Step = 137 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) at: (recoveredBlock29Stack2) ifAbsent: (recoveredBlock29Stack3).
            recoveredBlock29PC := 139.
        ].
        recoveredBlock29Step = 139 ifTrue: [
            recoveredLocal2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 142.
        ].
        recoveredBlock29Step = 142 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal2.
            recoveredBlock29PC := 145.
        ].
        recoveredBlock29Step = 145 ifTrue: [
            (recoveredBlock29Stack1 == nil) ifTrue: [recoveredBlock29PC := 164] ifFalse: [recoveredBlock29PC := 148].
        ].
        recoveredBlock29Step = 148 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal2.
            recoveredBlock29PC := 151.
        ].
        recoveredBlock29Step = 151 ifTrue: [
            recoveredBlock29Stack2 := recoveredArg2.
            recoveredBlock29PC := 154.
        ].
        recoveredBlock29Step = 154 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) versionNameIn: (recoveredBlock29Stack2).
            recoveredBlock29PC := 156.
        ].
        recoveredBlock29Step = 156 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 157.
        ].
        recoveredBlock29Step = 157 ifTrue: [
            recoveredLocal1 := recoveredBlock29Stack2.
            recoveredBlock29PC := 160.
        ].
        recoveredBlock29Step = 160 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) isEmpty.
            recoveredBlock29PC := 162.
        ].
        recoveredBlock29Step = 162 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 124] ifFalse: [recoveredBlock29PC := 164].
        ].
        recoveredBlock29Step = 164 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal2.
            recoveredBlock29PC := 167.
        ].
        recoveredBlock29Step = 167 ifTrue: [
            (recoveredBlock29Stack1 ~~ nil) ifTrue: [recoveredBlock29PC := 176] ifFalse: [recoveredBlock29PC := 170].
        ].
        recoveredBlock29Step = 170 ifTrue: [
            recoveredBlock29Stack1 := ''.
            recoveredBlock29PC := 172.
        ].
        recoveredBlock29Step = 172 ifTrue: [
            recoveredBlock29PC := 217.
        ].
        recoveredBlock29Step = 176 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 179.
        ].
        recoveredBlock29Step = 179 ifTrue: [
            recoveredBlock29Stack2 := 'Initial'.
            recoveredBlock29PC := 181.
        ].
        recoveredBlock29Step = 181 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) = (recoveredBlock29Stack2).
            recoveredBlock29PC := 182.
        ].
        recoveredBlock29Step = 182 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 186] ifFalse: [recoveredBlock29PC := 208].
        ].
        recoveredBlock29Step = 186 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal5.
            recoveredBlock29PC := 189.
        ].
        recoveredBlock29Step = 189 ifTrue: [
            recoveredBlock29Stack2 := recoveredArg2.
            recoveredBlock29PC := 192.
        ].
        recoveredBlock29Step = 192 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) initialVersionName.
            recoveredBlock29PC := 194.
        ].
        recoveredBlock29Step = 194 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) includes: (recoveredBlock29Stack2).
            recoveredBlock29PC := 196.
        ].
        recoveredBlock29Step = 196 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 208] ifFalse: [recoveredBlock29PC := 200].
        ].
        recoveredBlock29Step = 200 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg2.
            recoveredBlock29PC := 203.
        ].
        recoveredBlock29Step = 203 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) initialVersionName.
            recoveredBlock29PC := 205.
        ].
        recoveredBlock29Step = 205 ifTrue: [
            recoveredBlock29PC := 217.
        ].
        recoveredBlock29Step = 208 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 209.
        ].
        recoveredBlock29Step = 209 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal1.
            recoveredBlock29PC := 212.
        ].
        recoveredBlock29Step = 212 ifTrue: [
            recoveredBlock29Stack3 := recoveredLocal5.
            recoveredBlock29PC := 215.
        ].
        recoveredBlock29Step = 215 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) nextVersionNameAfter: (recoveredBlock29Stack2) avoiding: (recoveredBlock29Stack3).
            recoveredBlock29PC := 217.
        ].
        recoveredBlock29Step = 217 ifTrue: [
            recoveredLocal3 := recoveredBlock29Stack1.
            recoveredBlock29PC := 220.
        ].
        recoveredBlock29Step = 220 ifTrue: [
            recoveredBlock29Stack1 := Array.
            recoveredBlock29PC := 222.
        ].
        recoveredBlock29Step = 222 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal3.
            recoveredBlock29PC := 225.
        ].
        recoveredBlock29Step = 225 ifTrue: [
            recoveredBlock29Stack3 := recoveredLocal5.
            recoveredBlock29PC := 228.
        ].
        recoveredBlock29Step = 228 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) with: (recoveredBlock29Stack2) with: (recoveredBlock29Stack3).
            recoveredBlock29PC := 230.
        ].
        recoveredBlock29Step = 230 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20029a80; bytecode file offset 0x65b2c"
!EmInterface methodsFor: 'recovered'!
reportUnreleasedClasses
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) errorLog.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := MxEMc56.
    (recoveredValue4) show: (recoveredValue5).
    (recoveredValue2) cr.
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) image.
    recoveredValue8 := (recoveredValue7) loadedSubApplications.
    recoveredValue9 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) canBeChangedLocally.
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 40] ifFalse: [recoveredBlock23PC := 221].
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) existsInLibrary.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 48] ifFalse: [recoveredBlock23PC := 221].
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) releasedClassVersions.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredLocal3 := recoveredBlock23Stack1.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack1 := Set.
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) new.
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) classes.
            recoveredBlock23PC := 69.
        ].
        recoveredBlock23Step = 69 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block69Arg1 | 
    | recoveredBlock23Block69Stack0 recoveredBlock23Block69Stack1 recoveredBlock23Block69Stack2 recoveredBlock23Block69Stack3 recoveredBlock23Block69Stack4 recoveredBlock23Block69Stack5 recoveredBlock23Block69PC recoveredBlock23Block69Step recoveredBlock23Block69Done recoveredBlock23Block69Result |
    recoveredBlock23Block69Stack0 := nil.
    recoveredBlock23Block69PC := 76.
    recoveredBlock23Block69Done := false.
    [recoveredBlock23Block69Done not] whileTrue: [
        recoveredBlock23Block69Step := recoveredBlock23Block69PC.
        recoveredBlock23Block69Step = 76 ifTrue: [
            recoveredBlock23Block69Stack1 := recoveredLocal2.
            recoveredBlock23Block69PC := 79.
        ].
        recoveredBlock23Block69Step = 79 ifTrue: [
            recoveredBlock23Block69Stack2 := recoveredBlock23Block69Arg1.
            recoveredBlock23Block69PC := 80.
        ].
        recoveredBlock23Block69Step = 80 ifTrue: [
            recoveredBlock23Block69Stack2 := (recoveredBlock23Block69Stack2) symbol.
            recoveredBlock23Block69PC := 82.
        ].
        recoveredBlock23Block69Step = 82 ifTrue: [
            (recoveredBlock23Block69Stack1) add: (recoveredBlock23Block69Stack2).
            recoveredBlock23Block69PC := 84.
        ].
        recoveredBlock23Block69Step = 84 ifTrue: [
            recoveredBlock23Block69Stack1 := recoveredBlock23Block69Arg1.
            recoveredBlock23Block69PC := 85.
        ].
        recoveredBlock23Block69Step = 85 ifTrue: [
            recoveredBlock23Block69Stack2 := recoveredBlock23Arg1.
            recoveredBlock23Block69PC := 88.
        ].
        recoveredBlock23Block69Step = 88 ifTrue: [
            recoveredBlock23Block69Stack1 := (recoveredBlock23Block69Stack1) timeStampIn: (recoveredBlock23Block69Stack2).
            recoveredBlock23Block69PC := 90.
        ].
        recoveredBlock23Block69Step = 90 ifTrue: [
            recoveredBlock23Block69Stack2 := recoveredLocal3.
            recoveredBlock23Block69PC := 93.
        ].
        recoveredBlock23Block69Step = 93 ifTrue: [
            recoveredBlock23Block69Stack3 := recoveredBlock23Block69Arg1.
            recoveredBlock23Block69PC := 94.
        ].
        recoveredBlock23Block69Step = 94 ifTrue: [
            recoveredBlock23Block69Stack3 := (recoveredBlock23Block69Stack3) symbol.
            recoveredBlock23Block69PC := 96.
        ].
        recoveredBlock23Block69Step = 96 ifTrue: [
            recoveredBlock23Block69Stack4 := [
    | block28005524Value0 block28005524Value1 |
    block28005524Value0 := EmTimeStamp.
    block28005524Value1 := (block28005524Value0) undefined.
    block28005524Value1
].
            recoveredBlock23Block69PC := 98.
        ].
        recoveredBlock23Block69Step = 98 ifTrue: [
            recoveredBlock23Block69PC := 107.
        ].
        recoveredBlock23Block69Step = 107 ifTrue: [
            recoveredBlock23Block69Stack2 := (recoveredBlock23Block69Stack2) at: (recoveredBlock23Block69Stack3) ifAbsent: (recoveredBlock23Block69Stack4).
            recoveredBlock23Block69PC := 109.
        ].
        recoveredBlock23Block69Step = 109 ifTrue: [
            recoveredBlock23Block69Stack1 := (recoveredBlock23Block69Stack1) = (recoveredBlock23Block69Stack2).
            recoveredBlock23Block69PC := 110.
        ].
        recoveredBlock23Block69Step = 110 ifTrue: [
            recoveredBlock23Block69Result := recoveredBlock23Block69Stack1.
            recoveredBlock23Block69Done := true.
        ].
    ].
    recoveredBlock23Block69Result
].
            recoveredBlock23PC := 111.
        ].
        recoveredBlock23Step = 111 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) reject: (recoveredBlock23Stack2).
            recoveredBlock23PC := 113.
        ].
        recoveredBlock23Step = 113 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 116.
        ].
        recoveredBlock23Step = 116 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal3.
            recoveredBlock23PC := 119.
        ].
        recoveredBlock23Step = 119 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block119Arg1 | 
    | recoveredBlock23Block119Stack0 recoveredBlock23Block119Stack1 recoveredBlock23Block119Stack2 recoveredBlock23Block119Stack3 recoveredBlock23Block119Stack4 recoveredBlock23Block119PC recoveredBlock23Block119Step recoveredBlock23Block119Done recoveredBlock23Block119Result |
    recoveredBlock23Block119Stack0 := nil.
    recoveredBlock23Block119PC := 126.
    recoveredBlock23Block119Done := false.
    [recoveredBlock23Block119Done not] whileTrue: [
        recoveredBlock23Block119Step := recoveredBlock23Block119PC.
        recoveredBlock23Block119Step = 126 ifTrue: [
            recoveredBlock23Block119Stack1 := nil.
            recoveredBlock23Block119PC := 127.
        ].
        recoveredBlock23Block119Step = 127 ifTrue: [
            recoveredBlock23Block119Stack2 := recoveredLocal2.
            recoveredBlock23Block119PC := 130.
        ].
        recoveredBlock23Block119Step = 130 ifTrue: [
            recoveredBlock23Block119Stack3 := recoveredBlock23Block119Arg1.
            recoveredBlock23Block119PC := 131.
        ].
        recoveredBlock23Block119Step = 131 ifTrue: [
            recoveredBlock23Block119Stack2 := (recoveredBlock23Block119Stack2) includes: (recoveredBlock23Block119Stack3).
            recoveredBlock23Block119PC := 133.
        ].
        recoveredBlock23Block119Step = 133 ifTrue: [
            (recoveredBlock23Block119Stack2) ifTrue: [recoveredBlock23Block119PC := 148] ifFalse: [recoveredBlock23Block119PC := 136].
        ].
        recoveredBlock23Block119Step = 136 ifTrue: [
            recoveredBlock23Block119PC := 137.
        ].
        recoveredBlock23Block119Step = 137 ifTrue: [
            recoveredBlock23Block119Stack1 := recoveredLocal1.
            recoveredBlock23Block119PC := 140.
        ].
        recoveredBlock23Block119Step = 140 ifTrue: [
            recoveredBlock23Block119Stack2 := recoveredBlock23Arg1.
            recoveredBlock23Block119PC := 143.
        ].
        recoveredBlock23Block119Step = 143 ifTrue: [
            recoveredBlock23Block119Stack3 := recoveredBlock23Block119Arg1.
            recoveredBlock23Block119PC := 144.
        ].
        recoveredBlock23Block119Step = 144 ifTrue: [
            recoveredBlock23Block119Stack2 := (recoveredBlock23Block119Stack2) addUndefined: (recoveredBlock23Block119Stack3).
            recoveredBlock23Block119PC := 146.
        ].
        recoveredBlock23Block119Step = 146 ifTrue: [
            recoveredBlock23Block119Stack1 := (recoveredBlock23Block119Stack1) add: (recoveredBlock23Block119Stack2).
            recoveredBlock23Block119PC := 148.
        ].
        recoveredBlock23Block119Step = 148 ifTrue: [
            recoveredBlock23Block119Result := recoveredBlock23Block119Stack1.
            recoveredBlock23Block119Done := true.
        ].
    ].
    recoveredBlock23Block119Result
].
            recoveredBlock23PC := 149.
        ].
        recoveredBlock23Step = 149 ifTrue: [
            (recoveredBlock23Stack1) keysDo: (recoveredBlock23Stack2).
            recoveredBlock23PC := 151.
        ].
        recoveredBlock23Step = 151 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 152.
        ].
        recoveredBlock23Step = 152 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 155.
        ].
        recoveredBlock23Step = 155 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) notEmpty.
            recoveredBlock23PC := 157.
        ].
        recoveredBlock23Step = 157 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 160] ifFalse: [recoveredBlock23PC := 221].
        ].
        recoveredBlock23Step = 160 ifTrue: [
            recoveredBlock23PC := 161.
        ].
        recoveredBlock23Step = 161 ifTrue: [
            recoveredBlock23Stack1 := System.
            recoveredBlock23PC := 163.
        ].
        recoveredBlock23Step = 163 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) image.
            recoveredBlock23PC := 164.
        ].
        recoveredBlock23Step = 164 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) errorLog.
            recoveredBlock23PC := 165.
        ].
        recoveredBlock23Step = 165 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 166.
        ].
        recoveredBlock23Step = 166 ifTrue: [
            (recoveredBlock23Stack2) tab.
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 169.
        ].
        recoveredBlock23Step = 169 ifTrue: [
            recoveredBlock23Stack3 := MxEMc53.
            recoveredBlock23PC := 171.
        ].
        recoveredBlock23Step = 171 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 174.
        ].
        recoveredBlock23Step = 174 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) signature.
            recoveredBlock23PC := 176.
        ].
        recoveredBlock23Step = 176 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) bindWith: (recoveredBlock23Stack4).
            recoveredBlock23PC := 178.
        ].
        recoveredBlock23Step = 178 ifTrue: [
            (recoveredBlock23Stack2) show: (recoveredBlock23Stack3).
            recoveredBlock23PC := 180.
        ].
        recoveredBlock23Step = 180 ifTrue: [
            (recoveredBlock23Stack1) cr.
            recoveredBlock23PC := 182.
        ].
        recoveredBlock23Step = 182 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 185.
        ].
        recoveredBlock23Step = 185 ifTrue: [
            recoveredBlock23Stack2 := Class.
            recoveredBlock23PC := 187.
        ].
        recoveredBlock23Step = 187 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) sortBlock.
            recoveredBlock23PC := 189.
        ].
        recoveredBlock23Step = 189 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) asSortedCollection: (recoveredBlock23Stack2).
            recoveredBlock23PC := 191.
        ].
        recoveredBlock23Step = 191 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block191Arg1 | 
    | recoveredBlock23Block191Value0 recoveredBlock23Block191Value1 recoveredBlock23Block191Value2 recoveredBlock23Block191Value3 recoveredBlock23Block191Value4 recoveredBlock23Block191Value5 recoveredBlock23Block191Value6 recoveredBlock23Block191Value7 recoveredBlock23Block191Value8 recoveredBlock23Block191Value9 |
    recoveredBlock23Block191Value0 := System.
    recoveredBlock23Block191Value1 := (recoveredBlock23Block191Value0) image.
    recoveredBlock23Block191Value2 := (recoveredBlock23Block191Value1) errorLog.
    recoveredBlock23Block191Value3 := recoveredBlock23Block191Value2.
    (recoveredBlock23Block191Value3) tab.
    recoveredBlock23Block191Value4 := recoveredBlock23Block191Value2.
    (recoveredBlock23Block191Value4) tab.
    recoveredBlock23Block191Value5 := recoveredBlock23Block191Value2.
    recoveredBlock23Block191Value6 := recoveredBlock23Block191Arg1.
    recoveredBlock23Block191Value7 := recoveredBlock23Arg1.
    recoveredBlock23Block191Value8 := (recoveredBlock23Block191Value6) signatureIn: (recoveredBlock23Block191Value7).
    (recoveredBlock23Block191Value5) show: (recoveredBlock23Block191Value8).
    recoveredBlock23Block191Value9 := (recoveredBlock23Block191Value2) cr.
    recoveredBlock23Block191Value9
].
            recoveredBlock23PC := 219.
        ].
        recoveredBlock23Step = 219 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) do: (recoveredBlock23Stack2).
            recoveredBlock23PC := 221.
        ].
        recoveredBlock23Step = 221 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := System.
    recoveredValue11 := (recoveredValue10) image.
    recoveredValue12 := (recoveredValue11) errorLog.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := MxEMc35.
    (recoveredValue13) show: (recoveredValue14).
    (recoveredValue12) cr.
    ^self
! !

"lib.ic method 0x2002c5d8; bytecode file offset 0x68644"
!EmInterface methodsFor: 'recovered'!
requiredDependentApplicationsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubApplications.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) defined.
    recoveredBlock14Value2 := [:recoveredBlock14Block22Arg1 | 
    | recoveredBlock14Block22Stack0 recoveredBlock14Block22Stack1 recoveredBlock14Block22Stack2 recoveredBlock14Block22Stack3 recoveredBlock14Block22Stack4 recoveredBlock14Block22PC recoveredBlock14Block22Step recoveredBlock14Block22Done recoveredBlock14Block22Result |
    recoveredBlock14Block22Stack0 := nil.
    recoveredBlock14Block22PC := 28.
    recoveredBlock14Block22Done := false.
    [recoveredBlock14Block22Done not] whileTrue: [
        recoveredBlock14Block22Step := recoveredBlock14Block22PC.
        recoveredBlock14Block22Step = 28 ifTrue: [
            recoveredBlock14Block22Stack1 := nil.
            recoveredBlock14Block22PC := 29.
        ].
        recoveredBlock14Block22Step = 29 ifTrue: [
            recoveredBlock14Block22Stack2 := recoveredBlock14Block22Arg1.
            recoveredBlock14Block22PC := 30.
        ].
        recoveredBlock14Block22Step = 30 ifTrue: [
            recoveredBlock14Block22Stack2 := (recoveredBlock14Block22Stack2) superclass.
            recoveredBlock14Block22PC := 32.
        ].
        recoveredBlock14Block22Step = 32 ifTrue: [
            recoveredBlock14Block22Stack3 := recoveredBlock14Block22Stack2.
            recoveredBlock14Block22PC := 33.
        ].
        recoveredBlock14Block22Step = 33 ifTrue: [
            recoveredLocal3 := recoveredBlock14Block22Stack3.
            recoveredBlock14Block22PC := 36.
        ].
        recoveredBlock14Block22Step = 36 ifTrue: [
            (recoveredBlock14Block22Stack2 == nil) ifTrue: [recoveredBlock14Block22PC := 53] ifFalse: [recoveredBlock14Block22PC := 40].
        ].
        recoveredBlock14Block22Step = 40 ifTrue: [
            recoveredBlock14Block22PC := 41.
        ].
        recoveredBlock14Block22Step = 41 ifTrue: [
            recoveredBlock14Block22Stack1 := recoveredLocal4.
            recoveredBlock14Block22PC := 44.
        ].
        recoveredBlock14Block22Step = 44 ifTrue: [
            recoveredBlock14Block22Stack2 := recoveredLocal3.
            recoveredBlock14Block22PC := 47.
        ].
        recoveredBlock14Block22Step = 47 ifTrue: [
            recoveredBlock14Block22Stack2 := (recoveredBlock14Block22Stack2) controller.
            recoveredBlock14Block22PC := 49.
        ].
        recoveredBlock14Block22Step = 49 ifTrue: [
            recoveredBlock14Block22Stack2 := (recoveredBlock14Block22Stack2) rootApplication.
            recoveredBlock14Block22PC := 51.
        ].
        recoveredBlock14Block22Step = 51 ifTrue: [
            recoveredBlock14Block22Stack1 := (recoveredBlock14Block22Stack1) add: (recoveredBlock14Block22Stack2).
            recoveredBlock14Block22PC := 53.
        ].
        recoveredBlock14Block22Step = 53 ifTrue: [
            recoveredBlock14Block22Result := recoveredBlock14Block22Stack1.
            recoveredBlock14Block22Done := true.
        ].
    ].
    recoveredBlock14Block22Result
].
    (recoveredBlock14Value1) do: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredBlock14Arg1.
    recoveredBlock14Value4 := (recoveredBlock14Value3) extended.
    recoveredBlock14Value5 := [:recoveredBlock14Block59Arg1 | 
    | recoveredBlock14Block59Value0 recoveredBlock14Block59Value1 recoveredBlock14Block59Value2 recoveredBlock14Block59Value3 recoveredBlock14Block59Value4 |
    recoveredBlock14Block59Value0 := recoveredLocal4.
    recoveredBlock14Block59Value1 := recoveredBlock14Block59Arg1.
    recoveredBlock14Block59Value2 := (recoveredBlock14Block59Value1) controller.
    recoveredBlock14Block59Value3 := (recoveredBlock14Block59Value2) rootApplication.
    recoveredBlock14Block59Value4 := (recoveredBlock14Block59Value0) add: (recoveredBlock14Block59Value3).
    recoveredBlock14Block59Value4
].
    recoveredBlock14Value6 := (recoveredBlock14Value4) do: (recoveredBlock14Value5).
    recoveredBlock14Value6
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) allPrerequisites.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 |
    recoveredBlock103Value0 := recoveredLocal4.
    recoveredBlock103Value1 := recoveredBlock103Arg1.
    recoveredBlock103Value2 := (recoveredBlock103Value0) includes: (recoveredBlock103Value1).
    recoveredBlock103Value2
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) conform: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDependentApplicationsWithSubApplications.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 |
    recoveredBlock133Value0 := recoveredBlock133Arg1.
    recoveredBlock133Value1 := (recoveredBlock133Value0) defined.
    recoveredBlock133Value2 := [:recoveredBlock133Block142Arg1 | 
    | recoveredBlock133Block142Stack0 recoveredBlock133Block142Stack1 recoveredBlock133Block142Stack2 recoveredBlock133Block142Stack3 recoveredBlock133Block142Stack4 recoveredBlock133Block142PC recoveredBlock133Block142Step recoveredBlock133Block142Done recoveredBlock133Block142Result |
    recoveredBlock133Block142Stack0 := nil.
    recoveredBlock133Block142PC := 148.
    recoveredBlock133Block142Done := false.
    [recoveredBlock133Block142Done not] whileTrue: [
        recoveredBlock133Block142Step := recoveredBlock133Block142PC.
        recoveredBlock133Block142Step = 148 ifTrue: [
            recoveredBlock133Block142Stack1 := nil.
            recoveredBlock133Block142PC := 149.
        ].
        recoveredBlock133Block142Step = 149 ifTrue: [
            recoveredBlock133Block142Stack2 := recoveredBlock133Block142Arg1.
            recoveredBlock133Block142PC := 150.
        ].
        recoveredBlock133Block142Step = 150 ifTrue: [
            recoveredBlock133Block142Stack2 := (recoveredBlock133Block142Stack2) superclass.
            recoveredBlock133Block142PC := 152.
        ].
        recoveredBlock133Block142Step = 152 ifTrue: [
            recoveredBlock133Block142Stack3 := recoveredBlock133Block142Stack2.
            recoveredBlock133Block142PC := 153.
        ].
        recoveredBlock133Block142Step = 153 ifTrue: [
            recoveredLocal3 := recoveredBlock133Block142Stack3.
            recoveredBlock133Block142PC := 156.
        ].
        recoveredBlock133Block142Step = 156 ifTrue: [
            (recoveredBlock133Block142Stack2 == nil) ifTrue: [recoveredBlock133Block142PC := 173] ifFalse: [recoveredBlock133Block142PC := 160].
        ].
        recoveredBlock133Block142Step = 160 ifTrue: [
            recoveredBlock133Block142PC := 161.
        ].
        recoveredBlock133Block142Step = 161 ifTrue: [
            recoveredBlock133Block142Stack1 := recoveredLocal1.
            recoveredBlock133Block142PC := 164.
        ].
        recoveredBlock133Block142Step = 164 ifTrue: [
            recoveredBlock133Block142Stack2 := recoveredLocal3.
            recoveredBlock133Block142PC := 167.
        ].
        recoveredBlock133Block142Step = 167 ifTrue: [
            recoveredBlock133Block142Stack2 := (recoveredBlock133Block142Stack2) controller.
            recoveredBlock133Block142PC := 169.
        ].
        recoveredBlock133Block142Step = 169 ifTrue: [
            recoveredBlock133Block142Stack2 := (recoveredBlock133Block142Stack2) rootApplication.
            recoveredBlock133Block142PC := 171.
        ].
        recoveredBlock133Block142Step = 171 ifTrue: [
            recoveredBlock133Block142Stack1 := (recoveredBlock133Block142Stack1) add: (recoveredBlock133Block142Stack2).
            recoveredBlock133Block142PC := 173.
        ].
        recoveredBlock133Block142Step = 173 ifTrue: [
            recoveredBlock133Block142Result := recoveredBlock133Block142Stack1.
            recoveredBlock133Block142Done := true.
        ].
    ].
    recoveredBlock133Block142Result
].
    (recoveredBlock133Value1) do: (recoveredBlock133Value2).
    recoveredBlock133Value3 := recoveredBlock133Arg1.
    recoveredBlock133Value4 := (recoveredBlock133Value3) extended.
    recoveredBlock133Value5 := [:recoveredBlock133Block179Arg1 | 
    | recoveredBlock133Block179Value0 recoveredBlock133Block179Value1 recoveredBlock133Block179Value2 recoveredBlock133Block179Value3 recoveredBlock133Block179Value4 |
    recoveredBlock133Block179Value0 := recoveredLocal1.
    recoveredBlock133Block179Value1 := recoveredBlock133Block179Arg1.
    recoveredBlock133Block179Value2 := (recoveredBlock133Block179Value1) controller.
    recoveredBlock133Block179Value3 := (recoveredBlock133Block179Value2) rootApplication.
    recoveredBlock133Block179Value4 := (recoveredBlock133Block179Value0) add: (recoveredBlock133Block179Value3).
    recoveredBlock133Block179Value4
].
    recoveredBlock133Value6 := (recoveredBlock133Value4) do: (recoveredBlock133Value5).
    recoveredBlock133Value6
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := [:recoveredBlock205Arg1 | 
    | recoveredBlock205Stack0 recoveredBlock205Stack1 recoveredBlock205Stack2 recoveredBlock205Stack3 recoveredBlock205Stack4 recoveredBlock205PC recoveredBlock205Step recoveredBlock205Done recoveredBlock205Result |
    recoveredBlock205Stack0 := self.
    recoveredBlock205PC := 212.
    recoveredBlock205Done := false.
    [recoveredBlock205Done not] whileTrue: [
        recoveredBlock205Step := recoveredBlock205PC.
        recoveredBlock205Step = 212 ifTrue: [
            recoveredBlock205Stack1 := nil.
            recoveredBlock205PC := 213.
        ].
        recoveredBlock205Step = 213 ifTrue: [
            recoveredBlock205Stack2 := recoveredLocal2.
            recoveredBlock205PC := 216.
        ].
        recoveredBlock205Step = 216 ifTrue: [
            recoveredBlock205Stack3 := recoveredBlock205Arg1.
            recoveredBlock205PC := 217.
        ].
        recoveredBlock205Step = 217 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) includes: (recoveredBlock205Stack3).
            recoveredBlock205PC := 219.
        ].
        recoveredBlock205Step = 219 ifTrue: [
            (recoveredBlock205Stack2) ifTrue: [recoveredBlock205PC := 222] ifFalse: [recoveredBlock205PC := 229].
        ].
        recoveredBlock205Step = 222 ifTrue: [
            recoveredBlock205PC := 223.
        ].
        recoveredBlock205Step = 223 ifTrue: [
            recoveredBlock205Stack1 := recoveredLocal4.
            recoveredBlock205PC := 226.
        ].
        recoveredBlock205Step = 226 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Arg1.
            recoveredBlock205PC := 227.
        ].
        recoveredBlock205Step = 227 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) add: (recoveredBlock205Stack2).
            recoveredBlock205PC := 229.
        ].
        recoveredBlock205Step = 229 ifTrue: [
            recoveredBlock205Result := recoveredBlock205Stack1.
            recoveredBlock205Done := true.
        ].
    ].
    recoveredBlock205Result
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 |
    recoveredBlock247Value0 := recoveredBlock247Arg1.
    recoveredBlock247Value1 := (recoveredBlock247Value0) allPrerequisites.
    recoveredBlock247Value2 := [:recoveredBlock247Block257Arg1 | 
    | recoveredBlock247Block257Value0 recoveredBlock247Block257Value1 recoveredBlock247Block257Value2 recoveredBlock247Block257Value3 |
    recoveredBlock247Block257Value0 := recoveredLocal4.
    recoveredBlock247Block257Value1 := recoveredBlock247Block257Arg1.
    recoveredBlock247Block257Value2 := [].
    recoveredBlock247Block257Value3 := (recoveredBlock247Block257Value0) remove: (recoveredBlock247Block257Value1) ifAbsent: (recoveredBlock247Block257Value2).
    recoveredBlock247Block257Value3
].
    recoveredBlock247Value3 := (recoveredBlock247Value1) do: (recoveredBlock247Value2).
    recoveredBlock247Value3
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2002e2d4; bytecode file offset 0x6a344"
!EmInterface methodsFor: 'recovered'!
methodsDefinedBy: recoveredArg1 categorizedIn: recoveredArg2 all: recoveredArg3 controlledBy: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodCategories.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesCategorizedIn: (recoveredStack2) all: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) applications.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesIn: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodNamesIn: (recoveredStack5).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack3) addAll: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 116] ifFalse: [recoveredPC := 165]] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 161] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 201.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDictionary.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := [:recoveredBlock215Arg1 | 
    | recoveredBlock215Value0 recoveredBlock215Value1 recoveredBlock215Value2 |
    recoveredBlock215Value0 := recoveredLocal2.
    recoveredBlock215Value1 := recoveredBlock215Arg1.
    recoveredBlock215Value2 := (recoveredBlock215Value0) add: (recoveredBlock215Value1).
    recoveredBlock215Value2
].
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDictionary.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := [:recoveredBlock239Arg1 | 
    | recoveredBlock239Stack0 recoveredBlock239Stack1 recoveredBlock239Stack2 recoveredBlock239Stack3 recoveredBlock239Stack4 recoveredBlock239PC recoveredBlock239Step recoveredBlock239Done recoveredBlock239Result |
    recoveredBlock239Stack0 := self.
    recoveredBlock239PC := 246.
    recoveredBlock239Done := false.
    [recoveredBlock239Done not] whileTrue: [
        recoveredBlock239Step := recoveredBlock239PC.
        recoveredBlock239Step = 246 ifTrue: [
            recoveredBlock239Stack1 := nil.
            recoveredBlock239PC := 247.
        ].
        recoveredBlock239Step = 247 ifTrue: [
            recoveredBlock239Stack2 := recoveredLocal3.
            recoveredBlock239PC := 250.
        ].
        recoveredBlock239Step = 250 ifTrue: [
            recoveredBlock239Stack3 := recoveredBlock239Arg1.
            recoveredBlock239PC := 251.
        ].
        recoveredBlock239Step = 251 ifTrue: [
            recoveredBlock239Stack3 := (recoveredBlock239Stack3) selector.
            recoveredBlock239PC := 253.
        ].
        recoveredBlock239Step = 253 ifTrue: [
            recoveredBlock239Stack2 := (recoveredBlock239Stack2) includes: (recoveredBlock239Stack3).
            recoveredBlock239PC := 255.
        ].
        recoveredBlock239Step = 255 ifTrue: [
            (recoveredBlock239Stack2) ifTrue: [recoveredBlock239PC := 258] ifFalse: [recoveredBlock239PC := 265].
        ].
        recoveredBlock239Step = 258 ifTrue: [
            recoveredBlock239PC := 259.
        ].
        recoveredBlock239Step = 259 ifTrue: [
            recoveredBlock239Stack1 := recoveredLocal2.
            recoveredBlock239PC := 262.
        ].
        recoveredBlock239Step = 262 ifTrue: [
            recoveredBlock239Stack2 := recoveredBlock239Arg1.
            recoveredBlock239PC := 263.
        ].
        recoveredBlock239Step = 263 ifTrue: [
            recoveredBlock239Stack1 := (recoveredBlock239Stack1) add: (recoveredBlock239Stack2).
            recoveredBlock239PC := 265.
        ].
        recoveredBlock239Step = 265 ifTrue: [
            recoveredBlock239Result := recoveredBlock239Stack1.
            recoveredBlock239Done := true.
        ].
    ].
    recoveredBlock239Result
].
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDictionary.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := [:recoveredBlock277Arg1 | 
    | recoveredBlock277Stack0 recoveredBlock277Stack1 recoveredBlock277Stack2 recoveredBlock277Stack3 recoveredBlock277Stack4 recoveredBlock277PC recoveredBlock277Step recoveredBlock277Done recoveredBlock277Result |
    recoveredBlock277Stack0 := self.
    recoveredBlock277PC := 284.
    recoveredBlock277Done := false.
    [recoveredBlock277Done not] whileTrue: [
        recoveredBlock277Step := recoveredBlock277PC.
        recoveredBlock277Step = 284 ifTrue: [
            recoveredBlock277Stack1 := nil.
            recoveredBlock277PC := 285.
        ].
        recoveredBlock277Step = 285 ifTrue: [
            recoveredBlock277Stack2 := recoveredLocal5.
            recoveredBlock277PC := 288.
        ].
        recoveredBlock277Step = 288 ifTrue: [
            recoveredBlock277Stack3 := recoveredBlock277Arg1.
            recoveredBlock277PC := 289.
        ].
        recoveredBlock277Step = 289 ifTrue: [
            recoveredBlock277Stack3 := (recoveredBlock277Stack3) selector.
            recoveredBlock277PC := 291.
        ].
        recoveredBlock277Step = 291 ifTrue: [
            recoveredBlock277Stack2 := (recoveredBlock277Stack2) includes: (recoveredBlock277Stack3).
            recoveredBlock277PC := 293.
        ].
        recoveredBlock277Step = 293 ifTrue: [
            (recoveredBlock277Stack2) ifTrue: [recoveredBlock277PC := 296] ifFalse: [recoveredBlock277PC := 315].
        ].
        recoveredBlock277Step = 296 ifTrue: [
            recoveredBlock277Stack2 := recoveredLocal4.
            recoveredBlock277PC := 299.
        ].
        recoveredBlock277Step = 299 ifTrue: [
            recoveredBlock277Stack3 := recoveredBlock277Arg1.
            recoveredBlock277PC := 300.
        ].
        recoveredBlock277Step = 300 ifTrue: [
            recoveredBlock277Stack3 := (recoveredBlock277Stack3) selector.
            recoveredBlock277PC := 302.
        ].
        recoveredBlock277Step = 302 ifTrue: [
            recoveredBlock277Stack2 := (recoveredBlock277Stack2) includes: (recoveredBlock277Stack3).
            recoveredBlock277PC := 304.
        ].
        recoveredBlock277Step = 304 ifTrue: [
            (recoveredBlock277Stack2) ifTrue: [recoveredBlock277PC := 308] ifFalse: [recoveredBlock277PC := 315].
        ].
        recoveredBlock277Step = 308 ifTrue: [
            recoveredBlock277PC := 309.
        ].
        recoveredBlock277Step = 309 ifTrue: [
            recoveredBlock277Stack1 := recoveredLocal2.
            recoveredBlock277PC := 312.
        ].
        recoveredBlock277Step = 312 ifTrue: [
            recoveredBlock277Stack2 := recoveredBlock277Arg1.
            recoveredBlock277PC := 313.
        ].
        recoveredBlock277Step = 313 ifTrue: [
            recoveredBlock277Stack1 := (recoveredBlock277Stack1) add: (recoveredBlock277Stack2).
            recoveredBlock277PC := 315.
        ].
        recoveredBlock277Step = 315 ifTrue: [
            recoveredBlock277Result := recoveredBlock277Stack1.
            recoveredBlock277Done := true.
        ].
    ].
    recoveredBlock277Result
].
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2002e7e4; bytecode file offset 0x6a870"
!EmInterface methodsFor: 'recovered'!
methodsWithStaleBindingsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) rootApplication.
    recoveredBlock19Value3 := (recoveredBlock19Value0) add: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) image.
    recoveredValue8 := (recoveredValue7) loadedSubApplications.
    recoveredValue9 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Local1 recoveredBlock42Local2 recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := nil.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack2 := recoveredLocal2.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Arg1.
            recoveredBlock42PC := 55.
        ].
        recoveredBlock42Step = 55 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) rootApplication.
            recoveredBlock42PC := 56.
        ].
        recoveredBlock42Step = 56 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) includes: (recoveredBlock42Stack3).
            recoveredBlock42PC := 58.
        ].
        recoveredBlock42Step = 58 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 62] ifFalse: [recoveredBlock42PC := 319].
        ].
        recoveredBlock42Step = 62 ifTrue: [
            recoveredBlock42PC := 63.
        ].
        recoveredBlock42Step = 63 ifTrue: [
            recoveredBlock42Stack1 := System.
            recoveredBlock42PC := 65.
        ].
        recoveredBlock42Step = 65 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) image.
            recoveredBlock42PC := 67.
        ].
        recoveredBlock42Step = 67 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) globalNamespace.
            recoveredBlock42PC := 69.
        ].
        recoveredBlock42Step = 69 ifTrue: [
            recoveredBlock42Local1 := recoveredBlock42Stack1.
            recoveredBlock42PC := 72.
        ].
        recoveredBlock42Step = 72 ifTrue: [
            recoveredBlock42Stack1 := OrderedCollection.
            recoveredBlock42PC := 74.
        ].
        recoveredBlock42Step = 74 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) new.
            recoveredBlock42PC := 75.
        ].
        recoveredBlock42Step = 75 ifTrue: [
            recoveredBlock42Local2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 78.
        ].
        recoveredBlock42Step = 78 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Local2.
            recoveredBlock42PC := 81.
        ].
        recoveredBlock42Step = 81 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 82.
        ].
        recoveredBlock42Step = 82 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Arg1.
            recoveredBlock42PC := 85.
        ].
        recoveredBlock42Step = 85 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) defined.
            recoveredBlock42PC := 87.
        ].
        recoveredBlock42Step = 87 ifTrue: [
            (recoveredBlock42Stack2) addAll: (recoveredBlock42Stack3).
            recoveredBlock42PC := 89.
        ].
        recoveredBlock42Step = 89 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 92.
        ].
        recoveredBlock42Step = 92 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) extended.
            recoveredBlock42PC := 94.
        ].
        recoveredBlock42Step = 94 ifTrue: [
            (recoveredBlock42Stack1) addAll: (recoveredBlock42Stack2).
            recoveredBlock42PC := 96.
        ].
        recoveredBlock42Step = 96 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Local2.
            recoveredBlock42PC := 99.
        ].
        recoveredBlock42Step = 99 ifTrue: [
            recoveredBlock42Stack2 := [:recoveredBlock42Block99Arg1 | 
    | recoveredBlock42Block99Local1 recoveredBlock42Block99Value0 recoveredBlock42Block99Value1 recoveredBlock42Block99Value2 recoveredBlock42Block99Value3 recoveredBlock42Block99Value4 recoveredBlock42Block99Value5 recoveredBlock42Block99Value6 recoveredBlock42Block99Value7 recoveredBlock42Block99Value8 recoveredBlock42Block99Value9 recoveredBlock42Block99Value10 recoveredBlock42Block99Value11 recoveredBlock42Block99Value12 recoveredBlock42Block99Value13 |
    recoveredBlock42Block99Value0 := OrderedCollection.
    recoveredBlock42Block99Value1 := (recoveredBlock42Block99Value0) new.
    recoveredBlock42Block99Local1 := recoveredBlock42Block99Value1.
    recoveredBlock42Block99Value2 := recoveredBlock42Block99Local1.
    recoveredBlock42Block99Value3 := recoveredBlock42Block99Value2.
    recoveredBlock42Block99Value4 := recoveredBlock42Block99Arg1.
    recoveredBlock42Block99Value5 := recoveredBlock42Arg1.
    recoveredBlock42Block99Value6 := (recoveredBlock42Block99Value4) methodsIn: (recoveredBlock42Block99Value5).
    (recoveredBlock42Block99Value3) addAll: (recoveredBlock42Block99Value6).
    recoveredBlock42Block99Value7 := recoveredBlock42Block99Arg1.
    recoveredBlock42Block99Value8 := (recoveredBlock42Block99Value7) class.
    recoveredBlock42Block99Value9 := recoveredBlock42Arg1.
    recoveredBlock42Block99Value10 := (recoveredBlock42Block99Value8) methodsIn: (recoveredBlock42Block99Value9).
    (recoveredBlock42Block99Value2) addAll: (recoveredBlock42Block99Value10).
    recoveredBlock42Block99Value11 := recoveredBlock42Block99Local1.
    recoveredBlock42Block99Value12 := [:recoveredBlock42Block99Block131Arg1 | 
    | recoveredBlock42Block99Block131Local1 recoveredBlock42Block99Block131Stack0 recoveredBlock42Block99Block131Stack1 recoveredBlock42Block99Block131Stack2 recoveredBlock42Block99Block131Stack3 recoveredBlock42Block99Block131PC recoveredBlock42Block99Block131Step recoveredBlock42Block99Block131Done recoveredBlock42Block99Block131Result |
    recoveredBlock42Block99Block131Stack0 := nil.
    recoveredBlock42Block99Block131PC := 138.
    recoveredBlock42Block99Block131Done := false.
    [recoveredBlock42Block99Block131Done not] whileTrue: [
        recoveredBlock42Block99Block131Step := recoveredBlock42Block99Block131PC.
        recoveredBlock42Block99Block131Step = 138 ifTrue: [
            recoveredBlock42Block99Block131Stack1 := false.
            recoveredBlock42Block99Block131PC := 139.
        ].
        recoveredBlock42Block99Block131Step = 139 ifTrue: [
            recoveredBlock42Block99Block131Local1 := recoveredBlock42Block99Block131Stack1.
            recoveredBlock42Block99Block131PC := 142.
        ].
        recoveredBlock42Block99Block131Step = 142 ifTrue: [
            recoveredBlock42Block99Block131Stack1 := recoveredBlock42Block99Block131Arg1.
            recoveredBlock42Block99Block131PC := 145.
        ].
        recoveredBlock42Block99Block131Step = 145 ifTrue: [
            recoveredBlock42Block99Block131Stack2 := [:recoveredBlock42Block99Block131Block145Arg1 | 
    | recoveredBlock42Block99Block131Block145Local1 recoveredBlock42Block99Block131Block145Stack0 recoveredBlock42Block99Block131Block145Stack1 recoveredBlock42Block99Block131Block145Stack2 recoveredBlock42Block99Block131Block145Stack3 recoveredBlock42Block99Block131Block145Stack4 recoveredBlock42Block99Block131Block145Stack5 recoveredBlock42Block99Block131Block145PC recoveredBlock42Block99Block131Block145Step recoveredBlock42Block99Block131Block145Done recoveredBlock42Block99Block131Block145Result |
    recoveredBlock42Block99Block131Block145Stack0 := nil.
    recoveredBlock42Block99Block131Block145PC := 152.
    recoveredBlock42Block99Block131Block145Done := false.
    [recoveredBlock42Block99Block131Block145Done not] whileTrue: [
        recoveredBlock42Block99Block131Block145Step := recoveredBlock42Block99Block131Block145PC.
        recoveredBlock42Block99Block131Block145Step = 152 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := nil.
            recoveredBlock42Block99Block131Block145PC := 153.
        ].
        recoveredBlock42Block99Block131Block145Step = 153 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := recoveredBlock42Block99Block131Block145Arg1.
            recoveredBlock42Block99Block131Block145PC := 156.
        ].
        recoveredBlock42Block99Block131Block145Step = 156 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := (recoveredBlock42Block99Block131Block145Stack2) isAssociation.
            recoveredBlock42Block99Block131Block145PC := 158.
        ].
        recoveredBlock42Block99Block131Block145Step = 158 ifTrue: [
            (recoveredBlock42Block99Block131Block145Stack2) ifTrue: [recoveredBlock42Block99Block131Block145PC := 162] ifFalse: [recoveredBlock42Block99Block131Block145PC := 278].
        ].
        recoveredBlock42Block99Block131Block145Step = 162 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := recoveredBlock42Block99Block131Block145Arg1.
            recoveredBlock42Block99Block131Block145PC := 165.
        ].
        recoveredBlock42Block99Block131Block145Step = 165 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := (recoveredBlock42Block99Block131Block145Stack2) key.
            recoveredBlock42Block99Block131Block145PC := 167.
        ].
        recoveredBlock42Block99Block131Block145Step = 167 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack3 := 'super'.
            recoveredBlock42Block99Block131Block145PC := 169.
        ].
        recoveredBlock42Block99Block131Block145Step = 169 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := (recoveredBlock42Block99Block131Block145Stack2) ~= (recoveredBlock42Block99Block131Block145Stack3).
            recoveredBlock42Block99Block131Block145PC := 170.
        ].
        recoveredBlock42Block99Block131Block145Step = 170 ifTrue: [
            (recoveredBlock42Block99Block131Block145Stack2) ifTrue: [recoveredBlock42Block99Block131Block145PC := 174] ifFalse: [recoveredBlock42Block99Block131Block145PC := 278].
        ].
        recoveredBlock42Block99Block131Block145Step = 174 ifTrue: [
            recoveredBlock42Block99Block131Block145PC := 175.
        ].
        recoveredBlock42Block99Block131Block145Step = 175 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := recoveredBlock42Block99Block131Arg1.
            recoveredBlock42Block99Block131Block145PC := 178.
        ].
        recoveredBlock42Block99Block131Block145Step = 178 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := (recoveredBlock42Block99Block131Block145Stack1) methodClass.
            recoveredBlock42Block99Block131Block145PC := 180.
        ].
        recoveredBlock42Block99Block131Block145Step = 180 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := recoveredBlock42Block99Block131Block145Arg1.
            recoveredBlock42Block99Block131Block145PC := 183.
        ].
        recoveredBlock42Block99Block131Block145Step = 183 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := (recoveredBlock42Block99Block131Block145Stack2) key.
            recoveredBlock42Block99Block131Block145PC := 185.
        ].
        recoveredBlock42Block99Block131Block145Step = 185 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack3 := recoveredBlock42Local1.
            recoveredBlock42Block99Block131Block145PC := 188.
        ].
        recoveredBlock42Block99Block131Block145Step = 188 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack4 := [].
            recoveredBlock42Block99Block131Block145PC := 190.
        ].
        recoveredBlock42Block99Block131Block145Step = 190 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := (recoveredBlock42Block99Block131Block145Stack1) variableAssociationAt: (recoveredBlock42Block99Block131Block145Stack2) using: (recoveredBlock42Block99Block131Block145Stack3) ifAbsent: (recoveredBlock42Block99Block131Block145Stack4).
            recoveredBlock42Block99Block131Block145PC := 193.
        ].
        recoveredBlock42Block99Block131Block145Step = 193 ifTrue: [
            recoveredBlock42Block99Block131Block145Local1 := recoveredBlock42Block99Block131Block145Stack1.
            recoveredBlock42Block99Block131Block145PC := 196.
        ].
        recoveredBlock42Block99Block131Block145Step = 196 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := recoveredBlock42Block99Block131Block145Local1.
            recoveredBlock42Block99Block131Block145PC := 199.
        ].
        recoveredBlock42Block99Block131Block145Step = 199 ifTrue: [
            (recoveredBlock42Block99Block131Block145Stack1 ~~ nil) ifTrue: [recoveredBlock42Block99Block131Block145PC := 257] ifFalse: [recoveredBlock42Block99Block131Block145PC := 202].
        ].
        recoveredBlock42Block99Block131Block145Step = 202 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := System.
            recoveredBlock42Block99Block131Block145PC := 204.
        ].
        recoveredBlock42Block99Block131Block145Step = 204 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := (recoveredBlock42Block99Block131Block145Stack1) image.
            recoveredBlock42Block99Block131Block145PC := 206.
        ].
        recoveredBlock42Block99Block131Block145Step = 206 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := (recoveredBlock42Block99Block131Block145Stack1) globalNamespace.
            recoveredBlock42Block99Block131Block145PC := 208.
        ].
        recoveredBlock42Block99Block131Block145Step = 208 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := [:recoveredBlock42Block99Block131Block145Block208Arg1 | 
    | recoveredBlock42Block99Block131Block145Block208Stack0 recoveredBlock42Block99Block131Block145Block208Stack1 recoveredBlock42Block99Block131Block145Block208Stack2 recoveredBlock42Block99Block131Block145Block208Stack3 recoveredBlock42Block99Block131Block145Block208Stack4 recoveredBlock42Block99Block131Block145Block208Stack5 recoveredBlock42Block99Block131Block145Block208PC recoveredBlock42Block99Block131Block145Block208Step recoveredBlock42Block99Block131Block145Block208Done recoveredBlock42Block99Block131Block145Block208Result |
    recoveredBlock42Block99Block131Block145Block208Stack0 := nil.
    recoveredBlock42Block99Block131Block145Block208PC := 214.
    recoveredBlock42Block99Block131Block145Block208Done := false.
    [recoveredBlock42Block99Block131Block145Block208Done not] whileTrue: [
        recoveredBlock42Block99Block131Block145Block208Step := recoveredBlock42Block99Block131Block145Block208PC.
        recoveredBlock42Block99Block131Block145Block208Step = 214 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack1 := false.
            recoveredBlock42Block99Block131Block145Block208PC := 215.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 215 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack2 := recoveredBlock42Block99Block131Block145Block208Arg1.
            recoveredBlock42Block99Block131Block145Block208PC := 216.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 216 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack2 := (recoveredBlock42Block99Block131Block145Block208Stack2) class.
            recoveredBlock42Block99Block131Block145Block208PC := 218.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 218 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack3 := EsPoolDictionary.
            recoveredBlock42Block99Block131Block145Block208PC := 220.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 220 ifTrue: [
            (recoveredBlock42Block99Block131Block145Block208Stack2 ~~ recoveredBlock42Block99Block131Block145Block208Stack3) ifTrue: [recoveredBlock42Block99Block131Block145Block208PC := 252] ifFalse: [recoveredBlock42Block99Block131Block145Block208PC := 224].
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 224 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208PC := 225.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 225 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack1 := false.
            recoveredBlock42Block99Block131Block145Block208PC := 226.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 226 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack2 := recoveredBlock42Block99Block131Block145Block208Arg1.
            recoveredBlock42Block99Block131Block145Block208PC := 227.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 227 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack3 := recoveredBlock42Block99Block131Block145Arg1.
            recoveredBlock42Block99Block131Block145Block208PC := 230.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 230 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack3 := (recoveredBlock42Block99Block131Block145Block208Stack3) key.
            recoveredBlock42Block99Block131Block145Block208PC := 232.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 232 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack4 := [].
            recoveredBlock42Block99Block131Block145Block208PC := 234.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 234 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack2 := (recoveredBlock42Block99Block131Block145Block208Stack2) associationAt: (recoveredBlock42Block99Block131Block145Block208Stack3) ifAbsent: (recoveredBlock42Block99Block131Block145Block208Stack4).
            recoveredBlock42Block99Block131Block145Block208PC := 236.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 236 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack3 := recoveredBlock42Block99Block131Block145Block208Stack2.
            recoveredBlock42Block99Block131Block145Block208PC := 237.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 237 ifTrue: [
            recoveredBlock42Block99Block131Block145Local1 := recoveredBlock42Block99Block131Block145Block208Stack3.
            recoveredBlock42Block99Block131Block145Block208PC := 240.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 240 ifTrue: [
            (recoveredBlock42Block99Block131Block145Block208Stack2 == nil) ifTrue: [recoveredBlock42Block99Block131Block145Block208PC := 252] ifFalse: [recoveredBlock42Block99Block131Block145Block208PC := 244].
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 244 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208PC := 245.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 245 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack1 := recoveredBlock42Block99Block131Block145Local1.
            recoveredBlock42Block99Block131Block145Block208PC := 248.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 248 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack2 := recoveredBlock42Block99Block131Block145Arg1.
            recoveredBlock42Block99Block131Block145Block208PC := 251.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 251 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Stack1 := (recoveredBlock42Block99Block131Block145Block208Stack1) == (recoveredBlock42Block99Block131Block145Block208Stack2).
            recoveredBlock42Block99Block131Block145Block208PC := 252.
        ].
        recoveredBlock42Block99Block131Block145Block208Step = 252 ifTrue: [
            recoveredBlock42Block99Block131Block145Block208Result := recoveredBlock42Block99Block131Block145Block208Stack1.
            recoveredBlock42Block99Block131Block145Block208Done := true.
        ].
    ].
    recoveredBlock42Block99Block131Block145Block208Result
].
            recoveredBlock42Block99Block131Block145PC := 253.
        ].
        recoveredBlock42Block99Block131Block145Step = 253 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack3 := [].
            recoveredBlock42Block99Block131Block145PC := 255.
        ].
        recoveredBlock42Block99Block131Block145Step = 255 ifTrue: [
            (recoveredBlock42Block99Block131Block145Stack1) detect: (recoveredBlock42Block99Block131Block145Stack2) ifNone: (recoveredBlock42Block99Block131Block145Stack3).
            recoveredBlock42Block99Block131Block145PC := 257.
        ].
        recoveredBlock42Block99Block131Block145Step = 257 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := nil.
            recoveredBlock42Block99Block131Block145PC := 258.
        ].
        recoveredBlock42Block99Block131Block145Step = 258 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := recoveredBlock42Block99Block131Block145Local1.
            recoveredBlock42Block99Block131Block145PC := 261.
        ].
        recoveredBlock42Block99Block131Block145Step = 261 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack3 := recoveredBlock42Block99Block131Block145Arg1.
            recoveredBlock42Block99Block131Block145PC := 264.
        ].
        recoveredBlock42Block99Block131Block145Step = 264 ifTrue: [
            (recoveredBlock42Block99Block131Block145Stack2 == recoveredBlock42Block99Block131Block145Stack3) ifTrue: [recoveredBlock42Block99Block131Block145PC := 274] ifFalse: [recoveredBlock42Block99Block131Block145PC := 268].
        ].
        recoveredBlock42Block99Block131Block145Step = 268 ifTrue: [
            recoveredBlock42Block99Block131Block145PC := 269.
        ].
        recoveredBlock42Block99Block131Block145Step = 269 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack1 := true.
            recoveredBlock42Block99Block131Block145PC := 270.
        ].
        recoveredBlock42Block99Block131Block145Step = 270 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := recoveredBlock42Block99Block131Block145Stack1.
            recoveredBlock42Block99Block131Block145PC := 271.
        ].
        recoveredBlock42Block99Block131Block145Step = 271 ifTrue: [
            recoveredBlock42Block99Block131Local1 := recoveredBlock42Block99Block131Block145Stack2.
            recoveredBlock42Block99Block131Block145PC := 274.
        ].
        recoveredBlock42Block99Block131Block145Step = 274 ifTrue: [
            recoveredBlock42Block99Block131Block145Stack2 := nil.
            recoveredBlock42Block99Block131Block145PC := 275.
        ].
        recoveredBlock42Block99Block131Block145Step = 275 ifTrue: [
            recoveredBlock42Block99Block131Block145Local1 := recoveredBlock42Block99Block131Block145Stack2.
            recoveredBlock42Block99Block131Block145PC := 278.
        ].
        recoveredBlock42Block99Block131Block145Step = 278 ifTrue: [
            recoveredBlock42Block99Block131Block145Result := recoveredBlock42Block99Block131Block145Stack1.
            recoveredBlock42Block99Block131Block145Done := true.
        ].
    ].
    recoveredBlock42Block99Block131Block145Result
].
            recoveredBlock42Block99Block131PC := 279.
        ].
        recoveredBlock42Block99Block131Step = 279 ifTrue: [
            (recoveredBlock42Block99Block131Stack1) allLiteralsDo: (recoveredBlock42Block99Block131Stack2).
            recoveredBlock42Block99Block131PC := 281.
        ].
        recoveredBlock42Block99Block131Step = 281 ifTrue: [
            recoveredBlock42Block99Block131Stack1 := nil.
            recoveredBlock42Block99Block131PC := 282.
        ].
        recoveredBlock42Block99Block131Step = 282 ifTrue: [
            recoveredBlock42Block99Block131Stack2 := recoveredBlock42Block99Block131Local1.
            recoveredBlock42Block99Block131PC := 285.
        ].
        recoveredBlock42Block99Block131Step = 285 ifTrue: [
            (recoveredBlock42Block99Block131Stack2) ifTrue: [recoveredBlock42Block99Block131PC := 296] ifFalse: [recoveredBlock42Block99Block131PC := 288].
        ].
        recoveredBlock42Block99Block131Step = 288 ifTrue: [
            recoveredBlock42Block99Block131Stack2 := recoveredBlock42Block99Block131Arg1.
            recoveredBlock42Block99Block131PC := 291.
        ].
        recoveredBlock42Block99Block131Step = 291 ifTrue: [
            recoveredBlock42Block99Block131Stack2 := (recoveredBlock42Block99Block131Stack2) compiledCorrectly.
            recoveredBlock42Block99Block131PC := 293.
        ].
        recoveredBlock42Block99Block131Step = 293 ifTrue: [
            (recoveredBlock42Block99Block131Stack2) ifTrue: [recoveredBlock42Block99Block131PC := 305] ifFalse: [recoveredBlock42Block99Block131PC := 296].
        ].
        recoveredBlock42Block99Block131Step = 296 ifTrue: [
            recoveredBlock42Block99Block131PC := 297.
        ].
        recoveredBlock42Block99Block131Step = 297 ifTrue: [
            recoveredBlock42Block99Block131Stack1 := recoveredLocal1.
            recoveredBlock42Block99Block131PC := 300.
        ].
        recoveredBlock42Block99Block131Step = 300 ifTrue: [
            recoveredBlock42Block99Block131Stack2 := recoveredBlock42Block99Block131Arg1.
            recoveredBlock42Block99Block131PC := 303.
        ].
        recoveredBlock42Block99Block131Step = 303 ifTrue: [
            recoveredBlock42Block99Block131Stack1 := (recoveredBlock42Block99Block131Stack1) add: (recoveredBlock42Block99Block131Stack2).
            recoveredBlock42Block99Block131PC := 305.
        ].
        recoveredBlock42Block99Block131Step = 305 ifTrue: [
            recoveredBlock42Block99Block131Result := recoveredBlock42Block99Block131Stack1.
            recoveredBlock42Block99Block131Done := true.
        ].
    ].
    recoveredBlock42Block99Block131Result
].
    recoveredBlock42Block99Value13 := (recoveredBlock42Block99Value11) do: (recoveredBlock42Block99Value12).
    recoveredBlock42Block99Value13
].
            recoveredBlock42PC := 309.
        ].
        recoveredBlock42Step = 309 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) do: (recoveredBlock42Stack2).
            recoveredBlock42PC := 311.
        ].
        recoveredBlock42Step = 311 ifTrue: [
            recoveredBlock42Stack2 := nil.
            recoveredBlock42PC := 312.
        ].
        recoveredBlock42Step = 312 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Stack2.
            recoveredBlock42PC := 313.
        ].
        recoveredBlock42Step = 313 ifTrue: [
            recoveredBlock42Local2 := recoveredBlock42Stack3.
            recoveredBlock42PC := 316.
        ].
        recoveredBlock42Step = 316 ifTrue: [
            recoveredBlock42Local1 := recoveredBlock42Stack2.
            recoveredBlock42PC := 319.
        ].
        recoveredBlock42Step = 319 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"lib.ic method 0x2002f100; bytecode file offset 0x6b194"
!EmInterface methodsFor: 'recovered'!
applicationsToMove: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadedSubApplications.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block28005884Arg1 | 
    | block28005884Value0 block28005884Value1 block28005884Value2 |
    block28005884Value0 := block28005884Arg1.
    block28005884Value1 := (block28005884Value0) timeStamp.
    block28005884Value2 := (block28005884Value1) isEdition.
    block28005884Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isEmpty.
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 54] ifFalse: [recoveredBlock40PC := 58].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            ^recoveredBlock40Stack1
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) controller.
            recoveredBlock40PC := 61.
        ].
        recoveredBlock40Step = 61 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg2.
            recoveredBlock40PC := 64.
        ].
        recoveredBlock40Step = 64 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 68] ifFalse: [recoveredBlock40PC := 264].
        ].
        recoveredBlock40Step = 68 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) applications.
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredBlock40Stack2 := [:recoveredBlock40Block71Arg1 | 
    | recoveredBlock40Block71Value0 recoveredBlock40Block71Value1 recoveredBlock40Block71Value2 recoveredBlock40Block71Value3 |
    recoveredBlock40Block71Value0 := recoveredLocal4.
    recoveredBlock40Block71Value1 := recoveredBlock40Block71Arg1.
    recoveredBlock40Block71Value2 := [].
    recoveredBlock40Block71Value3 := (recoveredBlock40Block71Value0) remove: (recoveredBlock40Block71Value1) ifAbsent: (recoveredBlock40Block71Value2).
    recoveredBlock40Block71Value3
].
            recoveredBlock40PC := 87.
        ].
        recoveredBlock40Step = 87 ifTrue: [
            (recoveredBlock40Stack1) do: (recoveredBlock40Stack2).
            recoveredBlock40PC := 89.
        ].
        recoveredBlock40Step = 89 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 90.
        ].
        recoveredBlock40Step = 90 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) allSubclasses.
            recoveredBlock40PC := 92.
        ].
        recoveredBlock40Step = 92 ifTrue: [
            recoveredBlock40Stack2 := [:recoveredBlock40Block92Arg1 | 
    | recoveredBlock40Block92Stack0 recoveredBlock40Block92Stack1 recoveredBlock40Block92Stack2 recoveredBlock40Block92Stack3 recoveredBlock40Block92Stack4 recoveredBlock40Block92PC recoveredBlock40Block92Step recoveredBlock40Block92Done recoveredBlock40Block92Result |
    recoveredBlock40Block92Stack0 := nil.
    recoveredBlock40Block92PC := 98.
    recoveredBlock40Block92Done := false.
    [recoveredBlock40Block92Done not] whileTrue: [
        recoveredBlock40Block92Step := recoveredBlock40Block92PC.
        recoveredBlock40Block92Step = 98 ifTrue: [
            recoveredBlock40Block92Stack1 := nil.
            recoveredBlock40Block92PC := 99.
        ].
        recoveredBlock40Block92Step = 99 ifTrue: [
            recoveredBlock40Block92Stack2 := recoveredArg1.
            recoveredBlock40Block92PC := 102.
        ].
        recoveredBlock40Block92Step = 102 ifTrue: [
            recoveredBlock40Block92Stack3 := recoveredBlock40Block92Arg1.
            recoveredBlock40Block92PC := 103.
        ].
        recoveredBlock40Block92Step = 103 ifTrue: [
            recoveredBlock40Block92Stack2 := (recoveredBlock40Block92Stack2) includes: (recoveredBlock40Block92Stack3).
            recoveredBlock40Block92PC := 105.
        ].
        recoveredBlock40Block92Step = 105 ifTrue: [
            (recoveredBlock40Block92Stack2) ifTrue: [recoveredBlock40Block92PC := 163] ifFalse: [recoveredBlock40Block92PC := 108].
        ].
        recoveredBlock40Block92Step = 108 ifTrue: [
            recoveredBlock40Block92PC := 109.
        ].
        recoveredBlock40Block92Step = 109 ifTrue: [
            recoveredBlock40Block92Stack1 := recoveredBlock40Block92Arg1.
            recoveredBlock40Block92PC := 110.
        ].
        recoveredBlock40Block92Step = 110 ifTrue: [
            recoveredBlock40Block92Stack1 := (recoveredBlock40Block92Stack1) controller.
            recoveredBlock40Block92PC := 112.
        ].
        recoveredBlock40Block92Step = 112 ifTrue: [
            recoveredBlock40Block92Stack1 := (recoveredBlock40Block92Stack1) rootApplication.
            recoveredBlock40Block92PC := 114.
        ].
        recoveredBlock40Block92Step = 114 ifTrue: [
            recoveredLocal3 := recoveredBlock40Block92Stack1.
            recoveredBlock40Block92PC := 117.
        ].
        recoveredBlock40Block92Step = 117 ifTrue: [
            recoveredBlock40Block92Stack1 := Set.
            recoveredBlock40Block92PC := 119.
        ].
        recoveredBlock40Block92Step = 119 ifTrue: [
            recoveredBlock40Block92Stack1 := (recoveredBlock40Block92Stack1) new.
            recoveredBlock40Block92PC := 121.
        ].
        recoveredBlock40Block92Step = 121 ifTrue: [
            recoveredBlock40Block92Stack2 := recoveredBlock40Block92Stack1.
            recoveredBlock40Block92PC := 122.
        ].
        recoveredBlock40Block92Step = 122 ifTrue: [
            recoveredLocal2 := recoveredBlock40Block92Stack2.
            recoveredBlock40Block92PC := 125.
        ].
        recoveredBlock40Block92Step = 125 ifTrue: [
            recoveredBlock40Block92Stack2 := recoveredBlock40Block92Stack1.
            recoveredBlock40Block92PC := 126.
        ].
        recoveredBlock40Block92Step = 126 ifTrue: [
            recoveredBlock40Block92Stack3 := recoveredLocal3.
            recoveredBlock40Block92PC := 129.
        ].
        recoveredBlock40Block92Step = 129 ifTrue: [
            recoveredBlock40Block92Stack3 := (recoveredBlock40Block92Stack3) allPrerequisitesWithSubApplications.
            recoveredBlock40Block92PC := 131.
        ].
        recoveredBlock40Block92Step = 131 ifTrue: [
            (recoveredBlock40Block92Stack2) addAll: (recoveredBlock40Block92Stack3).
            recoveredBlock40Block92PC := 133.
        ].
        recoveredBlock40Block92Step = 133 ifTrue: [
            recoveredBlock40Block92Stack2 := recoveredLocal3.
            recoveredBlock40Block92PC := 136.
        ].
        recoveredBlock40Block92Step = 136 ifTrue: [
            recoveredBlock40Block92Stack2 := (recoveredBlock40Block92Stack2) withAllSubApplications.
            recoveredBlock40Block92PC := 138.
        ].
        recoveredBlock40Block92Step = 138 ifTrue: [
            (recoveredBlock40Block92Stack1) addAll: (recoveredBlock40Block92Stack2).
            recoveredBlock40Block92PC := 140.
        ].
        recoveredBlock40Block92Step = 140 ifTrue: [
            recoveredBlock40Block92Stack1 := recoveredLocal4.
            recoveredBlock40Block92PC := 143.
        ].
        recoveredBlock40Block92Step = 143 ifTrue: [
            recoveredBlock40Block92Stack2 := [:recoveredBlock40Block92Block143Arg1 | 
    | recoveredBlock40Block92Block143Value0 recoveredBlock40Block92Block143Value1 recoveredBlock40Block92Block143Value2 |
    recoveredBlock40Block92Block143Value0 := recoveredLocal2.
    recoveredBlock40Block92Block143Value1 := recoveredBlock40Block92Block143Arg1.
    recoveredBlock40Block92Block143Value2 := (recoveredBlock40Block92Block143Value0) includes: (recoveredBlock40Block92Block143Value1).
    recoveredBlock40Block92Block143Value2
].
            recoveredBlock40Block92PC := 157.
        ].
        recoveredBlock40Block92Step = 157 ifTrue: [
            recoveredBlock40Block92Stack1 := (recoveredBlock40Block92Stack1) select: (recoveredBlock40Block92Stack2).
            recoveredBlock40Block92PC := 159.
        ].
        recoveredBlock40Block92Step = 159 ifTrue: [
            recoveredBlock40Block92Stack2 := recoveredBlock40Block92Stack1.
            recoveredBlock40Block92PC := 160.
        ].
        recoveredBlock40Block92Step = 160 ifTrue: [
            recoveredLocal4 := recoveredBlock40Block92Stack2.
            recoveredBlock40Block92PC := 163.
        ].
        recoveredBlock40Block92Step = 163 ifTrue: [
            recoveredBlock40Block92Result := recoveredBlock40Block92Stack1.
            recoveredBlock40Block92Done := true.
        ].
    ].
    recoveredBlock40Block92Result
].
            recoveredBlock40PC := 164.
        ].
        recoveredBlock40Step = 164 ifTrue: [
            (recoveredBlock40Stack1) do: (recoveredBlock40Stack2).
            recoveredBlock40PC := 166.
        ].
        recoveredBlock40Step = 166 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 167.
        ].
        recoveredBlock40Step = 167 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) superclass.
            recoveredBlock40PC := 169.
        ].
        recoveredBlock40Step = 169 ifTrue: [
            recoveredLocal1 := recoveredBlock40Stack1.
            recoveredBlock40PC := 172.
        ].
        recoveredBlock40Step = 172 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 173.
        ].
        recoveredBlock40Step = 173 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 174.
        ].
        recoveredBlock40Step = 174 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) environment.
            recoveredBlock40PC := 176.
        ].
        recoveredBlock40Step = 176 ifTrue: [
            recoveredBlock40Stack3 := 'Object'.
            recoveredBlock40PC := 178.
        ].
        recoveredBlock40Step = 178 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) classAt: (recoveredBlock40Stack3).
            recoveredBlock40PC := 180.
        ].
        recoveredBlock40Step = 180 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal1.
            recoveredBlock40PC := 183.
        ].
        recoveredBlock40Step = 183 ifTrue: [
            (recoveredBlock40Stack2 == recoveredBlock40Stack3) ifTrue: [recoveredBlock40PC := 261] ifFalse: [recoveredBlock40PC := 186].
        ].
        recoveredBlock40Step = 186 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal1.
            recoveredBlock40PC := 189.
        ].
        recoveredBlock40Step = 189 ifTrue: [
            (recoveredBlock40Stack2 == nil) ifTrue: [recoveredBlock40PC := 261] ifFalse: [recoveredBlock40PC := 192].
        ].
        recoveredBlock40Step = 192 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg1.
            recoveredBlock40PC := 195.
        ].
        recoveredBlock40Step = 195 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal1.
            recoveredBlock40PC := 198.
        ].
        recoveredBlock40Step = 198 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) includes: (recoveredBlock40Stack3).
            recoveredBlock40PC := 200.
        ].
        recoveredBlock40Step = 200 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 261] ifFalse: [recoveredBlock40PC := 204].
        ].
        recoveredBlock40Step = 204 ifTrue: [
            recoveredBlock40PC := 205.
        ].
        recoveredBlock40Step = 205 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 208.
        ].
        recoveredBlock40Step = 208 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) controller.
            recoveredBlock40PC := 210.
        ].
        recoveredBlock40Step = 210 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) rootApplication.
            recoveredBlock40PC := 212.
        ].
        recoveredBlock40Step = 212 ifTrue: [
            recoveredLocal3 := recoveredBlock40Stack1.
            recoveredBlock40PC := 215.
        ].
        recoveredBlock40Step = 215 ifTrue: [
            recoveredBlock40Stack1 := Set.
            recoveredBlock40PC := 217.
        ].
        recoveredBlock40Step = 217 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) new.
            recoveredBlock40PC := 219.
        ].
        recoveredBlock40Step = 219 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 220.
        ].
        recoveredBlock40Step = 220 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack2.
            recoveredBlock40PC := 223.
        ].
        recoveredBlock40Step = 223 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 224.
        ].
        recoveredBlock40Step = 224 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal3.
            recoveredBlock40PC := 227.
        ].
        recoveredBlock40Step = 227 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) allDependentApplicationsWithSubApplications.
            recoveredBlock40PC := 229.
        ].
        recoveredBlock40Step = 229 ifTrue: [
            (recoveredBlock40Stack2) addAll: (recoveredBlock40Stack3).
            recoveredBlock40PC := 231.
        ].
        recoveredBlock40Step = 231 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal3.
            recoveredBlock40PC := 234.
        ].
        recoveredBlock40Step = 234 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) withAllSubApplications.
            recoveredBlock40PC := 236.
        ].
        recoveredBlock40Step = 236 ifTrue: [
            (recoveredBlock40Stack1) addAll: (recoveredBlock40Stack2).
            recoveredBlock40PC := 238.
        ].
        recoveredBlock40Step = 238 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 241.
        ].
        recoveredBlock40Step = 241 ifTrue: [
            recoveredBlock40Stack2 := [:recoveredBlock40Block241Arg1 | 
    | recoveredBlock40Block241Value0 recoveredBlock40Block241Value1 recoveredBlock40Block241Value2 |
    recoveredBlock40Block241Value0 := recoveredLocal2.
    recoveredBlock40Block241Value1 := recoveredBlock40Block241Arg1.
    recoveredBlock40Block241Value2 := (recoveredBlock40Block241Value0) includes: (recoveredBlock40Block241Value1).
    recoveredBlock40Block241Value2
].
            recoveredBlock40PC := 255.
        ].
        recoveredBlock40Step = 255 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) select: (recoveredBlock40Stack2).
            recoveredBlock40PC := 257.
        ].
        recoveredBlock40Step = 257 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 258.
        ].
        recoveredBlock40Step = 258 ifTrue: [
            recoveredLocal4 := recoveredBlock40Stack2.
            recoveredBlock40PC := 261.
        ].
        recoveredBlock40Step = 261 ifTrue: [
            recoveredBlock40PC := 317.
        ].
        recoveredBlock40Step = 264 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 265.
        ].
        recoveredBlock40Step = 265 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) controller.
            recoveredBlock40PC := 267.
        ].
        recoveredBlock40Step = 267 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) rootApplication.
            recoveredBlock40PC := 269.
        ].
        recoveredBlock40Step = 269 ifTrue: [
            recoveredLocal3 := recoveredBlock40Stack1.
            recoveredBlock40PC := 272.
        ].
        recoveredBlock40Step = 272 ifTrue: [
            recoveredBlock40Stack1 := Set.
            recoveredBlock40PC := 274.
        ].
        recoveredBlock40Step = 274 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) new.
            recoveredBlock40PC := 276.
        ].
        recoveredBlock40Step = 276 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 277.
        ].
        recoveredBlock40Step = 277 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack2.
            recoveredBlock40PC := 280.
        ].
        recoveredBlock40Step = 280 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 281.
        ].
        recoveredBlock40Step = 281 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal3.
            recoveredBlock40PC := 284.
        ].
        recoveredBlock40Step = 284 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) allDependentApplicationsWithSubApplications.
            recoveredBlock40PC := 286.
        ].
        recoveredBlock40Step = 286 ifTrue: [
            (recoveredBlock40Stack2) addAll: (recoveredBlock40Stack3).
            recoveredBlock40PC := 288.
        ].
        recoveredBlock40Step = 288 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal3.
            recoveredBlock40PC := 291.
        ].
        recoveredBlock40Step = 291 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) withAllSubApplications.
            recoveredBlock40PC := 293.
        ].
        recoveredBlock40Step = 293 ifTrue: [
            (recoveredBlock40Stack1) addAll: (recoveredBlock40Stack2).
            recoveredBlock40PC := 295.
        ].
        recoveredBlock40Step = 295 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal4.
            recoveredBlock40PC := 298.
        ].
        recoveredBlock40Step = 298 ifTrue: [
            recoveredBlock40Stack2 := [:recoveredBlock40Block298Arg1 | 
    | recoveredBlock40Block298Value0 recoveredBlock40Block298Value1 recoveredBlock40Block298Value2 |
    recoveredBlock40Block298Value0 := recoveredLocal2.
    recoveredBlock40Block298Value1 := recoveredBlock40Block298Arg1.
    recoveredBlock40Block298Value2 := (recoveredBlock40Block298Value0) includes: (recoveredBlock40Block298Value1).
    recoveredBlock40Block298Value2
].
            recoveredBlock40PC := 311.
        ].
        recoveredBlock40Step = 311 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) select: (recoveredBlock40Stack2).
            recoveredBlock40PC := 313.
        ].
        recoveredBlock40Step = 313 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 314.
        ].
        recoveredBlock40Step = 314 ifTrue: [
            recoveredLocal4 := recoveredBlock40Stack2.
            recoveredBlock40PC := 317.
        ].
        recoveredBlock40Step = 317 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := [:recoveredBlock323Arg1 | 
    | recoveredBlock323Value0 recoveredBlock323Value1 recoveredBlock323Value2 recoveredBlock323Value3 recoveredBlock323Value4 |
    recoveredBlock323Value0 := recoveredBlock323Arg1.
    recoveredBlock323Value1 := (self) groupMembersFor: (recoveredBlock323Value0).
    recoveredBlock323Value2 := EmUser.
    recoveredBlock323Value3 := (recoveredBlock323Value2) current.
    recoveredBlock323Value4 := (recoveredBlock323Value1) includes: (recoveredBlock323Value3).
    recoveredBlock323Value4
].
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200358dc; bytecode file offset 0x71a30"
!EmInterface methodsFor: 'recovered'!
copyClasses: recoveredArg1 in: recoveredArg2 references: recoveredArg3 methodsNotCopied: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefined.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block28005fd4Arg1 | 
    | block28005fd4Value0 block28005fd4Value1 |
    block28005fd4Value0 := block28005fd4Arg1.
    block28005fd4Value1 := (block28005fd4Value0) symbol.
    block28005fd4Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) owningImage.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) globalNamespace.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) value.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) asSymbol.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) classAt: (recoveredBlock24Stack2).
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredLocal12 := recoveredBlock24Stack2.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            (recoveredBlock24Stack1 == nil) ifTrue: [recoveredBlock24PC := 108] ifFalse: [recoveredBlock24PC := 52].
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) owningImage.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) loadedSubApplications.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal12.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) includes: (recoveredBlock24Stack2).
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 68] ifFalse: [recoveredBlock24PC := 88].
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) owningImage.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack2 := NlsCatEMbsES.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            recoveredBlock24Stack3 := 'MxEMbsES18'.
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) residentMsg: (recoveredBlock24Stack3).
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 80.
        ].
        recoveredBlock24Step = 80 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) value.
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) bindWith: (recoveredBlock24Stack3).
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            (recoveredBlock24Stack1) errorMessage: (recoveredBlock24Stack2).
            recoveredBlock24PC := 86.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) owningImage.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            recoveredBlock24Stack2 := NlsCatEMbsES.
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24Stack3 := 'MxEMbsES19'.
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 97 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) residentMsg: (recoveredBlock24Stack3).
            recoveredBlock24PC := 99.
        ].
        recoveredBlock24Step = 99 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 100.
        ].
        recoveredBlock24Step = 100 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) value.
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) bindWith: (recoveredBlock24Stack3).
            recoveredBlock24PC := 104.
        ].
        recoveredBlock24Step = 104 ifTrue: [
            (recoveredBlock24Stack1) errorMessage: (recoveredBlock24Stack2).
            recoveredBlock24PC := 106.
        ].
        recoveredBlock24Step = 106 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 108 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal13.
            recoveredBlock24PC := 111.
        ].
        recoveredBlock24Step = 111 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 112.
        ].
        recoveredBlock24Step = 112 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) value.
            recoveredBlock24PC := 114.
        ].
        recoveredBlock24Step = 114 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) asSymbol.
            recoveredBlock24PC := 116.
        ].
        recoveredBlock24Step = 116 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) includes: (recoveredBlock24Stack2).
            recoveredBlock24PC := 118.
        ].
        recoveredBlock24Step = 118 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 122] ifFalse: [recoveredBlock24PC := 147].
        ].
        recoveredBlock24Step = 122 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 125.
        ].
        recoveredBlock24Step = 125 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) owningImage.
            recoveredBlock24PC := 127.
        ].
        recoveredBlock24Step = 127 ifTrue: [
            recoveredBlock24Stack2 := NlsCatEMbsES.
            recoveredBlock24PC := 129.
        ].
        recoveredBlock24Step = 129 ifTrue: [
            recoveredBlock24Stack3 := 'MxEMbsES20'.
            recoveredBlock24PC := 131.
        ].
        recoveredBlock24Step = 131 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) residentMsg: (recoveredBlock24Stack3).
            recoveredBlock24PC := 133.
        ].
        recoveredBlock24Step = 133 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 134.
        ].
        recoveredBlock24Step = 134 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) value.
            recoveredBlock24PC := 136.
        ].
        recoveredBlock24Step = 136 ifTrue: [
            recoveredBlock24Stack4 := recoveredArg2.
            recoveredBlock24PC := 139.
        ].
        recoveredBlock24Step = 139 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) signature.
            recoveredBlock24PC := 141.
        ].
        recoveredBlock24Step = 141 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) bindWith: (recoveredBlock24Stack3) with: (recoveredBlock24Stack4).
            recoveredBlock24PC := 143.
        ].
        recoveredBlock24Step = 143 ifTrue: [
            (recoveredBlock24Stack1) errorMessage: (recoveredBlock24Stack2).
            recoveredBlock24PC := 145.
        ].
        recoveredBlock24Step = 145 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 146.
        ].
        recoveredBlock24Step = 146 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 147 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 148.
        ].
        recoveredBlock24Step = 148 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg2.
            recoveredBlock24PC := 151.
        ].
        recoveredBlock24Step = 151 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) owningImage.
            recoveredBlock24PC := 153.
        ].
        recoveredBlock24Step = 153 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) loadedSubApplications.
            recoveredBlock24PC := 155.
        ].
        recoveredBlock24Step = 155 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 156.
        ].
        recoveredBlock24Step = 156 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) key.
            recoveredBlock24PC := 158.
        ].
        recoveredBlock24Step = 158 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) includes: (recoveredBlock24Stack3).
            recoveredBlock24PC := 160.
        ].
        recoveredBlock24Step = 160 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 164] ifFalse: [recoveredBlock24PC := 187].
        ].
        recoveredBlock24Step = 164 ifTrue: [
            recoveredBlock24PC := 165.
        ].
        recoveredBlock24Step = 165 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 168.
        ].
        recoveredBlock24Step = 168 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) owningImage.
            recoveredBlock24PC := 170.
        ].
        recoveredBlock24Step = 170 ifTrue: [
            recoveredBlock24Stack2 := NlsCatEMbsES.
            recoveredBlock24PC := 172.
        ].
        recoveredBlock24Step = 172 ifTrue: [
            recoveredBlock24Stack3 := 'MxEMbsES21'.
            recoveredBlock24PC := 174.
        ].
        recoveredBlock24Step = 174 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) residentMsg: (recoveredBlock24Stack3).
            recoveredBlock24PC := 176.
        ].
        recoveredBlock24Step = 176 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 177.
        ].
        recoveredBlock24Step = 177 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) key.
            recoveredBlock24PC := 179.
        ].
        recoveredBlock24Step = 179 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) name.
            recoveredBlock24PC := 181.
        ].
        recoveredBlock24Step = 181 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) bindWith: (recoveredBlock24Stack3).
            recoveredBlock24PC := 183.
        ].
        recoveredBlock24Step = 183 ifTrue: [
            (recoveredBlock24Stack1) errorMessage: (recoveredBlock24Stack2).
            recoveredBlock24PC := 185.
        ].
        recoveredBlock24Step = 185 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 186.
        ].
        recoveredBlock24Step = 186 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 187 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := EmSortedHierarchy.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) sort: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := [:recoveredBlock219Arg1 | 
    | recoveredBlock219Stack0 recoveredBlock219Stack1 recoveredBlock219Stack2 recoveredBlock219Stack3 recoveredBlock219Stack4 recoveredBlock219Stack5 recoveredBlock219Stack6 recoveredBlock219PC recoveredBlock219Step recoveredBlock219Done recoveredBlock219Result |
    recoveredBlock219Stack0 := self.
    recoveredBlock219PC := 226.
    recoveredBlock219Done := false.
    [recoveredBlock219Done not] whileTrue: [
        recoveredBlock219Step := recoveredBlock219PC.
        recoveredBlock219Step = 226 ifTrue: [
            recoveredBlock219Stack1 := Set.
            recoveredBlock219PC := 228.
        ].
        recoveredBlock219Step = 228 ifTrue: [
            recoveredBlock219Stack2 := recoveredArg2.
            recoveredBlock219PC := 231.
        ].
        recoveredBlock219Step = 231 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) with: (recoveredBlock219Stack2).
            recoveredBlock219PC := 233.
        ].
        recoveredBlock219Step = 233 ifTrue: [
            recoveredLocal9 := recoveredBlock219Stack1.
            recoveredBlock219PC := 236.
        ].
        recoveredBlock219Step = 236 ifTrue: [
            recoveredBlock219Stack1 := recoveredBlock219Arg1.
            recoveredBlock219PC := 239.
        ].
        recoveredBlock219Step = 239 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) applications.
            recoveredBlock219PC := 241.
        ].
        recoveredBlock219Step = 241 ifTrue: [
            recoveredBlock219Stack2 := recoveredBlock219Stack1.
            recoveredBlock219PC := 242.
        ].
        recoveredBlock219Step = 242 ifTrue: [
            recoveredLocal8 := recoveredBlock219Stack2.
            recoveredBlock219PC := 245.
        ].
        recoveredBlock219Step = 245 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) size.
            recoveredBlock219PC := 247.
        ].
        recoveredBlock219Step = 247 ifTrue: [
            recoveredBlock219Stack2 := 1.
            recoveredBlock219PC := 249.
        ].
        recoveredBlock219Step = 249 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) > (recoveredBlock219Stack2).
            recoveredBlock219PC := 250.
        ].
        recoveredBlock219Step = 250 ifTrue: [
            (recoveredBlock219Stack1) ifTrue: [recoveredBlock219PC := 254] ifFalse: [recoveredBlock219PC := 337].
        ].
        recoveredBlock219Step = 254 ifTrue: [
            recoveredBlock219Stack1 := recoveredBlock219Arg1.
            recoveredBlock219PC := 257.
        ].
        recoveredBlock219Step = 257 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) controller.
            recoveredBlock219PC := 259.
        ].
        recoveredBlock219Step = 259 ifTrue: [
            recoveredBlock219Stack2 := recoveredArg2.
            recoveredBlock219PC := 262.
        ].
        recoveredBlock219Step = 262 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) = (recoveredBlock219Stack2).
            recoveredBlock219PC := 263.
        ].
        recoveredBlock219Step = 263 ifTrue: [
            (recoveredBlock219Stack1) ifTrue: [recoveredBlock219PC := 266] ifFalse: [recoveredBlock219PC := 302].
        ].
        recoveredBlock219Step = 266 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg2.
            recoveredBlock219PC := 269.
        ].
        recoveredBlock219Step = 269 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) owningImage.
            recoveredBlock219PC := 271.
        ].
        recoveredBlock219Step = 271 ifTrue: [
            recoveredBlock219Stack2 := NlsCatEMbsES.
            recoveredBlock219PC := 273.
        ].
        recoveredBlock219Step = 273 ifTrue: [
            recoveredBlock219Stack3 := 'MxEMbsES22'.
            recoveredBlock219PC := 275.
        ].
        recoveredBlock219Step = 275 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) residentMsg: (recoveredBlock219Stack3).
            recoveredBlock219PC := 277.
        ].
        recoveredBlock219Step = 277 ifTrue: [
            recoveredBlock219Stack3 := recoveredBlock219Arg1.
            recoveredBlock219PC := 280.
        ].
        recoveredBlock219Step = 280 ifTrue: [
            recoveredBlock219Stack3 := (recoveredBlock219Stack3) name.
            recoveredBlock219PC := 282.
        ].
        recoveredBlock219Step = 282 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) bindWith: (recoveredBlock219Stack3).
            recoveredBlock219PC := 284.
        ].
        recoveredBlock219Step = 284 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) confirm: (recoveredBlock219Stack2).
            recoveredBlock219PC := 286.
        ].
        recoveredBlock219Step = 286 ifTrue: [
            (recoveredBlock219Stack1) ifTrue: [recoveredBlock219PC := 290] ifFalse: [recoveredBlock219PC := 298].
        ].
        recoveredBlock219Step = 290 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal9.
            recoveredBlock219PC := 293.
        ].
        recoveredBlock219Step = 293 ifTrue: [
            recoveredBlock219Stack2 := recoveredLocal8.
            recoveredBlock219PC := 296.
        ].
        recoveredBlock219Step = 296 ifTrue: [
            (recoveredBlock219Stack1) addAll: (recoveredBlock219Stack2).
            recoveredBlock219PC := 298.
        ].
        recoveredBlock219Step = 298 ifTrue: [
            recoveredBlock219PC := 337.
        ].
        recoveredBlock219Step = 302 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg2.
            recoveredBlock219PC := 305.
        ].
        recoveredBlock219Step = 305 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) owningImage.
            recoveredBlock219PC := 307.
        ].
        recoveredBlock219Step = 307 ifTrue: [
            recoveredBlock219Stack2 := NlsCatEMbsES.
            recoveredBlock219PC := 309.
        ].
        recoveredBlock219Step = 309 ifTrue: [
            recoveredBlock219Stack3 := 'MxEMbsES23'.
            recoveredBlock219PC := 311.
        ].
        recoveredBlock219Step = 311 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) residentMsg: (recoveredBlock219Stack3).
            recoveredBlock219PC := 313.
        ].
        recoveredBlock219Step = 313 ifTrue: [
            recoveredBlock219Stack3 := recoveredBlock219Arg1.
            recoveredBlock219PC := 316.
        ].
        recoveredBlock219Step = 316 ifTrue: [
            recoveredBlock219Stack3 := (recoveredBlock219Stack3) name.
            recoveredBlock219PC := 318.
        ].
        recoveredBlock219Step = 318 ifTrue: [
            recoveredBlock219Stack4 := recoveredArg2.
            recoveredBlock219PC := 321.
        ].
        recoveredBlock219Step = 321 ifTrue: [
            recoveredBlock219Stack4 := (recoveredBlock219Stack4) name.
            recoveredBlock219PC := 323.
        ].
        recoveredBlock219Step = 323 ifTrue: [
            recoveredBlock219Stack5 := recoveredBlock219Arg1.
            recoveredBlock219PC := 326.
        ].
        recoveredBlock219Step = 326 ifTrue: [
            recoveredBlock219Stack5 := (recoveredBlock219Stack5) controller.
            recoveredBlock219PC := 328.
        ].
        recoveredBlock219Step = 328 ifTrue: [
            recoveredBlock219Stack5 := (recoveredBlock219Stack5) name.
            recoveredBlock219PC := 330.
        ].
        recoveredBlock219Step = 330 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) bindWith: (recoveredBlock219Stack3) with: (recoveredBlock219Stack4) with: (recoveredBlock219Stack5).
            recoveredBlock219PC := 333.
        ].
        recoveredBlock219Step = 333 ifTrue: [
            (recoveredBlock219Stack1) message: (recoveredBlock219Stack2).
            recoveredBlock219PC := 335.
        ].
        recoveredBlock219Step = 335 ifTrue: [
            recoveredBlock219Stack1 := false.
            recoveredBlock219PC := 336.
        ].
        recoveredBlock219Step = 336 ifTrue: [
            ^recoveredBlock219Stack1
        ].
        recoveredBlock219Step = 337 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal9.
            recoveredBlock219PC := 340.
        ].
        recoveredBlock219Step = 340 ifTrue: [
            recoveredBlock219Stack2 := [:recoveredBlock219Block340Arg1 | 
    | recoveredBlock219Block340Stack0 recoveredBlock219Block340Stack1 recoveredBlock219Block340Stack2 recoveredBlock219Block340Stack3 recoveredBlock219Block340Stack4 recoveredBlock219Block340Stack5 recoveredBlock219Block340Stack6 recoveredBlock219Block340PC recoveredBlock219Block340Step recoveredBlock219Block340Done recoveredBlock219Block340Result |
    recoveredBlock219Block340Stack0 := self.
    recoveredBlock219Block340PC := 346.
    recoveredBlock219Block340Done := false.
    [recoveredBlock219Block340Done not] whileTrue: [
        recoveredBlock219Block340Step := recoveredBlock219Block340PC.
        recoveredBlock219Block340Step = 346 ifTrue: [
            recoveredBlock219Block340Stack1 := recoveredBlock219Block340Arg1.
            recoveredBlock219Block340PC := 347.
        ].
        recoveredBlock219Block340Step = 347 ifTrue: [
            recoveredBlock219Block340Stack1 := (recoveredBlock219Block340Stack1) isEdition.
            recoveredBlock219Block340PC := 349.
        ].
        recoveredBlock219Block340Step = 349 ifTrue: [
            (recoveredBlock219Block340Stack1) ifTrue: [recoveredBlock219Block340PC := 377] ifFalse: [recoveredBlock219Block340PC := 352].
        ].
        recoveredBlock219Block340Step = 352 ifTrue: [
            recoveredBlock219Block340Stack1 := recoveredArg2.
            recoveredBlock219Block340PC := 355.
        ].
        recoveredBlock219Block340Step = 355 ifTrue: [
            recoveredBlock219Block340Stack1 := (recoveredBlock219Block340Stack1) owningImage.
            recoveredBlock219Block340PC := 357.
        ].
        recoveredBlock219Block340Step = 357 ifTrue: [
            recoveredBlock219Block340Stack2 := NlsCatEMbsES.
            recoveredBlock219Block340PC := 359.
        ].
        recoveredBlock219Block340Step = 359 ifTrue: [
            recoveredBlock219Block340Stack3 := 'MxEMbsES24'.
            recoveredBlock219Block340PC := 361.
        ].
        recoveredBlock219Block340Step = 361 ifTrue: [
            recoveredBlock219Block340Stack2 := (recoveredBlock219Block340Stack2) residentMsg: (recoveredBlock219Block340Stack3).
            recoveredBlock219Block340PC := 363.
        ].
        recoveredBlock219Block340Step = 363 ifTrue: [
            recoveredBlock219Block340Stack3 := recoveredBlock219Arg1.
            recoveredBlock219Block340PC := 366.
        ].
        recoveredBlock219Block340Step = 366 ifTrue: [
            recoveredBlock219Block340Stack3 := (recoveredBlock219Block340Stack3) name.
            recoveredBlock219Block340PC := 368.
        ].
        recoveredBlock219Block340Step = 368 ifTrue: [
            recoveredBlock219Block340Stack4 := recoveredBlock219Block340Arg1.
            recoveredBlock219Block340PC := 369.
        ].
        recoveredBlock219Block340Step = 369 ifTrue: [
            recoveredBlock219Block340Stack4 := (recoveredBlock219Block340Stack4) name.
            recoveredBlock219Block340PC := 371.
        ].
        recoveredBlock219Block340Step = 371 ifTrue: [
            recoveredBlock219Block340Stack2 := (recoveredBlock219Block340Stack2) bindWith: (recoveredBlock219Block340Stack3) with: (recoveredBlock219Block340Stack4).
            recoveredBlock219Block340PC := 373.
        ].
        recoveredBlock219Block340Step = 373 ifTrue: [
            (recoveredBlock219Block340Stack1) errorMessage: (recoveredBlock219Block340Stack2).
            recoveredBlock219Block340PC := 375.
        ].
        recoveredBlock219Block340Step = 375 ifTrue: [
            recoveredBlock219Block340Stack1 := false.
            recoveredBlock219Block340PC := 376.
        ].
        recoveredBlock219Block340Step = 376 ifTrue: [
            ^recoveredBlock219Block340Stack1
        ].
        recoveredBlock219Block340Step = 377 ifTrue: [
            recoveredBlock219Block340Stack1 := nil.
            recoveredBlock219Block340PC := 378.
        ].
        recoveredBlock219Block340Step = 378 ifTrue: [
            recoveredBlock219Block340Stack2 := self.
            recoveredBlock219Block340PC := 379.
        ].
        recoveredBlock219Block340Step = 379 ifTrue: [
            recoveredBlock219Block340Stack3 := recoveredBlock219Block340Arg1.
            recoveredBlock219Block340PC := 380.
        ].
        recoveredBlock219Block340Step = 380 ifTrue: [
            recoveredBlock219Block340Stack2 := (recoveredBlock219Block340Stack2) groupMembersFor: (recoveredBlock219Block340Stack3).
            recoveredBlock219Block340PC := 382.
        ].
        recoveredBlock219Block340Step = 382 ifTrue: [
            recoveredBlock219Block340Stack3 := recoveredLocal10.
            recoveredBlock219Block340PC := 385.
        ].
        recoveredBlock219Block340Step = 385 ifTrue: [
            recoveredBlock219Block340Stack2 := (recoveredBlock219Block340Stack2) includes: (recoveredBlock219Block340Stack3).
            recoveredBlock219Block340PC := 387.
        ].
        recoveredBlock219Block340Step = 387 ifTrue: [
            (recoveredBlock219Block340Stack2) ifTrue: [recoveredBlock219Block340PC := 422] ifFalse: [recoveredBlock219Block340PC := 390].
        ].
        recoveredBlock219Block340Step = 390 ifTrue: [
            recoveredBlock219Block340PC := 391.
        ].
        recoveredBlock219Block340Step = 391 ifTrue: [
            recoveredBlock219Block340Stack1 := recoveredArg2.
            recoveredBlock219Block340PC := 394.
        ].
        recoveredBlock219Block340Step = 394 ifTrue: [
            recoveredBlock219Block340Stack1 := (recoveredBlock219Block340Stack1) owningImage.
            recoveredBlock219Block340PC := 396.
        ].
        recoveredBlock219Block340Step = 396 ifTrue: [
            recoveredBlock219Block340Stack2 := NlsCatEMbsES.
            recoveredBlock219Block340PC := 398.
        ].
        recoveredBlock219Block340Step = 398 ifTrue: [
            recoveredBlock219Block340Stack3 := 'MxEMbsES25'.
            recoveredBlock219Block340PC := 400.
        ].
        recoveredBlock219Block340Step = 400 ifTrue: [
            recoveredBlock219Block340Stack2 := (recoveredBlock219Block340Stack2) residentMsg: (recoveredBlock219Block340Stack3).
            recoveredBlock219Block340PC := 402.
        ].
        recoveredBlock219Block340Step = 402 ifTrue: [
            recoveredBlock219Block340Stack3 := recoveredBlock219Arg1.
            recoveredBlock219Block340PC := 405.
        ].
        recoveredBlock219Block340Step = 405 ifTrue: [
            recoveredBlock219Block340Stack3 := (recoveredBlock219Block340Stack3) name.
            recoveredBlock219Block340PC := 407.
        ].
        recoveredBlock219Block340Step = 407 ifTrue: [
            recoveredBlock219Block340Stack4 := recoveredLocal10.
            recoveredBlock219Block340PC := 410.
        ].
        recoveredBlock219Block340Step = 410 ifTrue: [
            recoveredBlock219Block340Stack4 := (recoveredBlock219Block340Stack4) fullName.
            recoveredBlock219Block340PC := 412.
        ].
        recoveredBlock219Block340Step = 412 ifTrue: [
            recoveredBlock219Block340Stack5 := recoveredBlock219Block340Arg1.
            recoveredBlock219Block340PC := 413.
        ].
        recoveredBlock219Block340Step = 413 ifTrue: [
            recoveredBlock219Block340Stack5 := (recoveredBlock219Block340Stack5) name.
            recoveredBlock219Block340PC := 415.
        ].
        recoveredBlock219Block340Step = 415 ifTrue: [
            recoveredBlock219Block340Stack2 := (recoveredBlock219Block340Stack2) bindWith: (recoveredBlock219Block340Stack3) with: (recoveredBlock219Block340Stack4) with: (recoveredBlock219Block340Stack5).
            recoveredBlock219Block340PC := 418.
        ].
        recoveredBlock219Block340Step = 418 ifTrue: [
            (recoveredBlock219Block340Stack1) errorMessage: (recoveredBlock219Block340Stack2).
            recoveredBlock219Block340PC := 420.
        ].
        recoveredBlock219Block340Step = 420 ifTrue: [
            recoveredBlock219Block340Stack1 := false.
            recoveredBlock219Block340PC := 421.
        ].
        recoveredBlock219Block340Step = 421 ifTrue: [
            ^recoveredBlock219Block340Stack1
        ].
        recoveredBlock219Block340Step = 422 ifTrue: [
            recoveredBlock219Block340Result := recoveredBlock219Block340Stack1.
            recoveredBlock219Block340Done := true.
        ].
    ].
    recoveredBlock219Block340Result
].
            recoveredBlock219PC := 423.
        ].
        recoveredBlock219Step = 423 ifTrue: [
            (recoveredBlock219Stack1) do: (recoveredBlock219Stack2).
            recoveredBlock219PC := 425.
        ].
        recoveredBlock219Step = 425 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg2.
            recoveredBlock219PC := 428.
        ].
        recoveredBlock219Step = 428 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) owningImage.
            recoveredBlock219PC := 430.
        ].
        recoveredBlock219Step = 430 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) defaultApplication.
            recoveredBlock219PC := 432.
        ].
        recoveredBlock219Step = 432 ifTrue: [
            recoveredLocal7 := recoveredBlock219Stack1.
            recoveredBlock219PC := 435.
        ].
        recoveredBlock219Step = 435 ifTrue: [
            recoveredBlock219Stack1 := recoveredBlock219Arg1.
            recoveredBlock219PC := 438.
        ].
        recoveredBlock219Step = 438 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) controller.
            recoveredBlock219PC := 440.
        ].
        recoveredBlock219Step = 440 ifTrue: [
            (recoveredBlock219Stack1) becomeDefault.
            recoveredBlock219PC := 442.
        ].
        recoveredBlock219Step = 442 ifTrue: [
            recoveredBlock219Stack1 := recoveredBlock219Arg1.
            recoveredBlock219PC := 445.
        ].
        recoveredBlock219Step = 445 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) definitionMessage.
            recoveredBlock219PC := 447.
        ].
        recoveredBlock219Step = 447 ifTrue: [
            recoveredLocal6 := recoveredBlock219Stack1.
            recoveredBlock219PC := 450.
        ].
        recoveredBlock219Step = 450 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal6.
            recoveredBlock219PC := 453.
        ].
        recoveredBlock219Step = 453 ifTrue: [
            recoveredBlock219Stack2 := recoveredBlock219Arg1.
            recoveredBlock219PC := 456.
        ].
        recoveredBlock219Step = 456 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) superclass.
            recoveredBlock219PC := 458.
        ].
        recoveredBlock219Step = 458 ifTrue: [
            (recoveredBlock219Stack2 ~~ nil) ifTrue: [recoveredBlock219PC := 466] ifFalse: [recoveredBlock219PC := 462].
        ].
        recoveredBlock219Step = 462 ifTrue: [
            recoveredBlock219Stack2 := nil.
            recoveredBlock219PC := 463.
        ].
        recoveredBlock219Step = 463 ifTrue: [
            recoveredBlock219PC := 499.
        ].
        recoveredBlock219Step = 466 ifTrue: [
            recoveredBlock219Stack2 := recoveredArg2.
            recoveredBlock219PC := 469.
        ].
        recoveredBlock219Step = 469 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) owningImage.
            recoveredBlock219PC := 471.
        ].
        recoveredBlock219Step = 471 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) globalNamespace.
            recoveredBlock219PC := 473.
        ].
        recoveredBlock219Step = 473 ifTrue: [
            recoveredBlock219Stack3 := recoveredArg1.
            recoveredBlock219PC := 476.
        ].
        recoveredBlock219Step = 476 ifTrue: [
            recoveredBlock219Stack4 := recoveredBlock219Arg1.
            recoveredBlock219PC := 479.
        ].
        recoveredBlock219Step = 479 ifTrue: [
            recoveredBlock219Stack4 := (recoveredBlock219Stack4) superclass.
            recoveredBlock219PC := 481.
        ].
        recoveredBlock219Step = 481 ifTrue: [
            recoveredBlock219Stack5 := [
    | recoveredBlock219Block481Value0 recoveredBlock219Block481Value1 recoveredBlock219Block481Value2 |
    recoveredBlock219Block481Value0 := recoveredBlock219Arg1.
    recoveredBlock219Block481Value1 := (recoveredBlock219Block481Value0) superclass.
    recoveredBlock219Block481Value2 := (recoveredBlock219Block481Value1) symbol.
    recoveredBlock219Block481Value2
].
            recoveredBlock219PC := 495.
        ].
        recoveredBlock219Step = 495 ifTrue: [
            recoveredBlock219Stack3 := (recoveredBlock219Stack3) at: (recoveredBlock219Stack4) ifAbsent: (recoveredBlock219Stack5).
            recoveredBlock219PC := 497.
        ].
        recoveredBlock219Step = 497 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) classAt: (recoveredBlock219Stack3).
            recoveredBlock219PC := 499.
        ].
        recoveredBlock219Step = 499 ifTrue: [
            (recoveredBlock219Stack1) receiver: (recoveredBlock219Stack2).
            recoveredBlock219PC := 501.
        ].
        recoveredBlock219Step = 501 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal6.
            recoveredBlock219PC := 504.
        ].
        recoveredBlock219Step = 504 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) arguments.
            recoveredBlock219PC := 506.
        ].
        recoveredBlock219Step = 506 ifTrue: [
            recoveredBlock219Stack2 := 1.
            recoveredBlock219PC := 508.
        ].
        recoveredBlock219Step = 508 ifTrue: [
            recoveredBlock219Stack3 := recoveredArg1.
            recoveredBlock219PC := 511.
        ].
        recoveredBlock219Step = 511 ifTrue: [
            recoveredBlock219Stack4 := recoveredBlock219Arg1.
            recoveredBlock219PC := 514.
        ].
        recoveredBlock219Step = 514 ifTrue: [
            recoveredBlock219Stack3 := (recoveredBlock219Stack3) at: (recoveredBlock219Stack4).
            recoveredBlock219PC := 516.
        ].
        recoveredBlock219Step = 516 ifTrue: [
            (recoveredBlock219Stack1) at: (recoveredBlock219Stack2) put: (recoveredBlock219Stack3).
            recoveredBlock219PC := 518.
        ].
        recoveredBlock219Step = 518 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal6.
            recoveredBlock219PC := 521.
        ].
        recoveredBlock219Step = 521 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) send.
            recoveredBlock219PC := 525.
        ].
        recoveredBlock219Step = 525 ifTrue: [
            recoveredBlock219Stack2 := recoveredBlock219Stack1.
            recoveredBlock219PC := 526.
        ].
        recoveredBlock219Step = 526 ifTrue: [
            recoveredLocal5 := recoveredBlock219Stack2.
            recoveredBlock219PC := 529.
        ].
        recoveredBlock219Step = 529 ifTrue: [
            (recoveredBlock219Stack1 ~~ nil) ifTrue: [recoveredBlock219PC := 558] ifFalse: [recoveredBlock219PC := 532].
        ].
        recoveredBlock219Step = 532 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg2.
            recoveredBlock219PC := 535.
        ].
        recoveredBlock219Step = 535 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) owningImage.
            recoveredBlock219PC := 537.
        ].
        recoveredBlock219Step = 537 ifTrue: [
            recoveredBlock219Stack2 := NlsCatEMbsES.
            recoveredBlock219PC := 539.
        ].
        recoveredBlock219Step = 539 ifTrue: [
            recoveredBlock219Stack3 := 'MxEMbsES26'.
            recoveredBlock219PC := 542.
        ].
        recoveredBlock219Step = 542 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) residentMsg: (recoveredBlock219Stack3).
            recoveredBlock219PC := 544.
        ].
        recoveredBlock219Step = 544 ifTrue: [
            recoveredBlock219Stack3 := recoveredArg1.
            recoveredBlock219PC := 547.
        ].
        recoveredBlock219Step = 547 ifTrue: [
            recoveredBlock219Stack4 := recoveredBlock219Arg1.
            recoveredBlock219PC := 550.
        ].
        recoveredBlock219Step = 550 ifTrue: [
            recoveredBlock219Stack3 := (recoveredBlock219Stack3) at: (recoveredBlock219Stack4).
            recoveredBlock219PC := 552.
        ].
        recoveredBlock219Step = 552 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) bindWith: (recoveredBlock219Stack3).
            recoveredBlock219PC := 554.
        ].
        recoveredBlock219Step = 554 ifTrue: [
            (recoveredBlock219Stack1) errorMessage: (recoveredBlock219Stack2).
            recoveredBlock219PC := 556.
        ].
        recoveredBlock219Step = 556 ifTrue: [
            recoveredBlock219Stack1 := false.
            recoveredBlock219PC := 557.
        ].
        recoveredBlock219Step = 557 ifTrue: [
            ^recoveredBlock219Stack1
        ].
        recoveredBlock219Step = 558 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal7.
            recoveredBlock219PC := 561.
        ].
        recoveredBlock219Step = 561 ifTrue: [
            (recoveredBlock219Stack1 == nil) ifTrue: [recoveredBlock219PC := 569] ifFalse: [recoveredBlock219PC := 564].
        ].
        recoveredBlock219Step = 564 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal7.
            recoveredBlock219PC := 567.
        ].
        recoveredBlock219Step = 567 ifTrue: [
            (recoveredBlock219Stack1) becomeDefault.
            recoveredBlock219PC := 569.
        ].
        recoveredBlock219Step = 569 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal9.
            recoveredBlock219PC := 572.
        ].
        recoveredBlock219Step = 572 ifTrue: [
            recoveredBlock219Stack2 := [:recoveredBlock219Block572Arg1 | 
    | recoveredBlock219Block572Stack0 recoveredBlock219Block572Stack1 recoveredBlock219Block572Stack2 recoveredBlock219Block572Stack3 recoveredBlock219Block572Stack4 recoveredBlock219Block572Stack5 recoveredBlock219Block572PC recoveredBlock219Block572Step recoveredBlock219Block572Done recoveredBlock219Block572Result |
    recoveredBlock219Block572Stack0 := nil.
    recoveredBlock219Block572PC := 578.
    recoveredBlock219Block572Done := false.
    [recoveredBlock219Block572Done not] whileTrue: [
        recoveredBlock219Block572Step := recoveredBlock219Block572PC.
        recoveredBlock219Block572Step = 578 ifTrue: [
            recoveredBlock219Block572Stack1 := recoveredLocal5.
            recoveredBlock219Block572PC := 581.
        ].
        recoveredBlock219Block572Step = 581 ifTrue: [
            recoveredBlock219Block572Stack2 := recoveredBlock219Arg1.
            recoveredBlock219Block572PC := 584.
        ].
        recoveredBlock219Block572Step = 584 ifTrue: [
            recoveredBlock219Block572Stack3 := recoveredBlock219Block572Arg1.
            recoveredBlock219Block572PC := 585.
        ].
        recoveredBlock219Block572Step = 585 ifTrue: [
            recoveredBlock219Block572Stack2 := (recoveredBlock219Block572Stack2) methodNamesIn: (recoveredBlock219Block572Stack3).
            recoveredBlock219Block572PC := 589.
        ].
        recoveredBlock219Block572Step = 589 ifTrue: [
            recoveredBlock219Block572Stack3 := recoveredBlock219Arg1.
            recoveredBlock219Block572PC := 592.
        ].
        recoveredBlock219Block572Step = 592 ifTrue: [
            recoveredBlock219Block572Stack4 := recoveredBlock219Block572Arg1.
            recoveredBlock219Block572PC := 593.
        ].
        recoveredBlock219Block572Step = 593 ifTrue: [
            recoveredBlock219Block572Stack1 := (recoveredBlock219Block572Stack1) copyAll: (recoveredBlock219Block572Stack2) from: (recoveredBlock219Block572Stack3) ifNewAddTo: (recoveredBlock219Block572Stack4).
            recoveredBlock219Block572PC := 597.
        ].
        recoveredBlock219Block572Step = 597 ifTrue: [
            recoveredLocal4 := recoveredBlock219Block572Stack1.
            recoveredBlock219Block572PC := 600.
        ].
        recoveredBlock219Block572Step = 600 ifTrue: [
            recoveredBlock219Block572Stack1 := recoveredArg4.
            recoveredBlock219Block572PC := 603.
        ].
        recoveredBlock219Block572Step = 603 ifTrue: [
            (recoveredBlock219Block572Stack1 == nil) ifTrue: [recoveredBlock219Block572PC := 627] ifFalse: [recoveredBlock219Block572PC := 606].
        ].
        recoveredBlock219Block572Step = 606 ifTrue: [
            recoveredBlock219Block572Stack1 := recoveredLocal4.
            recoveredBlock219Block572PC := 609.
        ].
        recoveredBlock219Block572Step = 609 ifTrue: [
            recoveredBlock219Block572Stack1 := (recoveredBlock219Block572Stack1) notEmpty.
            recoveredBlock219Block572PC := 613.
        ].
        recoveredBlock219Block572Step = 613 ifTrue: [
            (recoveredBlock219Block572Stack1) ifTrue: [recoveredBlock219Block572PC := 616] ifFalse: [recoveredBlock219Block572PC := 627].
        ].
        recoveredBlock219Block572Step = 616 ifTrue: [
            recoveredBlock219Block572Stack1 := recoveredArg4.
            recoveredBlock219Block572PC := 619.
        ].
        recoveredBlock219Block572Step = 619 ifTrue: [
            recoveredBlock219Block572Stack2 := recoveredBlock219Arg1.
            recoveredBlock219Block572PC := 622.
        ].
        recoveredBlock219Block572Step = 622 ifTrue: [
            recoveredBlock219Block572Stack3 := recoveredLocal4.
            recoveredBlock219Block572PC := 625.
        ].
        recoveredBlock219Block572Step = 625 ifTrue: [
            (recoveredBlock219Block572Stack1) at: (recoveredBlock219Block572Stack2) put: (recoveredBlock219Block572Stack3).
            recoveredBlock219Block572PC := 627.
        ].
        recoveredBlock219Block572Step = 627 ifTrue: [
            recoveredBlock219Block572Stack1 := recoveredLocal5.
            recoveredBlock219Block572PC := 630.
        ].
        recoveredBlock219Block572Step = 630 ifTrue: [
            recoveredBlock219Block572Stack1 := (recoveredBlock219Block572Stack1) class.
            recoveredBlock219Block572PC := 635.
        ].
        recoveredBlock219Block572Step = 635 ifTrue: [
            recoveredBlock219Block572Stack2 := recoveredBlock219Arg1.
            recoveredBlock219Block572PC := 638.
        ].
        recoveredBlock219Block572Step = 638 ifTrue: [
            recoveredBlock219Block572Stack2 := (recoveredBlock219Block572Stack2) class.
            recoveredBlock219Block572PC := 643.
        ].
        recoveredBlock219Block572Step = 643 ifTrue: [
            recoveredBlock219Block572Stack3 := recoveredBlock219Block572Arg1.
            recoveredBlock219Block572PC := 644.
        ].
        recoveredBlock219Block572Step = 644 ifTrue: [
            recoveredBlock219Block572Stack2 := (recoveredBlock219Block572Stack2) methodNamesIn: (recoveredBlock219Block572Stack3).
            recoveredBlock219Block572PC := 649.
        ].
        recoveredBlock219Block572Step = 649 ifTrue: [
            recoveredBlock219Block572Stack3 := recoveredBlock219Arg1.
            recoveredBlock219Block572PC := 652.
        ].
        recoveredBlock219Block572Step = 652 ifTrue: [
            recoveredBlock219Block572Stack3 := (recoveredBlock219Block572Stack3) class.
            recoveredBlock219Block572PC := 657.
        ].
        recoveredBlock219Block572Step = 657 ifTrue: [
            recoveredBlock219Block572Stack4 := recoveredBlock219Block572Arg1.
            recoveredBlock219Block572PC := 658.
        ].
        recoveredBlock219Block572Step = 658 ifTrue: [
            recoveredBlock219Block572Stack1 := (recoveredBlock219Block572Stack1) copyAll: (recoveredBlock219Block572Stack2) from: (recoveredBlock219Block572Stack3) ifNewAddTo: (recoveredBlock219Block572Stack4).
            recoveredBlock219Block572PC := 663.
        ].
        recoveredBlock219Block572Step = 663 ifTrue: [
            recoveredLocal4 := recoveredBlock219Block572Stack1.
            recoveredBlock219Block572PC := 666.
        ].
        recoveredBlock219Block572Step = 666 ifTrue: [
            recoveredBlock219Block572Stack1 := nil.
            recoveredBlock219Block572PC := 667.
        ].
        recoveredBlock219Block572Step = 667 ifTrue: [
            recoveredBlock219Block572Stack2 := recoveredArg4.
            recoveredBlock219Block572PC := 670.
        ].
        recoveredBlock219Block572Step = 670 ifTrue: [
            (recoveredBlock219Block572Stack2 == nil) ifTrue: [recoveredBlock219Block572PC := 700] ifFalse: [recoveredBlock219Block572PC := 674].
        ].
        recoveredBlock219Block572Step = 674 ifTrue: [
            recoveredBlock219Block572Stack2 := recoveredLocal4.
            recoveredBlock219Block572PC := 677.
        ].
        recoveredBlock219Block572Step = 677 ifTrue: [
            recoveredBlock219Block572Stack2 := (recoveredBlock219Block572Stack2) notEmpty.
            recoveredBlock219Block572PC := 681.
        ].
        recoveredBlock219Block572Step = 681 ifTrue: [
            (recoveredBlock219Block572Stack2) ifTrue: [recoveredBlock219Block572PC := 684] ifFalse: [recoveredBlock219Block572PC := 700].
        ].
        recoveredBlock219Block572Step = 684 ifTrue: [
            recoveredBlock219Block572PC := 685.
        ].
        recoveredBlock219Block572Step = 685 ifTrue: [
            recoveredBlock219Block572Stack1 := recoveredArg4.
            recoveredBlock219Block572PC := 688.
        ].
        recoveredBlock219Block572Step = 688 ifTrue: [
            recoveredBlock219Block572Stack2 := recoveredBlock219Arg1.
            recoveredBlock219Block572PC := 691.
        ].
        recoveredBlock219Block572Step = 691 ifTrue: [
            recoveredBlock219Block572Stack2 := (recoveredBlock219Block572Stack2) class.
            recoveredBlock219Block572PC := 695.
        ].
        recoveredBlock219Block572Step = 695 ifTrue: [
            recoveredBlock219Block572Stack3 := recoveredLocal4.
            recoveredBlock219Block572PC := 698.
        ].
        recoveredBlock219Block572Step = 698 ifTrue: [
            recoveredBlock219Block572Stack1 := (recoveredBlock219Block572Stack1) at: (recoveredBlock219Block572Stack2) put: (recoveredBlock219Block572Stack3).
            recoveredBlock219Block572PC := 700.
        ].
        recoveredBlock219Block572Step = 700 ifTrue: [
            recoveredBlock219Block572Result := recoveredBlock219Block572Stack1.
            recoveredBlock219Block572Done := true.
        ].
    ].
    recoveredBlock219Block572Result
].
            recoveredBlock219PC := 701.
        ].
        recoveredBlock219Step = 701 ifTrue: [
            (recoveredBlock219Stack1) do: (recoveredBlock219Stack2).
            recoveredBlock219PC := 703.
        ].
        recoveredBlock219Step = 703 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg3.
            recoveredBlock219PC := 706.
        ].
        recoveredBlock219Step = 706 ifTrue: [
            (recoveredBlock219Stack1 == nil) ifTrue: [recoveredBlock219PC := 865] ifFalse: [recoveredBlock219PC := 710].
        ].
        recoveredBlock219Step = 710 ifTrue: [
            recoveredBlock219Stack1 := OrderedCollection.
            recoveredBlock219PC := 712.
        ].
        recoveredBlock219Step = 712 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) new.
            recoveredBlock219PC := 714.
        ].
        recoveredBlock219Step = 714 ifTrue: [
            recoveredLocal3 := recoveredBlock219Stack1.
            recoveredBlock219PC := 717.
        ].
        recoveredBlock219Step = 717 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg2.
            recoveredBlock219PC := 720.
        ].
        recoveredBlock219Step = 720 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) owningImage.
            recoveredBlock219PC := 722.
        ].
        recoveredBlock219Step = 722 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) classHierarchyRoots.
            recoveredBlock219PC := 727.
        ].
        recoveredBlock219Step = 727 ifTrue: [
            recoveredBlock219Stack2 := [:recoveredBlock219Block727Arg1 | 
    | recoveredBlock219Block727Value0 recoveredBlock219Block727Value1 recoveredBlock219Block727Value2 recoveredBlock219Block727Value3 recoveredBlock219Block727Value4 |
    recoveredBlock219Block727Value0 := recoveredLocal3.
    recoveredBlock219Block727Value1 := recoveredBlock219Block727Arg1.
    recoveredBlock219Block727Value2 := recoveredBlock219Arg1.
    recoveredBlock219Block727Value3 := (recoveredBlock219Block727Value1) allMethodsReferencingLiteral: (recoveredBlock219Block727Value2).
    recoveredBlock219Block727Value4 := (recoveredBlock219Block727Value0) addAll: (recoveredBlock219Block727Value3).
    recoveredBlock219Block727Value4
].
            recoveredBlock219PC := 748.
        ].
        recoveredBlock219Step = 748 ifTrue: [
            (recoveredBlock219Stack1) do: (recoveredBlock219Stack2).
            recoveredBlock219PC := 750.
        ].
        recoveredBlock219Step = 750 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal3.
            recoveredBlock219PC := 753.
        ].
        recoveredBlock219Step = 753 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) notEmpty.
            recoveredBlock219PC := 757.
        ].
        recoveredBlock219Step = 757 ifTrue: [
            (recoveredBlock219Stack1) ifTrue: [recoveredBlock219PC := 760] ifFalse: [recoveredBlock219PC := 771].
        ].
        recoveredBlock219Step = 760 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg3.
            recoveredBlock219PC := 763.
        ].
        recoveredBlock219Step = 763 ifTrue: [
            recoveredBlock219Stack2 := recoveredBlock219Arg1.
            recoveredBlock219PC := 766.
        ].
        recoveredBlock219Step = 766 ifTrue: [
            recoveredBlock219Stack3 := recoveredLocal3.
            recoveredBlock219PC := 769.
        ].
        recoveredBlock219Step = 769 ifTrue: [
            (recoveredBlock219Stack1) at: (recoveredBlock219Stack2) put: (recoveredBlock219Stack3).
            recoveredBlock219PC := 771.
        ].
        recoveredBlock219Step = 771 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal1.
            recoveredBlock219PC := 774.
        ].
        recoveredBlock219Step = 774 ifTrue: [
            recoveredBlock219Stack2 := [:recoveredBlock219Block774Arg1 | 
    | recoveredBlock219Block774Stack0 recoveredBlock219Block774Stack1 recoveredBlock219Block774Stack2 recoveredBlock219Block774Stack3 recoveredBlock219Block774Stack4 recoveredBlock219Block774PC recoveredBlock219Block774Step recoveredBlock219Block774Done recoveredBlock219Block774Result |
    recoveredBlock219Block774Stack0 := nil.
    recoveredBlock219Block774PC := 780.
    recoveredBlock219Block774Done := false.
    [recoveredBlock219Block774Done not] whileTrue: [
        recoveredBlock219Block774Step := recoveredBlock219Block774PC.
        recoveredBlock219Block774Step = 780 ifTrue: [
            recoveredBlock219Block774Stack1 := OrderedCollection.
            recoveredBlock219Block774PC := 782.
        ].
        recoveredBlock219Block774Step = 782 ifTrue: [
            recoveredBlock219Block774Stack1 := (recoveredBlock219Block774Stack1) new.
            recoveredBlock219Block774PC := 784.
        ].
        recoveredBlock219Block774Step = 784 ifTrue: [
            recoveredLocal3 := recoveredBlock219Block774Stack1.
            recoveredBlock219Block774PC := 787.
        ].
        recoveredBlock219Block774Step = 787 ifTrue: [
            recoveredBlock219Block774Stack1 := recoveredLocal5.
            recoveredBlock219Block774PC := 790.
        ].
        recoveredBlock219Block774Step = 790 ifTrue: [
            recoveredBlock219Block774Stack2 := [:recoveredBlock219Block774Block790Arg1 | 
    | recoveredBlock219Block774Block790Stack0 recoveredBlock219Block774Block790Stack1 recoveredBlock219Block774Block790Stack2 recoveredBlock219Block774Block790Stack3 recoveredBlock219Block774Block790Stack4 recoveredBlock219Block774Block790PC recoveredBlock219Block774Block790Step recoveredBlock219Block774Block790Done recoveredBlock219Block774Block790Result |
    recoveredBlock219Block774Block790Stack0 := nil.
    recoveredBlock219Block774Block790PC := 796.
    recoveredBlock219Block774Block790Done := false.
    [recoveredBlock219Block774Block790Done not] whileTrue: [
        recoveredBlock219Block774Block790Step := recoveredBlock219Block774Block790PC.
        recoveredBlock219Block774Block790Step = 796 ifTrue: [
            recoveredBlock219Block774Block790Stack1 := nil.
            recoveredBlock219Block774Block790PC := 797.
        ].
        recoveredBlock219Block774Block790Step = 797 ifTrue: [
            recoveredBlock219Block774Block790Stack2 := recoveredBlock219Block774Block790Arg1.
            recoveredBlock219Block774Block790PC := 798.
        ].
        recoveredBlock219Block774Block790Step = 798 ifTrue: [
            recoveredBlock219Block774Block790Stack3 := recoveredBlock219Block774Arg1.
            recoveredBlock219Block774Block790PC := 801.
        ].
        recoveredBlock219Block774Block790Step = 801 ifTrue: [
            recoveredBlock219Block774Block790Stack2 := (recoveredBlock219Block774Block790Stack2) referencesLiteral: (recoveredBlock219Block774Block790Stack3).
            recoveredBlock219Block774Block790PC := 805.
        ].
        recoveredBlock219Block774Block790Step = 805 ifTrue: [
            (recoveredBlock219Block774Block790Stack2) ifTrue: [recoveredBlock219Block774Block790PC := 808] ifFalse: [recoveredBlock219Block774Block790PC := 817].
        ].
        recoveredBlock219Block774Block790Step = 808 ifTrue: [
            recoveredBlock219Block774Block790PC := 809.
        ].
        recoveredBlock219Block774Block790Step = 809 ifTrue: [
            recoveredBlock219Block774Block790Stack1 := recoveredLocal3.
            recoveredBlock219Block774Block790PC := 812.
        ].
        recoveredBlock219Block774Block790Step = 812 ifTrue: [
            recoveredBlock219Block774Block790Stack2 := recoveredBlock219Block774Block790Arg1.
            recoveredBlock219Block774Block790PC := 813.
        ].
        recoveredBlock219Block774Block790Step = 813 ifTrue: [
            recoveredBlock219Block774Block790Stack1 := (recoveredBlock219Block774Block790Stack1) add: (recoveredBlock219Block774Block790Stack2).
            recoveredBlock219Block774Block790PC := 817.
        ].
        recoveredBlock219Block774Block790Step = 817 ifTrue: [
            recoveredBlock219Block774Block790Result := recoveredBlock219Block774Block790Stack1.
            recoveredBlock219Block774Block790Done := true.
        ].
    ].
    recoveredBlock219Block774Block790Result
].
            recoveredBlock219Block774PC := 818.
        ].
        recoveredBlock219Block774Step = 818 ifTrue: [
            (recoveredBlock219Block774Stack1) methodsDo: (recoveredBlock219Block774Stack2).
            recoveredBlock219Block774PC := 823.
        ].
        recoveredBlock219Block774Step = 823 ifTrue: [
            recoveredBlock219Block774Stack1 := nil.
            recoveredBlock219Block774PC := 824.
        ].
        recoveredBlock219Block774Step = 824 ifTrue: [
            recoveredBlock219Block774Stack2 := recoveredLocal3.
            recoveredBlock219Block774PC := 827.
        ].
        recoveredBlock219Block774Step = 827 ifTrue: [
            recoveredBlock219Block774Stack2 := (recoveredBlock219Block774Stack2) notEmpty.
            recoveredBlock219Block774PC := 831.
        ].
        recoveredBlock219Block774Step = 831 ifTrue: [
            (recoveredBlock219Block774Stack2) ifTrue: [recoveredBlock219Block774PC := 834] ifFalse: [recoveredBlock219Block774PC := 862].
        ].
        recoveredBlock219Block774Step = 834 ifTrue: [
            recoveredBlock219Block774PC := 835.
        ].
        recoveredBlock219Block774Step = 835 ifTrue: [
            recoveredBlock219Block774Stack1 := recoveredArg3.
            recoveredBlock219Block774PC := 838.
        ].
        recoveredBlock219Block774Step = 838 ifTrue: [
            recoveredBlock219Block774Stack2 := recoveredBlock219Block774Arg1.
            recoveredBlock219Block774PC := 841.
        ].
        recoveredBlock219Block774Step = 841 ifTrue: [
            recoveredBlock219Block774Stack3 := [
    | block28005ff8Value0 block28005ff8Value1 |
    block28005ff8Value0 := OrderedCollection.
    block28005ff8Value1 := (block28005ff8Value0) new.
    block28005ff8Value1
].
            recoveredBlock219Block774PC := 844.
        ].
        recoveredBlock219Block774Step = 844 ifTrue: [
            recoveredBlock219Block774PC := 853.
        ].
        recoveredBlock219Block774Step = 853 ifTrue: [
            recoveredBlock219Block774Stack1 := (recoveredBlock219Block774Stack1) at: (recoveredBlock219Block774Stack2) ifAbsentPut: (recoveredBlock219Block774Stack3).
            recoveredBlock219Block774PC := 857.
        ].
        recoveredBlock219Block774Step = 857 ifTrue: [
            recoveredBlock219Block774Stack2 := recoveredLocal3.
            recoveredBlock219Block774PC := 860.
        ].
        recoveredBlock219Block774Step = 860 ifTrue: [
            recoveredBlock219Block774Stack1 := (recoveredBlock219Block774Stack1) addAll: (recoveredBlock219Block774Stack2).
            recoveredBlock219Block774PC := 862.
        ].
        recoveredBlock219Block774Step = 862 ifTrue: [
            recoveredBlock219Block774Result := recoveredBlock219Block774Stack1.
            recoveredBlock219Block774Done := true.
        ].
    ].
    recoveredBlock219Block774Result
].
            recoveredBlock219PC := 863.
        ].
        recoveredBlock219Step = 863 ifTrue: [
            (recoveredBlock219Stack1) do: (recoveredBlock219Stack2).
            recoveredBlock219PC := 865.
        ].
        recoveredBlock219Step = 865 ifTrue: [
            recoveredBlock219Stack1 := recoveredBlock219Arg1.
            recoveredBlock219PC := 868.
        ].
        recoveredBlock219Step = 868 ifTrue: [
            recoveredBlock219Stack2 := recoveredBlock219Arg1.
            recoveredBlock219PC := 871.
        ].
        recoveredBlock219Step = 871 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) controller.
            recoveredBlock219PC := 873.
        ].
        recoveredBlock219Step = 873 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) editionEntryIn: (recoveredBlock219Stack2).
            recoveredBlock219PC := 877.
        ].
        recoveredBlock219Step = 877 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) inheritedUserFields.
            recoveredBlock219PC := 881.
        ].
        recoveredBlock219Step = 881 ifTrue: [
            recoveredLocal2 := recoveredBlock219Stack1.
            recoveredBlock219PC := 884.
        ].
        recoveredBlock219Step = 884 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal5.
            recoveredBlock219PC := 887.
        ].
        recoveredBlock219Step = 887 ifTrue: [
            recoveredBlock219Stack2 := recoveredLocal5.
            recoveredBlock219PC := 890.
        ].
        recoveredBlock219Step = 890 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) controller.
            recoveredBlock219PC := 892.
        ].
        recoveredBlock219Step = 892 ifTrue: [
            recoveredBlock219Stack3 := [:recoveredBlock219Block892Arg1 | 
    | recoveredBlock219Block892Value0 recoveredBlock219Block892Value1 recoveredBlock219Block892Value2 recoveredBlock219Block892Value3 |
    recoveredBlock219Block892Value0 := recoveredBlock219Block892Arg1.
    recoveredBlock219Block892Value1 := (recoveredBlock219Block892Value0) currentEntry.
    recoveredBlock219Block892Value2 := recoveredLocal2.
    recoveredBlock219Block892Value3 := (recoveredBlock219Block892Value1) copyInheritedUserFieldsFrom: (recoveredBlock219Block892Value2).
    recoveredBlock219Block892Value3
].
            recoveredBlock219PC := 912.
        ].
        recoveredBlock219Step = 912 ifTrue: [
            recoveredBlock219Stack4 := [
    ^false
].
            recoveredBlock219PC := 920.
        ].
        recoveredBlock219Step = 920 ifTrue: [
            (recoveredBlock219Stack1) updateEditionsRecordIn: (recoveredBlock219Stack2) with: (recoveredBlock219Stack3) ifUnable: (recoveredBlock219Stack4).
            recoveredBlock219PC := 925.
        ].
        recoveredBlock219Step = 925 ifTrue: [
            recoveredBlock219Stack1 := recoveredLocal1.
            recoveredBlock219PC := 928.
        ].
        recoveredBlock219Step = 928 ifTrue: [
            recoveredBlock219Stack2 := recoveredBlock219Arg1.
            recoveredBlock219PC := 931.
        ].
        recoveredBlock219Step = 931 ifTrue: [
            (recoveredBlock219Stack1) add: (recoveredBlock219Stack2).
            recoveredBlock219PC := 935.
        ].
        recoveredBlock219Step = 935 ifTrue: [
            recoveredBlock219Stack1 := recoveredArg2.
            recoveredBlock219PC := 938.
        ].
        recoveredBlock219Step = 938 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) owningImage.
            recoveredBlock219PC := 940.
        ].
        recoveredBlock219Step = 940 ifTrue: [
            recoveredBlock219Stack2 := NlsCatEMbsES.
            recoveredBlock219PC := 942.
        ].
        recoveredBlock219Step = 942 ifTrue: [
            recoveredBlock219Stack3 := 'MxEMbsES27'.
            recoveredBlock219PC := 946.
        ].
        recoveredBlock219Step = 946 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) residentMsg: (recoveredBlock219Stack3).
            recoveredBlock219PC := 948.
        ].
        recoveredBlock219Step = 948 ifTrue: [
            recoveredBlock219Stack3 := recoveredBlock219Arg1.
            recoveredBlock219PC := 951.
        ].
        recoveredBlock219Step = 951 ifTrue: [
            recoveredBlock219Stack3 := (recoveredBlock219Stack3) name.
            recoveredBlock219PC := 953.
        ].
        recoveredBlock219Step = 953 ifTrue: [
            recoveredBlock219Stack4 := recoveredLocal5.
            recoveredBlock219PC := 956.
        ].
        recoveredBlock219Step = 956 ifTrue: [
            recoveredBlock219Stack4 := (recoveredBlock219Stack4) name.
            recoveredBlock219PC := 958.
        ].
        recoveredBlock219Step = 958 ifTrue: [
            recoveredBlock219Stack2 := (recoveredBlock219Stack2) bindWith: (recoveredBlock219Stack3) with: (recoveredBlock219Stack4).
            recoveredBlock219PC := 960.
        ].
        recoveredBlock219Step = 960 ifTrue: [
            recoveredBlock219Stack1 := (recoveredBlock219Stack1) logClassNotice: (recoveredBlock219Stack2).
            recoveredBlock219PC := 965.
        ].
        recoveredBlock219Step = 965 ifTrue: [
            recoveredBlock219Result := recoveredBlock219Stack1.
            recoveredBlock219Done := true.
        ].
    ].
    recoveredBlock219Result
].
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

