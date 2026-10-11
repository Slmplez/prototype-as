"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000510; bytecode file offset 0x8ffcfc"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
measureController
    ^self
! !

"ASDBase.ic method 0x20000cc0; bytecode file offset 0x8ffcfc"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
experiment
    ^self
! !

"ASDBase.ic method 0x200023f0; bytecode file offset 0x8ffcfc"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
mainController
    ^self
! !

"ASDBase.ic method 0x20002ab8; bytecode file offset 0x8ffcfc"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
refreshDisplayNames
    ^self
! !

"ASDBase.ic method 0x200044e8; bytecode file offset 0x90206c"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
activeConfiguration: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d53c; bytecode file offset 0x909e08"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
isNodeSelectable: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20021644; bytecode file offset 0x92209c"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
toolName
    ^''
! !

"ASDBase.ic method 0x20025688; bytecode file offset 0x92209c"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
labFileMeasurementTitle
    ^'[RAMCELL]'
! !

"ASDBase.ic method 0x20026fd4; bytecode file offset 0x923928"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
labFileCalibrationTitle
    ^'[Label]'
! !

"ASDBase.ic method 0x2002abc4; bytecode file offset 0x934580"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
allNodesFlat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) allAsap2Labels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032224; bytecode file offset 0x934580"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
labelList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) moduleLabel.
    recoveredValue1 := (recoveredValue0) labelList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d4b8; bytecode file offset 0x93bf94"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
globalFilterManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MCSElementNameFilter.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200698c8; bytecode file offset 0x966bdc"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
moduleLabel
    | recoveredValue0 |
    recoveredValue0 := moduleLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073810; bytecode file offset 0x970b34"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
experimentView
    ^nil
! !

"ASDBase.ic method 0x20080c78; bytecode file offset 0x97d52c"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
labFileCommentSign
    ^$;
! !

"ASDBase.ic method 0x20088688; bytecode file offset 0x985628"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
allNodes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) project.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095bac; bytecode file offset 0x992464"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    recoveredValue2 := recoveredValue1.
    projectKey := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c1410; bytecode file offset 0x9bdf14"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
moduleLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    moduleLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fe4e8; bytecode file offset 0x9fada8"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
getDataElementForNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDataElementInst.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105834; bytecode file offset 0xa020f0"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
project
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := projectKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c61d4Arg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ed4d4; bytecode file offset 0xae9d98"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
updateForDevice: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASAP2ModuleLabel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) moduleLabel: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20392de8; bytecode file offset 0xc8f6d0"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
getDataElementsForNodes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) getDataElementForNode: (recoveredBlock13Stack1).
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 42] ifFalse: [recoveredBlock13PC := 32].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal2.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) add: (recoveredBlock13Stack1).
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack0 := SGMonitorStreamDummy.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) create.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack1 := EtDataElementFor.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := ' '.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) label.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack2 := ' '.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack2 := EtCouldNotBeGenerated.
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) addText: (recoveredBlock13Stack1).
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20559504; bytecode file offset 0xe55e20"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
createSubNodesForTable: recoveredArg1 indices: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTableNode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Local1 recoveredBlock25Local2 recoveredBlock25Local3 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) checkForValidIndex: (recoveredBlock25Stack2).
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isMatrixNode.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 50] ifFalse: [recoveredBlock25PC := 100].
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) class.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) getPreSeparatorForTabIndex.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Local1.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) x.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) printString.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 64.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) class.
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) getPostSeparatorForTabIndex.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 72.
        ].
        recoveredBlock25Step = 72 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) class.
            recoveredBlock25PC := 74.
        ].
        recoveredBlock25Step = 74 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) getYPreSeparatorForTabIndex.
            recoveredBlock25PC := 76.
        ].
        recoveredBlock25Step = 76 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 78.
        ].
        recoveredBlock25Step = 78 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Local1.
            recoveredBlock25PC := 81.
        ].
        recoveredBlock25Step = 81 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) y.
            recoveredBlock25PC := 83.
        ].
        recoveredBlock25Step = 83 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) printString.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 87.
        ].
        recoveredBlock25Step = 87 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 88.
        ].
        recoveredBlock25Step = 88 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) class.
            recoveredBlock25PC := 90.
        ].
        recoveredBlock25Step = 90 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) getPostSeparatorForTabIndex.
            recoveredBlock25PC := 92.
        ].
        recoveredBlock25Step = 92 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 94.
        ].
        recoveredBlock25Step = 94 ifTrue: [
            recoveredLocal2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 97.
        ].
        recoveredBlock25Step = 97 ifTrue: [
            recoveredBlock25PC := 124.
        ].
        recoveredBlock25Step = 100 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 101.
        ].
        recoveredBlock25Step = 101 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) class.
            recoveredBlock25PC := 103.
        ].
        recoveredBlock25Step = 103 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) getPreSeparatorForTabIndex.
            recoveredBlock25PC := 105.
        ].
        recoveredBlock25Step = 105 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Local1.
            recoveredBlock25PC := 108.
        ].
        recoveredBlock25Step = 108 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) printString.
            recoveredBlock25PC := 110.
        ].
        recoveredBlock25Step = 110 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) zapBlanks.
            recoveredBlock25PC := 112.
        ].
        recoveredBlock25Step = 112 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 114.
        ].
        recoveredBlock25Step = 114 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 115.
        ].
        recoveredBlock25Step = 115 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) class.
            recoveredBlock25PC := 117.
        ].
        recoveredBlock25Step = 117 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) getPostSeparatorForTabIndex.
            recoveredBlock25PC := 119.
        ].
        recoveredBlock25Step = 119 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) , (recoveredBlock25Stack2).
            recoveredBlock25PC := 121.
        ].
        recoveredBlock25Step = 121 ifTrue: [
            recoveredLocal2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 124.
        ].
        recoveredBlock25Step = 124 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 127.
        ].
        recoveredBlock25Step = 127 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) shortName.
            recoveredBlock25PC := 129.
        ].
        recoveredBlock25Step = 129 ifTrue: [
            recoveredBlock25Stack2 := '.'.
            recoveredBlock25PC := 131.
        ].
        recoveredBlock25Step = 131 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock25Stack2).
            recoveredBlock25PC := 133.
        ].
        recoveredBlock25Step = 133 ifTrue: [
            recoveredBlock25Local2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 136.
        ].
        recoveredBlock25Step = 136 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local2.
            recoveredBlock25PC := 139.
        ].
        recoveredBlock25Step = 139 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block139Arg1 :recoveredBlock25Block139Arg2 | 
    | recoveredBlock25Block139Stack0 recoveredBlock25Block139Stack1 recoveredBlock25Block139Stack2 recoveredBlock25Block139Stack3 recoveredBlock25Block139PC recoveredBlock25Block139Step recoveredBlock25Block139Done recoveredBlock25Block139Result |
    recoveredBlock25Block139Stack0 := nil.
    recoveredBlock25Block139PC := 146.
    recoveredBlock25Block139Done := false.
    [recoveredBlock25Block139Done not] whileTrue: [
        recoveredBlock25Block139Step := recoveredBlock25Block139PC.
        recoveredBlock25Block139Step = 146 ifTrue: [
            recoveredBlock25Block139Stack1 := recoveredBlock25Block139Arg2.
            recoveredBlock25Block139PC := 147.
        ].
        recoveredBlock25Block139Step = 147 ifTrue: [
            recoveredBlock25Block139Stack2 := 1.
            recoveredBlock25Block139PC := 149.
        ].
        recoveredBlock25Block139Step = 149 ifTrue: [
            recoveredBlock25Block139Stack1 := (recoveredBlock25Block139Stack1) = (recoveredBlock25Block139Stack2).
            recoveredBlock25Block139PC := 150.
        ].
        recoveredBlock25Block139Step = 150 ifTrue: [
            (recoveredBlock25Block139Stack1) ifTrue: [recoveredBlock25Block139PC := 154] ifFalse: [recoveredBlock25Block139PC := 172].
        ].
        recoveredBlock25Block139Step = 154 ifTrue: [
            recoveredBlock25Block139Stack1 := recoveredBlock25Local2.
            recoveredBlock25Block139PC := 157.
        ].
        recoveredBlock25Block139Step = 157 ifTrue: [
            recoveredBlock25Block139Stack1 := (recoveredBlock25Block139Stack1) first.
            recoveredBlock25Block139PC := 159.
        ].
        recoveredBlock25Block139Step = 159 ifTrue: [
            recoveredBlock25Block139Stack2 := recoveredLocal2.
            recoveredBlock25Block139PC := 162.
        ].
        recoveredBlock25Block139Step = 162 ifTrue: [
            recoveredBlock25Block139Stack1 := (recoveredBlock25Block139Stack1) , (recoveredBlock25Block139Stack2).
            recoveredBlock25Block139PC := 164.
        ].
        recoveredBlock25Block139Step = 164 ifTrue: [
            recoveredBlock25Block139Stack2 := recoveredBlock25Block139Stack1.
            recoveredBlock25Block139PC := 165.
        ].
        recoveredBlock25Block139Step = 165 ifTrue: [
            recoveredBlock25Local3 := recoveredBlock25Block139Stack2.
            recoveredBlock25Block139PC := 168.
        ].
        recoveredBlock25Block139Step = 168 ifTrue: [
            recoveredBlock25Block139PC := 186.
        ].
        recoveredBlock25Block139Step = 172 ifTrue: [
            recoveredBlock25Block139Stack1 := recoveredBlock25Local3.
            recoveredBlock25Block139PC := 175.
        ].
        recoveredBlock25Block139Step = 175 ifTrue: [
            recoveredBlock25Block139Stack2 := '.'.
            recoveredBlock25Block139PC := 177.
        ].
        recoveredBlock25Block139Step = 177 ifTrue: [
            recoveredBlock25Block139Stack1 := (recoveredBlock25Block139Stack1) , (recoveredBlock25Block139Stack2).
            recoveredBlock25Block139PC := 179.
        ].
        recoveredBlock25Block139Step = 179 ifTrue: [
            recoveredBlock25Block139Stack2 := recoveredBlock25Block139Arg1.
            recoveredBlock25Block139PC := 180.
        ].
        recoveredBlock25Block139Step = 180 ifTrue: [
            recoveredBlock25Block139Stack1 := (recoveredBlock25Block139Stack1) , (recoveredBlock25Block139Stack2).
            recoveredBlock25Block139PC := 182.
        ].
        recoveredBlock25Block139Step = 182 ifTrue: [
            recoveredBlock25Block139Stack2 := recoveredBlock25Block139Stack1.
            recoveredBlock25Block139PC := 183.
        ].
        recoveredBlock25Block139Step = 183 ifTrue: [
            recoveredBlock25Local3 := recoveredBlock25Block139Stack2.
            recoveredBlock25Block139PC := 186.
        ].
        recoveredBlock25Block139Step = 186 ifTrue: [
            recoveredBlock25Block139Result := recoveredBlock25Block139Stack1.
            recoveredBlock25Block139Done := true.
        ].
    ].
    recoveredBlock25Block139Result
].
            recoveredBlock25PC := 187.
        ].
        recoveredBlock25Step = 187 ifTrue: [
            (recoveredBlock25Stack1) doWithIndex: (recoveredBlock25Stack2).
            recoveredBlock25PC := 189.
        ].
        recoveredBlock25Step = 189 ifTrue: [
            recoveredBlock25Stack1 := EtasWrapperSubNodeForTable.
            recoveredBlock25PC := 191.
        ].
        recoveredBlock25Step = 191 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) create.
            recoveredBlock25PC := 193.
        ].
        recoveredBlock25Step = 193 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 194.
        ].
        recoveredBlock25Step = 194 ifTrue: [
            recoveredBlock25Stack3 := recoveredArg1.
            recoveredBlock25PC := 197.
        ].
        recoveredBlock25Step = 197 ifTrue: [
            (recoveredBlock25Stack2) tableNode: (recoveredBlock25Stack3).
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 200.
        ].
        recoveredBlock25Step = 200 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Local1.
            recoveredBlock25PC := 203.
        ].
        recoveredBlock25Step = 203 ifTrue: [
            (recoveredBlock25Stack2) indices: (recoveredBlock25Stack3).
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 206.
        ].
        recoveredBlock25Step = 206 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Local3.
            recoveredBlock25PC := 209.
        ].
        recoveredBlock25Step = 209 ifTrue: [
            (recoveredBlock25Stack2) label: (recoveredBlock25Stack3).
            recoveredBlock25PC := 211.
        ].
        recoveredBlock25Step = 211 ifTrue: [
            recoveredLocal4 := recoveredBlock25Stack1.
            recoveredBlock25PC := 214.
        ].
        recoveredBlock25Step = 214 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal3.
            recoveredBlock25PC := 217.
        ].
        recoveredBlock25Step = 217 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal4.
            recoveredBlock25PC := 220.
        ].
        recoveredBlock25Step = 220 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 222.
        ].
        recoveredBlock25Step = 222 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206140b8; bytecode file offset 0xf10a44"
