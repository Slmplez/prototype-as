"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a49c; bytecode file offset 0x908be4"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
getWatchedDirectory
    | recoveredValue0 |
    recoveredValue0 := (self) watchDirectory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ef5c; bytecode file offset 0x95b814"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
updateObservedGenericComponents
    (self) callFolderModifiedCallBack: (self).
    ^self
! !

"ASDBase.ic method 0x20066764; bytecode file offset 0x963428"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
folderWatchProcess
    | recoveredValue0 |
    recoveredValue0 := folderWatchProcess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066bbc; bytecode file offset 0x9646f8"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
folderWatchHandle
    | recoveredValue0 |
    recoveredValue0 := folderWatchHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a2e8; bytecode file offset 0x966bdc"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
watchDirectory
    | recoveredValue0 |
    recoveredValue0 := watchDirectory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be61c; bytecode file offset 0x9bb178"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
folderWatchProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    folderWatchProcess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed18; bytecode file offset 0x9bc0b4"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
folderWatchHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    folderWatchHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0144; bytecode file offset 0x9bd228"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
folderModifiedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    folderModifiedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0a38; bytecode file offset 0x9bdf14"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
watchDirectory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    watchDirectory := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c804c; bytecode file offset 0x9c4908"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
callCallbacks: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) perform: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (self) callCallbackList: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013ac64; bytecode file offset 0xa37538"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2016bf24; bytecode file offset 0xa687ec"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2017b848; bytecode file offset 0xa78124"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20348d8c; bytecode file offset 0xc45658"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
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

