"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017204; bytecode file offset 0x92209c"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixPseudoAddressCategory
    ^' 1000 '
! !

"ASDBase.ic method 0x20035324; bytecode file offset 0x934580"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixImportedElementCName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileVarDecl.
    recoveredValue1 := (recoveredValue0) genName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003caa8; bytecode file offset 0x93bf94"
!SGMdInstVarDecl methodsFor: 'recovered'!
ehASAPIdTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgEHooksSettings.
    recoveredValue1 := (recoveredValue0) asapIdentifierLocalElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cf08; bytecode file offset 0x93bf94"
!SGMdInstVarDecl methodsFor: 'recovered'!
externDefinedElementTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgEHooksSettings.
    recoveredValue1 := (recoveredValue0) externDefinedLocalElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f348; bytecode file offset 0x93bf94"
!SGMdInstVarDecl methodsFor: 'recovered'!
ehDisplayIdTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgEHooksSettings.
    recoveredValue1 := (recoveredValue0) asapDisplayIdLocalElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005592c; bytecode file offset 0x952a9c"
!SGMdInstVarDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) instVarDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075e34; bytecode file offset 0x9757c8"
!SGMdInstVarDecl methodsFor: 'recovered'!
isMdlInstVarDecl
    ^true
! !

"ASDBase.ic method 0x200b4264; bytecode file offset 0x9b0bd0"
!SGMdInstVarDecl methodsFor: 'recovered'!
ileEccoKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) ileName.
    recoveredValue2 := (self) scope.
    recoveredValue3 := (recoveredValue0) dbKeyForElement: (recoveredValue1) in: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d50e0; bytecode file offset 0x9d19bc"
!SGMdInstVarDecl methodsFor: 'recovered'!
mdlMessageKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) scope.
    recoveredValue1 := (recoveredValue0) mdlLabel.
    recoveredValue2 := (recoveredValue1) , ('.').
    recoveredValue3 := (self) mdlLabel.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e58a0; bytecode file offset 0x9e2184"
!SGMdInstVarDecl methodsFor: 'recovered'!
mdlUniqueLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) scope.
    recoveredValue1 := (recoveredValue0) className.
    recoveredValue2 := (recoveredValue1) , ('_').
    recoveredValue3 := (self) mdlLabel.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20102754; bytecode file offset 0x9ff014"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixCName: recoveredArg1 additional: recoveredArg2 type: recoveredArg3 attributes: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) scope.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) genSixCNameForInstVar: (recoveredValue1) scope: (recoveredValue2) instancePath: (recoveredValue3) type: (recoveredValue4) attributes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010f00c; bytecode file offset 0xa0b8e0"
!SGMdInstVarDecl methodsFor: 'recovered'!
setOptimizations: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super setOptimizations: (recoveredValue0).
    recoveredValue1 := (self) scope.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setOptimizations: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201228c8; bytecode file offset 0xa1f188"
!SGMdInstVarDecl methodsFor: 'recovered'!
initValue: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initValue: (recoveredValue0) mdlClassInterface: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) storeInstVar: (self) initValue: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012aa7c; bytecode file offset 0xa27388"
!SGMdInstVarDecl methodsFor: 'recovered'!
mappingsTo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingsTo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            mappingsTo := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := mappingsTo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132910; bytecode file offset 0xa2f1d0"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixCStructMemberPath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldAccess: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201461d4; bytecode file offset 0xa42ae0"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixCName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) ileName.
    recoveredValue2 := (self) scope.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) genIleType.
    recoveredValue5 := (self) attributes.
    recoveredValue6 := (recoveredValue0) genSixCNameForInstVar: (recoveredValue1) scope: (recoveredValue2) instancePath: (recoveredValue3) type: (recoveredValue4) attributes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201461f4; bytecode file offset 0xa42ae0"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixHierarchicalMemberName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) ileName.
    recoveredValue2 := (self) scope.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) genIleType.
    recoveredValue5 := (self) attributes.
    recoveredValue6 := (recoveredValue0) genSixCInstancePathForInstVar: (recoveredValue1) scope: (recoveredValue2) instancePath: (recoveredValue3) type: (recoveredValue4) attributes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20146214; bytecode file offset 0xa42ae0"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixCInstancePath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) ileName.
    recoveredValue2 := (self) scope.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) genIleType.
    recoveredValue5 := (self) attributes.
    recoveredValue6 := (recoveredValue0) genSixCInstancePathForInstVar: (recoveredValue1) scope: (recoveredValue2) instancePath: (recoveredValue3) type: (recoveredValue4) attributes: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2015805c; bytecode file offset 0xa54928"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixCName: recoveredArg1 fieldCIdentifier: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) ileName.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) scope.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) genIleType.
    recoveredValue6 := (self) attributes.
    recoveredValue7 := (recoveredValue0) genSixCCharTableNameForInstVar: (recoveredValue1) fieldIdentiifier: (recoveredValue2) scope: (recoveredValue3) instancePath: (recoveredValue4) type: (recoveredValue5) attributes: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201f1758; bytecode file offset 0xaee034"
!SGMdInstVarDecl methodsFor: 'recovered'!
isMdlPublic
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (self) errLabel.
    recoveredValue2 := ('Expected consistent datamodel for <') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('> in <').
    recoveredValue4 := (self) scope.
    recoveredValue5 := (recoveredValue4) errLabel.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , ('>. Element needs GET/SET direct access - please change attributes ').
    recoveredValue8 := (recoveredValue7) , ('OR restore diagram').
    recoveredValue9 := (self) source.
    recoveredValue10 := (recoveredValue0) fatalMessage: (recoveredValue8) source: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201f18a4; bytecode file offset 0xaee178"
!SGMdInstVarDecl methodsFor: 'recovered'!
genSixCName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlDefinedExternally.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) genSixImportedElementCName.
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
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) genIleType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) genSixCNameForClassVar: (recoveredStack1) scope: (recoveredStack2) type: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20477044; bytecode file offset 0xd73934"
!SGMdInstVarDecl methodsFor: 'recovered'!
generateIleId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlResource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMessage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAUTOSARActive.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) genIleType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) scope.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) instMessageId: (recoveredStack1) type: (recoveredStack2) attributes: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgType.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) genIleType.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) instVarId: (recoveredStack1) type: (recoveredStack2) scope: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlSystemConstant.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileName.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) genIleType.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) instVarSysConst: (recoveredStack1) type: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileName.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) genIleType.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) instVarId: (recoveredStack1) type: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