!MCSVariableSelectionDummyCtrl methodsFor: 'recovered'!
getTableSubNodesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) xSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Please enter indices for:
'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMatrixNode.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySize.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := '['.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := ']['.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := ']
Example: 0@0,0@1'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := '0@0'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := '['.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := ']

Example: 0,1,2 or 0-'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := '0-'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := CwExtendedTextPrompter.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := 'Define Sub Elements of Measure Elements'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack2) result: (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptWithEtasFonts.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 498].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) zapBlanks.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := $,.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMatrixNode.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := [:block2811e120Arg1 | 
    | block2811e120Local1 block2811e120Stack0 block2811e120Stack1 block2811e120Stack2 block2811e120Stack3 block2811e120Stack4 block2811e120PC block2811e120Step block2811e120Done block2811e120Result |
    block2811e120Stack0 := self.
    block2811e120PC := 4.
    block2811e120Done := false.
    [block2811e120Done not] whileTrue: [
        block2811e120Step := block2811e120PC.
        block2811e120Step = 4 ifTrue: [
            block2811e120Stack1 := block2811e120Arg1.
            block2811e120PC := 5.
        ].
        block2811e120Step = 5 ifTrue: [
            block2811e120Stack2 := '@'.
            block2811e120PC := 7.
        ].
        block2811e120Step = 7 ifTrue: [
            block2811e120Stack1 := (block2811e120Stack1) asArrayOfSubstringsSeparatedBy: (block2811e120Stack2).
            block2811e120PC := 9.
        ].
        block2811e120Step = 9 ifTrue: [
            block2811e120Stack2 := block2811e120Stack1.
            block2811e120PC := 10.
        ].
        block2811e120Step = 10 ifTrue: [
            block2811e120Local1 := block2811e120Stack2.
            block2811e120PC := 11.
        ].
        block2811e120Step = 11 ifTrue: [
            block2811e120Stack1 := (block2811e120Stack1) size.
            block2811e120PC := 13.
        ].
        block2811e120Step = 13 ifTrue: [
            block2811e120Stack2 := 2.
            block2811e120PC := 15.
        ].
        block2811e120Step = 15 ifTrue: [
            (block2811e120Stack1 ~~ block2811e120Stack2) ifTrue: [block2811e120PC := 38] ifFalse: [block2811e120PC := 18].
        ].
        block2811e120Step = 18 ifTrue: [
            block2811e120Stack1 := block2811e120Local1.
            block2811e120PC := 19.
        ].
        block2811e120Step = 19 ifTrue: [
            block2811e120Stack2 := 1.
            block2811e120PC := 21.
        ].
        block2811e120Step = 21 ifTrue: [
            block2811e120Stack1 := (block2811e120Stack1) at: (block2811e120Stack2).
            block2811e120PC := 23.
        ].
        block2811e120Step = 23 ifTrue: [
            block2811e120Stack1 := (block2811e120Stack1) asInteger.
            block2811e120PC := 25.
        ].
        block2811e120Step = 25 ifTrue: [
            block2811e120Stack2 := block2811e120Local1.
            block2811e120PC := 26.
        ].
        block2811e120Step = 26 ifTrue: [
            block2811e120Stack3 := 2.
            block2811e120PC := 28.
        ].
        block2811e120Step = 28 ifTrue: [
            block2811e120Stack2 := (block2811e120Stack2) at: (block2811e120Stack3).
            block2811e120PC := 30.
        ].
        block2811e120Step = 30 ifTrue: [
            block2811e120Stack2 := (block2811e120Stack2) asInteger.
            block2811e120PC := 32.
        ].
        block2811e120Step = 32 ifTrue: [
            block2811e120Stack1 := (block2811e120Stack1) @ (block2811e120Stack2).
            block2811e120PC := 34.
        ].
        block2811e120Step = 34 ifTrue: [
            block2811e120PC := 39.
        ].
        block2811e120Step = 38 ifTrue: [
            block2811e120Stack1 := block2811e120Arg1.
            block2811e120PC := 39.
        ].
        block2811e120Step = 39 ifTrue: [
            block2811e120Result := block2811e120Stack1.
            block2811e120Done := true.
        ].
    ].
    block2811e120Result
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := [:block2811e144Arg1 | 
    | block2811e144Value0 block2811e144Value1 block2811e144Value2 |
    block2811e144Value0 := block2811e144Arg1.
    block2811e144Value1 := (block2811e144Value0) isPoint.
    block2811e144Value2 := (block2811e144Value1) not.
    block2811e144Value2
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := [
    recoveredLocal3 := true.
    true
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := [:recoveredBlock302Arg1 | 
    | recoveredBlock302Local1 recoveredBlock302Stack0 recoveredBlock302Stack1 recoveredBlock302Stack2 recoveredBlock302Stack3 recoveredBlock302Stack4 recoveredBlock302Stack5 recoveredBlock302PC recoveredBlock302Step recoveredBlock302Done recoveredBlock302Result |
    recoveredBlock302Stack0 := self.
    recoveredBlock302PC := 308.
    recoveredBlock302Done := false.
    [recoveredBlock302Done not] whileTrue: [
        recoveredBlock302Step := recoveredBlock302PC.
        recoveredBlock302Step = 308 ifTrue: [
            recoveredBlock302Stack1 := nil.
            recoveredBlock302PC := 309.
        ].
        recoveredBlock302Step = 309 ifTrue: [
            recoveredBlock302Stack2 := recoveredBlock302Arg1.
            recoveredBlock302PC := 310.
        ].
        recoveredBlock302Step = 310 ifTrue: [
            recoveredBlock302Stack3 := $-.
            recoveredBlock302PC := 314.
        ].
        recoveredBlock302Step = 314 ifTrue: [
            recoveredBlock302Stack2 := (recoveredBlock302Stack2) allSubStrings: (recoveredBlock302Stack3).
            recoveredBlock302PC := 316.
        ].
        recoveredBlock302Step = 316 ifTrue: [
            recoveredBlock302Stack3 := recoveredBlock302Stack2.
            recoveredBlock302PC := 317.
        ].
        recoveredBlock302Step = 317 ifTrue: [
            recoveredLocal1 := recoveredBlock302Stack3.
            recoveredBlock302PC := 320.
        ].
        recoveredBlock302Step = 320 ifTrue: [
            recoveredBlock302Stack2 := (recoveredBlock302Stack2) notEmpty.
            recoveredBlock302PC := 322.
        ].
        recoveredBlock302Step = 322 ifTrue: [
            (recoveredBlock302Stack2) ifTrue: [recoveredBlock302PC := 326] ifFalse: [recoveredBlock302PC := 402].
        ].
        recoveredBlock302Step = 326 ifTrue: [
            recoveredBlock302PC := 327.
        ].
        recoveredBlock302Step = 327 ifTrue: [
            recoveredBlock302Stack1 := recoveredLocal1.
            recoveredBlock302PC := 330.
        ].
        recoveredBlock302Step = 330 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) size.
            recoveredBlock302PC := 332.
        ].
        recoveredBlock302Step = 332 ifTrue: [
            recoveredBlock302Stack2 := 1.
            recoveredBlock302PC := 334.
        ].
        recoveredBlock302Step = 334 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) = (recoveredBlock302Stack2).
            recoveredBlock302PC := 335.
        ].
        recoveredBlock302Step = 335 ifTrue: [
            (recoveredBlock302Stack1) ifTrue: [recoveredBlock302PC := 338] ifFalse: [recoveredBlock302PC := 350].
        ].
        recoveredBlock302Step = 338 ifTrue: [
            recoveredBlock302Stack1 := recoveredLocal2.
            recoveredBlock302PC := 341.
        ].
        recoveredBlock302Step = 341 ifTrue: [
            recoveredBlock302Stack2 := recoveredLocal1.
            recoveredBlock302PC := 344.
        ].
        recoveredBlock302Step = 344 ifTrue: [
            recoveredBlock302Stack2 := (recoveredBlock302Stack2) first.
            recoveredBlock302PC := 346.
        ].
        recoveredBlock302Step = 346 ifTrue: [
            recoveredBlock302Stack2 := (recoveredBlock302Stack2) asInteger.
            recoveredBlock302PC := 348.
        ].
        recoveredBlock302Step = 348 ifTrue: [
            (recoveredBlock302Stack1) add: (recoveredBlock302Stack2).
            recoveredBlock302PC := 350.
        ].
        recoveredBlock302Step = 350 ifTrue: [
            recoveredBlock302Stack1 := nil.
            recoveredBlock302PC := 351.
        ].
        recoveredBlock302Step = 351 ifTrue: [
            recoveredBlock302Stack2 := recoveredLocal1.
            recoveredBlock302PC := 354.
        ].
        recoveredBlock302Step = 354 ifTrue: [
            recoveredBlock302Stack2 := (recoveredBlock302Stack2) size.
            recoveredBlock302PC := 356.
        ].
        recoveredBlock302Step = 356 ifTrue: [
            recoveredBlock302Stack3 := 2.
            recoveredBlock302PC := 358.
        ].
        recoveredBlock302Step = 358 ifTrue: [
            recoveredBlock302Stack2 := (recoveredBlock302Stack2) = (recoveredBlock302Stack3).
            recoveredBlock302PC := 359.
        ].
        recoveredBlock302Step = 359 ifTrue: [
            (recoveredBlock302Stack2) ifTrue: [recoveredBlock302PC := 362] ifFalse: [recoveredBlock302PC := 402].
        ].
        recoveredBlock302Step = 362 ifTrue: [
            recoveredBlock302PC := 363.
        ].
        recoveredBlock302Step = 363 ifTrue: [
            recoveredBlock302Stack1 := recoveredLocal1.
            recoveredBlock302PC := 366.
        ].
        recoveredBlock302Step = 366 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) first.
            recoveredBlock302PC := 368.
        ].
        recoveredBlock302Step = 368 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) asInteger.
            recoveredBlock302PC := 370.
        ].
        recoveredBlock302Step = 370 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) + (-1).
            recoveredBlock302PC := 371.
        ].
        recoveredBlock302Step = 371 ifTrue: [
            recoveredBlock302Local1 := recoveredBlock302Stack1.
            recoveredBlock302PC := 372.
        ].
        recoveredBlock302Step = 372 ifTrue: [
            recoveredBlock302Stack1 := recoveredLocal1.
            recoveredBlock302PC := 375.
        ].
        recoveredBlock302Step = 375 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) last.
            recoveredBlock302PC := 377.
        ].
        recoveredBlock302Step = 377 ifTrue: [
            recoveredBlock302Stack1 := (recoveredBlock302Stack1) asInteger.
            recoveredBlock302PC := 379.
        ].
        recoveredBlock302Step = 379 ifTrue: [
            recoveredBlock302PC := 388.
        ].
        recoveredBlock302Step = 382 ifTrue: [
            recoveredBlock302Stack2 := recoveredLocal2.
            recoveredBlock302PC := 385.
        ].
        recoveredBlock302Step = 385 ifTrue: [
            recoveredBlock302Stack3 := recoveredBlock302Local1.
            recoveredBlock302PC := 386.
        ].
        recoveredBlock302Step = 386 ifTrue: [
            (recoveredBlock302Stack2) add: (recoveredBlock302Stack3).
            recoveredBlock302PC := 388.
        ].
        recoveredBlock302Step = 388 ifTrue: [
            (recoveredBlock302Stack1 isInteger and: [recoveredBlock302Local1 isInteger]) ifTrue: [(recoveredBlock302Local1 + 1 <= recoveredBlock302Stack1) ifTrue: [recoveredBlock302Local1 := recoveredBlock302Local1 + 1. recoveredBlock302PC := 382] ifFalse: [recoveredBlock302Local1 := nil. recoveredBlock302PC := 402]] ifFalse: [recoveredBlock302PC := 392].
        ].
        recoveredBlock302Step = 392 ifTrue: [
            recoveredBlock302Stack2 := recoveredBlock302Stack1.
            recoveredBlock302PC := 393.
        ].
        recoveredBlock302Step = 393 ifTrue: [
            recoveredBlock302Stack3 := recoveredBlock302Local1.
            recoveredBlock302PC := 394.
        ].
        recoveredBlock302Step = 394 ifTrue: [
            recoveredBlock302Stack3 := (recoveredBlock302Stack3) + (1).
            recoveredBlock302PC := 395.
        ].
        recoveredBlock302Step = 395 ifTrue: [
            recoveredBlock302Stack4 := recoveredBlock302Stack3.
            recoveredBlock302PC := 396.
        ].
        recoveredBlock302Step = 396 ifTrue: [
            recoveredBlock302Local1 := recoveredBlock302Stack4.
            recoveredBlock302PC := 397.
        ].
        recoveredBlock302Step = 397 ifTrue: [
            recoveredBlock302Stack2 := (recoveredBlock302Stack2) < (recoveredBlock302Stack3).
            recoveredBlock302PC := 398.
        ].
        recoveredBlock302Step = 398 ifTrue: [
            (recoveredBlock302Stack2) ifTrue: [recoveredBlock302PC := 400] ifFalse: [recoveredBlock302PC := 382].
        ].
        recoveredBlock302Step = 400 ifTrue: [
            recoveredBlock302Stack2 := nil.
            recoveredBlock302PC := 401.
        ].
        recoveredBlock302Step = 401 ifTrue: [
            recoveredBlock302Local1 := recoveredBlock302Stack2.
            recoveredBlock302PC := 402.
        ].
        recoveredBlock302Step = 402 ifTrue: [
            recoveredBlock302Result := recoveredBlock302Stack1.
            recoveredBlock302Done := true.
        ].
    ].
    recoveredBlock302Result
].
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := [:block2811e168Arg1 | 
    | block2811e168Value0 block2811e168Value1 block2811e168Value2 |
    block2811e168Value0 := block2811e168Arg1.
    block2811e168Value1 := (block2811e168Value0) isInteger.
    block2811e168Value2 := (block2811e168Value1) not.
    block2811e168Value2
].
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := [
    recoveredLocal3 := true.
    true
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 486].
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock456Value0 recoveredBlock456Value1 recoveredBlock456Value2 recoveredBlock456Value3 recoveredBlock456Value4 recoveredBlock456Value5 recoveredBlock456Value6 |
    recoveredBlock456Value0 := (self) experiment.
    recoveredBlock456Value1 := recoveredArg1.
    recoveredBlock456Value2 := recoveredLocal8.
    recoveredBlock456Value3 := (recoveredBlock456Value2) asSet.
    recoveredBlock456Value4 := (recoveredBlock456Value3) asArray.
    recoveredBlock456Value5 := (recoveredBlock456Value0) createSubNodesForTable: (recoveredBlock456Value1) indices: (recoveredBlock456Value4).
    recoveredBlock456Value6 := recoveredBlock456Value5.
    recoveredLocal5 := recoveredBlock456Value6.
    recoveredBlock456Value5
].
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredPC := 494.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := 'Wrong format for indices. Try again!!'.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

