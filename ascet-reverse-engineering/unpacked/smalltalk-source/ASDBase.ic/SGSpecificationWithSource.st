"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b618; bytecode file offset 0x908be4"
!SGSpecificationWithSource methodsFor: 'recovered'!
initLogicModel
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bdec; bytecode file offset 0x908be4"
!SGSpecificationWithSource methodsFor: 'recovered'!
xmlSpecificationTypeString
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000be04; bytecode file offset 0x908be4"
!SGSpecificationWithSource methodsFor: 'recovered'!
topLogicBlock
    | recoveredValue0 |
    recoveredValue0 := (self) logicModel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018d70; bytecode file offset 0x92209c"
!SGSpecificationWithSource methodsFor: 'recovered'!
visualCallBackImageActive
    ^'GeneralDiagramBDActive'
! !

"ASDBase.ic method 0x2001ce80; bytecode file offset 0x92209c"
!SGSpecificationWithSource methodsFor: 'recovered'!
visualCallBackImage
    ^'GeneralDiagramBD'
! !

"ASDBase.ic method 0x2004f074; bytecode file offset 0x94d048"
!SGSpecificationWithSource methodsFor: 'recovered'!
xmlMakeInitialLogicModel
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006da44; bytecode file offset 0x96a390"
!SGSpecificationWithSource methodsFor: 'recovered'!
sourceKey
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076684; bytecode file offset 0x9757c8"
!SGSpecificationWithSource methodsFor: 'recovered'!
isGraphicSpecification
    ^true
! !

"ASDBase.ic method 0x200dfb1c; bytecode file offset 0x9dc408"
!SGSpecificationWithSource methodsFor: 'recovered'!
initDefaultProcess: recoveredArg1 processClass: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createWithName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addMethod: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dfb4c; bytecode file offset 0x9dc408"
!SGSpecificationWithSource methodsFor: 'recovered'!
initDefaultMethod: recoveredArg1 methodClass: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createWithName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addMethod: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e0198; bytecode file offset 0x9dca7c"
!SGSpecificationWithSource methodsFor: 'recovered'!
initSpecial
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGTopGraphicsBlockDB.
    recoveredValue1 := SGCodeGODB.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := (recoveredValue0) createFor: (recoveredValue2).
    (self) specSource: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ef5dc; bytecode file offset 0x9ebeb8"
!SGSpecificationWithSource methodsFor: 'recovered'!
prepareLmManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentModelSpec: (self).
    recoveredValue2 := (self) logicModel.
    (recoveredValue0) setCurrentLogicModel: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010c3f4; bytecode file offset 0xa08cb0"
!SGSpecificationWithSource methodsFor: 'recovered'!
specSourceInternalOrNil
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sourceKey.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    ^nil
].
    recoveredValue2 := (recoveredValue0) getObjectIfUndefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20114368; bytecode file offset 0xa10c24"
!SGSpecificationWithSource methodsFor: 'recovered'!
addReferencedOpAliasNamesToSet: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceInternalOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) addReferencedOpAliasNamesToSet: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011722c; bytecode file offset 0xa13af0"
!SGSpecificationWithSource methodsFor: 'recovered'!
specSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c72d8Arg1 | 
    | block280c72d8Value0 block280c72d8Value1 block280c72d8Value2 |
    block280c72d8Value0 := ExNoAccessToSource.
    block280c72d8Value1 := block280c72d8Arg1.
    block280c72d8Value2 := (block280c72d8Value0) signalWith: (block280c72d8Value1).
    block280c72d8Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceIfNoReadAccess: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131a08; bytecode file offset 0xa2e2cc"