"ASDBase.ic method 0x204e9be0; bytecode file offset 0xde64ec"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2055d974; bytecode file offset 0xe5a2bc"
!ASDGenericComponentsFolderWatcher methodsFor: 'recovered'!
startFolderWatchProcess
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorLog.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'No temp directory found - '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) message.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorLog.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 'Temp directory does not exist - '.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) mainGenCompDirName.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 recoveredBlock93Value4 |
    recoveredBlock93Value0 := System.
    recoveredBlock93Value1 := (recoveredBlock93Value0) errorLog.
    recoveredBlock93Value2 := recoveredBlock93Value1.
    recoveredBlock93Value3 := recoveredLocal1.
    recoveredBlock93Value4 := ('Not able to create directory ') , (recoveredBlock93Value3).
    (recoveredBlock93Value2) nextPutAll: (recoveredBlock93Value4).
    (recoveredBlock93Value1) cr.
    ^nil
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) mkdir: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) watchDirectory: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock136Local1 recoveredBlock136Local2 recoveredBlock136Stack0 recoveredBlock136Stack1 recoveredBlock136Stack2 recoveredBlock136Stack3 recoveredBlock136Stack4 recoveredBlock136Stack5 recoveredBlock136Stack6 recoveredBlock136PC recoveredBlock136Step recoveredBlock136Done recoveredBlock136Result |
    recoveredBlock136Stack0 := self.
    recoveredBlock136PC := 142.
    recoveredBlock136Done := false.
    [recoveredBlock136Done not] whileTrue: [
        recoveredBlock136Step := recoveredBlock136PC.
        recoveredBlock136Step = 142 ifTrue: [
            recoveredBlock136Stack1 := OSHandle.
            recoveredBlock136PC := 144.
        ].
        recoveredBlock136Step = 144 ifTrue: [
            recoveredBlock136Stack2 := recoveredLocal1.
            recoveredBlock136PC := 147.
        ].
        recoveredBlock136Step = 147 ifTrue: [
            recoveredBlock136Stack2 := (recoveredBlock136Stack2) asPSZ.
            recoveredBlock136PC := 149.
        ].
        recoveredBlock136Step = 149 ifTrue: [
            recoveredBlock136Stack3 := true.
            recoveredBlock136PC := 150.
        ].
        recoveredBlock136Step = 150 ifTrue: [
            recoveredBlock136Stack4 := FileNotifyChangeFileName.
            recoveredBlock136PC := 152.
        ].
        recoveredBlock136Step = 152 ifTrue: [
            recoveredBlock136Stack5 := FileNotifyChangeDirName.
            recoveredBlock136PC := 154.
        ].
        recoveredBlock136Step = 154 ifTrue: [
            recoveredBlock136Stack4 := (recoveredBlock136Stack4) bitOr: (recoveredBlock136Stack5).
            recoveredBlock136PC := 156.
        ].
        recoveredBlock136Step = 156 ifTrue: [
            recoveredBlock136Stack5 := FileNotifyChangeFileName.
            recoveredBlock136PC := 158.
        ].
        recoveredBlock136Step = 158 ifTrue: [
            recoveredBlock136Stack4 := (recoveredBlock136Stack4) bitOr: (recoveredBlock136Stack5).
            recoveredBlock136PC := 160.
        ].
        recoveredBlock136Step = 160 ifTrue: [
            recoveredBlock136Stack5 := FileNotifyChangeLastWrite.
            recoveredBlock136PC := 162.
        ].
        recoveredBlock136Step = 162 ifTrue: [
            recoveredBlock136Stack4 := (recoveredBlock136Stack4) bitOr: (recoveredBlock136Stack5).
            recoveredBlock136PC := 164.
        ].
        recoveredBlock136Step = 164 ifTrue: [
            recoveredBlock136Stack5 := FileNotifyChangeSecurity.
            recoveredBlock136PC := 166.
        ].
        recoveredBlock136Step = 166 ifTrue: [
            recoveredBlock136Stack4 := (recoveredBlock136Stack4) bitOr: (recoveredBlock136Stack5).
            recoveredBlock136PC := 168.
        ].
        recoveredBlock136Step = 168 ifTrue: [
            recoveredBlock136Stack5 := FileNotifyChangeSize.
            recoveredBlock136PC := 170.
        ].
        recoveredBlock136Step = 170 ifTrue: [
            recoveredBlock136Stack4 := (recoveredBlock136Stack4) bitOr: (recoveredBlock136Stack5).
            recoveredBlock136PC := 172.
        ].
        recoveredBlock136Step = 172 ifTrue: [
            recoveredBlock136Stack1 := (recoveredBlock136Stack1) findFirstChangeNotification: (recoveredBlock136Stack2) fWatchSubTree: (recoveredBlock136Stack3) fdwFilter: (recoveredBlock136Stack4).
            recoveredBlock136PC := 175.
        ].
        recoveredBlock136Step = 175 ifTrue: [
            (recoveredBlock136Stack0) folderWatchHandle: (recoveredBlock136Stack1).
            recoveredBlock136PC := 177.
        ].
        recoveredBlock136Step = 177 ifTrue: [
            recoveredBlock136Stack0 := true.
            recoveredBlock136PC := 178.
        ].
        recoveredBlock136Step = 178 ifTrue: [
            recoveredBlock136Local2 := recoveredBlock136Stack0.
            recoveredBlock136PC := 179.
        ].
        recoveredBlock136Step = 179 ifTrue: [
            recoveredBlock136PC := 216.
        ].
        recoveredBlock136Step = 182 ifTrue: [
            recoveredBlock136Stack0 := Delay.
            recoveredBlock136PC := 184.
        ].
        recoveredBlock136Step = 184 ifTrue: [
            recoveredBlock136Stack1 := 1.
            recoveredBlock136PC := 186.
        ].
        recoveredBlock136Step = 186 ifTrue: [
            recoveredBlock136Stack0 := (recoveredBlock136Stack0) forSeconds: (recoveredBlock136Stack1).
            recoveredBlock136PC := 188.
        ].
        recoveredBlock136Step = 188 ifTrue: [
            (recoveredBlock136Stack0) wait.
            recoveredBlock136PC := 190.
        ].
        recoveredBlock136Step = 190 ifTrue: [
            recoveredBlock136Stack0 := self.
            recoveredBlock136PC := 191.
        ].
        recoveredBlock136Step = 191 ifTrue: [
            recoveredBlock136Stack0 := (recoveredBlock136Stack0) folderWatchHandle.
            recoveredBlock136PC := 193.
        ].
        recoveredBlock136Step = 193 ifTrue: [
            recoveredBlock136Stack1 := 0.
            recoveredBlock136PC := 195.
        ].
        recoveredBlock136Step = 195 ifTrue: [
            recoveredBlock136Stack0 := (recoveredBlock136Stack0) waitForSingleObject: (recoveredBlock136Stack1).
            recoveredBlock136PC := 197.
        ].
        recoveredBlock136Step = 197 ifTrue: [
            recoveredBlock136Local1 := recoveredBlock136Stack0.
            recoveredBlock136PC := 198.
        ].
        recoveredBlock136Step = 198 ifTrue: [
            recoveredBlock136Stack0 := recoveredBlock136Local1.
            recoveredBlock136PC := 199.
        ].
        recoveredBlock136Step = 199 ifTrue: [
            recoveredBlock136Stack1 := 258.
            recoveredBlock136PC := 202.
        ].
        recoveredBlock136Step = 202 ifTrue: [
            (recoveredBlock136Stack0 == recoveredBlock136Stack1) ifTrue: [recoveredBlock136PC := 209] ifFalse: [recoveredBlock136PC := 206].
        ].
        recoveredBlock136Step = 206 ifTrue: [
            recoveredBlock136Stack0 := self.
            recoveredBlock136PC := 207.
        ].
        recoveredBlock136Step = 207 ifTrue: [
            (recoveredBlock136Stack0) updateObservedGenericComponents.
            recoveredBlock136PC := 209.
        ].
        recoveredBlock136Step = 209 ifTrue: [
            recoveredBlock136Stack0 := self.
            recoveredBlock136PC := 210.
        ].
        recoveredBlock136Step = 210 ifTrue: [
            recoveredBlock136Stack0 := (recoveredBlock136Stack0) folderWatchHandle.
            recoveredBlock136PC := 212.
        ].
        recoveredBlock136Step = 212 ifTrue: [
            (recoveredBlock136Stack0) findNextChangeNotification.
            recoveredBlock136PC := 214.
        ].
        recoveredBlock136Step = 214 ifTrue: [
            recoveredBlock136Stack0 := nil.
            recoveredBlock136PC := 215.
        ].
        recoveredBlock136Step = 215 ifTrue: [
            recoveredBlock136Local1 := recoveredBlock136Stack0.
            recoveredBlock136PC := 216.
        ].
        recoveredBlock136Step = 216 ifTrue: [
            recoveredBlock136Stack0 := recoveredBlock136Local2.
            recoveredBlock136PC := 217.
        ].
        recoveredBlock136Step = 217 ifTrue: [
            (recoveredBlock136Stack0) ifTrue: [recoveredBlock136PC := 182] ifFalse: [recoveredBlock136PC := 219].
        ].
        recoveredBlock136Step = 219 ifTrue: [
            recoveredBlock136Stack0 := nil.
            recoveredBlock136PC := 220.
        ].
        recoveredBlock136Step = 220 ifTrue: [
            recoveredBlock136Result := recoveredBlock136Stack0.
            recoveredBlock136Done := true.
        ].
    ].
    recoveredBlock136Result
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := 'ASCET - Folder Watch Process'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) forkNamed: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

