"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009c2ec; bytecode file offset 0x998d48"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
returnVarRteIrvAccessLabelName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) tempVarName.
    recoveredValue2 := (recoveredValue1) , ('return').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c31c; bytecode file offset 0x998d48"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
endBlockRteIrvAccessLabelName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) tempVarName.
    recoveredValue2 := (recoveredValue1) , ('endBlockRteIrvAccess').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c1dd4; bytecode file offset 0x9beac8"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
hasExitStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hasExitStmnt := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105db8; bytecode file offset 0xa02684"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
hasExitStmnt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hasExitStmnt.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            hasExitStmnt := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := hasExitStmnt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129838; bytecode file offset 0xa261a4"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
irvCopy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := irvCopy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            irvCopy := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := irvCopy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015fd58; bytecode file offset 0xa5c628"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
endBlockRteIRVAccessLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) endBlockRteIrvAccessLabelName.
    recoveredValue2 := (recoveredValue1) , (':').
    recoveredValue3 := (self) ileBuilder.
    recoveredValue4 := (recoveredValue3) ileVoid.
    recoveredValue5 := (recoveredValue0) createANSICExpr: (#()) template: (recoveredValue2) type: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20186ef8; bytecode file offset 0xa837b8"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
irvInstanceCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) irvCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileIRVCopyKey.
    recoveredValue3 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := recoveredArg1.
    ^recoveredBlock9Value0
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20197b38; bytecode file offset 0xa943fc"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
replaceRteCall: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) irvCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileIRVCopyKey.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := (recoveredBlock9Value0) value.
    ^recoveredBlock9Value1
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201b5464; bytecode file offset 0xab1d40"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
rteIrvIWriteRefCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super rteIrvIWriteRefCall: (recoveredBlock7Value0).
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) replaceRteCall: (recoveredValue0) ifFail: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asIleReferencedExpr.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b547c; bytecode file offset 0xab1d40"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
rteIrvIReadCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super rteIrvIReadCall: (recoveredBlock7Value0).
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) replaceRteCall: (recoveredValue0) ifFail: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asIleReferencedExpr.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20203068; bytecode file offset 0xaff938"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileMethodDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRunnableDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := irvCopy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) hasExitStmnt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) endBlockRteIrvAccessLabelName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) goto: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20340810; bytecode file offset 0xc3d110"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
createIRVCopy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) autosarSettings.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) nameIRVCopyForIRVWriteRefMacro: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := (self) ileBuilder.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) type.
    recoveredValue8 := (recoveredValue7) asCgDereferencedType.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) irvAttributes.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) scope.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) source.
    recoveredValue15 := (recoveredValue4) createIRVCopyElementDecl: (recoveredValue5) type: (recoveredValue8) attributes: (recoveredValue10) scope: (recoveredValue12) source: (recoveredValue14).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := (self) irvCopy.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) ileIRVCopyKey.
    recoveredValue19 := (self) ileBuilder.
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) type.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue19) createNamedIdentifier: (recoveredValue20) type: (recoveredValue22) derivedExpr: (recoveredValue23).
    recoveredValue25 := (recoveredValue24) asIleReferencedExpr.
    (recoveredValue16) at: (recoveredValue18) put: (recoveredValue25).
    recoveredValue26 := (self) componentContext.
    recoveredValue27 := (recoveredValue26) ileElementList.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := (recoveredValue28) ileElementKey.
    (recoveredValue27) disallowMacroDecl: (recoveredValue29).
    ^self
! !