!SGSpecificationWithSource methodsFor: 'recovered'!
specSourceIfNoReadAccess: recoveredArg1
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
            recoveredStack2 := [:block280cade8Arg1 | 
    | block280cade8Value0 block280cade8Value1 block280cade8Value2 |
    block280cade8Value0 := ExUndefinedDBObject.
    block280cade8Value1 := block280cade8Arg1.
    block280cade8Value2 := (block280cade8Value0) signalWith: (block280cade8Value1).
    block280cade8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceIfNoReadAccess: (recoveredStack1) notDefined: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201395dc; bytecode file offset 0xa35e98"
!SGSpecificationWithSource methodsFor: 'recovered'!
addReferencedAliasNamesToSet: recoveredArg1 item: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceInternalOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) addReferencedAliasNamesToSet: (recoveredStack1) item: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166890; bytecode file offset 0xa6314c"
!SGSpecificationWithSource methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super xmlCollectDependent: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := source.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := source.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) xmlCollectDependent: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20169570; bytecode file offset 0xa65e30"
!SGSpecificationWithSource methodsFor: 'recovered'!
specSourceIfNoReadAccess: recoveredArg1 notDefined: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sourceKey.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg2.
    recoveredBlock5Value1 := (self) sourceKey.
    recoveredBlock5Value2 := (recoveredBlock5Value0) value: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) getObjectIfUndefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20175fa0; bytecode file offset 0xa7285c"
!SGSpecificationWithSource methodsFor: 'recovered'!
specSource: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBPartOfChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            source := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            source := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179be4; bytecode file offset 0xa764ac"
!SGSpecificationWithSource methodsFor: 'recovered'!
xmlInit: recoveredArg1 name: recoveredArg2 methods: recoveredArg3 importDesc: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    super xmlInit: (recoveredValue0) name: (recoveredValue1) methods: (recoveredValue2) importDesc: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) dbObject.
    recoveredValue6 := (recoveredValue5) database.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := (recoveredValue6) makeNewProxy: (recoveredValue7).
    source := recoveredValue8.
    ^self
! !

"ASDBase.ic method 0x201bf2e8; bytecode file offset 0xabbbb0"
!SGSpecificationWithSource methodsFor: 'recovered'!
removeAliasReferences: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_2008401166'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceInternalOrNil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeAliasReferences: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d3a94; bytecode file offset 0xad0354"
!SGSpecificationWithSource methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 childrenReplacementTable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super replaceAliasNames: (recoveredStack1) childrenReplacementTable: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceInternalOrNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) replaceAliasNames: (recoveredStack1) childrenReplacementTable: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f8a74; bytecode file offset 0xaf5340"
!SGSpecificationWithSource methodsFor: 'recovered'!
allAvailablePartKeys
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71182'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super allAvailablePartKeys.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceKey.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceKey.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202120f0; bytecode file offset 0xb0e9c0"
!SGSpecificationWithSource methodsFor: 'recovered'!
duplicateDependent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super duplicateDependent.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDbObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyDatabaseObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) specSource: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022e86c; bytecode file offset 0xb2b134"
!SGSpecificationWithSource methodsFor: 'recovered'!
recreateGraphicSpecificationFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceInternalOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadSourceForSpec: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) controller: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) pageFormat.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) saveGraphics: (recoveredStack1) pageFormat: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a23e8; bytecode file offset 0xb9ecb4"
!SGSpecificationWithSource methodsFor: 'recovered'!
getCurrentGraphicSpecificationFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specSourceInternalOrNil.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) loadSourceForSpec: (self).
    recoveredBlock5Value2 := [:recoveredBlock5Block17Arg1 | 
    | recoveredBlock5Block17Value0 recoveredBlock5Block17Value1 recoveredBlock5Block17Value2 recoveredBlock5Block17Value3 recoveredBlock5Block17Value4 recoveredBlock5Block17Value5 |
    recoveredBlock5Block17Value0 := recoveredBlock5Block17Arg1.
    recoveredBlock5Block17Value1 := recoveredArg1.
    (recoveredBlock5Block17Value0) controller: (recoveredBlock5Block17Value1).
    recoveredBlock5Block17Value2 := recoveredBlock5Block17Arg1.
    recoveredBlock5Block17Value3 := recoveredBlock5Arg1.
    recoveredBlock5Block17Value4 := (recoveredBlock5Block17Value3) highestUsedGraphicalIdentifier.
    (recoveredBlock5Block17Value2) buildNewIdentifiersMaximumGraphicsIdentifier: (recoveredBlock5Block17Value4).
    recoveredBlock5Block17Value5 := recoveredBlock5Block17Arg1.
    recoveredBlock5Block17Value5
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202b1660; bytecode file offset 0xbadf30"
!SGSpecificationWithSource methodsFor: 'recovered'!
allPartProxiesWithUnloaded: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super allPartProxiesWithUnloaded: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceKey.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) rawGetObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceKey.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block280e4a5cArg1 | 
    nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) readKeyIfUndefined: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b6130; bytecode file offset 0xbb2a04"
