"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200010f8; bytecode file offset 0x8ffcfc"
!SGLogicBlock methodsFor: 'recovered'!
prepareForAnalyzing
    ^self
! !

"ASDBase.ic method 0x20003590; bytecode file offset 0x90206c"
!SGLogicBlock methodsFor: 'recovered'!
collectCharacteristicValuesIn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005448; bytecode file offset 0x90206c"
!SGLogicBlock methodsFor: 'recovered'!
prepareForSequencing: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000a9ac; bytecode file offset 0x908be4"
!SGLogicBlock methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ca74; bytecode file offset 0x909658"
!SGLogicBlock methodsFor: 'recovered'!
isHierarchyChild: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000dc74; bytecode file offset 0x90ab8c"
!SGLogicBlock methodsFor: 'recovered'!
errLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e280; bytecode file offset 0x90ab8c"
!SGLogicBlock methodsFor: 'recovered'!
controlBlockAtPort: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) dummyControlBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026410; bytecode file offset 0x923928"
!SGLogicBlock methodsFor: 'recovered'!
additionalMethodNamePart
    ^''
! !

"ASDBase.ic method 0x20034494; bytecode file offset 0x934580"
!SGLogicBlock methodsFor: 'recovered'!
currentMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) currentMethod.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035d44; bytecode file offset 0x934580"
!SGLogicBlock methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlName.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038178; bytecode file offset 0x934b68"
!SGLogicBlock methodsFor: 'recovered'!
methodScopeName: recoveredArg1
    ^''
! !

"ASDBase.ic method 0x2004169c; bytecode file offset 0x93e1a0"
!SGLogicBlock methodsFor: 'recovered'!
owner
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) getObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004187c; bytecode file offset 0x93e1a0"
!SGLogicBlock methodsFor: 'recovered'!
parent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) getObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a6cc; bytecode file offset 0x947128"
!SGLogicBlock methodsFor: 'recovered'!
conditionPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bdlConditionName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200534f0; bytecode file offset 0x9505d0"
!SGLogicBlock methodsFor: 'recovered'!
buildMdlAccessOp: recoveredArg1
    (self) buildMdl.
    ^self
! !

"ASDBase.ic method 0x20066ebc; bytecode file offset 0x9646f8"
!SGLogicBlock methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068d9c; bytecode file offset 0x965b90"
!SGLogicBlock methodsFor: 'recovered'!
interface
    | recoveredValue0 |
    recoveredValue0 := interface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069390; bytecode file offset 0x966bdc"
!SGLogicBlock methodsFor: 'recovered'!
hierarchyBlock
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ac2c; bytecode file offset 0x967a18"
!SGLogicBlock methodsFor: 'recovered'!
dataModelAliasName
    | recoveredValue0 |
    recoveredValue0 := aliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074a94; bytecode file offset 0x9757c8"
!SGLogicBlock methodsFor: 'recovered'!
isTempVarUsefull
    ^true
! !

"ASDBase.ic method 0x2007a284; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isHistory
    ^false
! !

"ASDBase.ic method 0x2007a5ac; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlReturnBlock
    ^false
! !

"ASDBase.ic method 0x2007a6fc; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlJunction
    ^false
! !

"ASDBase.ic method 0x2007af1c; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlTransition
    ^false
! !

"ASDBase.ic method 0x2007ba74; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlControlBlock
    ^false
! !

"ASDBase.ic method 0x2007c4a4; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
representsBdlCTClass
    ^false
! !

"ASDBase.ic method 0x2007c814; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlSwitchBlock
    ^false
! !

"ASDBase.ic method 0x2007d9ac; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isOperatorBlock
    ^false
! !

"ASDBase.ic method 0x2007e214; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isSGGlArgumentBlock
    ^false
! !

"ASDBase.ic method 0x2007e42c; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlMethodLocalBlock
    ^false
! !

"ASDBase.ic method 0x2007e774; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isExplicitAccessWithStatusOpBlock
    ^false
! !

"ASDBase.ic method 0x2007efcc; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlBreakBlock
    ^false
! !

"ASDBase.ic method 0x2007f7b4; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlStatementBlockBlock
    ^false
! !

"ASDBase.ic method 0x2007f93c; bytecode file offset 0x97c330"
!SGLogicBlock methodsFor: 'recovered'!
isBdlHierarchyBlock
    ^false
! !

