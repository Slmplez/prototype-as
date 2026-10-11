"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200683dc; bytecode file offset 0x965b90"
!EtasOptionStructureNode methodsFor: 'recovered'!
structureNodes
    | recoveredValue0 |
    recoveredValue0 := structureNodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a028; bytecode file offset 0x966bdc"
!EtasOptionStructureNode methodsFor: 'recovered'!
optionNodes
    | recoveredValue0 |
    recoveredValue0 := optionNodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b134; bytecode file offset 0x967a18"
!EtasOptionStructureNode methodsFor: 'recovered'!
nodeForm
    | recoveredValue0 |
    recoveredValue0 := nodeForm.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074f74; bytecode file offset 0x9757c8"
!EtasOptionStructureNode methodsFor: 'recovered'!
isStructureNode
    ^true
! !

"ASDBase.ic method 0x200bfea4; bytecode file offset 0x9bd228"
!EtasOptionStructureNode methodsFor: 'recovered'!
structureNodes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    structureNodes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0990; bytecode file offset 0x9bdf14"
!EtasOptionStructureNode methodsFor: 'recovered'!
optionNodes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    optionNodes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c201c; bytecode file offset 0x9beac8"
!EtasOptionStructureNode methodsFor: 'recovered'!
nodeForm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nodeForm := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2023ccec; bytecode file offset 0xb395c0"
!EtasOptionStructureNode methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280dddccArg1 :block280dddccArg2 | 
    | block280dddccValue0 block280dddccValue1 block280dddccValue2 block280dddccValue3 block280dddccValue4 |
    block280dddccValue0 := block280dddccArg1.
    block280dddccValue1 := (block280dddccValue0) nodeLabel.
    block280dddccValue2 := block280dddccArg2.
    block280dddccValue3 := (block280dddccValue2) nodeLabel.
    block280dddccValue4 := (block280dddccValue1) < (block280dddccValue3).
    block280dddccValue4
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            structureNodes := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            optionNodes := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

