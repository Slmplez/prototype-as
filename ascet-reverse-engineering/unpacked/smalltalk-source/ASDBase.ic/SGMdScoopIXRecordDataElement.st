"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005253c; bytecode file offset 0x94f0e0"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
componentInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) scope.
    recoveredValue2 := (recoveredValue1) componentInfo.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006e120; bytecode file offset 0x96a9dc"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
recordInstance
    | recoveredValue0 |
    recoveredValue0 := recordInstance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098e94; bytecode file offset 0x995850"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
addField: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fields.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c44a8; bytecode file offset 0x9c11bc"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
recordInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    recordInstance := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012a210; bytecode file offset 0xa26acc"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
fields
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fields.
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
            fields := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := fields.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201838b4; bytecode file offset 0xa801f0"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
isDefinedExternally
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) recordInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isDefinedExternally.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super isDefinedExternally.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201838cc; bytecode file offset 0xa801f0"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
genSixVisibility
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) recordInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) genSixVisibility.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super genSixVisibility.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20183914; bytecode file offset 0xa801f0"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
requiresCStructDefinition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) recordInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) requiresCStructDefinition.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super requiresCStructDefinition.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018392c; bytecode file offset 0xa801f0"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
genSixModelKind
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) recordInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) genSixModelKind.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super genSixModelKind.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018395c; bytecode file offset 0xa80278"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
genSixCStructDefinitionBaseRefName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) recordInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) genSixImportedElementCName.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super genSixCStructDefinitionBaseRefName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b1600; bytecode file offset 0xaaded4"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
genSixMemberName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportLocalElementsNEW.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileVarDecl.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) genName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1fa0; bytecode file offset 0xaae86c"
!SGMdScoopIXRecordDataElement methodsFor: 'recovered'!
genSixImportedElementCName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) recordInstance.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) genSixImportedElementCName.
    recoveredBlock5Value2 := (self) genSixMemberName.
    recoveredBlock5Value3 := (recoveredBlock5Value1) fieldAccess: (recoveredBlock5Value2).
    ^recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super genSixImportedElementCName.
    ^recoveredValue2
! !

