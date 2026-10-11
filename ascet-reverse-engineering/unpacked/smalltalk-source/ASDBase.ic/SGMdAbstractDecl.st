"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200065d0; bytecode file offset 0x902ecc"
!SGMdAbstractDecl methodsFor: 'recovered'!
genSixCName: recoveredArg1 additional: recoveredArg2 type: recoveredArg3 attributes: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x2001a1b0; bytecode file offset 0x92209c"
!SGMdAbstractDecl methodsFor: 'recovered'!
genSixVisibility
    ^'private'
! !

"ASDBase.ic method 0x20027a48; bytecode file offset 0x92454c"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMdlDefinedInternally
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isMdlDefinedExternally.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027fe4; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
extrapolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) extrapolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cc24; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMdlCalibration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrCalibration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ce94; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
interpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) interpolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f8a4; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMoebiusFixedPointTypeExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genIleType.
    recoveredValue1 := (recoveredValue0) isCgContMoebiusFixedPointType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032664; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
adaptIntervalAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) adaptIntervalAttributes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033964; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMdlReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034fc4; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
isFloatTypedExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genIleType.
    recoveredValue1 := (recoveredValue0) isIleFloatType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035954; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMdlExplicitReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrExplicitReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037854; bytecode file offset 0x934580"
!SGMdAbstractDecl methodsFor: 'recovered'!
formulaName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genIleType.
    recoveredValue1 := (recoveredValue0) formulaName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d518; bytecode file offset 0x93bf94"
!SGMdAbstractDecl methodsFor: 'recovered'!
ehASAPIdTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgEHooksSettings.
    recoveredValue1 := (recoveredValue0) asapIdentifierExportedElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dd18; bytecode file offset 0x93bf94"
!SGMdAbstractDecl methodsFor: 'recovered'!
ehDisplayIdTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgEHooksSettings.
    recoveredValue1 := (recoveredValue0) asapDisplayIdExportedElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dd88; bytecode file offset 0x93bf94"
!SGMdAbstractDecl methodsFor: 'recovered'!
externDefinedElementTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgEHooksSettings.
    recoveredValue1 := (recoveredValue0) externDefinedExportedElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050990; bytecode file offset 0x94d4ec"
!SGMdAbstractDecl methodsFor: 'recovered'!
shortPrintString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) implInfoInterval: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054a20; bytecode file offset 0x952a9c"
!SGMdAbstractDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAbstractDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064e54; bytecode file offset 0x961970"
!SGMdAbstractDecl methodsFor: 'recovered'!
resetPropagatedMemory
    | recoveredValue0 |
    recoveredValue0 := (self) attributes.
    (recoveredValue0) resetPropagatedMemory.
    ^self
! !

"ASDBase.ic method 0x20073f18; bytecode file offset 0x970b34"
!SGMdAbstractDecl methodsFor: 'recovered'!
ileVarDecl
    ^nil
! !

"ASDBase.ic method 0x20079c14; bytecode file offset 0x97c330"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMdlNoDecl
    ^false
! !

"ASDBase.ic method 0x2007bce4; bytecode file offset 0x97c330"
!SGMdAbstractDecl methodsFor: 'recovered'!
requiresMdlRteDtWrite
    ^false
! !

"ASDBase.ic method 0x2007c20c; bytecode file offset 0x97c330"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMdlMsgCopyProcessDecl
    ^false
! !

"ASDBase.ic method 0x2007edd4; bytecode file offset 0x97c330"
!SGMdAbstractDecl methodsFor: 'recovered'!
isCgRecordType
    ^false
! !