"ASDBase.ic method 0x2008692c; bytecode file offset 0x983274"
!SGLogicBlock methodsFor: 'recovered'!
buildMdl: recoveredArg1 accessOp: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) buildMdl: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8944; bytecode file offset 0x9a5200"
!SGLogicBlock methodsFor: 'recovered'!
buildMdl: recoveredArg1
    | recoveredValue0 |
    (self) buildMdl.
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) buildMdlMethodCall.
    ^self
! !

"ASDBase.ic method 0x200abdac; bytecode file offset 0x9a8668"
!SGLogicBlock methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringPoolGet: (recoveredValue1).
    name := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b3110; bytecode file offset 0x9af9cc"
!SGLogicBlock methodsFor: 'recovered'!
warningEmptySequenceCall
    | recoveredValue0 |
    recoveredValue0 := (self) errLabel.
    (self) bdlWarningNo: (9) with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bf944; bytecode file offset 0x9bd228"
!SGLogicBlock methodsFor: 'recovered'!
interface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1120; bytecode file offset 0x9bdf14"
!SGLogicBlock methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c18fc; bytecode file offset 0x9beac8"
!SGLogicBlock methodsFor: 'recovered'!
dataModelAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3708; bytecode file offset 0x9cffc8"
!SGLogicBlock methodsFor: 'recovered'!
dummyControlBlock
    | recoveredValue0 recoveredValue1 |
    (self) bdlSyntaxErrNo: (8).
    recoveredValue0 := SGLmSeqTable.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f7ee4; bytecode file offset 0x9f4e38"
!SGLogicBlock methodsFor: 'recovered'!
returnPorts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5454Arg1 | 
    | block280c5454Value0 block280c5454Value1 |
    block280c5454Value0 := block280c5454Arg1.
    block280c5454Value1 := (block280c5454Value0) isBdlReturnPort.
    block280c5454Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8394; bytecode file offset 0x9f4e38"
!SGLogicBlock methodsFor: 'recovered'!
selectorPorts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5b5cArg1 | 
    | block280c5b5cValue0 block280c5b5cValue1 |
    block280c5b5cValue0 := block280c5b5cArg1.
    block280c5b5cValue1 := (block280c5b5cValue0) isSelectorPort.
    block280c5b5cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201084b0; bytecode file offset 0xa04d70"
!SGLogicBlock methodsFor: 'recovered'!
showBlock
    | recoveredValue0 |
    (self) bdlSemErrNo: (2000).
    recoveredValue0 := (self) errorHandler.
    (recoveredValue0) showAllErrWarnsHasErrs.
    ^self
! !

"ASDBase.ic method 0x201087bc; bytecode file offset 0xa05084"
!SGLogicBlock methodsFor: 'recovered'!
buildMdl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) source.
    (recoveredValue1) source: (recoveredValue2).
    recoveredValue3 := (self) name.
    (recoveredValue0) id: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20118b94; bytecode file offset 0xa15490"
!SGLogicBlock methodsFor: 'recovered'!
isWithinStatementBlockBlock
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isBdlStatementBlockBlock.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWithinStatementBlockBlock.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20119b24; bytecode file offset 0xa16880"
!SGLogicBlock methodsFor: 'recovered'!
resetAllSequences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorPorts.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7ea8Arg1 | 
    | block280c7ea8Value0 block280c7ea8Value1 |
    block280c7ea8Value0 := block280c7ea8Arg1.
    block280c7ea8Value1 := (block280c7ea8Value0) resetSequence.
    block280c7ea8Value1
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

"ASDBase.ic method 0x20124868; bytecode file offset 0xa21168"
!SGLogicBlock methodsFor: 'recovered'!
backReferences
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('interface') put: ('block').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20131e40; bytecode file offset 0xa2e704"
!SGLogicBlock methodsFor: 'recovered'!
addPort: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) block: (self).
    recoveredValue1 := interface.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    interface := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20162640; bytecode file offset 0xa5ef0c"
