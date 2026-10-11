"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006b30; bytecode file offset 0x908be4"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
genSixImplementation
    | recoveredValue0 |
    recoveredValue0 := (self) implType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008384; bytecode file offset 0x908be4"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
sixElementName
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028ad4; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
cInstancePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pathInfoNode.
    recoveredValue1 := (recoveredValue0) cInstancePath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029774; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
pathInfoNode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pathInfoNodes.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a6e4; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) mdlLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d334; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
isMdlCharacteristic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) isMdlParameter.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dc54; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
isMdlCalibration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) isMdlCalibration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002deb4; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
isMdlParameter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) isMdlParameter.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002df64; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
genSixVisibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) genSixVisibility.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031b04; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
genSixModelKind
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) genSixModelKind.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036fc4; bytecode file offset 0x934580"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
mdlClassInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pathInfoNode.
    recoveredValue1 := (recoveredValue0) mdlClassInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f26c; bytecode file offset 0x94d048"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
pathInfoNodes
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fbe4; bytecode file offset 0x94d048"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
pseudoAddress
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050034; bytecode file offset 0x94d048"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
hierarchicalModelName
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050358; bytecode file offset 0x94d048"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
mdlVarDecl
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20051114; bytecode file offset 0x94f0e0"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
genSixAnnotations
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := (recoveredValue1) comment.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051df8; bytecode file offset 0x94f0e0"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
genSixImportedElementCName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) ileVarDecl.
    recoveredValue2 := (recoveredValue1) genName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200668f4; bytecode file offset 0x963428"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
implType
    | recoveredValue0 |
    recoveredValue0 := implType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067174; bytecode file offset 0x9646f8"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 |
    recoveredValue0 := mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007759c; bytecode file offset 0x9757c8"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
hasDataCInterface
    ^true
! !

"ASDBase.ic method 0x2007cf94; bytecode file offset 0x97c330"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
isScoopIXCharTableDataElement
    ^false
! !

"ASDBase.ic method 0x200be174; bytecode file offset 0x9bb178"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
implType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf1b0; bytecode file offset 0x9bc0b4"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20118b58; bytecode file offset 0xa15490"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
isDefinedExternally
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
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlDefinedExternally.
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
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e31c8; bytecode file offset 0xadfa90"
!SGMdAbstractScoopIXDataElement methodsFor: 'recovered'!
requiresCStructDefinition
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
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlCharTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVarDecl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlDistribution.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