!SGSpecificationWithSource methodsFor: 'recovered'!
buildLogic: recoveredArg1 class: recoveredArg2 logicBuilder: recoveredArg3 specification: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_88258').
    recoveredValue1 := (self) topLogicBlock.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredArg3.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    (recoveredBlock11Value0) useTopCodeBlock: (recoveredBlock11Value1).
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := recoveredArg3.
    recoveredBlock11Value4 := recoveredBlock11Arg1.
    recoveredBlock11Value5 := recoveredArg4.
    (recoveredBlock11Value2) buildLogic: (recoveredBlock11Value3) hierarchy: (recoveredBlock11Value4) specification: (recoveredBlock11Value5).
    recoveredBlock11Value6 := ('Kli') == ('Call_93569').
    recoveredBlock11Value6
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20380ecc; bytecode file offset 0xc7d7a8"
!SGSpecificationWithSource methodsFor: 'recovered'!
saveGraphics: recoveredArg1 pageFormat: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) specSourceOrNil.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredLocal1 := recoveredBlock4Value1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) notNil.
    recoveredBlock4Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'spec source should not be nil'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Call_94812'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    recoveredBlock30Value2 := recoveredArg2.
    recoveredBlock30Value3 := (recoveredBlock30Value0) store: (recoveredBlock30Value1) pageFormat: (recoveredBlock30Value2).
    recoveredBlock30Value3
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) topLogicBlock.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Call_93569'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) reinitialize.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bfc38; bytecode file offset 0xcbc520"
!SGSpecificationWithSource methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    (self) internalWriteXMLHeader: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) xmlSpecificationTypeString.
    (recoveredValue1) openComplex: (recoveredValue2).
    recoveredValue3 := (self) specSourceOrNil.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) highestUsedGraphicalIdentifier.
    recoveredBlock18Value3 := (recoveredBlock18Value0) attr: ('highestUsedGraphicalIdentifier') graphicOID: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) internalWriteXMLMethods: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) openComplex: ('DiagramElements').
    recoveredValue7 := (self) specSourceOrNil.
    recoveredValue8 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredBlock52Arg1.
    recoveredBlock52Value1 := recoveredArg1.
    recoveredBlock52Value2 := (self) sgClass.
    recoveredBlock52Value3 := (recoveredBlock52Value0) writeXML: (recoveredBlock52Value1) class: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) closeComplex.
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) closeComplex.
    ^self
! !

