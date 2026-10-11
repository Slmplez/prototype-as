"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b554; bytecode file offset 0x934580"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
genSixMemberName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) mdlLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200519d4; bytecode file offset 0x94f0e0"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
componentInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) mdlClass.
    recoveredValue2 := (recoveredValue1) componentInfo.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006cbf8; bytecode file offset 0x969c04"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
componentInstance
    | recoveredValue0 |
    recoveredValue0 := componentInstance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077e7c; bytecode file offset 0x9757c8"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
requiresCStructDefinition
    ^true
! !

"ASDBase.ic method 0x20096a34; bytecode file offset 0x9932f0"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
genSixCName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super genSixCName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20097424; bytecode file offset 0x995850"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
addMember: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) members.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c3918; bytecode file offset 0x9c058c"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
componentInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentInstance := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20129f8c; bytecode file offset 0xa26878"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
members
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := members.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            members := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := members.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201528e4; bytecode file offset 0xa4f2b0"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
genSixCStructDefinitionBaseRefName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) genSixImportedElementCName.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^'invalid baseRef name'
! !

"ASDBase.ic method 0x202a9660; bytecode file offset 0xba5f48"
!SGMdScoopIXComponentDataElement methodsFor: 'recovered'!
genSixImportedElementCName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) componentInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) genSixImportedElementCName.
    recoveredBlock5Value2 := (self) genSixMemberName.
    recoveredBlock5Value3 := (recoveredBlock5Value1) fieldAccess: (recoveredBlock5Value2).
    ^recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) mdlVarDecl.
    recoveredValue3 := (recoveredValue2) generator.
    recoveredValue4 := (recoveredValue3) genContext.
    recoveredValue5 := (recoveredValue4) ehooksSettings.
    recoveredValue6 := (self) mdlVarDecl.
    recoveredValue7 := (recoveredValue6) externDefinedElementTemplateKey.
    recoveredValue8 := (self) mdlVarDecl.
    recoveredValue9 := (recoveredValue8) mdlLabel.
    recoveredValue10 := (self) componentInfo.
    recoveredValue11 := (recoveredValue5) nameTemplateKey: (recoveredValue7) elementName: (recoveredValue9) componentInfo: (recoveredValue10).
    ^recoveredValue11
! !

