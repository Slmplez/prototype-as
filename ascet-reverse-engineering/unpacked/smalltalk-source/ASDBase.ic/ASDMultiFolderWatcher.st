"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066754; bytecode file offset 0x963428"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
folderWatchProcess
    | recoveredValue0 |
    recoveredValue0 := folderWatchProcess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200842c4; bytecode file offset 0x981ca4"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
updateObservedGenericComponent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) callFolderModifiedCallBack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bdae4; bytecode file offset 0x9bb178"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
folderWatchProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    folderWatchProcess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c013c; bytecode file offset 0x9bd228"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
folderModifiedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    folderModifiedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c803c; bytecode file offset 0x9c4908"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
callCallbacks: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) perform: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (self) callCallbackList: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013ac50; bytecode file offset 0xa37538"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
folderModifiedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := folderModifiedCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) folderModifiedCallback: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := folderModifiedCallback.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016bf08; bytecode file offset 0xa687ec"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
callFolderModifiedCallBack: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDGenericComponentFolderModifiedCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) genericComponent: (recoveredValue4).
    recoveredValue5 := ASDGenericComponentFolderModifiedCallback.
    recoveredValue6 := recoveredLocal1.
    (self) callCallbacks: (recoveredValue5) callData: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2017b860; bytecode file offset 0xa78124"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) startFolderWatchProcess.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) folderWatchProcess: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018d984; bytecode file offset 0xa8a26c"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
folderWatchHandleTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := folderWatchHandleTable.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    folderWatchHandleTable := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := folderWatchHandleTable.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20211264; bytecode file offset 0xb0db34"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
getNewTemporaryDirectory
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempPath.
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
            recoveredStack1 := (recoveredStack1) isError.
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
            recoveredStack1 := CfsStat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildTempDirIn: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20238d28; bytecode file offset 0xb355ec"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
removeWatchDirectoryFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) folderWatchHandleTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) closeHandle.
    recoveredValue5 := (self) folderWatchHandleTable.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) removeKey: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20348d6c; bytecode file offset 0xc45658"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
addCallback: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwCallbackRec.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) perform: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredLocal2.
    recoveredBlock31Value2 := (recoveredBlock31Value0) equals: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
    recoveredValue9 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredLocal2.
    recoveredBlock44Value2 := (recoveredBlock44Value0) add: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
    (recoveredValue7) detect: (recoveredValue8) ifNone: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2039df28; bytecode file offset 0xc9a834"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