"ASDBase.ic method 0x203fcdb0; bytecode file offset 0xcf9698"
!SGSpecificationWithSource methodsFor: 'recovered'!
editorClassForEdition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGContTimeBlockDiagramEditorView.
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
            recoveredStack0 := (recoveredStack0) isSmSpecification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGStateMachineEditorView.
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
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'I_WANNA_PLAY_TETRIS'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := TetrisView.
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
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'I_WANNA_PLAY_PACMAN'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := PacmanView.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := SGBlockDiagramEditorView.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041c43c; bytecode file offset 0xd18d28"
!SGSpecificationWithSource methodsFor: 'recovered'!
xmlRecreateLogicModel
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) object.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'Call_65035'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManagerBasicClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBuilderForClass: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceInternalOrNil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadSourceForSpec: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) controller: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'Call_349597'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) LogicModelGenerationRunning: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) buildLogic: (recoveredStack1) class: (recoveredStack2) logicBuilder: (recoveredStack3) specification: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'Call_349597'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) LogicModelGenerationRunning: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ad004; bytecode file offset 0xda9908"
!SGSpecificationWithSource methodsFor: 'recovered'!
checkStandardLayoutsUsedWithDisabledMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) logicModel.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := ETASError.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := 'logic model missing'.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) create: (recoveredBlock4Stack1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isProjectLogic.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 32] ifFalse: [recoveredBlock4PC := 34].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) specSourceOrNil.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 50] ifFalse: [recoveredBlock4PC := 44].
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack0 := ETASError.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := 'graphic model missing'.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) create: (recoveredBlock4Stack1).
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) blocks.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block55Arg1 | 
    | recoveredBlock4Block55Local1 recoveredBlock4Block55Local2 recoveredBlock4Block55Local3 recoveredBlock4Block55Stack0 recoveredBlock4Block55Stack1 recoveredBlock4Block55Stack2 recoveredBlock4Block55Stack3 recoveredBlock4Block55Stack4 recoveredBlock4Block55Stack5 recoveredBlock4Block55PC recoveredBlock4Block55Step recoveredBlock4Block55Done recoveredBlock4Block55Result |
    recoveredBlock4Block55Stack0 := self.
    recoveredBlock4Block55PC := 62.
    recoveredBlock4Block55Done := false.
    [recoveredBlock4Block55Done not] whileTrue: [
        recoveredBlock4Block55Step := recoveredBlock4Block55PC.
        recoveredBlock4Block55Step = 62 ifTrue: [
            recoveredBlock4Block55Stack1 := nil.
            recoveredBlock4Block55PC := 63.
        ].
        recoveredBlock4Block55Step = 63 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Arg1.
            recoveredBlock4Block55PC := 64.
        ].
        recoveredBlock4Block55Step = 64 ifTrue: [
            recoveredBlock4Block55Stack2 := (recoveredBlock4Block55Stack2) iD.
            recoveredBlock4Block55PC := 66.
        ].
        recoveredBlock4Block55Step = 66 ifTrue: [
            recoveredBlock4Block55Stack3 := -1.
            recoveredBlock4Block55PC := 68.
        ].
        recoveredBlock4Block55Step = 68 ifTrue: [
            (recoveredBlock4Block55Stack2 == recoveredBlock4Block55Stack3) ifTrue: [recoveredBlock4Block55PC := 101] ifFalse: [recoveredBlock4Block55PC := 72].
        ].
        recoveredBlock4Block55Step = 72 ifTrue: [
            recoveredBlock4Block55PC := 73.
        ].
        recoveredBlock4Block55Step = 73 ifTrue: [
            recoveredBlock4Block55Stack1 := recoveredBlock4Local2.
            recoveredBlock4Block55PC := 76.
        ].
        recoveredBlock4Block55Step = 76 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Arg1.
            recoveredBlock4Block55PC := 77.
        ].
        recoveredBlock4Block55Step = 77 ifTrue: [
            recoveredBlock4Block55Stack2 := (recoveredBlock4Block55Stack2) iD.
            recoveredBlock4Block55PC := 79.
        ].
        recoveredBlock4Block55Step = 79 ifTrue: [
            recoveredBlock4Block55Stack1 := (recoveredBlock4Block55Stack1) iDTableAt: (recoveredBlock4Block55Stack2).
            recoveredBlock4Block55PC := 81.
        ].
        recoveredBlock4Block55Step = 81 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Stack1.
            recoveredBlock4Block55PC := 82.
        ].
        recoveredBlock4Block55Step = 82 ifTrue: [
            recoveredBlock4Block55Local2 := recoveredBlock4Block55Stack2.
            recoveredBlock4Block55PC := 83.
        ].
        recoveredBlock4Block55Step = 83 ifTrue: [
            (recoveredBlock4Block55Stack1 ~~ nil) ifTrue: [recoveredBlock4Block55PC := 92] ifFalse: [recoveredBlock4Block55PC := 86].
        ].
        recoveredBlock4Block55Step = 86 ifTrue: [
            recoveredBlock4Block55Stack1 := ETASError.
            recoveredBlock4Block55PC := 88.
        ].
        recoveredBlock4Block55Step = 88 ifTrue: [
            recoveredBlock4Block55Stack2 := 'logic model missing'.
            recoveredBlock4Block55PC := 90.
        ].
        recoveredBlock4Block55Step = 90 ifTrue: [
            recoveredBlock4Block55Stack1 := (recoveredBlock4Block55Stack1) create: (recoveredBlock4Block55Stack2).
            recoveredBlock4Block55PC := 91.
        ].
        recoveredBlock4Block55Step = 91 ifTrue: [
            ^recoveredBlock4Block55Stack1
        ].
        recoveredBlock4Block55Step = 92 ifTrue: [
            recoveredBlock4Block55Stack1 := recoveredBlock4Block55Arg1.
            recoveredBlock4Block55PC := 93.
        ].
        recoveredBlock4Block55Step = 93 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Local2.
            recoveredBlock4Block55PC := 94.
        ].
        recoveredBlock4Block55Step = 94 ifTrue: [
            recoveredBlock4Block55Stack3 := self.
            recoveredBlock4Block55PC := 95.
        ].
        recoveredBlock4Block55Step = 95 ifTrue: [
            recoveredBlock4Block55Stack4 := recoveredArg1.
            recoveredBlock4Block55PC := 98.
        ].
        recoveredBlock4Block55Step = 98 ifTrue: [
            recoveredBlock4Block55Stack1 := (recoveredBlock4Block55Stack1) checkStandardLayoutsUsedWithDisabledMethods: (recoveredBlock4Block55Stack2) specification: (recoveredBlock4Block55Stack3) errorBlock: (recoveredBlock4Block55Stack4).
            recoveredBlock4Block55PC := 101.
        ].
        recoveredBlock4Block55Step = 101 ifTrue: [
            recoveredBlock4Block55Result := recoveredBlock4Block55Stack1.
            recoveredBlock4Block55Done := true.
        ].
    ].
    recoveredBlock4Block55Result
].
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) do: (recoveredBlock4Stack1).
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := [
    | recoveredBlock105Stack0 recoveredBlock105Stack1 recoveredBlock105Stack2 recoveredBlock105Stack3 recoveredBlock105PC recoveredBlock105Step recoveredBlock105Done recoveredBlock105Result |
    recoveredBlock105Stack0 := self.
    recoveredBlock105PC := 112.
    recoveredBlock105Done := false.
    [recoveredBlock105Done not] whileTrue: [
        recoveredBlock105Step := recoveredBlock105PC.
        recoveredBlock105Step = 112 ifTrue: [
            recoveredBlock105Stack1 := [
    false
].
            recoveredBlock105PC := 114.
        ].
        recoveredBlock105Step = 114 ifTrue: [
            recoveredBlock105PC := 120.
        ].
        recoveredBlock105Step = 120 ifTrue: [
            recoveredBlock105Stack2 := 'fatal error in checking layout usage'.
            recoveredBlock105PC := 122.
        ].
        recoveredBlock105Step = 122 ifTrue: [
            (recoveredBlock105Stack0) runtimeAssert: (recoveredBlock105Stack1) additionalInfo: (recoveredBlock105Stack2).
            recoveredBlock105PC := 124.
        ].
        recoveredBlock105Step = 124 ifTrue: [
            recoveredBlock105Stack0 := ETASError.
            recoveredBlock105PC := 126.
        ].
        recoveredBlock105Step = 126 ifTrue: [
            recoveredBlock105Stack1 := 'FATAL ERROR - unable to check specification '''.
            recoveredBlock105PC := 128.
        ].
        recoveredBlock105Step = 128 ifTrue: [
            recoveredBlock105Stack2 := self.
            recoveredBlock105PC := 129.
        ].
        recoveredBlock105Step = 129 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) specificationName.
            recoveredBlock105PC := 131.
        ].
        recoveredBlock105Step = 131 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) , (recoveredBlock105Stack2).
            recoveredBlock105PC := 133.
        ].
        recoveredBlock105Step = 133 ifTrue: [
            recoveredBlock105Stack2 := ''''.
            recoveredBlock105PC := 135.
        ].
        recoveredBlock105Step = 135 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) , (recoveredBlock105Stack2).
            recoveredBlock105PC := 137.
        ].
        recoveredBlock105Step = 137 ifTrue: [
            recoveredBlock105Stack0 := (recoveredBlock105Stack0) create: (recoveredBlock105Stack1).
            recoveredBlock105PC := 138.
        ].
        recoveredBlock105Step = 138 ifTrue: [
            ^recoveredBlock105Stack0
        ].
    ].
    recoveredBlock105Result
].
    (recoveredValue0) exWhenUndefinedKeyOrValue: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204ae110; bytecode file offset 0xdaaa14"
!SGSpecificationWithSource methodsFor: 'recovered'!
checkGraphicLogicConsistency: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) logicModel.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := ETASError.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := 'logic model missing'.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) create: (recoveredBlock4Stack1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal2.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isProjectLogic.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 32] ifFalse: [recoveredBlock4PC := 34].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) specSourceOrNil.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 50] ifFalse: [recoveredBlock4PC := 44].
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack0 := ETASError.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := 'graphic model missing'.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) create: (recoveredBlock4Stack1).
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) blocks.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block55Arg1 | 
    | recoveredBlock4Block55Local1 recoveredBlock4Block55Local2 recoveredBlock4Block55Local3 recoveredBlock4Block55Stack0 recoveredBlock4Block55Stack1 recoveredBlock4Block55Stack2 recoveredBlock4Block55Stack3 recoveredBlock4Block55Stack4 recoveredBlock4Block55Stack5 recoveredBlock4Block55PC recoveredBlock4Block55Step recoveredBlock4Block55Done recoveredBlock4Block55Result |
    recoveredBlock4Block55Stack0 := self.
    recoveredBlock4Block55PC := 62.
    recoveredBlock4Block55Done := false.
    [recoveredBlock4Block55Done not] whileTrue: [
        recoveredBlock4Block55Step := recoveredBlock4Block55PC.
        recoveredBlock4Block55Step = 62 ifTrue: [
            recoveredBlock4Block55Stack1 := nil.
            recoveredBlock4Block55PC := 63.
        ].
        recoveredBlock4Block55Step = 63 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Arg1.
            recoveredBlock4Block55PC := 64.
        ].
        recoveredBlock4Block55Step = 64 ifTrue: [
            recoveredBlock4Block55Stack2 := (recoveredBlock4Block55Stack2) iD.
            recoveredBlock4Block55PC := 66.
        ].
        recoveredBlock4Block55Step = 66 ifTrue: [
            recoveredBlock4Block55Stack3 := -1.
            recoveredBlock4Block55PC := 68.
        ].
        recoveredBlock4Block55Step = 68 ifTrue: [
            (recoveredBlock4Block55Stack2 == recoveredBlock4Block55Stack3) ifTrue: [recoveredBlock4Block55PC := 101] ifFalse: [recoveredBlock4Block55PC := 72].
        ].
        recoveredBlock4Block55Step = 72 ifTrue: [
            recoveredBlock4Block55PC := 73.
        ].
        recoveredBlock4Block55Step = 73 ifTrue: [
            recoveredBlock4Block55Stack1 := recoveredLocal2.
            recoveredBlock4Block55PC := 76.
        ].
        recoveredBlock4Block55Step = 76 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Arg1.
            recoveredBlock4Block55PC := 77.
        ].
        recoveredBlock4Block55Step = 77 ifTrue: [
            recoveredBlock4Block55Stack2 := (recoveredBlock4Block55Stack2) iD.
            recoveredBlock4Block55PC := 79.
        ].
        recoveredBlock4Block55Step = 79 ifTrue: [
            recoveredBlock4Block55Stack1 := (recoveredBlock4Block55Stack1) iDTableAt: (recoveredBlock4Block55Stack2).
            recoveredBlock4Block55PC := 81.
        ].
        recoveredBlock4Block55Step = 81 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Stack1.
            recoveredBlock4Block55PC := 82.
        ].
        recoveredBlock4Block55Step = 82 ifTrue: [
            recoveredBlock4Block55Local2 := recoveredBlock4Block55Stack2.
            recoveredBlock4Block55PC := 83.
        ].
        recoveredBlock4Block55Step = 83 ifTrue: [
            (recoveredBlock4Block55Stack1 ~~ nil) ifTrue: [recoveredBlock4Block55PC := 92] ifFalse: [recoveredBlock4Block55PC := 86].
        ].
        recoveredBlock4Block55Step = 86 ifTrue: [
            recoveredBlock4Block55Stack1 := ETASError.
            recoveredBlock4Block55PC := 88.
        ].
        recoveredBlock4Block55Step = 88 ifTrue: [
            recoveredBlock4Block55Stack2 := 'logic model missing'.
            recoveredBlock4Block55PC := 90.
        ].
        recoveredBlock4Block55Step = 90 ifTrue: [
            recoveredBlock4Block55Stack1 := (recoveredBlock4Block55Stack1) create: (recoveredBlock4Block55Stack2).
            recoveredBlock4Block55PC := 91.
        ].
        recoveredBlock4Block55Step = 91 ifTrue: [
            ^recoveredBlock4Block55Stack1
        ].
        recoveredBlock4Block55Step = 92 ifTrue: [
            recoveredBlock4Block55Stack1 := recoveredBlock4Block55Arg1.
            recoveredBlock4Block55PC := 93.
        ].
        recoveredBlock4Block55Step = 93 ifTrue: [
            recoveredBlock4Block55Stack2 := recoveredBlock4Block55Local2.
            recoveredBlock4Block55PC := 94.
        ].
        recoveredBlock4Block55Step = 94 ifTrue: [
            recoveredBlock4Block55Stack3 := self.
            recoveredBlock4Block55PC := 95.
        ].
        recoveredBlock4Block55Step = 95 ifTrue: [
            recoveredBlock4Block55Stack4 := recoveredArg1.
            recoveredBlock4Block55PC := 98.
        ].
        recoveredBlock4Block55Step = 98 ifTrue: [
            recoveredBlock4Block55Stack1 := (recoveredBlock4Block55Stack1) checkLogic: (recoveredBlock4Block55Stack2) specification: (recoveredBlock4Block55Stack3) errorBlock: (recoveredBlock4Block55Stack4).
            recoveredBlock4Block55PC := 101.
        ].
        recoveredBlock4Block55Step = 101 ifTrue: [
            recoveredBlock4Block55Result := recoveredBlock4Block55Stack1.
            recoveredBlock4Block55Done := true.
        ].
    ].
    recoveredBlock4Block55Result
].
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) do: (recoveredBlock4Stack1).
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := [
    | recoveredBlock105Stack0 recoveredBlock105Stack1 recoveredBlock105Stack2 recoveredBlock105Stack3 recoveredBlock105PC recoveredBlock105Step recoveredBlock105Done recoveredBlock105Result |
    recoveredBlock105Stack0 := self.
    recoveredBlock105PC := 112.
    recoveredBlock105Done := false.
    [recoveredBlock105Done not] whileTrue: [
        recoveredBlock105Step := recoveredBlock105PC.
        recoveredBlock105Step = 112 ifTrue: [
            recoveredBlock105Stack1 := [
    false
].
            recoveredBlock105PC := 114.
        ].
        recoveredBlock105Step = 114 ifTrue: [
            recoveredBlock105PC := 120.
        ].
        recoveredBlock105Step = 120 ifTrue: [
            recoveredBlock105Stack2 := 'fatal error in checking logic consistency'.
            recoveredBlock105PC := 122.
        ].
        recoveredBlock105Step = 122 ifTrue: [
            (recoveredBlock105Stack0) runtimeAssert: (recoveredBlock105Stack1) additionalInfo: (recoveredBlock105Stack2).
            recoveredBlock105PC := 124.
        ].
        recoveredBlock105Step = 124 ifTrue: [
            recoveredBlock105Stack0 := ETASError.
            recoveredBlock105PC := 126.
        ].
        recoveredBlock105Step = 126 ifTrue: [
            recoveredBlock105Stack1 := 'FATAL ERROR - unable to check specification '''.
            recoveredBlock105PC := 128.
        ].
        recoveredBlock105Step = 128 ifTrue: [
            recoveredBlock105Stack2 := self.
            recoveredBlock105PC := 129.
        ].
        recoveredBlock105Step = 129 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) specificationName.
            recoveredBlock105PC := 131.
        ].
        recoveredBlock105Step = 131 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) , (recoveredBlock105Stack2).
            recoveredBlock105PC := 133.
        ].
        recoveredBlock105Step = 133 ifTrue: [
            recoveredBlock105Stack2 := ''''.
            recoveredBlock105PC := 135.
        ].
        recoveredBlock105Step = 135 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) , (recoveredBlock105Stack2).
            recoveredBlock105PC := 137.
        ].
        recoveredBlock105Step = 137 ifTrue: [
            recoveredBlock105Stack0 := (recoveredBlock105Stack0) create: (recoveredBlock105Stack1).
            recoveredBlock105PC := 138.
        ].
        recoveredBlock105Step = 138 ifTrue: [
            ^recoveredBlock105Stack0
        ].
    ].
    recoveredBlock105Result
].
    (recoveredValue0) exWhenUndefinedKeyOrValue: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2057e8ac; bytecode file offset 0xe7b1d4"
!SGSpecificationWithSource methodsFor: 'recovered'!
recreateLogicModelFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65035'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManagerBasicClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBuilderForClass: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentGraphicSpecificationFor: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'Call_349597'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) LogicModelGenerationRunning: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModelKey.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock68Value0 |
    recoveredBlock68Value0 := (self) initLogicModel.
    recoveredBlock68Value0
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) prepareLmManager.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := SGLmManager.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 |
    recoveredBlock110Value0 := recoveredLocal2.
    recoveredBlock110Value1 := [
    | recoveredBlock110Block119Value0 recoveredBlock110Block119Value1 recoveredBlock110Block119Value2 recoveredBlock110Block119Value3 |
    recoveredBlock110Block119Value0 := recoveredLocal5.
    recoveredBlock110Block119Value1 := recoveredArg1.
    recoveredBlock110Block119Value2 := recoveredLocal3.
    recoveredBlock110Block119Value3 := (self) buildLogic: (recoveredBlock110Block119Value0) class: (recoveredBlock110Block119Value1) logicBuilder: (recoveredBlock110Block119Value2) specification: (self).
    recoveredBlock110Block119Value3
].
    recoveredBlock110Value2 := (recoveredBlock110Value0) handleFatals: (recoveredBlock110Value1).
    recoveredBlock110Value2
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Value0 recoveredBlock151Value1 recoveredBlock151Value2 |
    recoveredBlock151Value0 := recoveredBlock151Arg1.
    recoveredBlock151Value1 := [
    | recoveredBlock151Block163Value0 recoveredBlock151Block163Value1 recoveredBlock151Block163Value2 recoveredBlock151Block163Value3 recoveredBlock151Block163Value4 recoveredBlock151Block163Value5 recoveredBlock151Block163Value6 recoveredBlock151Block163Value7 recoveredBlock151Block163Value8 |
    recoveredBlock151Block163Value0 := recoveredBlock151Arg1.
    recoveredBlock151Block163Value1 := recoveredArg1.
    recoveredBlock151Block163Value2 := (recoveredBlock151Block163Value1) label.
    recoveredBlock151Block163Value3 := (recoveredBlock151Block163Value2) , (' (logic model)').
    recoveredBlock151Block163Value4 := recoveredArg1.
    recoveredBlock151Block163Value5 := (recoveredBlock151Block163Value4) label.
    recoveredBlock151Block163Value6 := (recoveredBlock151Block163Value5) , (' (logic model)').
    recoveredBlock151Block163Value7 := recoveredLocal1.
    recoveredBlock151Block163Value8 := (recoveredBlock151Block163Value0) collectMessagesInSubUnit: (recoveredBlock151Block163Value3) id: (recoveredBlock151Block163Value6) do: (recoveredBlock151Block163Value7).
    recoveredBlock151Block163Value8
].
    recoveredBlock151Value2 := (recoveredBlock151Value0) collectMessagesInGeneralUnit: ('General') do: (recoveredBlock151Value1).
    recoveredBlock151Value2
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock201Value0 recoveredBlock201Value1 |
    recoveredBlock201Value0 := recoveredLocal1.
    recoveredBlock201Value1 := (recoveredBlock201Value0) value.
    recoveredBlock201Value1
].
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) buildLogic: (recoveredStack1) class: (recoveredStack2) logicBuilder: (recoveredStack3) specification: (recoveredStack4).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := 'Call_349597'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) LogicModelGenerationRunning: (recoveredStack1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := 'Call_93569'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

