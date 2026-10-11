"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200353f4; bytecode file offset 0x934580"
!SGHierarchyBlock methodsFor: 'recovered'!
currentMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) currentMethod.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004960c; bytecode file offset 0x947128"
!SGHierarchyBlock methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) id.
    recoveredValue1 := (self) graphicSource: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200563a0; bytecode file offset 0x952c58"
!SGHierarchyBlock methodsFor: 'recovered'!
buildMdl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) buildMdlExpression.
    ^self
! !

"ASDBase.ic method 0x20057878; bytecode file offset 0x956284"
!SGHierarchyBlock methodsFor: 'recovered'!
iDTableAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) iDTableAt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b868; bytecode file offset 0x96873c"
!SGHierarchyBlock methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078dbc; bytecode file offset 0x9757c8"
!SGHierarchyBlock methodsFor: 'recovered'!
isBdlHierarchyBlock
    ^true
! !

"ASDBase.ic method 0x2008c014; bytecode file offset 0x988b68"
!SGHierarchyBlock methodsFor: 'recovered'!
wrongOwnerErrorMsg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := ('different regular hierarchy named ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009a318; bytecode file offset 0x997194"
!SGHierarchyBlock methodsFor: 'recovered'!
iDTableAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) iDTableAt: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae5d8; bytecode file offset 0x9ab034"
!SGHierarchyBlock methodsFor: 'recovered'!
checkStatementBlockName: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) checkStatementBlockName: (recoveredValue1) source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c2450; bytecode file offset 0x9bf474"
!SGHierarchyBlock methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010b3e8; bytecode file offset 0xa07cb0"
!SGHierarchyBlock methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super initialize.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (0).
    recoveredValue3 := (recoveredValue0) children: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20119914; bytecode file offset 0xa16880"
!SGHierarchyBlock methodsFor: 'recovered'!
prepareForAnalyzing
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
            recoveredStack1 := [:block280c7b90Arg1 | 
    | block280c7b90Value0 block280c7b90Value1 |
    block280c7b90Value0 := block280c7b90Arg1.
    block280c7b90Value1 := (block280c7b90Value0) prepareForAnalyzing.
    block280c7b90Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129c8c; bytecode file offset 0xa2654c"
!SGHierarchyBlock methodsFor: 'recovered'!
resetAllSequences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c96b4Arg1 | 
    | block280c96b4Value0 block280c96b4Value1 |
    block280c96b4Value0 := block280c96b4Arg1.
    block280c96b4Value1 := (block280c96b4Value0) resetAllSequences.
    block280c96b4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131e6c; bytecode file offset 0xa2e730"
!SGHierarchyBlock methodsFor: 'recovered'!
addBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) parent: (self).
    recoveredValue1 := children.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    children := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20167ee4; bytecode file offset 0xa647b0"
!SGHierarchyBlock methodsFor: 'recovered'!
collectAllSeqForMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := children.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) collectAllSeqForMethod: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20167ef4; bytecode file offset 0xa647b0"
!SGHierarchyBlock methodsFor: 'recovered'!
collectDefSeqForMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := children.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) collectDefSeqForMethods: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177c14; bytecode file offset 0xa7490c"
!SGHierarchyBlock methodsFor: 'recovered'!
prepareForSequencing: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) prepareForSequencing: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177e44; bytecode file offset 0xa7490c"
!SGHierarchyBlock methodsFor: 'recovered'!
collectCharacteristicValuesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) collectCharacteristicValuesIn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ec94c; bytecode file offset 0xae9210"
!SGHierarchyBlock methodsFor: 'recovered'!
representsBdlCTClass
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d77fcArg1 | 
    | block280d77fcValue0 block280d77fcValue1 |
    block280d77fcValue0 := block280d77fcArg1.
    block280d77fcValue1 := (block280d77fcValue0) representsBdlCTClass.
    block280d77fcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202080d8; bytecode file offset 0xb049a4"
!SGHierarchyBlock methodsFor: 'recovered'!
addPort: recoveredArg1 direction: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGHierarchyBlockPort.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPort: (recoveredStack2) direction: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            super addPort: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceEntryPoint.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

