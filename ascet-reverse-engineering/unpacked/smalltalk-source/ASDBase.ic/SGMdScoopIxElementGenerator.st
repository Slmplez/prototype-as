"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c958; bytecode file offset 0x92209c"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
hwcInstanceName
    ^'HWC'
! !

"ASDBase.ic method 0x20029b54; bytecode file offset 0x934580"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
scoopixContentsOrFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixAdapter.
    recoveredValue1 := (recoveredValue0) scoopixContentsOrFilename.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ce20; bytecode file offset 0x969c04"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
sixAdapter
    | recoveredValue0 |
    recoveredValue0 := sixAdapter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098a34; bytecode file offset 0x995850"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
propagateSixTypeDefinitions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixAdapter.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) propagateSixTypeDefinitions: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c39c0; bytecode file offset 0x9c058c"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
sixAdapter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sixAdapter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9120; bytecode file offset 0x9d5b4c"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
generateElementScoopix: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) genSixDataElements: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) propagateSixTypeDefinitions: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d9190; bytecode file offset 0x9d5b4c"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) updateNegativeListFor: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) walkClassInterface: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dac2c; bytecode file offset 0x9d74f4"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
genSixPseudoAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) pathInfoNodes.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) genSixCurrentPseudoAddress: (recoveredValue3).
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fca78; bytecode file offset 0x9f9360"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
genSixDataElements: recoveredArg1
    | recoveredValue0 |
    (self) addRootPathNode.
    recoveredValue0 := recoveredArg1.
    (self) anyMdlNode: (recoveredValue0).
    (self) removePathNode.
    ^self
! !

"ASDBase.ic method 0x201218c4; bytecode file offset 0xa1e190"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
genSixCurrentPseudoAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) pathInfoTopNode.
    recoveredValue1 := (recoveredValue0) l1Label.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) genSixPseudoAddressCategory.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredValue5 := (self) declIndex.
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (recoveredValue6) asString.
    recoveredValue8 := (recoveredValue4) , (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d3bd4; bytecode file offset 0xad04a4"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
addPathNodeDecl: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) genSixCurrentPseudoAddress: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    super addPathNodeDecl: (recoveredValue2) mdlClassInterface: (recoveredValue3).
    recoveredValue4 := (self) pathInfoTopNode.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) l1Label: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) initValue.
    (recoveredValue6) switchToDataset: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2023cf5c; bytecode file offset 0xb3983c"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
addRootPathNode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    super addRootPathNode.
    recoveredValue0 := (self) pathInfoTopNode.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) expander.
    recoveredValue3 := (self) pathInfoTopNode.
    recoveredValue4 := (recoveredValue3) mdlClassInterface.
    recoveredValue5 := (recoveredValue4) mdlClassType.
    recoveredValue6 := (recoveredValue2) genSixCInstanceRootPath: (recoveredValue5).
    (recoveredValue1) cInstancePath: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) cStructBaseRef: ('').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) cStructMemberPath: ('').
    ^self
! !

"ASDBase.ic method 0x202aa984; bytecode file offset 0xba7260"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
updateNegativeListFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) negativeList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) allElements.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) attributes.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isCgAttrHWCInstance.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) mdlClass.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isMdlSWComponent.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 32].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sixAdapter.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addToNegativeList: (recoveredBlock7Stack2).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    (recoveredValue0) addAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202f8a28; bytecode file offset 0xbf5300"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
mdlAbstractComponentInterface: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) importList.
    recoveredValue1 := (recoveredValue0) projectInterface.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) updateNegativeListFor: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) sortedClassVars.
    recoveredValue5 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) mdlClass.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) mdlKey.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack3 := recoveredArg1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) mdlKey.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) equals: (recoveredBlock19Stack3).
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 42] ifFalse: [recoveredBlock19PC := 48].
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg2.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) decl: (recoveredBlock19Stack2) index: (recoveredBlock19Stack3).
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) doWithIndex: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203a443c; bytecode file offset 0xca0d24"
!SGMdScoopIxElementGenerator methodsFor: 'recovered'!
walkClassInterface: recoveredArg1 ofDecl: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScoopIxDataElement: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sixAdapter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) genSixBeginRecordInstanceDataElement: (recoveredStack2) mdlInterface: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            super walkClassInterface: (recoveredStack2) ofDecl: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sixAdapter.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixEndRecordInstanceDataElement: (recoveredStack2) mdlInterface: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportLocalElementsNEW.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScoopIxDataElement: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixAdapter.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) genSixBeginComponentStructDataElement: (recoveredStack1) mdlInterface: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            super walkClassInterface: (recoveredStack1) ofDecl: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixAdapter.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) genSixEndComponentStructDataElement: (recoveredStack1) mdlInterface: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            super walkClassInterface: (recoveredStack1) ofDecl: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

