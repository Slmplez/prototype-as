"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006b24; bytecode file offset 0x908be4"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlTargetMissing
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000afac; bytecode file offset 0x908be4"
!SGMdAbstractMapping methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027bb0; bytecode file offset 0x92454c"
!SGMdAbstractMapping methodsFor: 'recovered'!
isValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isMarkedInvalid.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f8e4; bytecode file offset 0x934580"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromVarDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fromVarDeclList.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a990; bytecode file offset 0x947254"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromVarDeclLocalScope
    fromVarDeclScope := true.
    ^self
! !

"ASDBase.ic method 0x2004de50; bytecode file offset 0x94d048"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlRecordMapping
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e744; bytecode file offset 0x94d048"
!SGMdAbstractMapping methodsFor: 'recovered'!
updateMdlClassSource
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052f14; bytecode file offset 0x9505d0"
!SGMdAbstractMapping methodsFor: 'recovered'!
printTargetOn: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20055284; bytecode file offset 0x952a9c"
!SGMdAbstractMapping methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAbstractMapping: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005da3c; bytecode file offset 0x95a2f0"
!SGMdAbstractMapping methodsFor: 'recovered'!
hasFromVarDeclLocalScope
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fromVarDeclScope.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005e5ac; bytecode file offset 0x95ae64"
!SGMdAbstractMapping methodsFor: 'recovered'!
markInvalid
    valid := 'invalid'.
    ^self
! !

"ASDBase.ic method 0x20069430; bytecode file offset 0x966bdc"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromVarDeclList
    | recoveredValue0 |
    recoveredValue0 := fromVarDeclList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b198; bytecode file offset 0x96873c"
!SGMdAbstractMapping methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b5f0; bytecode file offset 0x96873c"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromVarDeclPath
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cdf8; bytecode file offset 0x969c04"
!SGMdAbstractMapping methodsFor: 'recovered'!
secondaryMapping
    | recoveredValue0 |
    recoveredValue0 := secondaryMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006da2c; bytecode file offset 0x96a390"
!SGMdAbstractMapping methodsFor: 'recovered'!
category
    | recoveredValue0 |
    recoveredValue0 := category.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079fcc; bytecode file offset 0x97c330"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlValidAutosarPrimaryMapping
    ^false
! !

"ASDBase.ic method 0x2007a7ac; bytecode file offset 0x97c330"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlRecordAutosarFieldsMapping
    ^false
! !

"ASDBase.ic method 0x2007cf0c; bytecode file offset 0x97c330"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlValidAutosarSecondaryOnlyMapping
    ^false
! !

"ASDBase.ic method 0x2007e464; bytecode file offset 0x97c330"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlAutosarMapping
    ^false
! !

"ASDBase.ic method 0x2008b60c; bytecode file offset 0x987ec4"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMarkedInvalid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := valid.
    recoveredValue1 := (recoveredValue0) == ('invalid').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c23d8; bytecode file offset 0x9bf474"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromVarDeclPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c42dc; bytecode file offset 0x9c0bf0"
!SGMdAbstractMapping methodsFor: 'recovered'!
category: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    category := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e22e4; bytecode file offset 0x9dec60"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlValidAutosarMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlAutosarMapping.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlValid.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f2714; bytecode file offset 0x9eeff0"
!SGMdAbstractMapping methodsFor: 'recovered'!
isMdlValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlTargetMissing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMarkedInvalid.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fe8b4; bytecode file offset 0x9fb278"
!SGMdAbstractMapping methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printMappingOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20141570; bytecode file offset 0xa3df70"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromVarDeclReceiver
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fromVarDeclList.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) first.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2015fc64; bytecode file offset 0xa5c550"
!SGMdAbstractMapping methodsFor: 'recovered'!
asCollectionCategoryOutput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCollection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ce040Arg1 | 
    | block280ce040Value0 block280ce040Value1 block280ce040Value2 block280ce040Value3 block280ce040Value4 |
    block280ce040Value0 := block280ce040Arg1.
    block280ce040Value1 := (block280ce040Value0) category.
    block280ce040Value2 := SGMdEHooksMappingCollector.
    block280ce040Value3 := (block280ce040Value2) categoryOutputs.
    block280ce040Value4 := (block280ce040Value1) == (block280ce040Value3).
    block280ce040Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015fc84; bytecode file offset 0xa5c550"