"ASDBase.ic method 0x203f24a4; bytecode file offset 0xceedac"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := super returnStmnt: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileMethodDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRunnableDecl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := irvCopy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) hasExitStmnt: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentContext.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileMethodDecl.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnVarRteIrvAccessLabelName.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVar: (recoveredStack1) tempName: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLValue.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) assign: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleExprStmnt.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) endBlockRteIrvAccessLabelName.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) goto: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d49c8; bytecode file offset 0xed1324"
!SGIlComplexTypedImplicitIRVCopyTransformation methodsFor: 'recovered'!
createIRVCopies: recoveredArg1 writeIRVs: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) createIRVCopy: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentContext.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileMethodDecl.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRunnableDecl.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 |
    recoveredBlock50Value0 := recoveredLocal2.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := (recoveredBlock50Value1) portName.
    recoveredBlock50Value3 := [
    | recoveredBlock50Block64Value0 |
    recoveredBlock50Block64Value0 := recoveredBlock50Arg1.
    recoveredBlock50Block64Value0
].
    recoveredBlock50Value4 := (recoveredBlock50Value0) at: (recoveredBlock50Value2) ifAbsentPut: (recoveredBlock50Value3).
    recoveredBlock50Value4
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:block28119a40Arg1 :block28119a40Arg2 | 
    | block28119a40Value0 block28119a40Value1 block28119a40Value2 block28119a40Value3 block28119a40Value4 |
    block28119a40Value0 := block28119a40Arg2.
    block28119a40Value1 := (block28119a40Value0) portName.
    block28119a40Value2 := block28119a40Arg1.
    block28119a40Value3 := (block28119a40Value2) portName.
    block28119a40Value4 := (block28119a40Value1) < (block28119a40Value3).
    block28119a40Value4
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 recoveredBlock107Value3 recoveredBlock107Value4 |
    recoveredBlock107Value0 := OrderedCollection.
    recoveredBlock107Value1 := (recoveredBlock107Value0) new.
    recoveredLocal7 := recoveredBlock107Value1.
    recoveredBlock107Value2 := recoveredLocal1.
    recoveredBlock107Value3 := [:recoveredBlock107Block124Arg1 | 
    | recoveredBlock107Block124Value0 recoveredBlock107Block124Value1 recoveredBlock107Block124Value2 recoveredBlock107Block124Value3 recoveredBlock107Block124Value4 recoveredBlock107Block124Value5 recoveredBlock107Block124Value6 |
    recoveredBlock107Block124Value0 := recoveredBlock107Block124Arg1.
    (recoveredBlock107Block124Value0) source: (nil).
    recoveredBlock107Block124Value1 := SGCgExpressionContext.
    recoveredBlock107Block124Value2 := recoveredBlock107Block124Arg1.
    recoveredBlock107Block124Value3 := (recoveredBlock107Block124Value2) type.
    recoveredBlock107Block124Value4 := (recoveredBlock107Block124Value1) forContextType: (recoveredBlock107Block124Value3).
    recoveredBlock107Block124Value5 := [
    | recoveredBlock107Block124Block145Value0 recoveredBlock107Block124Block145Value1 recoveredBlock107Block124Block145Value2 recoveredBlock107Block124Block145Value3 recoveredBlock107Block124Block145Value4 recoveredBlock107Block124Block145Value5 recoveredBlock107Block124Block145Value6 recoveredBlock107Block124Block145Value7 recoveredBlock107Block124Block145Value8 recoveredBlock107Block124Block145Value9 recoveredBlock107Block124Block145Value10 recoveredBlock107Block124Block145Value11 recoveredBlock107Block124Block145Value12 recoveredBlock107Block124Block145Value13 recoveredBlock107Block124Block145Value14 recoveredBlock107Block124Block145Value15 |
    recoveredBlock107Block124Block145Value0 := recoveredLocal7.
    recoveredBlock107Block124Block145Value1 := (self) ileBuilder.
    recoveredBlock107Block124Block145Value2 := recoveredBlock107Block124Arg1.
    recoveredBlock107Block124Block145Value3 := (self) irvInstanceCopy: (recoveredBlock107Block124Block145Value2).
    recoveredBlock107Block124Block145Value4 := (self) ileBuilder.
    recoveredBlock107Block124Block145Value5 := recoveredBlock107Block124Arg1.
    recoveredBlock107Block124Block145Value6 := (recoveredBlock107Block124Block145Value5) portName.
    recoveredBlock107Block124Block145Value7 := recoveredBlock107Block124Arg1.
    recoveredBlock107Block124Block145Value8 := (recoveredBlock107Block124Block145Value7) runnableEntity.
    recoveredBlock107Block124Block145Value9 := recoveredBlock107Block124Arg1.
    recoveredBlock107Block124Block145Value10 := (recoveredBlock107Block124Block145Value9) type.
    recoveredBlock107Block124Block145Value11 := (recoveredBlock107Block124Block145Value4) rteIrvIRead: (recoveredBlock107Block124Block145Value6) runnable: (recoveredBlock107Block124Block145Value8) type: (recoveredBlock107Block124Block145Value10).
    recoveredBlock107Block124Block145Value12 := recoveredBlock107Block124Block145Value11.
    (recoveredBlock107Block124Block145Value12) source: (nil).
    recoveredBlock107Block124Block145Value13 := (recoveredBlock107Block124Block145Value1) createMemCopyExpr: (recoveredBlock107Block124Block145Value3) expr: (recoveredBlock107Block124Block145Value11).
    recoveredBlock107Block124Block145Value14 := (recoveredBlock107Block124Block145Value13) asIleExprStmnt.
    recoveredBlock107Block124Block145Value15 := (recoveredBlock107Block124Block145Value0) add: (recoveredBlock107Block124Block145Value14).
    recoveredBlock107Block124Block145Value15
].
    recoveredBlock107Block124Value6 := (recoveredBlock107Block124Value4) executeInContext: (recoveredBlock107Block124Value5).
    recoveredBlock107Block124Value6
].
    recoveredBlock107Value4 := (recoveredBlock107Value2) do: (recoveredBlock107Value3).
    recoveredBlock107Value4
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock207Stack0 recoveredBlock207Stack1 recoveredBlock207Stack2 recoveredBlock207PC recoveredBlock207Step recoveredBlock207Done recoveredBlock207Result |
    recoveredBlock207Stack0 := self.
    recoveredBlock207PC := 214.
    recoveredBlock207Done := false.
    [recoveredBlock207Done not] whileTrue: [
        recoveredBlock207Step := recoveredBlock207PC.
        recoveredBlock207Step = 214 ifTrue: [
            recoveredBlock207Stack1 := OrderedCollection.
            recoveredBlock207PC := 216.
        ].
        recoveredBlock207Step = 216 ifTrue: [
            recoveredBlock207Stack1 := (recoveredBlock207Stack1) new.
            recoveredBlock207PC := 218.
        ].
        recoveredBlock207Step = 218 ifTrue: [
            recoveredLocal6 := recoveredBlock207Stack1.
            recoveredBlock207PC := 221.
        ].
        recoveredBlock207Step = 221 ifTrue: [
            recoveredBlock207Stack0 := (recoveredBlock207Stack0) hasExitStmnt.
            recoveredBlock207PC := 223.
        ].
        recoveredBlock207Step = 223 ifTrue: [
            (recoveredBlock207Stack0) ifTrue: [recoveredBlock207PC := 226] ifFalse: [recoveredBlock207PC := 236].
        ].
        recoveredBlock207Step = 226 ifTrue: [
            recoveredBlock207Stack0 := recoveredLocal6.
            recoveredBlock207PC := 229.
        ].
        recoveredBlock207Step = 229 ifTrue: [
            recoveredBlock207Stack1 := self.
            recoveredBlock207PC := 230.
        ].
        recoveredBlock207Step = 230 ifTrue: [
            recoveredBlock207Stack1 := (recoveredBlock207Stack1) endBlockRteIRVAccessLabel.
            recoveredBlock207PC := 232.
        ].
        recoveredBlock207Step = 232 ifTrue: [
            recoveredBlock207Stack1 := (recoveredBlock207Stack1) asIleExprStmnt.
            recoveredBlock207PC := 234.
        ].
        recoveredBlock207Step = 234 ifTrue: [
            (recoveredBlock207Stack0) add: (recoveredBlock207Stack1).
            recoveredBlock207PC := 236.
        ].
        recoveredBlock207Step = 236 ifTrue: [
            recoveredBlock207Stack0 := recoveredLocal1.
            recoveredBlock207PC := 239.
        ].
        recoveredBlock207Step = 239 ifTrue: [
            recoveredBlock207Stack1 := [:recoveredBlock207Block239Arg1 | 
    | recoveredBlock207Block239Value0 recoveredBlock207Block239Value1 recoveredBlock207Block239Value2 recoveredBlock207Block239Value3 recoveredBlock207Block239Value4 recoveredBlock207Block239Value5 recoveredBlock207Block239Value6 recoveredBlock207Block239Value7 recoveredBlock207Block239Value8 recoveredBlock207Block239Value9 recoveredBlock207Block239Value10 recoveredBlock207Block239Value11 recoveredBlock207Block239Value12 recoveredBlock207Block239Value13 recoveredBlock207Block239Value14 recoveredBlock207Block239Value15 |
    recoveredBlock207Block239Value0 := recoveredLocal6.
    recoveredBlock207Block239Value1 := (self) ileBuilder.
    recoveredBlock207Block239Value2 := recoveredBlock207Block239Arg1.
    recoveredBlock207Block239Value3 := (recoveredBlock207Block239Value2) portName.
    recoveredBlock207Block239Value4 := recoveredBlock207Block239Arg1.
    recoveredBlock207Block239Value5 := (recoveredBlock207Block239Value4) runnableEntity.
    recoveredBlock207Block239Value6 := SGCgExpressionContext.
    recoveredBlock207Block239Value7 := recoveredBlock207Block239Arg1.
    recoveredBlock207Block239Value8 := (recoveredBlock207Block239Value7) type.
    recoveredBlock207Block239Value9 := (recoveredBlock207Block239Value6) forContextType: (recoveredBlock207Block239Value8).
    recoveredBlock207Block239Value10 := [
    | recoveredBlock207Block239Block271Value0 recoveredBlock207Block239Block271Value1 recoveredBlock207Block239Block271Value2 recoveredBlock207Block239Block271Value3 recoveredBlock207Block239Block271Value4 recoveredBlock207Block239Block271Value5 recoveredBlock207Block239Block271Value6 recoveredBlock207Block239Block271Value7 recoveredBlock207Block239Block271Value8 recoveredBlock207Block239Block271Value9 |
    recoveredBlock207Block239Block271Value0 := recoveredBlock207Block239Arg1.
    recoveredBlock207Block239Block271Value1 := (self) irvInstanceCopy: (recoveredBlock207Block239Block271Value0).
    recoveredBlock207Block239Block271Value2 := recoveredBlock207Block239Arg1.
    recoveredBlock207Block239Block271Value3 := (recoveredBlock207Block239Block271Value2) type.
    recoveredBlock207Block239Block271Value4 := SGCgVarAttributes.
    recoveredBlock207Block239Block271Value5 := (recoveredBlock207Block239Block271Value4) create.
    recoveredBlock207Block239Block271Value6 := recoveredBlock207Block239Block271Value5.
    (recoveredBlock207Block239Block271Value6) cgAttrVariable.
    recoveredBlock207Block239Block271Value7 := recoveredBlock207Block239Block271Value5.
    (recoveredBlock207Block239Block271Value7) cgAttrReference.
    recoveredBlock207Block239Block271Value8 := recoveredBlock207Block239Block271Value5.
    (recoveredBlock207Block239Block271Value8) cgAttrVolatile.
    recoveredBlock207Block239Block271Value9 := (recoveredBlock207Block239Block271Value1) parmAssign: (recoveredBlock207Block239Block271Value3) attributes: (recoveredBlock207Block239Block271Value5).
    recoveredBlock207Block239Block271Value9
].
    recoveredBlock207Block239Value11 := (recoveredBlock207Block239Value9) executeInContext: (recoveredBlock207Block239Value10).
    recoveredBlock207Block239Value12 := (recoveredBlock207Block239Value1) rteIrvIWrite: (recoveredBlock207Block239Value3) runnable: (recoveredBlock207Block239Value5) arg: (recoveredBlock207Block239Value11).
    recoveredBlock207Block239Value13 := recoveredBlock207Block239Value12.
    (recoveredBlock207Block239Value13) source: (nil).
    recoveredBlock207Block239Value14 := (recoveredBlock207Block239Value12) asIleExprStmnt.
    recoveredBlock207Block239Value15 := (recoveredBlock207Block239Value0) add: (recoveredBlock207Block239Value14).
    recoveredBlock207Block239Value15
].
            recoveredBlock207PC := 318.
        ].
        recoveredBlock207Step = 318 ifTrue: [
            recoveredBlock207Stack0 := (recoveredBlock207Stack0) do: (recoveredBlock207Stack1).
            recoveredBlock207PC := 319.
        ].
        recoveredBlock207Step = 319 ifTrue: [
            recoveredBlock207Result := recoveredBlock207Stack0.
            recoveredBlock207Done := true.
        ].
    ].
    recoveredBlock207Result
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := (recoveredStack3) stmntList: (recoveredStack4).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack2) addFirst: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := (recoveredStack3) stmntList: (recoveredStack4).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack2) addLast: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithChildren: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

