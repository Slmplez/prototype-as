"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cb04; bytecode file offset 0x909658"
!EtasEMPrimImportNode methodsFor: 'recovered'!
checkAsap2IsAlreadyVisited: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x200289a4; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
valueConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) valueConfig.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002af64; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
sgValueConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) sgValueConfig.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d804; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
removeDataElementInst
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) removeDataElementInst.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f524; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
hasDataElementInst
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) hasDataElementInst.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ff64; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
createDataElementWithAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) createDataElementWithAccess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030974; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
ic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) ic.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033124; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
getAliasName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) getAliasName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200357f4; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
asAsap2HierarchicalName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) asAsap2HierarchicalName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037384; bytecode file offset 0x934580"
!EtasEMPrimImportNode methodsFor: 'recovered'!
getDataElementInst
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := (recoveredValue0) getDataElementInst.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200577a8; bytecode file offset 0x956284"
!EtasEMPrimImportNode methodsFor: 'recovered'!
dataElementInst: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) dataElementInst: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057de8; bytecode file offset 0x956284"
!EtasEMPrimImportNode methodsFor: 'recovered'!
brothersAndSistersNodeForLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) brothersAndSistersNodeForLabel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059778; bytecode file offset 0x956284"
!EtasEMPrimImportNode methodsFor: 'recovered'!
createDistributionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createDistributionsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200768bc; bytecode file offset 0x9757c8"
!EtasEMPrimImportNode methodsFor: 'recovered'!
isPrimNode
    ^true
! !

"ASDBase.ic method 0x2010d508; bytecode file offset 0xa09de4"
!EtasEMPrimImportNode methodsFor: 'recovered'!
walkThrough: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportNode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) walkThrough: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011551c; bytecode file offset 0xa11dd4"
!EtasEMPrimImportNode methodsFor: 'recovered'!
top
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
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
            recoveredStack1 := parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016af50; bytecode file offset 0xa67824"
!EtasEMPrimImportNode methodsFor: 'recovered'!
reference
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportNode.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super reference.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016af64; bytecode file offset 0xa67824"
!EtasEMPrimImportNode methodsFor: 'recovered'!
parent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportNode.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super parent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018389c; bytecode file offset 0xa801f0"
!EtasEMPrimImportNode methodsFor: 'recovered'!
asAsap2Name
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exportNode.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) asAsap2Name.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super asAsap2Name.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2019fbcc; bytecode file offset 0xa9c490"
!EtasEMPrimImportNode methodsFor: 'recovered'!
expVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := classVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d215cArg1 | 
    | block280d215cStack0 block280d215cStack1 block280d215cStack2 block280d215cStack3 block280d215cPC block280d215cStep block280d215cDone block280d215cResult |
    block280d215cStack0 := self.
    block280d215cPC := 4.
    block280d215cDone := false.
    [block280d215cDone not] whileTrue: [
        block280d215cStep := block280d215cPC.
        block280d215cStep = 4 ifTrue: [
            block280d215cStack1 := false.
            block280d215cPC := 5.
        ].
        block280d215cStep = 5 ifTrue: [
            block280d215cStack2 := block280d215cArg1.
            block280d215cPC := 6.
        ].
        block280d215cStep = 6 ifTrue: [
            block280d215cStack2 := (block280d215cStack2) reference.
            block280d215cPC := 7.
        ].
        block280d215cStep = 7 ifTrue: [
            (block280d215cStack2 == nil) ifTrue: [block280d215cPC := 14] ifFalse: [block280d215cPC := 10].
        ].
        block280d215cStep = 10 ifTrue: [
            block280d215cPC := 11.
        ].
        block280d215cStep = 11 ifTrue: [
            block280d215cStack1 := block280d215cArg1.
            block280d215cPC := 12.
        ].
        block280d215cStep = 12 ifTrue: [
            block280d215cStack1 := (block280d215cStack1) reference.
            block280d215cPC := 13.
        ].
        block280d215cStep = 13 ifTrue: [
            block280d215cStack1 := (block280d215cStack1) isExported.
            block280d215cPC := 14.
        ].
        block280d215cStep = 14 ifTrue: [
            block280d215cResult := block280d215cStack1.
            block280d215cDone := true.
        ].
    ].
    block280d215cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20252e28; bytecode file offset 0xb4f6f8"
!EtasEMPrimImportNode methodsFor: 'recovered'!
exportNode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := exportNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) namedExport: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            exportNode := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := exportNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'No Export found for: '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := label.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := exportNode.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