!SGMdAbstractMapping methodsFor: 'recovered'!
asCollectionCategoryInput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCollection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ce064Arg1 | 
    | block280ce064Value0 block280ce064Value1 block280ce064Value2 block280ce064Value3 block280ce064Value4 |
    block280ce064Value0 := block280ce064Arg1.
    block280ce064Value1 := (block280ce064Value0) category.
    block280ce064Value2 := SGMdEHooksMappingCollector.
    block280ce064Value3 := (block280ce064Value2) categoryInputs.
    block280ce064Value4 := (block280ce064Value1) == (block280ce064Value3).
    block280ce064Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b5310; bytecode file offset 0xab1bcc"
!SGMdAbstractMapping methodsFor: 'recovered'!
addMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := secondaryMapping.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) addMapping: (recoveredBlock6Value1).
    ^recoveredBlock6Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    secondaryMapping := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201b8738; bytecode file offset 0xab5000"
!SGMdAbstractMapping methodsFor: 'recovered'!
asCollection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202271a8; bytecode file offset 0xb23a74"
!SGMdAbstractMapping methodsFor: 'recovered'!
printMappingOn: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'mapped to: '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTargetMissing.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := '<missing>'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) printTargetOn: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ad1b8; bytecode file offset 0xba9a88"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromFieldVarDeclPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredLocal1 := ''.
    recoveredValue0 := (self) fromVarDeclList.
    recoveredValue1 := (self) fromVarDeclList.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) , ('.').
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) mdlLabel.
    recoveredBlock15Value4 := (recoveredBlock15Value1) , (recoveredBlock15Value3).
    recoveredBlock15Value5 := recoveredBlock15Value4.
    recoveredLocal1 := recoveredBlock15Value5.
    recoveredBlock15Value4
].
    (recoveredValue0) from: (2) to: (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202b72a8; bytecode file offset 0xbb3b78"
!SGMdAbstractMapping methodsFor: 'recovered'!
mdlModelName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) reserveTempStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) fromVarDeclList.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) mdlModelName.
    recoveredBlock10Value3 := (recoveredBlock10Value0) nextPutAll: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    recoveredValue3 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) nextPut: ($.).
    recoveredBlock23Value1
].
    (recoveredValue1) do: (recoveredValue2) separatedBy: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2031532c; bytecode file offset 0xc11c00"
!SGMdAbstractMapping methodsFor: 'recovered'!
fromVarDeclList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            fromVarDeclList := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := (self) label.
    recoveredBlock22Value1 := ('Wrong mapping strcuture in ') , (recoveredBlock22Value0).
    recoveredBlock22Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := recoveredArg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) fromVarDeclList: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20317458; bytecode file offset 0xc13d34"
!SGMdAbstractMapping methodsFor: 'recovered'!
mdlUniqueLabel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) reserveTempStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) fromVarDeclReceiver.
    recoveredValue3 := (recoveredValue2) mdlUniqueLabel.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := (self) fromVarDeclList.
    recoveredValue5 := (self) fromVarDeclList.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := recoveredLocal1.
    (recoveredBlock26Value0) nextPut: ($.).
    recoveredBlock26Value1 := recoveredLocal1.
    recoveredBlock26Value2 := recoveredBlock26Arg1.
    recoveredBlock26Value3 := (recoveredBlock26Value2) mdlLabel.
    recoveredBlock26Value4 := (recoveredBlock26Value1) nextPutAll: (recoveredBlock26Value3).
    recoveredBlock26Value4
].
    (recoveredValue4) from: (2) to: (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2032e884; bytecode file offset 0xc2b164"
!SGMdAbstractMapping methodsFor: 'recovered'!
ileElementGenName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) reserveTempStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) fromVarDeclReceiver.
    recoveredValue3 := (recoveredValue2) ileVarDecl.
    recoveredValue4 := (recoveredValue3) genName.
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := (self) fromVarDeclList.
    recoveredValue6 := (self) fromVarDeclList.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := recoveredLocal1.
    (recoveredBlock27Value0) nextPut: ($.).
    recoveredBlock27Value1 := recoveredLocal1.
    recoveredBlock27Value2 := recoveredBlock27Arg1.
    recoveredBlock27Value3 := (recoveredBlock27Value2) mdlLabel.
    recoveredBlock27Value4 := (recoveredBlock27Value1) nextPutAll: (recoveredBlock27Value3).
    recoveredBlock27Value4
].
    (recoveredValue5) from: (2) to: (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) contents.
    ^recoveredValue10
! !