!SGLogicBlock methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) name: ('').
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    interface := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20177e30; bytecode file offset 0xa7490c"
!SGLogicBlock methodsFor: 'recovered'!
collectAllSeqForMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) collectAllSeqForMethod: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a8c70; bytecode file offset 0xaa55d0"
!SGLogicBlock methodsFor: 'recovered'!
portNamed: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) aliasName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a8cfc; bytecode file offset 0xaa55d0"
!SGLogicBlock methodsFor: 'recovered'!
returnPortNamed: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) returnPorts.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) aliasName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a8d10; bytecode file offset 0xaa55d0"
!SGLogicBlock methodsFor: 'recovered'!
selectorPortNamed: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) selectorPorts.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) aliasName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201db2a0; bytecode file offset 0xad7ba0"
!SGLogicBlock methodsFor: 'recovered'!
portNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('port named <') , (recoveredBlock7Value0).
    recoveredBlock7Value2 := (recoveredBlock7Value1) , ('>').
    recoveredBlock7Value3 := (self) fatalExpect: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (self) portNamed: (recoveredValue0) ifNone: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201db2d8; bytecode file offset 0xad7ba0"
!SGLogicBlock methodsFor: 'recovered'!
selectorPortNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('selectorPort named <') , (recoveredBlock7Value0).
    recoveredBlock7Value2 := (recoveredBlock7Value1) , ('>').
    recoveredBlock7Value3 := (self) fatalExpect: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (self) selectorPortNamed: (recoveredValue0) ifNone: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e8068; bytecode file offset 0xae492c"
!SGLogicBlock methodsFor: 'recovered'!
bdlWarningIncomplete: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlControlBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 61.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) bdlWarningNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) bdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
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

"ASDBase.ic method 0x201f6258; bytecode file offset 0xaf2b24"
!SGLogicBlock methodsFor: 'recovered'!
returnPortNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) aliasAsIdString.
    recoveredBlock7Value2 := ('returnPort named <') , (recoveredBlock7Value1).
    recoveredBlock7Value3 := (recoveredBlock7Value2) , ('>').
    recoveredBlock7Value4 := (self) fatalExpect: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue2 := (self) returnPortNamed: (recoveredValue0) ifNone: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20242bf8; bytecode file offset 0xb3f4d0"
!SGLogicBlock methodsFor: 'recovered'!
buildMdlOpImplementation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) implForModule.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataModelAliasName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplementationForOperatorAliasName: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'Operator implementations'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) obsoleteFeature: (recoveredStack1) source: (recoveredStack2).
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

"ASDBase.ic method 0x20255d34; bytecode file offset 0xb52600"
!SGLogicBlock methodsFor: 'recovered'!
setMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) hasReturnValue.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := SGReturnPort.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) createForMethod: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addPort: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := SGSelectorPort.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) createForMethod: (recoveredBlock5Stack3).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addPort: (recoveredBlock5Stack2).
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2026c124; bytecode file offset 0xb689fc"
!SGLogicBlock methodsFor: 'recovered'!
errorDelayFreeLoop: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 62.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := [:block280e037cArg1 | 
    | block280e037cValue0 block280e037cValue1 |
    block280e037cValue0 := block280e037cArg1.
    block280e037cValue1 := (block280e037cValue0) source.
    block280e037cValue1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [:block280e03a0Arg1 | 
    | block280e03a0Value0 block280e03a0Value1 |
    block280e03a0Value0 := block280e03a0Arg1.
    block280e03a0Value1 := (block280e03a0Value0) errLabel.
    block280e03a0Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMultiSource: (recoveredStack3) labels: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) bdlSyntaxErrNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) fatalWithDisplay.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028e780; bytecode file offset 0xb8b050"
!SGLogicBlock methodsFor: 'recovered'!
setMacros: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isGetAccessEnabled.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 25].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := SGBdlDirectOutputPort.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) createForVariable: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            (recoveredBlock5Stack1) addPort: (recoveredBlock5Stack2).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isSetAccessEnabled.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 39].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack2 := SGBdlDirectInputPort.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) createForVariable: (recoveredBlock5Stack3).
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addPort: (recoveredBlock5Stack2).
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202f4f58; bytecode file offset 0xbf1830"
!SGLogicBlock methodsFor: 'recovered'!
setInOuts: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_82450').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isGetAccessEnabledCheckContext.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 32].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := SGBdlOutputPort.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) createForVariable: (recoveredBlock11Stack3).
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            (recoveredBlock11Stack1) addPort: (recoveredBlock11Stack2).
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isSetAccessEnabledCheckContext.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 40] ifFalse: [recoveredBlock11PC := 49].
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack2 := SGBdlInputPort.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) createForVariable: (recoveredBlock11Stack3).
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) addPort: (recoveredBlock11Stack2).
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