addWatchDirectory: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) removeWatchDirectoryFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorLog.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Directory does not exist:'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := OSHandle.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPSZ.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := FileNotifyChangeFileName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := FileNotifyChangeDirName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := FileNotifyChangeFileName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := FileNotifyChangeLastWrite.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := FileNotifyChangeSecurity.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := FileNotifyChangeSize.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirstChangeNotification: (recoveredStack1) fWatchSubTree: (recoveredStack2) fdwFilter: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) folderWatchHandleTable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := ASDFolderWatcherEntry.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) createForPathName: (recoveredStack3) osHandle: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203aaa68; bytecode file offset 0xca734c"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
startFolderWatchProcess
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := Delay.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := 1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) forSeconds: (recoveredBlock4Stack2).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack1) wait.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) folderWatchHandleTable.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block19Arg1 | 
    | recoveredBlock4Block19Stack0 recoveredBlock4Block19Stack1 recoveredBlock4Block19Stack2 recoveredBlock4Block19Stack3 recoveredBlock4Block19PC recoveredBlock4Block19Step recoveredBlock4Block19Done recoveredBlock4Block19Result |
    recoveredBlock4Block19Stack0 := self.
    recoveredBlock4Block19PC := 26.
    recoveredBlock4Block19Done := false.
    [recoveredBlock4Block19Done not] whileTrue: [
        recoveredBlock4Block19Step := recoveredBlock4Block19PC.
        recoveredBlock4Block19Step = 26 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 27.
        ].
        recoveredBlock4Block19Step = 27 ifTrue: [
            recoveredBlock4Block19Stack1 := (recoveredBlock4Block19Stack1) value.
            recoveredBlock4Block19PC := 29.
        ].
        recoveredBlock4Block19Step = 29 ifTrue: [
            recoveredBlock4Block19Stack1 := (recoveredBlock4Block19Stack1) doWaitForSingleObject.
            recoveredBlock4Block19PC := 31.
        ].
        recoveredBlock4Block19Step = 31 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block19Stack1.
            recoveredBlock4Block19PC := 34.
        ].
        recoveredBlock4Block19Step = 34 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredBlock4Local1.
            recoveredBlock4Block19PC := 37.
        ].
        recoveredBlock4Block19Step = 37 ifTrue: [
            recoveredBlock4Block19Stack2 := 258.
            recoveredBlock4Block19PC := 40.
        ].
        recoveredBlock4Block19Step = 40 ifTrue: [
            (recoveredBlock4Block19Stack1 == recoveredBlock4Block19Stack2) ifTrue: [recoveredBlock4Block19PC := 50] ifFalse: [recoveredBlock4Block19PC := 44].
        ].
        recoveredBlock4Block19Step = 44 ifTrue: [
            recoveredBlock4Block19Stack1 := self.
            recoveredBlock4Block19PC := 45.
        ].
        recoveredBlock4Block19Step = 45 ifTrue: [
            recoveredBlock4Block19Stack2 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 46.
        ].
        recoveredBlock4Block19Step = 46 ifTrue: [
            recoveredBlock4Block19Stack2 := (recoveredBlock4Block19Stack2) key.
            recoveredBlock4Block19PC := 48.
        ].
        recoveredBlock4Block19Step = 48 ifTrue: [
            (recoveredBlock4Block19Stack1) updateObservedGenericComponent: (recoveredBlock4Block19Stack2).
            recoveredBlock4Block19PC := 50.
        ].
        recoveredBlock4Block19Step = 50 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 51.
        ].
        recoveredBlock4Block19Step = 51 ifTrue: [
            recoveredBlock4Block19Stack1 := (recoveredBlock4Block19Stack1) value.
            recoveredBlock4Block19PC := 53.
        ].
        recoveredBlock4Block19Step = 53 ifTrue: [
            recoveredBlock4Block19Stack1 := (recoveredBlock4Block19Stack1) doFindNextChangeNotification.
            recoveredBlock4Block19PC := 55.
        ].
        recoveredBlock4Block19Step = 55 ifTrue: [
            recoveredBlock4Block19Result := recoveredBlock4Block19Stack1.
            recoveredBlock4Block19Done := true.
        ].
    ].
    recoveredBlock4Block19Result
].
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            (recoveredBlock4Stack1) associationsDo: (recoveredBlock4Stack2).
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 10] ifFalse: [recoveredBlock4PC := 65].
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := (recoveredValue0) forkNamed: ('ASCET - Folder Watch Process').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2040582c; bytecode file offset 0xd0210c"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
removeCallback: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) perform: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := false.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) receiver.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) equals: (recoveredBlock14Stack3).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 50].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := false.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) selector.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg3.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) equals: (recoveredBlock14Stack3).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 50].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) clientData.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg4.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) equals: (recoveredBlock14Stack2).
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 |
    recoveredBlock59Value0 := recoveredLocal2.
    recoveredBlock59Value1 := (recoveredBlock59Value0) notNil.
    recoveredBlock59Value1
].
    (self) runtimeAssert: (recoveredValue6) additionalInfo: ('try to remove a callback that is not registered').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [
    | recoveredBlock81Value0 |
    recoveredBlock81Value0 := (self) etasDevHalt.
    recoveredBlock81Value0
].
    (recoveredValue7) remove: (recoveredValue8) ifAbsent: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x204e9bb0; bytecode file offset 0xde64ec"
!ASDMultiFolderWatcher methodsFor: 'recovered'!
callCallbackList: recoveredArg1 callData: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack2) callWith: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 140] ifFalse: [recoveredLocal1 := nil. recoveredPC := 163]] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 161] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

