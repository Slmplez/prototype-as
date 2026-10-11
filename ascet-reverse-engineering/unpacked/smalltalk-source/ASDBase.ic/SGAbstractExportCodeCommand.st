"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017ab0; bytecode file offset 0x92209c"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
fileTypeLabel
    ^'unknown'
! !

"ASDBase.ic method 0x20037ab4; bytecode file offset 0x934580"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
numOfFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sources.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e0e4; bytecode file offset 0x94d048"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
collectCommandSources
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e408; bytecode file offset 0x94d048"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
exportSources
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006c1ec; bytecode file offset 0x9692b0"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
sourceCollector
    | recoveredValue0 |
    recoveredValue0 := sourceCollector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076704; bytecode file offset 0x9757c8"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
isBasicExportCodeCommand
    ^true
! !

"ASDBase.ic method 0x20090340; bytecode file offset 0x98ccc4"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
asapFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := (recoveredValue1) , ('.a2l').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c2fd4; bytecode file offset 0x9bfde0"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
sourceCollector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceCollector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d21e4; bytecode file offset 0x9ceaf0"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fileTypeLabel.
    recoveredValue1 := ('Export ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' files').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20118eb0; bytecode file offset 0xa15774"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
requiresBasicCommandExecution
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) collectSources.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) continue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sources.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20152468; bytecode file offset 0xa4ed2c"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
sources
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := sourceCollector.
    recoveredValue1 := [
    ^#()
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) sourceCollector.
    recoveredValue3 := (recoveredValue2) sources.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2016f8c4; bytecode file offset 0xa6c17c"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
showMonitorManagerEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := showMonitorManagerEntry.
    recoveredValue1 := [
    showMonitorManagerEntry := true.
    true
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := showMonitorManagerEntry.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20390994; bytecode file offset 0xc8d288"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
collectSources
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceCollector.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^self
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 'Analyzing'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSymbol.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'Analyzing '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileTypeLabel.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := ' files'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock45Value0 |
    recoveredBlock45Value0 := (self) collectCommandSources.
    recoveredBlock45Value0
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) doTiming: (recoveredStack1) title: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) sources.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) endCommandBlock: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e1230; bytecode file offset 0xcddb2c"
!SGAbstractExportCodeCommand methodsFor: 'recovered'!
executeBasicCommand
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Writing'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) showMonitorManagerEntry.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Writing '.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileTypeLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := ' files to directory'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) numOfFiles.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) startTiming: (recoveredStack1) title: (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 |
    recoveredBlock41Value0 := (self) hostAccess.
    recoveredBlock41Value1 := (self) destinationPath.
    (recoveredBlock41Value0) createHostDirectory: (recoveredBlock41Value1).
    recoveredBlock41Value2 := (self) exportSources.
    recoveredBlock41Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := self.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) showMonitorManagerEntry.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 74] ifFalse: [recoveredBlock59PC := 83].
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 76.
        ].
        recoveredBlock59Step = 76 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) monitorManager.
            recoveredBlock59PC := 78.
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal1.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) endTiming: (recoveredBlock59Stack2).
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