"ASDBase.ic method 0x20102b30; bytecode file offset 0x9ff3f4"
!SGMdAbstractDecl methodsFor: 'recovered'!
allRecordInstVarsDict
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) allRecordInstVarsDict: (recoveredValue2) prefix: ('').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2014137c; bytecode file offset 0xa3ddcc"
!SGMdAbstractDecl methodsFor: 'recovered'!
isMdlDefinedExternally
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileVarDecl.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isIleExternDecl.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20159bb4; bytecode file offset 0xa56474"
!SGMdAbstractDecl methodsFor: 'recovered'!
uuid
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super uuid.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) uuid.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fe964; bytecode file offset 0xafb22c"
!SGMdAbstractDecl methodsFor: 'recovered'!
isSixMemberOfComponentStructure
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlInstVarDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParameter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasMdlLocalCharacteristicsRecursive.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRecordType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cff0; bytecode file offset 0xb098bc"
!SGMdAbstractDecl methodsFor: 'recovered'!
mdlAllowedElementForCalInterfaceContext: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMdAllowedElementVisitor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := [:block280da568Arg1 | 
    | block280da568Value0 block280da568Value1 block280da568Value2 |
    block280da568Value0 := block280da568Arg1.
    block280da568Value1 := (block280da568Value0) mdlClass.
    block280da568Value2 := (block280da568Value1) isCgAllowedSRInterfaceElementType.
    block280da568Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [:block280da58cArg1 | 
    | block280da58cValue0 block280da58cValue1 block280da58cValue2 |
    block280da58cValue0 := block280da58cArg1.
    block280da58cValue1 := (block280da58cValue0) mdlClass.
    block280da58cValue2 := (block280da58cValue1) isCgAllowedSRInterfaceElementType.
    block280da58cValue2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) withContext: (recoveredStack2) for: (recoveredStack3) check: (recoveredStack4) inner: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021a9f0; bytecode file offset 0xb17308"
!SGMdAbstractDecl methodsFor: 'recovered'!
mdlAllowedElementForCSInterfaceContext: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMdAllowedElementVisitor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := [:block280db744Arg1 | 
    | block280db744Value0 block280db744Value1 block280db744Value2 |
    block280db744Value0 := block280db744Arg1.
    block280db744Value1 := (block280db744Value0) mdlClass.
    block280db744Value2 := (block280db744Value1) isCgAllowedSRInterfaceElementType.
    block280db744Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [:block280db768Arg1 | 
    | block280db768Value0 block280db768Value1 block280db768Value2 |
    block280db768Value0 := block280db768Arg1.
    block280db768Value1 := (block280db768Value0) mdlClass.
    block280db768Value2 := (block280db768Value1) isCgAllowedEmbeddedRecordElementType.
    block280db768Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) withContext: (recoveredStack2) for: (recoveredStack3) check: (recoveredStack4) inner: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021aa14; bytecode file offset 0xb17308"
!SGMdAbstractDecl methodsFor: 'recovered'!
mdlAllowedElementForIRVContext: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMdAllowedElementVisitor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := [:block280db78cArg1 | 
    | block280db78cValue0 block280db78cValue1 block280db78cValue2 |
    block280db78cValue0 := block280db78cArg1.
    block280db78cValue1 := (block280db78cValue0) mdlClass.
    block280db78cValue2 := (block280db78cValue1) isCgAllowedSRInterfaceElementType.
    block280db78cValue2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [:block280db7b0Arg1 | 
    | block280db7b0Value0 block280db7b0Value1 block280db7b0Value2 |
    block280db7b0Value0 := block280db7b0Arg1.
    block280db7b0Value1 := (block280db7b0Value0) mdlClass.
    block280db7b0Value2 := (block280db7b0Value1) isCgAllowedEmbeddedRecordElementType.
    block280db7b0Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) withContext: (recoveredStack2) for: (recoveredStack3) check: (recoveredStack4) inner: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021aa38; bytecode file offset 0xb17308"
!SGMdAbstractDecl methodsFor: 'recovered'!
mdlAllowedElementForSRInterfaceContext: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMdAllowedElementVisitor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := [:block280db7d4Arg1 | 
    | block280db7d4Value0 block280db7d4Value1 block280db7d4Value2 |
    block280db7d4Value0 := block280db7d4Arg1.
    block280db7d4Value1 := (block280db7d4Value0) mdlClass.
    block280db7d4Value2 := (block280db7d4Value1) isCgAllowedSRInterfaceElementType.
    block280db7d4Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [:block280db7f8Arg1 | 
    | block280db7f8Value0 block280db7f8Value1 block280db7f8Value2 |
    block280db7f8Value0 := block280db7f8Arg1.
    block280db7f8Value1 := (block280db7f8Value0) mdlClass.
    block280db7f8Value2 := (block280db7f8Value1) isCgAllowedEmbeddedRecordElementType.
    block280db7f8Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) withContext: (recoveredStack2) for: (recoveredStack3) check: (recoveredStack4) inner: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023c93c; bytecode file offset 0xb39208"
!SGMdAbstractDecl methodsFor: 'recovered'!
hasMdlCopySemantics
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrCopySemantics.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlStructType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038252c; bytecode file offset 0xc7ee18"
!SGMdAbstractDecl methodsFor: 'recovered'!
genSixModelKind
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlParameter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'parameter'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlConstant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'constant'.
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
            recoveredStack0 := (recoveredStack0) isMdlSystemConstant.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'constant'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlResource.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'resource'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMessage.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := 'message'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMethodDecl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 'method'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlProcessDecl.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := 'process'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := 'variable'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a9c30; bytecode file offset 0xca651c"
!SGMdAbstractDecl methodsFor: 'recovered'!
allRecordInstVarsDict: recoveredArg1 prefix: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) genContext.
    recoveredValue2 := (recoveredValue1) importsTable.
    recoveredValue3 := (self) mdlClass.
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue2) lookupClassInterface: (recoveredValue3) ifFail: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) sortedInstVars.
    recoveredBlock13Value2 := [:recoveredBlock13Block23Arg1 | 
    | recoveredBlock13Block23Stack0 recoveredBlock13Block23Stack1 recoveredBlock13Block23Stack2 recoveredBlock13Block23Stack3 recoveredBlock13Block23Stack4 recoveredBlock13Block23Stack5 recoveredBlock13Block23PC recoveredBlock13Block23Step recoveredBlock13Block23Done recoveredBlock13Block23Result |
    recoveredBlock13Block23Stack0 := nil.
    recoveredBlock13Block23PC := 30.
    recoveredBlock13Block23Done := false.
    [recoveredBlock13Block23Done not] whileTrue: [
        recoveredBlock13Block23Step := recoveredBlock13Block23PC.
        recoveredBlock13Block23Step = 30 ifTrue: [
            recoveredBlock13Block23Stack1 := recoveredBlock13Block23Arg1.
            recoveredBlock13Block23PC := 31.
        ].
        recoveredBlock13Block23Step = 31 ifTrue: [
            recoveredBlock13Block23Stack1 := (recoveredBlock13Block23Stack1) mdlClass.
            recoveredBlock13Block23PC := 32.
        ].
        recoveredBlock13Block23Step = 32 ifTrue: [
            recoveredBlock13Block23Stack1 := (recoveredBlock13Block23Stack1) isMdlRecordType.
            recoveredBlock13Block23PC := 34.
        ].
        recoveredBlock13Block23Step = 34 ifTrue: [
            (recoveredBlock13Block23Stack1) ifTrue: [recoveredBlock13Block23PC := 38] ifFalse: [recoveredBlock13Block23PC := 56].
        ].
        recoveredBlock13Block23Step = 38 ifTrue: [
            recoveredBlock13Block23Stack1 := recoveredBlock13Block23Arg1.
            recoveredBlock13Block23PC := 39.
        ].
        recoveredBlock13Block23Step = 39 ifTrue: [
            recoveredBlock13Block23Stack2 := recoveredArg1.
            recoveredBlock13Block23PC := 42.
        ].
        recoveredBlock13Block23Step = 42 ifTrue: [
            recoveredBlock13Block23Stack3 := recoveredArg2.
            recoveredBlock13Block23PC := 45.
        ].
        recoveredBlock13Block23Step = 45 ifTrue: [
            recoveredBlock13Block23Stack4 := recoveredBlock13Block23Arg1.
            recoveredBlock13Block23PC := 46.
        ].
        recoveredBlock13Block23Step = 46 ifTrue: [
            recoveredBlock13Block23Stack4 := (recoveredBlock13Block23Stack4) mdlLabel.
            recoveredBlock13Block23PC := 48.
        ].
        recoveredBlock13Block23Step = 48 ifTrue: [
            recoveredBlock13Block23Stack3 := (recoveredBlock13Block23Stack3) fieldAccess: (recoveredBlock13Block23Stack4).
            recoveredBlock13Block23PC := 50.
        ].
        recoveredBlock13Block23Step = 50 ifTrue: [
            recoveredBlock13Block23Stack1 := (recoveredBlock13Block23Stack1) allRecordInstVarsDict: (recoveredBlock13Block23Stack2) prefix: (recoveredBlock13Block23Stack3).
            recoveredBlock13Block23PC := 52.
        ].
        recoveredBlock13Block23Step = 52 ifTrue: [
            recoveredBlock13Block23PC := 70.
        ].
        recoveredBlock13Block23Step = 56 ifTrue: [
            recoveredBlock13Block23Stack1 := recoveredArg1.
            recoveredBlock13Block23PC := 59.
        ].
        recoveredBlock13Block23Step = 59 ifTrue: [
            recoveredBlock13Block23Stack2 := recoveredArg2.
            recoveredBlock13Block23PC := 62.
        ].
        recoveredBlock13Block23Step = 62 ifTrue: [
            recoveredBlock13Block23Stack3 := recoveredBlock13Block23Arg1.
            recoveredBlock13Block23PC := 63.
        ].
        recoveredBlock13Block23Step = 63 ifTrue: [
            recoveredBlock13Block23Stack3 := (recoveredBlock13Block23Stack3) mdlLabel.
            recoveredBlock13Block23PC := 65.
        ].
        recoveredBlock13Block23Step = 65 ifTrue: [
            recoveredBlock13Block23Stack2 := (recoveredBlock13Block23Stack2) fieldAccess: (recoveredBlock13Block23Stack3).
            recoveredBlock13Block23PC := 67.
        ].
        recoveredBlock13Block23Step = 67 ifTrue: [
            recoveredBlock13Block23Stack3 := recoveredBlock13Block23Arg1.
            recoveredBlock13Block23PC := 68.
        ].
        recoveredBlock13Block23Step = 68 ifTrue: [
            recoveredBlock13Block23Stack1 := (recoveredBlock13Block23Stack1) at: (recoveredBlock13Block23Stack2) put: (recoveredBlock13Block23Stack3).
            recoveredBlock13Block23PC := 70.
        ].
        recoveredBlock13Block23Step = 70 ifTrue: [
            recoveredBlock13Block23Result := recoveredBlock13Block23Stack1.
            recoveredBlock13Block23Done := true.
        ].
    ].
    recoveredBlock13Block23Result
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) do: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203b5688; bytecode file offset 0xcb1f68"
!SGMdAbstractDecl methodsFor: 'recovered'!
mdlSemInvalidInitValue: recoveredArg1 physInterval: recoveredArg2 errLabel: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrInputOrOutput.
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
            recoveredStack0 := (recoveredStack0) isMdlConstantValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlParameter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrDependent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlSystemConstant.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 44.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) asDataDeclSource.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := (recoveredStack5) asDataDeclSource.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

