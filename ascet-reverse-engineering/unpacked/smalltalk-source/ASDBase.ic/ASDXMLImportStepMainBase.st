"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021f14; bytecode file offset 0x92209c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
description
    ^'Importing main'
! !

"ASDBase.ic method 0x2004e4a4; bytecode file offset 0x94d048"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
handleDefaultProject
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f5b4; bytecode file offset 0x94d048"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readMainDom
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052bc0; bytecode file offset 0x9505d0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
registerNewItem: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052da0; bytecode file offset 0x9505d0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
internFile: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053898; bytecode file offset 0x9505d0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
handleNotes: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20102124; bytecode file offset 0x9fe9e4"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementT: recoveredArg1 defaultClass: recoveredArg2 parent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getNMToken: ('name').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) readElementT: (recoveredValue0) name: (recoveredValue2) defaultClass: (recoveredValue3) parent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20123c6c; bytecode file offset 0xa20528"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readComplexAttributesT: recoveredArg1 newEl: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) readAttributesBaseT: (recoveredValue0) newEl: (recoveredValue1) type: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) readElementReferenceAttribute: (recoveredValue3) newEl: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201845c0; bytecode file offset 0xa80e88"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readTimeStamps: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'WorkspaceTimeStamps'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'TimeStamps'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280d05ccArg1 | 
    nil
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197268; bytecode file offset 0xa93b5c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementDependentAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'dependent'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) setDependent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) clearDependent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197280; bytecode file offset 0xa93b5c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementReferenceAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'reference'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) setReference.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) clearReference.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197298; bytecode file offset 0xa93b5c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementRedundantAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'redundant'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) setRedundant.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) clearRedundant.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cff20; bytecode file offset 0xacc7e0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
initOn: recoveredArg1 item: recoveredArg2 importPath: recoveredArg3 ext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    super initOn: (recoveredValue0) sgClass: (nil) item: (recoveredValue1) importPath: (recoveredValue2) ext: (recoveredValue3).
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (self) unexpectedElement: (recoveredBlock13Value0).
    recoveredBlock13Value1
].
    handler := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x201ee594; bytecode file offset 0xaeae68"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readRunnableSignatureT: recoveredArg1 realized: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ARRunnable.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) readMethodSignatureT: (recoveredValue0) methodClass: (recoveredValue1) realized: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getBoolean: ('canBeInvokedConcurrently').
    (recoveredValue4) canBeInvokedConcurrently: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getDouble: ('minimumStartTime').
    (recoveredValue7) minimumStartTime: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201fcc50; bytecode file offset 0xaf9514"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readReference: recoveredArg1 nameTag: recoveredArg2 oidTag: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOID: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForPath: (recoveredStack1) oid: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNotFound: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fdb2c; bytecode file offset 0xafa400"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
restoreTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('Kli') == ('WorkspaceTimeStamps').
    recoveredValue1 := protoClass.
    recoveredValue2 := (recoveredValue1) thing.
    recoveredValue3 := (recoveredValue2) dbObject.
    recoveredValue4 := protoClass.
    recoveredValue5 := (recoveredValue4) timeStamp.
    (recoveredValue3) applicationTimeStamp: (recoveredValue5).
    recoveredValue6 := protoClass.
    recoveredValue7 := (recoveredValue6) thing.
    recoveredValue8 := (recoveredValue7) dbObject.
    recoveredValue9 := protoClass.
    recoveredValue10 := (recoveredValue9) timeStampCounter.
    (recoveredValue8) applicationTimeStampNanoSecondsFromTimeStampWithCounter: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2020fd18; bytecode file offset 0xb0c624"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementVirtualAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'virtual'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setVirtual.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) clearVirtual.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020fd38; bytecode file offset 0xb0c624"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementVariantAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'variant'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setVariantCoded.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) clearVariantCoded.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020fd58; bytecode file offset 0xb0c624"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementInterrunnableAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'explicit'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setExplicit.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) clearExplicit.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210c28; bytecode file offset 0xb0d4f0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readInterfaceAttributesT: recoveredArg1 newEl: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) readElementKindAttribute: (recoveredValue0) newEl: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    (self) readComplexAttributesT: (recoveredValue2) newEl: (recoveredValue3) type: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    (self) readElementVolatileAttribute: (recoveredValue5) newEl: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    (self) readElementCalibratedAttribute: (recoveredValue7) newEl: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    (self) readElementVirtualAttribute: (recoveredValue9) newEl: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2021d43c; bytecode file offset 0xb19d0c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readEnumerationAttributesT: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack5 := 'enumerationName'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack6 := 'enumerationOID'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) readReferenceProxy: (recoveredStack4) nameTag: (recoveredStack5) oidTag: (recoveredStack6).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) readPrimitiveAttributesBaseT: (recoveredStack1) newEl: (recoveredStack2) basicType: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGVariable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) readElementInterrunnableAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024d40c; bytecode file offset 0xb49cd8"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readRecordAttributesT: recoveredArg1 newEl: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) readAttributesBaseT: (recoveredValue0) newEl: (recoveredValue1) type: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) readElementVolatileAttribute: (recoveredValue3) newEl: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    (self) readElementCalibratedAttribute: (recoveredValue5) newEl: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    (self) readElementVirtualAttribute: (recoveredValue7) newEl: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    (self) readElementReferenceAttribute: (recoveredValue9) newEl: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredArg2.
    (self) readElementInterrunnableAttribute: (recoveredValue11) newEl: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x20262ba0; bytecode file offset 0xb5f484"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readXMLIntegerAttributesNode: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'min'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNZQR: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'max'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) getNZQR: (recoveredStack5).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWrapAroundInteger.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := RBDataTypes.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'implType'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNMToken: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeForLabel: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) implementationType: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20262c00; bytecode file offset 0xb5f4d4"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementVolatileAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'volatile'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setVolatile.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) clearNonVolatile.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) clearVolatile.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) setNonVolatile.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20272b10; bytecode file offset 0xb6f3e0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readPrimitiveAttributesBaseT: recoveredArg1 newEl: recoveredArg2 basicType: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) readElementKindAttribute: (recoveredStack2) newEl: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) readAttributesBaseT: (recoveredStack1) newEl: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) readElementVolatileAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 28.
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) readElementCalibratedAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) readElementRedundantAttribute: (recoveredStack1) newEl: (recoveredStack2).
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

"ASDBase.ic method 0x202d9e58; bytecode file offset 0xbd6730"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementCalibratedAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'calibrationWrite'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setCalibrationWrite.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) clearCalibrationWrite.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'calibrationRead'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setCalibrationRead.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) clearCalibrationRead.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20322718; bytecode file offset 0xc1eff4"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readReferenceProxy: recoveredArg1 nameTag: recoveredArg2 oidTag: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) readReference: (recoveredStack1) nameTag: (recoveredStack2) oidTag: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeDBProxy: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isXMLImportProtoObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := protoClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := protoClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) thing.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Call_85272'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := SGSelfClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20376b14; bytecode file offset 0xc733f8"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readTimeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kli') == ('WorkspaceTimeStamps').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := protoClass.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) getDateTime: ('timeStampValue').
    (recoveredBlock15Value0) timeStamp: (recoveredBlock15Value2).
    recoveredBlock15Value3 := protoClass.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := (recoveredBlock15Value4) getNNInt: ('timeStampCounter') default: (0).
    (recoveredBlock15Value3) timeStampCounter: (recoveredBlock15Value5).
    ^self
].
    recoveredValue3 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 |
    recoveredBlock43Value0 := protoClass.
    recoveredBlock43Value1 := Date.
    recoveredBlock43Value2 := (recoveredBlock43Value1) dateAndTimeNowInSeconds.
    (recoveredBlock43Value0) timeStamp: (recoveredBlock43Value2).
    recoveredBlock43Value3 := protoClass.
    recoveredBlock43Value4 := (recoveredBlock43Value3) timeStampCounter: (0).
    recoveredBlock43Value4
].
    (self) metaAt: (#('ComponentMain' 'TimeStamp')) or: (recoveredValue1) do: (recoveredValue2) ifNot: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2039615c; bytecode file offset 0xc92a34"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readDimensionalAttributesT: recoveredArg1 newEl: recoveredArg2 type: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) readPrimitiveAttributesBaseT: (recoveredStack1) newEl: (recoveredStack2) basicType: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGVariable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) readElementVirtualAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) readElementDependentAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) readElementReferenceAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'Formula'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := recoveredArg2.
    recoveredBlock58Value2 := (self) readFormula: (recoveredBlock58Value0) element: (recoveredBlock58Value1).
    recoveredBlock58Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b7128; bytecode file offset 0xcb3a1c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementKindAttribute: recoveredArg1 newEl: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (LookupTable new) elementCount: (13); keyArray: (#(nil nil nil nil 'parameter' 'continuous' nil 'steplocal' nil nil nil nil 'output' nil nil nil nil nil nil nil nil nil 'message' nil 'variable' nil nil nil 'interrunnable' 'constant' 'sysconstant' 'reference' 'dependent' 'input' nil nil nil 'discrete' nil nil nil nil nil nil)); valueArray: (#(nil nil nil nil 'setToParameter' 'setCTContinuous' nil 'setCTStepLocal' nil nil nil nil 'setOutput' nil nil nil nil nil nil nil nil nil 'setMessage' nil 'setVariable' nil nil nil 'setInterrunnable' 'setConstant' 'setSystemConstant' 'setVariable' 'setCTDependentParameter' 'setInput' nil nil nil 'setCTDiscrete' nil nil nil nil nil nil)); yourself.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'kind'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'variable'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNMToken: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessage.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setReceive.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'read'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) setReceive.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) clearReceive.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'write'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) setSend.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) clearSend.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d0e14; bytecode file offset 0xccd6f0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readScalarAttributesT: recoveredArg1 newEl: recoveredArg2 type: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) readPrimitiveAttributesBaseT: (recoveredStack1) newEl: (recoveredStack2) basicType: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGVariable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) readElementVirtualAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) readElementDependentAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) readElementInterrunnableAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) readElementVariantAttribute: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'Formula'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := recoveredArg2.
    recoveredBlock67Value2 := (self) readFormula: (recoveredBlock67Value0) element: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203dc4cc; bytecode file offset 0xcd8db4"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readAtomicSoftwareComponentT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readComponentT: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 |
    recoveredBlock10Value0 := protoClass.
    recoveredBlock10Value1 := (recoveredBlock10Value0) thing.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := ASDMappingSourceObject.
    recoveredBlock10Value4 := ASDMappingTargetObject.
    recoveredBlock10Value5 := (self) readElementMappingT: (recoveredBlock10Value2) sourceObject: (recoveredBlock10Value3) targetObject: (recoveredBlock10Value4).
    recoveredBlock10Value6 := (recoveredBlock10Value1) xmlParameterMappings: (recoveredBlock10Value5).
    recoveredBlock10Value6
].
    (recoveredValue2) optional: ('ParameterMappings') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 |
    recoveredBlock36Value0 := protoClass.
    recoveredBlock36Value1 := (recoveredBlock36Value0) thing.
    recoveredBlock36Value2 := recoveredBlock36Arg1.
    recoveredBlock36Value3 := ASDMappingSourceObject.
    recoveredBlock36Value4 := ASDMappingTargetObject.
    recoveredBlock36Value5 := (self) readElementMappingT: (recoveredBlock36Value2) sourceObject: (recoveredBlock36Value3) targetObject: (recoveredBlock36Value4).
    recoveredBlock36Value6 := (recoveredBlock36Value1) xmlInternalVariableMappings: (recoveredBlock36Value5).
    recoveredBlock36Value6
].
    (recoveredValue4) optional: ('VariableMappingsInternal') do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 recoveredBlock62Value4 recoveredBlock62Value5 recoveredBlock62Value6 |
    recoveredBlock62Value0 := protoClass.
    recoveredBlock62Value1 := (recoveredBlock62Value0) thing.
    recoveredBlock62Value2 := recoveredBlock62Arg1.
    recoveredBlock62Value3 := ASDMappingExternalSourceObject.
    recoveredBlock62Value4 := ASDMappingTargetObject.
    recoveredBlock62Value5 := (self) readElementMappingT: (recoveredBlock62Value2) sourceObject: (recoveredBlock62Value3) targetObject: (recoveredBlock62Value4).
    recoveredBlock62Value6 := (recoveredBlock62Value1) xmlExternalVariableMappings: (recoveredBlock62Value5).
    recoveredBlock62Value6
].
    (recoveredValue6) optional: ('VariableMappingsExternal') do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203f47ac; bytecode file offset 0xcf109c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readImage: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGImageDB.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ('Kli') == ('Call_74693').
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) xmlInit.
    recoveredValue4 := recoveredLocal1.
    (self) registerNewItem: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) readItemT: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Local1 recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) readFileReferenceT: (recoveredBlock37Stack1).
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack0.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack0 := recoveredLocal1.
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local1.
            recoveredBlock37PC := 52.
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) xmlInit: (recoveredBlock37Stack1).
            recoveredBlock37PC := 54.
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock37Stack0.
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack0 := nil.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal1.
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            (recoveredBlock37Stack1 ~~ nil) ifTrue: [recoveredBlock37PC := 77] ifFalse: [recoveredBlock37PC := 64].
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37PC := 65.
        ].
        recoveredBlock37Step = 65 ifTrue: [
            recoveredBlock37Stack0 := controller.
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            recoveredBlock37Stack1 := ASDXMLImportIssueUnreadableImage.
            recoveredBlock37PC := 69.
        ].
        recoveredBlock37Step = 69 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) new.
            recoveredBlock37PC := 70.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack2 := protoClass.
            recoveredBlock37PC := 72.
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Local1.
            recoveredBlock37PC := 73.
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) initOn: (recoveredBlock37Stack2) location: (recoveredBlock37Stack3).
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) addIssue: (recoveredBlock37Stack1).
            recoveredBlock37PC := 77.
        ].
        recoveredBlock37Step = 77 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack0.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    recoveredValue8 := handler.
    (recoveredValue6) required: ('File') do: (recoveredValue7) ifNot: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := handler.
    (recoveredValue9) doneIfNot: (recoveredValue10).
    ^nil
! !

"ASDBase.ic method 0x20441044; bytecode file offset 0xd3d948"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readEnumeration: recoveredArg1 dbClass: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := ('Kli') == ('Call_74693').
    recoveredValue3 := recoveredLocal3.
    (recoveredValue3) xmlInit.
    recoveredValue4 := recoveredLocal3.
    (self) registerNewItem: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) readItemT: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) getEntryTag.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := SortedCollection.
    recoveredValue9 := (recoveredValue8) new.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 |
    recoveredBlock53Value0 := recoveredBlock53Arg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) getNNInt: ('index').
    recoveredBlock53Local1 := recoveredBlock53Value1.
    recoveredBlock53Value2 := recoveredLocal2.
    recoveredBlock53Value3 := Association.
    recoveredBlock53Value4 := recoveredBlock53Arg1.
    recoveredBlock53Value5 := (recoveredBlock53Value4) getString: ('value').
    recoveredBlock53Value6 := recoveredBlock53Local1.
    recoveredBlock53Value7 := (recoveredBlock53Value3) key: (recoveredBlock53Value5) value: (recoveredBlock53Value6).
    recoveredBlock53Value8 := (recoveredBlock53Value2) add: (recoveredBlock53Value7).
    recoveredBlock53Value8
].
    (recoveredValue10) multiple: (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := handler.
    (recoveredValue13) doneIfNot: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) modelClass.
    recoveredValue18 := (recoveredValue17) new.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue18) initFromCollection: (recoveredValue19).
    (recoveredValue15) xmlInit: (recoveredValue20).
    ^nil
! !

"ASDBase.ic method 0x20441cb0; bytecode file offset 0xd3e5c0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readItemT: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'WorkspaceTimeStamps'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) readTimeStamp: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMActive.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) readSCMData: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := protoClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) thing.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Comment'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [:block280fe728Arg1 | 
    | block280fe728Value0 block280fe728Value1 |
    block280fe728Value0 := block280fe728Arg1.
    block280fe728Value1 := (block280fe728Value0) cData.
    block280fe728Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := [
    ''
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) xmlComment: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'UUID'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 |
    recoveredBlock60Value0 := protoClass.
    recoveredBlock60Value1 := (recoveredBlock60Value0) thing.
    recoveredBlock60Value2 := recoveredBlock60Arg1.
    recoveredBlock60Value3 := (recoveredBlock60Value1) uuid: (recoveredBlock60Value2).
    recoveredBlock60Value3
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'Notes'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Value0 recoveredBlock79Value1 |
    recoveredBlock79Value0 := recoveredBlock79Arg1.
    recoveredBlock79Value1 := (self) handleNotes: (recoveredBlock79Value0).
    recoveredBlock79Value1
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'CustomerSpecificAttributes'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := (self) readCustomerSpecificAttributes: (recoveredBlock95Value0).
    recoveredBlock95Value1
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20447c0c; bytecode file offset 0xd44518"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readContainer: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ASDContainer.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) xmlInit.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    (self) registerNewItem: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) readItemT: (recoveredValue4).
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := [
    | recoveredBlock33Block40Local1 recoveredBlock33Block40Value0 recoveredBlock33Block40Value1 recoveredBlock33Block40Value2 recoveredBlock33Block40Value3 recoveredBlock33Block40Value4 recoveredBlock33Block40Value5 recoveredBlock33Block40Value6 recoveredBlock33Block40Value7 recoveredBlock33Block40Value8 recoveredBlock33Block40Value9 recoveredBlock33Block40Value10 |
    recoveredBlock33Block40Value0 := recoveredBlock33Arg1.
    recoveredBlock33Block40Value1 := (recoveredBlock33Block40Value0) getString: ('itemName').
    recoveredBlock33Block40Value2 := recoveredBlock33Arg1.
    recoveredBlock33Block40Value3 := (recoveredBlock33Block40Value2) getOID: ('itemOID') default: (nil).
    recoveredBlock33Block40Value4 := (self) itemForPath: (recoveredBlock33Block40Value1) oid: (recoveredBlock33Block40Value3).
    recoveredBlock33Block40Local1 := recoveredBlock33Block40Value4.
    recoveredBlock33Block40Value5 := recoveredLocal1.
    recoveredBlock33Block40Value6 := controller.
    recoveredBlock33Block40Value7 := recoveredBlock33Block40Local1.
    recoveredBlock33Block40Value8 := (recoveredBlock33Block40Value7) xmlOID.
    recoveredBlock33Block40Value9 := (recoveredBlock33Block40Value6) makeDBProxy: (recoveredBlock33Block40Value8).
    recoveredBlock33Block40Value10 := (recoveredBlock33Block40Value5) add: (recoveredBlock33Block40Value9).
    recoveredBlock33Block40Value10
].
            recoveredBlock33PC := 77.
        ].
        recoveredBlock33Step = 77 ifTrue: [
            recoveredBlock33Stack2 := ElementNotFound.
            recoveredBlock33PC := 79.
        ].
        recoveredBlock33Step = 79 ifTrue: [
            recoveredBlock33Stack3 := [:block280fed34Arg1 | 
    | block280fed34Value0 block280fed34Value1 |
    block280fed34Value0 := block280fed34Arg1.
    block280fed34Value1 := (block280fed34Value0) exitWith: (nil).
    block280fed34Value1
].
            recoveredBlock33PC := 81.
        ].
        recoveredBlock33Step = 81 ifTrue: [
            recoveredBlock33PC := 89.
        ].
        recoveredBlock33Step = 89 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) when: (recoveredBlock33Stack2) do: (recoveredBlock33Stack3).
            recoveredBlock33PC := 91.
        ].
        recoveredBlock33Step = 91 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
    (recoveredValue7) multiple: ('Item') do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := handler.
    (recoveredValue9) doneIfNot: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) componentProxies: (recoveredValue12).
    ^nil
! !

"ASDBase.ic method 0x20465e60; bytecode file offset 0xd6276c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
performStep
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4Stack6 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := controller.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) shallReadFolder.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 49].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := Util.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) baseName.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) qualifyBaseName: (recoveredBlock4Stack3).
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack3 := $\.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) parentFrom: (recoveredBlock4Stack2) sep: (recoveredBlock4Stack3).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := ASDXMLImportStepFolder.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack2 := controller.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local2.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack4 := protoClass.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) namespace.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack5 := extension.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) initOn: (recoveredBlock4Stack2) importPath: (recoveredBlock4Stack3) namespace: (recoveredBlock4Stack4) ext: (recoveredBlock4Stack5).
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Local3 := recoveredBlock4Stack1.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local3.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            (recoveredBlock4Stack1) performStep.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) readMainDom.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Local4 := recoveredBlock4Stack0.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local4.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) readComponentMain: (recoveredBlock4Stack1).
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack0 := 'Die'.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack1 := 'TFS_312352'.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) == (recoveredBlock4Stack1).
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            (recoveredBlock4Stack0) handleDefaultProject.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            ^recoveredBlock4Stack0
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70Stack4 recoveredBlock70Stack5 recoveredBlock70Stack6 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := issue.
            recoveredBlock70PC := 78.
        ].
        recoveredBlock70Step = 78 ifTrue: [
            (recoveredBlock70Stack1 == nil) ifTrue: [recoveredBlock70PC := 92] ifFalse: [recoveredBlock70PC := 82].
        ].
        recoveredBlock70Step = 82 ifTrue: [
            recoveredBlock70Stack1 := controller.
            recoveredBlock70PC := 84.
        ].
        recoveredBlock70Step = 84 ifTrue: [
            recoveredBlock70Stack2 := issue.
            recoveredBlock70PC := 86.
        ].
        recoveredBlock70Step = 86 ifTrue: [
            (recoveredBlock70Stack1) addIssue: (recoveredBlock70Stack2).
            recoveredBlock70PC := 88.
        ].
        recoveredBlock70Step = 88 ifTrue: [
            recoveredBlock70PC := 112.
        ].
        recoveredBlock70Step = 92 ifTrue: [
            recoveredBlock70Stack1 := Util.
            recoveredBlock70PC := 94.
        ].
        recoveredBlock70Step = 94 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 95.
        ].
        recoveredBlock70Step = 95 ifTrue: [
            (recoveredBlock70Stack1) writeStackTrace: (recoveredBlock70Stack2).
            recoveredBlock70PC := 97.
        ].
        recoveredBlock70Step = 97 ifTrue: [
            recoveredBlock70Stack1 := controller.
            recoveredBlock70PC := 99.
        ].
        recoveredBlock70Step = 99 ifTrue: [
            recoveredBlock70Stack2 := ASDXMLImportIssueUnhandledException.
            recoveredBlock70PC := 101.
        ].
        recoveredBlock70Step = 101 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) new.
            recoveredBlock70PC := 103.
        ].
        recoveredBlock70Step = 103 ifTrue: [
            recoveredBlock70Stack3 := protoClass.
            recoveredBlock70PC := 105.
        ].
        recoveredBlock70Step = 105 ifTrue: [
            recoveredBlock70Stack4 := recoveredBlock70Arg1.
            recoveredBlock70PC := 106.
        ].
        recoveredBlock70Step = 106 ifTrue: [
            recoveredBlock70Stack5 := true.
            recoveredBlock70PC := 107.
        ].
        recoveredBlock70Step = 107 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) initOn: (recoveredBlock70Stack3) exception: (recoveredBlock70Stack4) fatal: (recoveredBlock70Stack5).
            recoveredBlock70PC := 110.
        ].
        recoveredBlock70Step = 110 ifTrue: [
            (recoveredBlock70Stack1) addIssue: (recoveredBlock70Stack2).
            recoveredBlock70PC := 112.
        ].
        recoveredBlock70Step = 112 ifTrue: [
            recoveredBlock70Stack1 := recoveredBlock70Arg1.
            recoveredBlock70PC := 113.
        ].
        recoveredBlock70Step = 113 ifTrue: [
            recoveredBlock70Stack2 := nil.
            recoveredBlock70PC := 114.
        ].
        recoveredBlock70Step = 114 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) exitWith: (recoveredBlock70Stack2).
            recoveredBlock70PC := 116.
        ].
        recoveredBlock70Step = 116 ifTrue: [
            recoveredBlock70Result := recoveredBlock70Stack1.
            recoveredBlock70Done := true.
        ].
    ].
    recoveredBlock70Result
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204b29f4; bytecode file offset 0xdaf310"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readGenericComponentT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readComponentT: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := protoClass.
    recoveredValue3 := (recoveredValue2) thing.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getString: ('iconName').
    (recoveredValue3) iconName: (recoveredValue5).
    recoveredValue6 := protoClass.
    recoveredValue7 := (recoveredValue6) thing.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getString: ('factoryKey').
    (recoveredValue7) factoryKey: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Local1 recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := OrderedCollection.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) new.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Local1 := recoveredBlock38Stack1.
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Stack2 := 'Component'.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack3 := [:recoveredBlock38Block56Arg1 | 
    | recoveredBlock38Block56Stack0 recoveredBlock38Block56Stack1 recoveredBlock38Block56Stack2 recoveredBlock38Block56Stack3 recoveredBlock38Block56Stack4 recoveredBlock38Block56PC recoveredBlock38Block56Step recoveredBlock38Block56Done recoveredBlock38Block56Result |
    recoveredBlock38Block56Stack0 := self.
    recoveredBlock38Block56PC := 62.
    recoveredBlock38Block56Done := false.
    [recoveredBlock38Block56Done not] whileTrue: [
        recoveredBlock38Block56Step := recoveredBlock38Block56PC.
        recoveredBlock38Block56Step = 62 ifTrue: [
            recoveredBlock38Block56Stack1 := [
    | recoveredBlock38Block56Block62Local1 recoveredBlock38Block56Block62Value0 recoveredBlock38Block56Block62Value1 recoveredBlock38Block56Block62Value2 recoveredBlock38Block56Block62Value3 recoveredBlock38Block56Block62Value4 recoveredBlock38Block56Block62Value5 recoveredBlock38Block56Block62Value6 recoveredBlock38Block56Block62Value7 recoveredBlock38Block56Block62Value8 recoveredBlock38Block56Block62Value9 recoveredBlock38Block56Block62Value10 |
    recoveredBlock38Block56Block62Value0 := recoveredBlock38Block56Arg1.
    recoveredBlock38Block56Block62Value1 := (recoveredBlock38Block56Block62Value0) getString: ('name').
    recoveredBlock38Block56Block62Value2 := recoveredBlock38Block56Arg1.
    recoveredBlock38Block56Block62Value3 := (recoveredBlock38Block56Block62Value2) getOID: ('OID') default: (nil).
    recoveredBlock38Block56Block62Value4 := (self) itemForPath: (recoveredBlock38Block56Block62Value1) oid: (recoveredBlock38Block56Block62Value3).
    recoveredBlock38Block56Block62Local1 := recoveredBlock38Block56Block62Value4.
    recoveredBlock38Block56Block62Value5 := recoveredBlock38Local1.
    recoveredBlock38Block56Block62Value6 := controller.
    recoveredBlock38Block56Block62Value7 := recoveredBlock38Block56Block62Local1.
    recoveredBlock38Block56Block62Value8 := (recoveredBlock38Block56Block62Value7) xmlOID.
    recoveredBlock38Block56Block62Value9 := (recoveredBlock38Block56Block62Value6) makeDBProxy: (recoveredBlock38Block56Block62Value8).
    recoveredBlock38Block56Block62Value10 := (recoveredBlock38Block56Block62Value5) add: (recoveredBlock38Block56Block62Value9).
    recoveredBlock38Block56Block62Value10
].
            recoveredBlock38Block56PC := 98.
        ].
        recoveredBlock38Block56Step = 98 ifTrue: [
            recoveredBlock38Block56Stack2 := ElementNotFound.
            recoveredBlock38Block56PC := 100.
        ].
        recoveredBlock38Block56Step = 100 ifTrue: [
            recoveredBlock38Block56Stack3 := [:block281059e8Arg1 | 
    | block281059e8Value0 block281059e8Value1 |
    block281059e8Value0 := block281059e8Arg1.
    block281059e8Value1 := (block281059e8Value0) exitWith: (nil).
    block281059e8Value1
].
            recoveredBlock38Block56PC := 102.
        ].
        recoveredBlock38Block56Step = 102 ifTrue: [
            recoveredBlock38Block56PC := 111.
        ].
        recoveredBlock38Block56Step = 111 ifTrue: [
            recoveredBlock38Block56Stack1 := (recoveredBlock38Block56Stack1) when: (recoveredBlock38Block56Stack2) do: (recoveredBlock38Block56Stack3).
            recoveredBlock38Block56PC := 113.
        ].
        recoveredBlock38Block56Step = 113 ifTrue: [
            recoveredBlock38Block56Result := recoveredBlock38Block56Stack1.
            recoveredBlock38Block56Done := true.
        ].
    ].
    recoveredBlock38Block56Result
].
            recoveredBlock38PC := 114.
        ].
        recoveredBlock38Step = 114 ifTrue: [
            (recoveredBlock38Stack1) multiple: (recoveredBlock38Stack2) do: (recoveredBlock38Stack3).
            recoveredBlock38PC := 116.
        ].
        recoveredBlock38Step = 116 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 117.
        ].
        recoveredBlock38Step = 117 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Local1.
            recoveredBlock38PC := 120.
        ].
        recoveredBlock38Step = 120 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) size.
            recoveredBlock38PC := 122.
        ].
        recoveredBlock38Step = 122 ifTrue: [
            recoveredBlock38Stack3 := 0.
            recoveredBlock38PC := 124.
        ].
        recoveredBlock38Step = 124 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) > (recoveredBlock38Stack3).
            recoveredBlock38PC := 125.
        ].
        recoveredBlock38Step = 125 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 128] ifFalse: [recoveredBlock38PC := 137].
        ].
        recoveredBlock38Step = 128 ifTrue: [
            recoveredBlock38PC := 129.
        ].
        recoveredBlock38Step = 129 ifTrue: [
            recoveredBlock38Stack1 := protoClass.
            recoveredBlock38PC := 131.
        ].
        recoveredBlock38Step = 131 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) thing.
            recoveredBlock38PC := 132.
        ].
        recoveredBlock38Step = 132 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Local1.
            recoveredBlock38PC := 135.
        ].
        recoveredBlock38Step = 135 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) componentProxies: (recoveredBlock38Stack2).
            recoveredBlock38PC := 137.
        ].
        recoveredBlock38Step = 137 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue10) optional: ('Components') do: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x204c4028; bytecode file offset 0xdc0954"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readConfigurationManagement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) name.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := 'ConfigurationManagement'.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) = (recoveredBlock9Stack2).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 24] ifFalse: [recoveredBlock9PC := 95].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack1 := controller.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isSCMControlledImport.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 66] ifFalse: [recoveredBlock9PC := 30].
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := ASDAscetController.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isSCMActive.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 66] ifFalse: [recoveredBlock9PC := 38].
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack2 := 'versionID'.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9Stack3 := ''.
            recoveredBlock9PC := 43.
        ].
        recoveredBlock9Step = 43 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) getString: (recoveredBlock9Stack2) default: (recoveredBlock9Stack3).
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) notEmpty.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 50] ifFalse: [recoveredBlock9PC := 62].
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack1 := controller.
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            recoveredBlock9Stack2 := ASDXMLImportIssueLegacySCMData.
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) new.
            recoveredBlock9PC := 56.
        ].
        recoveredBlock9Step = 56 ifTrue: [
            recoveredBlock9Stack3 := protoClass.
            recoveredBlock9PC := 58.
        ].
        recoveredBlock9Step = 58 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) initOn: (recoveredBlock9Stack3).
            recoveredBlock9PC := 60.
        ].
        recoveredBlock9Step = 60 ifTrue: [
            (recoveredBlock9Stack1) addIssue: (recoveredBlock9Stack2).
            recoveredBlock9PC := 62.
        ].
        recoveredBlock9Step = 62 ifTrue: [
            recoveredBlock9PC := 95.
        ].
        recoveredBlock9Step = 66 ifTrue: [
            recoveredBlock9Stack1 := 'Rnz'.
            recoveredBlock9PC := 68.
        ].
        recoveredBlock9Step = 68 ifTrue: [
            recoveredBlock9Stack2 := 'DET55366'.
            recoveredBlock9PC := 70.
        ].
        recoveredBlock9Step = 70 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) == (recoveredBlock9Stack2).
            recoveredBlock9PC := 71.
        ].
        recoveredBlock9Step = 71 ifTrue: [
            recoveredBlock9PC := 72.
        ].
        recoveredBlock9Step = 72 ifTrue: [
            recoveredBlock9Stack1 := protoClass.
            recoveredBlock9PC := 74.
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) thing.
            recoveredBlock9PC := 76.
        ].
        recoveredBlock9Step = 76 ifTrue: [
            recoveredBlock9Stack2 := true.
            recoveredBlock9PC := 77.
        ].
        recoveredBlock9Step = 77 ifTrue: [
            (recoveredBlock9Stack1) xmlEdition: (recoveredBlock9Stack2).
            recoveredBlock9PC := 79.
        ].
        recoveredBlock9Step = 79 ifTrue: [
            recoveredBlock9Stack1 := protoClass.
            recoveredBlock9PC := 81.
        ].
        recoveredBlock9Step = 81 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) thing.
            recoveredBlock9PC := 83.
        ].
        recoveredBlock9Step = 83 ifTrue: [
            recoveredBlock9Stack2 := ''.
            recoveredBlock9PC := 85.
        ].
        recoveredBlock9Step = 85 ifTrue: [
            (recoveredBlock9Stack1) xmlVersionString: (recoveredBlock9Stack2).
            recoveredBlock9PC := 87.
        ].
        recoveredBlock9Step = 87 ifTrue: [
            recoveredBlock9Stack1 := protoClass.
            recoveredBlock9PC := 89.
        ].
        recoveredBlock9Step = 89 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) thing.
            recoveredBlock9PC := 91.
        ].
        recoveredBlock9Step = 91 ifTrue: [
            recoveredBlock9Stack2 := ''.
            recoveredBlock9PC := 93.
        ].
        recoveredBlock9Step = 93 ifTrue: [
            (recoveredBlock9Stack1) xmlVersionConfiguration: (recoveredBlock9Stack2).
            recoveredBlock9PC := 95.
        ].
        recoveredBlock9Step = 95 ifTrue: [
            recoveredBlock9Stack1 := 0.
            recoveredBlock9PC := 97.
        ].
        recoveredBlock9Step = 97 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 100.
        ].
        recoveredBlock9Step = 100 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 101.
        ].
        recoveredBlock9Step = 101 ifTrue: [
            recoveredBlock9Stack2 := 'GenericData'.
            recoveredBlock9PC := 103.
        ].
        recoveredBlock9Step = 103 ifTrue: [
            recoveredBlock9Stack3 := [:recoveredBlock9Block103Arg1 | 
    | recoveredBlock9Block103Value0 recoveredBlock9Block103Value1 recoveredBlock9Block103Value2 recoveredBlock9Block103Value3 recoveredBlock9Block103Value4 recoveredBlock9Block103Value5 recoveredBlock9Block103Value6 recoveredBlock9Block103Value7 recoveredBlock9Block103Value8 recoveredBlock9Block103Value9 recoveredBlock9Block103Value10 recoveredBlock9Block103Value11 recoveredBlock9Block103Value12 |
    recoveredBlock9Block103Value0 := recoveredLocal1.
    recoveredBlock9Block103Value1 := (recoveredBlock9Block103Value0) + (1).
    recoveredLocal1 := recoveredBlock9Block103Value1.
    recoveredBlock9Block103Value2 := protoClass.
    recoveredBlock9Block103Value3 := (recoveredBlock9Block103Value2) thing.
    recoveredBlock9Block103Value4 := recoveredBlock9Block103Arg1.
    recoveredBlock9Block103Value5 := (recoveredBlock9Block103Value4) asXMLString.
    recoveredBlock9Block103Value6 := recoveredBlock9Block103Arg1.
    recoveredBlock9Block103Value7 := recoveredLocal1.
    recoveredBlock9Block103Value8 := (recoveredBlock9Block103Value7) asString.
    recoveredBlock9Block103Value9 := ('ASCETDefaultKey_') , (recoveredBlock9Block103Value8).
    recoveredBlock9Block103Value10 := (recoveredBlock9Block103Value9) asSymbol.
    recoveredBlock9Block103Value11 := (recoveredBlock9Block103Value6) getString: ('name') default: (recoveredBlock9Block103Value10).
    recoveredBlock9Block103Value12 := (recoveredBlock9Block103Value3) configurationManagementData: (recoveredBlock9Block103Value5) key: (recoveredBlock9Block103Value11).
    recoveredBlock9Block103Value12
].
            recoveredBlock9PC := 143.
        ].
        recoveredBlock9Step = 143 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) multiple: (recoveredBlock9Stack2) do: (recoveredBlock9Stack3).
            recoveredBlock9PC := 145.
        ].
        recoveredBlock9Step = 145 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (self) metaAt: (#('ComponentMain' 'CustomerSpecificAttributes' 'ConfigurationManagement')) or: (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204d9050; bytecode file offset 0xdd598c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readAsap2Item: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGAsap2Item.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) xmlInit.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) registerNewItem: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) readItemT: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Local3 recoveredBlock19Local4 recoveredBlock19Local5 recoveredBlock19Local6 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) readFileReferenceT: (recoveredBlock19Stack1).
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack0.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack0 := 'Die'.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack1 := 'Call_101098'.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) == (recoveredBlock19Stack1).
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack0 := ReadStream.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := CfsReadFileStream.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local5.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) openSingleByte: (recoveredBlock19Stack2).
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) upToEnd.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) on: (recoveredBlock19Stack1).
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Stack0.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack0 := 'todo'.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) notNil.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) nextLine.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack0.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack0 := ASAP2BaseObject.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            (recoveredBlock19Stack0) initializeClass.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack0 := AMLBaseObject.
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            (recoveredBlock19Stack0) initializeClass.
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            recoveredBlock19Stack0 := ASAP2Project.
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            (recoveredBlock19Stack0) errorLogOn.
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack0 := ASAP2Project.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local6.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) loadFrom: (recoveredBlock19Stack1).
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack0.
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            (recoveredBlock19Stack0) close.
            recoveredBlock19PC := 86.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local1.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            (recoveredBlock19Stack0) close.
            recoveredBlock19PC := 89.
        ].
        recoveredBlock19Step = 89 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local2.
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 106] ifFalse: [recoveredBlock19PC := 94].
        ].
        recoveredBlock19Step = 94 ifTrue: [
            recoveredBlock19Stack0 := ASAP2Project.
            recoveredBlock19PC := 96.
        ].
        recoveredBlock19Step = 96 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) ErrorLog.
            recoveredBlock19PC := 98.
        ].
        recoveredBlock19Step = 98 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) errorCount.
            recoveredBlock19PC := 100.
        ].
        recoveredBlock19Step = 100 ifTrue: [
            recoveredBlock19Stack1 := 0.
            recoveredBlock19PC := 102.
        ].
        recoveredBlock19Step = 102 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) > (recoveredBlock19Stack1).
            recoveredBlock19PC := 103.
        ].
        recoveredBlock19Step = 103 ifTrue: [
            (recoveredBlock19Stack0) ifTrue: [recoveredBlock19PC := 106] ifFalse: [recoveredBlock19PC := 122].
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19Stack0 := controller.
            recoveredBlock19PC := 108.
        ].
        recoveredBlock19Step = 108 ifTrue: [
            recoveredBlock19Stack1 := ASDXMLImportIssueBadA2LFile.
            recoveredBlock19PC := 110.
        ].
        recoveredBlock19Step = 110 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) new.
            recoveredBlock19PC := 111.
        ].
        recoveredBlock19Step = 111 ifTrue: [
            recoveredBlock19Stack2 := protoClass.
            recoveredBlock19PC := 113.
        ].
        recoveredBlock19Step = 113 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local5.
            recoveredBlock19PC := 115.
        ].
        recoveredBlock19Step = 115 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) initOn: (recoveredBlock19Stack2) a2lFile: (recoveredBlock19Stack3).
            recoveredBlock19PC := 117.
        ].
        recoveredBlock19Step = 117 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) addIssue: (recoveredBlock19Stack1).
            recoveredBlock19PC := 119.
        ].
        recoveredBlock19Step = 119 ifTrue: [
            recoveredBlock19PC := 127.
        ].
        recoveredBlock19Step = 122 ifTrue: [
            recoveredBlock19Stack0 := protoClass.
            recoveredBlock19PC := 124.
        ].
        recoveredBlock19Step = 124 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 125.
        ].
        recoveredBlock19Step = 125 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) asap2Item: (recoveredBlock19Stack1).
            recoveredBlock19PC := 127.
        ].
        recoveredBlock19Step = 127 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack0.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    recoveredValue7 := handler.
    (recoveredValue5) required: ('File') do: (recoveredValue6) ifNot: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 recoveredBlock136Value3 recoveredBlock136Value4 |
    recoveredBlock136Value0 := protoClass.
    recoveredBlock136Value1 := (recoveredBlock136Value0) thing.
    recoveredBlock136Value2 := recoveredBlock136Arg1.
    recoveredBlock136Value3 := (recoveredBlock136Value2) cData.
    recoveredBlock136Value4 := (recoveredBlock136Value1) a2lFileName: (recoveredBlock136Value3).
    recoveredBlock136Value4
].
    recoveredValue10 := handler.
    (recoveredValue8) required: ('OriginalLocation') do: (recoveredValue9) ifNot: (recoveredValue10).
    ^nil
! !

"ASDBase.ic method 0x204e1e48; bytecode file offset 0xdde764"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readFormula: recoveredArg1 element: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'code'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'Call_73070'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGFormula.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) formula: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ASDXMLImportIssueInvalidFormula.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) code: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := SGFormula.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUnvalidated: (recoveredStack2) formula: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'Formal'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Local1 recoveredBlock71Local2 recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 recoveredBlock71Value6 recoveredBlock71Value7 recoveredBlock71Value8 recoveredBlock71Value9 recoveredBlock71Value10 recoveredBlock71Value11 recoveredBlock71Value12 |
    recoveredBlock71Value0 := recoveredBlock71Arg1.
    recoveredBlock71Value1 := (recoveredBlock71Value0) getNMToken: ('name').
    recoveredBlock71Local2 := recoveredBlock71Value1.
    recoveredBlock71Value2 := recoveredLocal2.
    recoveredBlock71Value3 := (recoveredBlock71Value2) identifiers.
    recoveredBlock71Value4 := [:recoveredBlock71Block93Arg1 | 
    | recoveredBlock71Block93Value0 recoveredBlock71Block93Value1 recoveredBlock71Block93Value2 recoveredBlock71Block93Value3 |
    recoveredBlock71Block93Value0 := recoveredBlock71Block93Arg1.
    recoveredBlock71Block93Value1 := (recoveredBlock71Block93Value0) identifier.
    recoveredBlock71Block93Value2 := recoveredBlock71Local2.
    recoveredBlock71Block93Value3 := (recoveredBlock71Block93Value1) = (recoveredBlock71Block93Value2).
    recoveredBlock71Block93Value3
].
    recoveredBlock71Value5 := [
    | recoveredBlock71Block108Value0 recoveredBlock71Block108Value1 recoveredBlock71Block108Value2 recoveredBlock71Block108Value3 |
    recoveredBlock71Block108Value0 := SGIdentifier.
    recoveredBlock71Block108Value1 := (recoveredBlock71Block108Value0) new.
    recoveredBlock71Block108Value2 := recoveredBlock71Block108Value1.
    recoveredBlock71Block108Value3 := recoveredBlock71Local2.
    (recoveredBlock71Block108Value2) identifier: (recoveredBlock71Block108Value3).
    recoveredBlock71Block108Value1
].
    recoveredBlock71Value6 := (recoveredBlock71Value3) detect: (recoveredBlock71Value4) ifNone: (recoveredBlock71Value5).
    recoveredBlock71Local1 := recoveredBlock71Value6.
    recoveredBlock71Value7 := recoveredBlock71Local1.
    recoveredBlock71Value8 := recoveredBlock71Arg1.
    recoveredBlock71Value9 := controller.
    recoveredBlock71Value10 := (recoveredBlock71Value9) createOID: (nil).
    recoveredBlock71Value11 := (recoveredBlock71Value8) getLocalID: ('OID') default: (recoveredBlock71Value10).
    recoveredBlock71Value12 := (recoveredBlock71Value7) aliasName: (recoveredBlock71Value11).
    recoveredBlock71Value12
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2050c6c8; bytecode file offset 0xe09000"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readCustomerSpecificAttributes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) readConfigurationManagement: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := protoClass.
    recoveredBlock14Value1 := (recoveredBlock14Value0) thing.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (recoveredBlock14Value2) getString: ('requirementsID') default: ('').
    (recoveredBlock14Value1) xmlRequirementID: (recoveredBlock14Value3).
    recoveredLocal1 := 0.
    recoveredBlock14Value4 := recoveredBlock14Arg1.
    recoveredBlock14Value5 := [:recoveredBlock14Block40Arg1 | 
    | recoveredBlock14Block40Local1 recoveredBlock14Block40Local2 recoveredBlock14Block40Value0 recoveredBlock14Block40Value1 recoveredBlock14Block40Value2 recoveredBlock14Block40Value3 recoveredBlock14Block40Value4 recoveredBlock14Block40Value5 recoveredBlock14Block40Value6 recoveredBlock14Block40Value7 recoveredBlock14Block40Value8 recoveredBlock14Block40Value9 recoveredBlock14Block40Value10 recoveredBlock14Block40Value11 recoveredBlock14Block40Value12 recoveredBlock14Block40Value13 recoveredBlock14Block40Value14 recoveredBlock14Block40Value15 recoveredBlock14Block40Value16 recoveredBlock14Block40Value17 |
    recoveredBlock14Block40Value0 := ('Die') == ('Call_100661').
    recoveredBlock14Block40Value1 := recoveredBlock14Block40Arg1.
    recoveredBlock14Block40Value2 := recoveredLocal1.
    recoveredBlock14Block40Value3 := (recoveredBlock14Block40Value2) asString.
    recoveredBlock14Block40Value4 := ('ASCETDefaultKey_') , (recoveredBlock14Block40Value3).
    recoveredBlock14Block40Value5 := (recoveredBlock14Block40Value4) asSymbol.
    recoveredBlock14Block40Value6 := (recoveredBlock14Block40Value1) getString: ('name') default: (recoveredBlock14Block40Value5).
    recoveredBlock14Block40Local2 := recoveredBlock14Block40Value6.
    recoveredBlock14Block40Value7 := recoveredLocal1.
    recoveredBlock14Block40Value8 := (recoveredBlock14Block40Value7) + (1).
    recoveredLocal1 := recoveredBlock14Block40Value8.
    recoveredBlock14Block40Value9 := protoClass.
    recoveredBlock14Block40Value10 := (recoveredBlock14Block40Value9) thing.
    recoveredBlock14Block40Value11 := (recoveredBlock14Block40Value10) getOrCreateCustomerDataBasic.
    recoveredBlock14Block40Value12 := (recoveredBlock14Block40Value11) getOrCreateDataInformationForComponent.
    recoveredBlock14Block40Local1 := recoveredBlock14Block40Value12.
    recoveredBlock14Block40Value13 := recoveredBlock14Block40Local1.
    recoveredBlock14Block40Value14 := recoveredBlock14Block40Arg1.
    recoveredBlock14Block40Value15 := (recoveredBlock14Block40Value14) asXMLString.
    recoveredBlock14Block40Value16 := recoveredBlock14Block40Local2.
    recoveredBlock14Block40Value17 := (recoveredBlock14Block40Value13) requirementsManagementData: (recoveredBlock14Block40Value15) key: (recoveredBlock14Block40Value16).
    recoveredBlock14Block40Value17
].
    recoveredBlock14Value6 := (recoveredBlock14Value4) multiple: ('GenericData') do: (recoveredBlock14Value5).
    recoveredBlock14Value6
].
    (recoveredValue1) optional: ('RequirementsManagement') do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103Stack5 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack2 := 'read'.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack3 := true.
            recoveredBlock103PC := 114.
        ].
        recoveredBlock103Step = 114 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) getBoolean: (recoveredBlock103Stack2) default: (recoveredBlock103Stack3).
            recoveredBlock103PC := 116.
        ].
        recoveredBlock103Step = 116 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 124] ifFalse: [recoveredBlock103PC := 120].
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103Stack1 := protoClass.
            recoveredBlock103PC := 122.
        ].
        recoveredBlock103Step = 122 ifTrue: [
            (recoveredBlock103Stack1) denyRead.
            recoveredBlock103PC := 124.
        ].
        recoveredBlock103Step = 124 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            recoveredBlock103Stack2 := 'write'.
            recoveredBlock103PC := 127.
        ].
        recoveredBlock103Step = 127 ifTrue: [
            recoveredBlock103Stack3 := true.
            recoveredBlock103PC := 128.
        ].
        recoveredBlock103Step = 128 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) getBoolean: (recoveredBlock103Stack2) default: (recoveredBlock103Stack3).
            recoveredBlock103PC := 130.
        ].
        recoveredBlock103Step = 130 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 138] ifFalse: [recoveredBlock103PC := 134].
        ].
        recoveredBlock103Step = 134 ifTrue: [
            recoveredBlock103Stack1 := protoClass.
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            (recoveredBlock103Stack1) denyWrite.
            recoveredBlock103PC := 138.
        ].
        recoveredBlock103Step = 138 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 139.
        ].
        recoveredBlock103Step = 139 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 140.
        ].
        recoveredBlock103Step = 140 ifTrue: [
            recoveredBlock103Stack3 := 'import'.
            recoveredBlock103PC := 142.
        ].
        recoveredBlock103Step = 142 ifTrue: [
            recoveredBlock103Stack4 := true.
            recoveredBlock103PC := 143.
        ].
        recoveredBlock103Step = 143 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) getBoolean: (recoveredBlock103Stack3) default: (recoveredBlock103Stack4).
            recoveredBlock103PC := 145.
        ].
        recoveredBlock103Step = 145 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 155] ifFalse: [recoveredBlock103PC := 148].
        ].
        recoveredBlock103Step = 148 ifTrue: [
            recoveredBlock103PC := 149.
        ].
        recoveredBlock103Step = 149 ifTrue: [
            recoveredBlock103Stack1 := protoClass.
            recoveredBlock103PC := 151.
        ].
        recoveredBlock103Step = 151 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) thing.
            recoveredBlock103PC := 152.
        ].
        recoveredBlock103Step = 152 ifTrue: [
            recoveredBlock103Stack2 := true.
            recoveredBlock103PC := 153.
        ].
        recoveredBlock103Step = 153 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) disallowOverwrite: (recoveredBlock103Stack2).
            recoveredBlock103PC := 155.
        ].
        recoveredBlock103Step = 155 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
    (self) metaAt: (#('ComponentMain' 'CustomerSpecificAttributes' 'AccessManagement')) or: (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 recoveredBlock163Value2 recoveredBlock163Value3 recoveredBlock163Value4 |
    recoveredBlock163Value0 := protoClass.
    recoveredBlock163Value1 := (recoveredBlock163Value0) thing.
    recoveredBlock163Value2 := (recoveredBlock163Value1) xmlCustomerDataBasic.
    recoveredBlock163Value3 := recoveredBlock163Arg1.
    recoveredBlock163Value4 := (recoveredBlock163Value2) component: (recoveredBlock163Value3).
    recoveredBlock163Value4
].
    (self) readCustomerDatas: (recoveredValue5) storeBlock: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2051f094; bytecode file offset 0xe1b9e0"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readComponentMain: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredStack18 recoveredStack19 recoveredStack20 recoveredStack21 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'ComponentMain'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) unexpectedElement: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Component'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (self) readComponentT: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 'AtomicSoftwareComponent'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (self) readAtomicSoftwareComponentT: (recoveredBlock34Value0).
    recoveredBlock34Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := 'GenericComponent'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack7 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := (self) readGenericComponentT: (recoveredBlock46Value0).
    recoveredBlock46Value1
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack8 := 'Enumeration'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack9 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := SGEnumerationDB.
    recoveredBlock58Value2 := (self) readEnumeration: (recoveredBlock58Value0) dbClass: (recoveredBlock58Value1).
    recoveredBlock58Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack10 := 'ModeGroup'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack11 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := ARModeGroupDB.
    recoveredBlock72Value2 := (self) readEnumeration: (recoveredBlock72Value0) dbClass: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack12 := 'Image'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack13 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 |
    recoveredBlock86Value0 := recoveredBlock86Arg1.
    recoveredBlock86Value1 := (self) readImage: (recoveredBlock86Value0).
    recoveredBlock86Value1
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack14 := 'Signal'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack15 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 |
    recoveredBlock98Value0 := recoveredBlock98Arg1.
    recoveredBlock98Value1 := (self) readSignal: (recoveredBlock98Value0).
    recoveredBlock98Value1
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack16 := 'Asap2Item'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack17 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Value0 recoveredBlock110Value1 |
    recoveredBlock110Value0 := recoveredBlock110Arg1.
    recoveredBlock110Value1 := (self) readAsap2Item: (recoveredBlock110Value0).
    recoveredBlock110Value1
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack18 := 'Container'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack19 := [:recoveredBlock122Arg1 | 
    | recoveredBlock122Value0 recoveredBlock122Value1 |
    recoveredBlock122Value0 := recoveredBlock122Arg1.
    recoveredBlock122Value1 := (self) readContainer: (recoveredBlock122Value0).
    recoveredBlock122Value1
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack20 := handler.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) choice: (recoveredStack2) do: (recoveredStack3) choice: (recoveredStack4) do: (recoveredStack5) choice: (recoveredStack6) do: (recoveredStack7) choice: (recoveredStack8) do: (recoveredStack9) choice: (recoveredStack10) do: (recoveredStack11) choice: (recoveredStack12) do: (recoveredStack13) choice: (recoveredStack14) do: (recoveredStack15) choice: (recoveredStack16) do: (recoveredStack17) choice: (recoveredStack18) do: (recoveredStack19) ifNot: (recoveredStack20).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'WorkspaceTimeStamps'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) restoreTimeStamp.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := protoClass.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) thing.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'toolVersion'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) setToolVersionOfAMDImportFileTo: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := 'CheckSum'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := [:block2810c2d0Arg1 | 
    | block2810c2d0Value0 |
    block2810c2d0Value0 := ('csIgnored') notNil.
    block2810c2d0Value0
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'Signature'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := [:block2810c2f4Arg1 | 
    | block2810c2f4Value0 |
    block2810c2f4Value0 := ('ignored') notNil.
    block2810c2f4Value0
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205385f8; bytecode file offset 0xe34f18"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementT: recoveredArg1 name: recoveredArg2 defaultClass: recoveredArg3 parent: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ignore'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNMToken: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'Comment'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [:block2810db6cArg1 | 
    | block2810db6cValue0 block2810db6cValue1 |
    block2810db6cValue0 := block2810db6cArg1.
    block2810db6cValue1 := (block2810db6cValue0) cData.
    block2810db6cValue1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 'ElementAttributes'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 recoveredBlock75Value4 recoveredBlock75Value5 recoveredBlock75Value6 recoveredBlock75Value7 recoveredBlock75Value8 recoveredBlock75Value9 |
    recoveredBlock75Value0 := recoveredBlock75Arg1.
    recoveredBlock75Value1 := recoveredArg3.
    recoveredBlock75Value2 := recoveredLocal1.
    recoveredBlock75Value3 := (self) readElementAttributesT: (recoveredBlock75Value0) defaultClass: (recoveredBlock75Value1) protoEl: (recoveredBlock75Value2).
    recoveredLocal2 := recoveredBlock75Value3.
    recoveredBlock75Value4 := recoveredLocal2.
    recoveredBlock75Value5 := recoveredArg2.
    (recoveredBlock75Value4) elementNameBasic: (recoveredBlock75Value5).
    recoveredBlock75Value6 := recoveredLocal2.
    recoveredBlock75Value7 := recoveredLocal1.
    recoveredBlock75Value8 := (recoveredBlock75Value7) xmlOID.
    recoveredBlock75Value9 := (recoveredBlock75Value6) aliasName: (recoveredBlock75Value8).
    recoveredBlock75Value9
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'UUID'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 |
    recoveredBlock127Value0 := recoveredLocal2.
    recoveredBlock127Value1 := recoveredBlock127Arg1.
    recoveredBlock127Value2 := (recoveredBlock127Value0) uuid: (recoveredBlock127Value1).
    recoveredBlock127Value2
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) comment: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAliasDummy.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) aliasName: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) thing: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := [:recoveredBlock177Arg1 | 
    | recoveredBlock177Value0 recoveredBlock177Value1 recoveredBlock177Value2 recoveredBlock177Value3 |
    recoveredBlock177Value0 := recoveredArg4.
    recoveredBlock177Value1 := recoveredBlock177Arg1.
    recoveredBlock177Value2 := recoveredLocal1.
    recoveredBlock177Value3 := (recoveredBlock177Value0) setCustomerData: (recoveredBlock177Value1) forVariable: (recoveredBlock177Value2).
    recoveredBlock177Value3
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) readCustomerDatas: (recoveredStack1) storeBlock: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205391b4; bytecode file offset 0xe35ae8"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readSignal: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGSignalItem.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) xmlInit.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) registerNewItem: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) readItemT: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (self) readFileReferenceT: (recoveredBlock27Value0).
    recoveredBlock27Local2 := recoveredBlock27Value1.
    recoveredBlock27Value2 := [
    | recoveredBlock27Block42Local1 recoveredBlock27Block42Local2 recoveredBlock27Block42Stack0 recoveredBlock27Block42Stack1 recoveredBlock27Block42Stack2 recoveredBlock27Block42Stack3 recoveredBlock27Block42Stack4 recoveredBlock27Block42Stack5 recoveredBlock27Block42PC recoveredBlock27Block42Step recoveredBlock27Block42Done recoveredBlock27Block42Result |
    recoveredBlock27Block42Stack0 := self.
    recoveredBlock27Block42PC := 48.
    recoveredBlock27Block42Done := false.
    [recoveredBlock27Block42Done not] whileTrue: [
        recoveredBlock27Block42Step := recoveredBlock27Block42PC.
        recoveredBlock27Block42Step = 48 ifTrue: [
            recoveredBlock27Block42Stack1 := ETASItemFile.
            recoveredBlock27Block42PC := 50.
        ].
        recoveredBlock27Block42Step = 50 ifTrue: [
            recoveredBlock27Block42Stack2 := recoveredBlock27Local2.
            recoveredBlock27Block42PC := 53.
        ].
        recoveredBlock27Block42Step = 53 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) createFileFrom: (recoveredBlock27Block42Stack2).
            recoveredBlock27Block42PC := 55.
        ].
        recoveredBlock27Block42Step = 55 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Block42Stack1.
            recoveredBlock27Block42PC := 58.
        ].
        recoveredBlock27Block42Step = 58 ifTrue: [
            recoveredBlock27Block42Stack1 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 61.
        ].
        recoveredBlock27Block42Step = 61 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) isError.
            recoveredBlock27Block42PC := 63.
        ].
        recoveredBlock27Block42Step = 63 ifTrue: [
            (recoveredBlock27Block42Stack1) ifTrue: [recoveredBlock27Block42PC := 66] ifFalse: [recoveredBlock27Block42PC := 84].
        ].
        recoveredBlock27Block42Step = 66 ifTrue: [
            recoveredBlock27Block42Stack1 := controller.
            recoveredBlock27Block42PC := 68.
        ].
        recoveredBlock27Block42Step = 68 ifTrue: [
            recoveredBlock27Block42Stack2 := ASDXMLImportIssueUnreadableFile.
            recoveredBlock27Block42PC := 70.
        ].
        recoveredBlock27Block42Step = 70 ifTrue: [
            recoveredBlock27Block42Stack2 := (recoveredBlock27Block42Stack2) new.
            recoveredBlock27Block42PC := 71.
        ].
        recoveredBlock27Block42Step = 71 ifTrue: [
            recoveredBlock27Block42Stack3 := protoClass.
            recoveredBlock27Block42PC := 73.
        ].
        recoveredBlock27Block42Step = 73 ifTrue: [
            recoveredBlock27Block42Stack4 := recoveredBlock27Local2.
            recoveredBlock27Block42PC := 76.
        ].
        recoveredBlock27Block42Step = 76 ifTrue: [
            recoveredBlock27Block42Stack2 := (recoveredBlock27Block42Stack2) initOn: (recoveredBlock27Block42Stack3) location: (recoveredBlock27Block42Stack4).
            recoveredBlock27Block42PC := 78.
        ].
        recoveredBlock27Block42Step = 78 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) addIssue: (recoveredBlock27Block42Stack2).
            recoveredBlock27Block42PC := 80.
        ].
        recoveredBlock27Block42Step = 80 ifTrue: [
            recoveredBlock27Block42PC := 172.
        ].
        recoveredBlock27Block42Step = 84 ifTrue: [
            recoveredBlock27Block42Stack1 := self.
            recoveredBlock27Block42PC := 85.
        ].
        recoveredBlock27Block42Step = 85 ifTrue: [
            recoveredBlock27Block42Stack2 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 88.
        ].
        recoveredBlock27Block42Step = 88 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) internFile: (recoveredBlock27Block42Stack2).
            recoveredBlock27Block42PC := 90.
        ].
        recoveredBlock27Block42Step = 90 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Block42Stack1.
            recoveredBlock27Block42PC := 93.
        ].
        recoveredBlock27Block42Step = 93 ifTrue: [
            recoveredBlock27Block42Stack1 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 96.
        ].
        recoveredBlock27Block42Step = 96 ifTrue: [
            (recoveredBlock27Block42Stack1) createDefaultTimeChannel.
            recoveredBlock27Block42PC := 98.
        ].
        recoveredBlock27Block42Step = 98 ifTrue: [
            recoveredBlock27Block42Stack1 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 101.
        ].
        recoveredBlock27Block42Step = 101 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) groupCnt.
            recoveredBlock27Block42PC := 103.
        ].
        recoveredBlock27Block42Step = 103 ifTrue: [
            recoveredBlock27Block42Stack2 := 1.
            recoveredBlock27Block42PC := 105.
        ].
        recoveredBlock27Block42Step = 105 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) > (recoveredBlock27Block42Stack2).
            recoveredBlock27Block42PC := 106.
        ].
        recoveredBlock27Block42Step = 106 ifTrue: [
            (recoveredBlock27Block42Stack1) ifTrue: [recoveredBlock27Block42PC := 110] ifFalse: [recoveredBlock27Block42PC := 123].
        ].
        recoveredBlock27Block42Step = 110 ifTrue: [
            recoveredBlock27Block42Stack1 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 113.
        ].
        recoveredBlock27Block42Step = 113 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) groupClass.
            recoveredBlock27Block42PC := 115.
        ].
        recoveredBlock27Block42Step = 115 ifTrue: [
            recoveredBlock27Block42Stack2 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 118.
        ].
        recoveredBlock27Block42Step = 118 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) createWithItemFile: (recoveredBlock27Block42Stack2).
            recoveredBlock27Block42PC := 120.
        ].
        recoveredBlock27Block42Step = 120 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Block42Stack1.
            recoveredBlock27Block42PC := 123.
        ].
        recoveredBlock27Block42Step = 123 ifTrue: [
            recoveredBlock27Block42Stack1 := recoveredLocal1.
            recoveredBlock27Block42PC := 126.
        ].
        recoveredBlock27Block42Step = 126 ifTrue: [
            recoveredBlock27Block42Stack2 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 129.
        ].
        recoveredBlock27Block42Step = 129 ifTrue: [
            (recoveredBlock27Block42Stack1) fileObject: (recoveredBlock27Block42Stack2).
            recoveredBlock27Block42PC := 131.
        ].
        recoveredBlock27Block42Step = 131 ifTrue: [
            recoveredBlock27Block42Stack1 := nil.
            recoveredBlock27Block42PC := 132.
        ].
        recoveredBlock27Block42Step = 132 ifTrue: [
            recoveredBlock27Block42Stack2 := recoveredLocal1.
            recoveredBlock27Block42PC := 135.
        ].
        recoveredBlock27Block42Step = 135 ifTrue: [
            recoveredBlock27Block42Stack2 := (recoveredBlock27Block42Stack2) isMDFFormat.
            recoveredBlock27Block42PC := 137.
        ].
        recoveredBlock27Block42Step = 137 ifTrue: [
            (recoveredBlock27Block42Stack2) ifTrue: [recoveredBlock27Block42PC := 140] ifFalse: [recoveredBlock27Block42PC := 172].
        ].
        recoveredBlock27Block42Step = 140 ifTrue: [
            recoveredBlock27Block42Stack2 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 143.
        ].
        recoveredBlock27Block42Step = 143 ifTrue: [
            recoveredBlock27Block42Stack2 := (recoveredBlock27Block42Stack2) unsupportedFormatVersion.
            recoveredBlock27Block42PC := 145.
        ].
        recoveredBlock27Block42Step = 145 ifTrue: [
            (recoveredBlock27Block42Stack2) ifTrue: [recoveredBlock27Block42PC := 148] ifFalse: [recoveredBlock27Block42PC := 172].
        ].
        recoveredBlock27Block42Step = 148 ifTrue: [
            recoveredBlock27Block42PC := 149.
        ].
        recoveredBlock27Block42Step = 149 ifTrue: [
            recoveredBlock27Block42Stack1 := recoveredBlock27Local1.
            recoveredBlock27Block42PC := 152.
        ].
        recoveredBlock27Block42Step = 152 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) formatVersionString.
            recoveredBlock27Block42PC := 154.
        ].
        recoveredBlock27Block42Step = 154 ifTrue: [
            recoveredBlock27Block42Local1 := recoveredBlock27Block42Stack1.
            recoveredBlock27Block42PC := 155.
        ].
        recoveredBlock27Block42Step = 155 ifTrue: [
            recoveredBlock27Block42Stack1 := SGMonitorStreamDummy.
            recoveredBlock27Block42PC := 157.
        ].
        recoveredBlock27Block42Step = 157 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) create.
            recoveredBlock27Block42PC := 159.
        ].
        recoveredBlock27Block42Step = 159 ifTrue: [
            recoveredBlock27Block42Stack2 := '\Imported MDF data with version %1.\ASCET supports MDF V2.0 only.\Not all signal attributes/features will be supported.\'.
            recoveredBlock27Block42PC := 161.
        ].
        recoveredBlock27Block42Step = 161 ifTrue: [
            recoveredBlock27Block42Stack2 := (recoveredBlock27Block42Stack2) withCrs.
            recoveredBlock27Block42PC := 163.
        ].
        recoveredBlock27Block42Step = 163 ifTrue: [
            recoveredBlock27Block42Stack3 := recoveredBlock27Block42Local1.
            recoveredBlock27Block42PC := 164.
        ].
        recoveredBlock27Block42Step = 164 ifTrue: [
            recoveredBlock27Block42Stack2 := (recoveredBlock27Block42Stack2) bindWith: (recoveredBlock27Block42Stack3).
            recoveredBlock27Block42PC := 166.
        ].
        recoveredBlock27Block42Step = 166 ifTrue: [
            recoveredBlock27Block42Stack1 := (recoveredBlock27Block42Stack1) addWarningText: (recoveredBlock27Block42Stack2).
            recoveredBlock27Block42PC := 168.
        ].
        recoveredBlock27Block42Step = 168 ifTrue: [
            recoveredBlock27Block42Stack2 := nil.
            recoveredBlock27Block42PC := 169.
        ].
        recoveredBlock27Block42Step = 169 ifTrue: [
            recoveredBlock27Block42Stack3 := recoveredBlock27Block42Stack2.
            recoveredBlock27Block42PC := 170.
        ].
        recoveredBlock27Block42Step = 170 ifTrue: [
            recoveredBlock27Block42Local2 := recoveredBlock27Block42Stack3.
            recoveredBlock27Block42PC := 171.
        ].
        recoveredBlock27Block42Step = 171 ifTrue: [
            recoveredBlock27Block42Local1 := recoveredBlock27Block42Stack2.
            recoveredBlock27Block42PC := 172.
        ].
        recoveredBlock27Block42Step = 172 ifTrue: [
            recoveredBlock27Block42Result := recoveredBlock27Block42Stack1.
            recoveredBlock27Block42Done := true.
        ].
    ].
    recoveredBlock27Block42Result
].
    recoveredBlock27Value3 := ExError.
    recoveredBlock27Value4 := [:recoveredBlock27Block175Arg1 | 
    | recoveredBlock27Block175Value0 recoveredBlock27Block175Value1 recoveredBlock27Block175Value2 recoveredBlock27Block175Value3 recoveredBlock27Block175Value4 recoveredBlock27Block175Value5 recoveredBlock27Block175Value6 recoveredBlock27Block175Value7 |
    recoveredBlock27Block175Value0 := controller.
    recoveredBlock27Block175Value1 := ASDXMLImportIssueUnreadableFile.
    recoveredBlock27Block175Value2 := (recoveredBlock27Block175Value1) new.
    recoveredBlock27Block175Value3 := protoClass.
    recoveredBlock27Block175Value4 := recoveredBlock27Local2.
    recoveredBlock27Block175Value5 := (recoveredBlock27Block175Value2) initOn: (recoveredBlock27Block175Value3) location: (recoveredBlock27Block175Value4).
    (recoveredBlock27Block175Value0) addIssue: (recoveredBlock27Block175Value5).
    recoveredBlock27Block175Value6 := recoveredBlock27Block175Arg1.
    recoveredBlock27Block175Value7 := (recoveredBlock27Block175Value6) exitWith: (nil).
    recoveredBlock27Block175Value7
].
    recoveredBlock27Value5 := (recoveredBlock27Value2) when: (recoveredBlock27Value3) do: (recoveredBlock27Value4).
    recoveredBlock27Value5
].
    (recoveredValue5) optional: ('File') do: (recoveredValue6).
    ^nil
! !

"ASDBase.ic method 0x20631608; bytecode file offset 0xf2dfec"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readComponentT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            groupedElements := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNameDict.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (LookupTable new) elementCount: (10); keyArray: (#(nil nil 'BlockDiagram' 'Project' 'AtomicSoftwareComponent' nil 'CCode' nil 'ConditionalTable' nil nil nil nil 'ESDL' 'StateMachine' nil 'LayoutOnly' nil nil nil 'BooleanTable' 'MethodInterface')); valueArray: (#(nil nil SGBdSpecification SGProjectSpecification ARBdSpecification nil SGCCodeSpecification nil SGConditionalTableSpecification nil nil nil nil SGASDLSpecification SGSmSpecification nil nil nil nil nil SGBooleanTableSpecification ASDMethodInterfaceSpecification)); yourself.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (LookupTable new) elementCount: (3); keyArray: (#('AUTOSAR_CalibrationInterface' 'AUTOSAR_SenderReceiverInterface' nil nil 'AUTOSAR_NVDataInterface' nil nil nil nil nil nil)); valueArray: (#('Calibration' 'SenderReceiver' nil nil 'NVData' nil nil nil nil nil nil)); yourself.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNMToken: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'componentType'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEnum: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            componentType := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := componentType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueCantProcess.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := protoClass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseName.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := '.main.'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := extension.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) qualifyBaseName: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 'Invalid component type'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) file: (recoveredStack3) reason: (recoveredStack4) fatal: (recoveredStack5).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'specificationType'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            specType := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := specType.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := componentType.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := specType.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueIllegalSpecificationType.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := protoClass.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) fatal: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := componentType.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlInit.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) registerNewItem: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) isARDataInterface.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 177].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) interfaceType: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) readItemT: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := protoClass.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := specType.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) specType: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'Elements'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := [:recoveredBlock194Arg1 | 
    | recoveredBlock194Local1 recoveredBlock194Stack0 recoveredBlock194Stack1 recoveredBlock194Stack2 recoveredBlock194Stack3 recoveredBlock194Stack4 recoveredBlock194PC recoveredBlock194Step recoveredBlock194Done recoveredBlock194Result |
    recoveredBlock194Stack0 := self.
    recoveredBlock194PC := 200.
    recoveredBlock194Done := false.
    [recoveredBlock194Done not] whileTrue: [
        recoveredBlock194Step := recoveredBlock194PC.
        recoveredBlock194Step = 200 ifTrue: [
            recoveredBlock194Stack1 := specType.
            recoveredBlock194PC := 202.
        ].
        recoveredBlock194Step = 202 ifTrue: [
            recoveredBlock194Stack2 := SGBooleanTableSpecification.
            recoveredBlock194PC := 204.
        ].
        recoveredBlock194Step = 204 ifTrue: [
            (recoveredBlock194Stack1 ~~ recoveredBlock194Stack2) ifTrue: [recoveredBlock194PC := 214] ifFalse: [recoveredBlock194PC := 208].
        ].
        recoveredBlock194Step = 208 ifTrue: [
            recoveredBlock194Stack1 := SGAliasVariable.
            recoveredBlock194PC := 210.
        ].
        recoveredBlock194Step = 210 ifTrue: [
            recoveredBlock194PC := 232.
        ].
        recoveredBlock194Step = 214 ifTrue: [
            recoveredBlock194Stack1 := protoClass.
            recoveredBlock194PC := 216.
        ].
        recoveredBlock194Step = 216 ifTrue: [
            recoveredBlock194Stack1 := (recoveredBlock194Stack1) thing.
            recoveredBlock194PC := 218.
        ].
        recoveredBlock194Step = 218 ifTrue: [
            recoveredBlock194Stack1 := (recoveredBlock194Stack1) isGenericComponent.
            recoveredBlock194PC := 220.
        ].
        recoveredBlock194Step = 220 ifTrue: [
            (recoveredBlock194Stack1) ifTrue: [recoveredBlock194PC := 224] ifFalse: [recoveredBlock194PC := 230].
        ].
        recoveredBlock194Step = 224 ifTrue: [
            recoveredBlock194Stack1 := ASDGenericComponentElement.
            recoveredBlock194PC := 226.
        ].
        recoveredBlock194Step = 226 ifTrue: [
            recoveredBlock194PC := 232.
        ].
        recoveredBlock194Step = 230 ifTrue: [
            recoveredBlock194Stack1 := SGVariable.
            recoveredBlock194PC := 232.
        ].
        recoveredBlock194Step = 232 ifTrue: [
            recoveredBlock194Local1 := recoveredBlock194Stack1.
            recoveredBlock194PC := 235.
        ].
        recoveredBlock194Step = 235 ifTrue: [
            recoveredBlock194Stack1 := recoveredBlock194Arg1.
            recoveredBlock194PC := 238.
        ].
        recoveredBlock194Step = 238 ifTrue: [
            recoveredBlock194Stack2 := 'Element'.
            recoveredBlock194PC := 240.
        ].
        recoveredBlock194Step = 240 ifTrue: [
            recoveredBlock194Stack3 := [:recoveredBlock194Block240Arg1 | 
    | recoveredBlock194Block240Stack0 recoveredBlock194Block240Stack1 recoveredBlock194Block240Stack2 recoveredBlock194Block240Stack3 recoveredBlock194Block240Stack4 recoveredBlock194Block240PC recoveredBlock194Block240Step recoveredBlock194Block240Done recoveredBlock194Block240Result |
    recoveredBlock194Block240Stack0 := self.
    recoveredBlock194Block240PC := 246.
    recoveredBlock194Block240Done := false.
    [recoveredBlock194Block240Done not] whileTrue: [
        recoveredBlock194Block240Step := recoveredBlock194Block240PC.
        recoveredBlock194Block240Step = 246 ifTrue: [
            recoveredBlock194Block240Stack1 := [
    | recoveredBlock194Block240Block246Local1 recoveredBlock194Block240Block246Local2 recoveredBlock194Block240Block246Local3 recoveredBlock194Block240Block246Stack0 recoveredBlock194Block240Block246Stack1 recoveredBlock194Block240Block246Stack2 recoveredBlock194Block240Block246Stack3 recoveredBlock194Block240Block246Stack4 recoveredBlock194Block240Block246Stack5 recoveredBlock194Block240Block246PC recoveredBlock194Block240Block246Step recoveredBlock194Block240Block246Done recoveredBlock194Block240Block246Result |
    recoveredBlock194Block240Block246Stack0 := self.
    recoveredBlock194Block240Block246PC := 252.
    recoveredBlock194Block240Block246Done := false.
    [recoveredBlock194Block240Block246Done not] whileTrue: [
        recoveredBlock194Block240Block246Step := recoveredBlock194Block240Block246PC.
        recoveredBlock194Block240Block246Step = 252 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := recoveredBlock194Block240Arg1.
            recoveredBlock194Block240Block246PC := 255.
        ].
        recoveredBlock194Block240Block246Step = 255 ifTrue: [
            recoveredBlock194Block240Block246Stack2 := 'name'.
            recoveredBlock194Block240Block246PC := 257.
        ].
        recoveredBlock194Block240Block246Step = 257 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := (recoveredBlock194Block240Block246Stack1) getNMToken: (recoveredBlock194Block240Block246Stack2).
            recoveredBlock194Block240Block246PC := 259.
        ].
        recoveredBlock194Block240Block246Step = 259 ifTrue: [
            recoveredBlock194Block240Block246Local2 := recoveredBlock194Block240Block246Stack1.
            recoveredBlock194Block240Block246PC := 260.
        ].
        recoveredBlock194Block240Block246Step = 260 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := specType.
            recoveredBlock194Block240Block246PC := 262.
        ].
        recoveredBlock194Block240Block246Step = 262 ifTrue: [
            recoveredBlock194Block240Block246Stack2 := SGSmSpecification.
            recoveredBlock194Block240Block246PC := 264.
        ].
        recoveredBlock194Block240Block246Step = 264 ifTrue: [
            (recoveredBlock194Block240Block246Stack1 ~~ recoveredBlock194Block240Block246Stack2) ifTrue: [recoveredBlock194Block240Block246PC := 282] ifFalse: [recoveredBlock194Block240Block246PC := 268].
        ].
        recoveredBlock194Block240Block246Step = 268 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := recoveredBlock194Block240Block246Local2.
            recoveredBlock194Block240Block246PC := 269.
        ].
        recoveredBlock194Block240Block246Step = 269 ifTrue: [
            recoveredBlock194Block240Block246Stack2 := 'sm'.
            recoveredBlock194Block240Block246PC := 271.
        ].
        recoveredBlock194Block240Block246Step = 271 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := (recoveredBlock194Block240Block246Stack1) = (recoveredBlock194Block240Block246Stack2).
            recoveredBlock194Block240Block246PC := 272.
        ].
        recoveredBlock194Block240Block246Step = 272 ifTrue: [
            (recoveredBlock194Block240Block246Stack1) ifTrue: [recoveredBlock194Block240Block246PC := 276] ifFalse: [recoveredBlock194Block240Block246PC := 282].
        ].
        recoveredBlock194Block240Block246Step = 276 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := SGAliasVariable.
            recoveredBlock194Block240Block246PC := 278.
        ].
        recoveredBlock194Block240Block246Step = 278 ifTrue: [
            recoveredBlock194Block240Block246PC := 285.
        ].
        recoveredBlock194Block240Block246Step = 282 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := recoveredBlock194Local1.
            recoveredBlock194Block240Block246PC := 285.
        ].
        recoveredBlock194Block240Block246Step = 285 ifTrue: [
            recoveredBlock194Block240Block246Local1 := recoveredBlock194Block240Block246Stack1.
            recoveredBlock194Block240Block246PC := 286.
        ].
        recoveredBlock194Block240Block246Step = 286 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := recoveredBlock194Block240Arg1.
            recoveredBlock194Block240Block246PC := 289.
        ].
        recoveredBlock194Block240Block246Step = 289 ifTrue: [
            recoveredBlock194Block240Block246Stack2 := recoveredBlock194Block240Block246Local2.
            recoveredBlock194Block240Block246PC := 290.
        ].
        recoveredBlock194Block240Block246Step = 290 ifTrue: [
            recoveredBlock194Block240Block246Stack3 := recoveredBlock194Block240Block246Local1.
            recoveredBlock194Block240Block246PC := 291.
        ].
        recoveredBlock194Block240Block246Step = 291 ifTrue: [
            recoveredBlock194Block240Block246Stack4 := protoClass.
            recoveredBlock194Block240Block246PC := 293.
        ].
        recoveredBlock194Block240Block246Step = 293 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := (recoveredBlock194Block240Block246Stack0) readElementT: (recoveredBlock194Block240Block246Stack1) name: (recoveredBlock194Block240Block246Stack2) defaultClass: (recoveredBlock194Block240Block246Stack3) parent: (recoveredBlock194Block240Block246Stack4).
            recoveredBlock194Block240Block246PC := 296.
        ].
        recoveredBlock194Block240Block246Step = 296 ifTrue: [
            recoveredBlock194Block240Block246Local3 := recoveredBlock194Block240Block246Stack0.
            recoveredBlock194Block240Block246PC := 297.
        ].
        recoveredBlock194Block240Block246Step = 297 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := nil.
            recoveredBlock194Block240Block246PC := 298.
        ].
        recoveredBlock194Block240Block246Step = 298 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := recoveredBlock194Block240Block246Local3.
            recoveredBlock194Block240Block246PC := 299.
        ].
        recoveredBlock194Block240Block246Step = 299 ifTrue: [
            (recoveredBlock194Block240Block246Stack1 == nil) ifTrue: [recoveredBlock194Block240Block246PC := 333] ifFalse: [recoveredBlock194Block240Block246PC := 302].
        ].
        recoveredBlock194Block240Block246Step = 302 ifTrue: [
            recoveredBlock194Block240Block246PC := 303.
        ].
        recoveredBlock194Block240Block246Step = 303 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := recoveredBlock194Block240Block246Local3.
            recoveredBlock194Block240Block246PC := 304.
        ].
        recoveredBlock194Block240Block246Step = 304 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := (recoveredBlock194Block240Block246Stack0) isPrimitive.
            recoveredBlock194Block240Block246PC := 306.
        ].
        recoveredBlock194Block240Block246Step = 306 ifTrue: [
            (recoveredBlock194Block240Block246Stack0) ifTrue: [recoveredBlock194Block240Block246PC := 310] ifFalse: [recoveredBlock194Block240Block246PC := 318].
        ].
        recoveredBlock194Block240Block246Step = 310 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := recoveredLocal10.
            recoveredBlock194Block240Block246PC := 313.
        ].
        recoveredBlock194Block240Block246Step = 313 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := (recoveredBlock194Block240Block246Stack0) primitiveVariables.
            recoveredBlock194Block240Block246PC := 315.
        ].
        recoveredBlock194Block240Block246Step = 315 ifTrue: [
            recoveredBlock194Block240Block246PC := 323.
        ].
        recoveredBlock194Block240Block246Step = 318 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := recoveredLocal10.
            recoveredBlock194Block240Block246PC := 321.
        ].
        recoveredBlock194Block240Block246Step = 321 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := (recoveredBlock194Block240Block246Stack0) complexVariables.
            recoveredBlock194Block240Block246PC := 323.
        ].
        recoveredBlock194Block240Block246Step = 323 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := recoveredBlock194Block240Block246Local3.
            recoveredBlock194Block240Block246PC := 324.
        ].
        recoveredBlock194Block240Block246Step = 324 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := (recoveredBlock194Block240Block246Stack1) thing.
            recoveredBlock194Block240Block246PC := 326.
        ].
        recoveredBlock194Block240Block246Step = 326 ifTrue: [
            recoveredBlock194Block240Block246Stack1 := (recoveredBlock194Block240Block246Stack1) elementName.
            recoveredBlock194Block240Block246PC := 328.
        ].
        recoveredBlock194Block240Block246Step = 328 ifTrue: [
            recoveredBlock194Block240Block246Stack2 := recoveredBlock194Block240Block246Local3.
            recoveredBlock194Block240Block246PC := 329.
        ].
        recoveredBlock194Block240Block246Step = 329 ifTrue: [
            recoveredBlock194Block240Block246Stack2 := (recoveredBlock194Block240Block246Stack2) thing.
            recoveredBlock194Block240Block246PC := 331.
        ].
        recoveredBlock194Block240Block246Step = 331 ifTrue: [
            recoveredBlock194Block240Block246Stack0 := (recoveredBlock194Block240Block246Stack0) at: (recoveredBlock194Block240Block246Stack1) put: (recoveredBlock194Block240Block246Stack2).
            recoveredBlock194Block240Block246PC := 333.
        ].
        recoveredBlock194Block240Block246Step = 333 ifTrue: [
            recoveredBlock194Block240Block246Result := recoveredBlock194Block240Block246Stack0.
            recoveredBlock194Block240Block246Done := true.
        ].
    ].
    recoveredBlock194Block240Block246Result
].
            recoveredBlock194Block240PC := 334.
        ].
        recoveredBlock194Block240Step = 334 ifTrue: [
            recoveredBlock194Block240Stack2 := ElementNotFound.
            recoveredBlock194Block240PC := 336.
        ].
        recoveredBlock194Block240Step = 336 ifTrue: [
            recoveredBlock194Block240Stack3 := [:block2812022cArg1 | 
    | block2812022cValue0 block2812022cValue1 |
    block2812022cValue0 := block2812022cArg1.
    block2812022cValue1 := (block2812022cValue0) exitWith: (nil).
    block2812022cValue1
].
            recoveredBlock194Block240PC := 338.
        ].
        recoveredBlock194Block240Step = 338 ifTrue: [
            recoveredBlock194Block240PC := 347.
        ].
        recoveredBlock194Block240Step = 347 ifTrue: [
            recoveredBlock194Block240Stack1 := (recoveredBlock194Block240Stack1) when: (recoveredBlock194Block240Stack2) do: (recoveredBlock194Block240Stack3).
            recoveredBlock194Block240PC := 349.
        ].
        recoveredBlock194Block240Step = 349 ifTrue: [
            recoveredBlock194Block240Result := recoveredBlock194Block240Stack1.
            recoveredBlock194Block240Done := true.
        ].
    ].
    recoveredBlock194Block240Result
].
            recoveredBlock194PC := 350.
        ].
        recoveredBlock194Step = 350 ifTrue: [
            (recoveredBlock194Stack1) multiple: (recoveredBlock194Stack2) do: (recoveredBlock194Stack3).
            recoveredBlock194PC := 352.
        ].
        recoveredBlock194Step = 352 ifTrue: [
            recoveredBlock194Stack1 := recoveredBlock194Arg1.
            recoveredBlock194PC := 355.
        ].
        recoveredBlock194Step = 355 ifTrue: [
            recoveredBlock194Stack2 := handler.
            recoveredBlock194PC := 357.
        ].
        recoveredBlock194Step = 357 ifTrue: [
            recoveredBlock194Stack1 := (recoveredBlock194Stack1) doneIfNot: (recoveredBlock194Stack2).
            recoveredBlock194PC := 359.
        ].
        recoveredBlock194Step = 359 ifTrue: [
            recoveredBlock194Result := recoveredBlock194Stack1.
            recoveredBlock194Done := true.
        ].
    ].
    recoveredBlock194Result
].
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := handler.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack0) required: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := 'MethodSignatures'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := [:recoveredBlock370Arg1 | 
    | recoveredBlock370Local1 recoveredBlock370Stack0 recoveredBlock370Stack1 recoveredBlock370Stack2 recoveredBlock370Stack3 recoveredBlock370Stack4 recoveredBlock370Stack5 recoveredBlock370Stack6 recoveredBlock370Stack7 recoveredBlock370Stack8 recoveredBlock370Stack9 recoveredBlock370Stack10 recoveredBlock370Stack11 recoveredBlock370PC recoveredBlock370Step recoveredBlock370Done recoveredBlock370Result |
    recoveredBlock370Stack0 := self.
    recoveredBlock370PC := 376.
    recoveredBlock370Done := false.
    [recoveredBlock370Done not] whileTrue: [
        recoveredBlock370Step := recoveredBlock370PC.
        recoveredBlock370Step = 376 ifTrue: [
            recoveredBlock370Stack1 := 'Die'.
            recoveredBlock370PC := 378.
        ].
        recoveredBlock370Step = 378 ifTrue: [
            recoveredBlock370Stack2 := 'Call_95592'.
            recoveredBlock370PC := 380.
        ].
        recoveredBlock370Step = 380 ifTrue: [
            recoveredBlock370Stack1 := (recoveredBlock370Stack1) == (recoveredBlock370Stack2).
            recoveredBlock370PC := 381.
        ].
        recoveredBlock370Step = 381 ifTrue: [
            recoveredBlock370PC := 382.
        ].
        recoveredBlock370Step = 382 ifTrue: [
            recoveredBlock370Stack1 := nil.
            recoveredBlock370PC := 383.
        ].
        recoveredBlock370Step = 383 ifTrue: [
            recoveredBlock370Stack2 := componentType.
            recoveredBlock370PC := 385.
        ].
        recoveredBlock370Step = 385 ifTrue: [
            recoveredBlock370Stack3 := 1.
            recoveredBlock370PC := 387.
        ].
        recoveredBlock370Step = 387 ifTrue: [
            recoveredBlock370Stack2 := (recoveredBlock370Stack2) at: (recoveredBlock370Stack3).
            recoveredBlock370PC := 389.
        ].
        recoveredBlock370Step = 389 ifTrue: [
            recoveredBlock370Stack3 := SGProject.
            recoveredBlock370PC := 391.
        ].
        recoveredBlock370Step = 391 ifTrue: [
            (recoveredBlock370Stack2 == recoveredBlock370Stack3) ifTrue: [recoveredBlock370PC := 509] ifFalse: [recoveredBlock370PC := 394].
        ].
        recoveredBlock370Step = 394 ifTrue: [
            recoveredBlock370PC := 395.
        ].
        recoveredBlock370Step = 395 ifTrue: [
            recoveredBlock370Stack1 := false.
            recoveredBlock370PC := 396.
        ].
        recoveredBlock370Step = 396 ifTrue: [
            recoveredBlock370Local1 := recoveredBlock370Stack1.
            recoveredBlock370PC := 399.
        ].
        recoveredBlock370Step = 399 ifTrue: [
            recoveredBlock370PC := 493.
        ].
        recoveredBlock370Step = 402 ifTrue: [
            recoveredBlock370Stack1 := recoveredBlock370Arg1.
            recoveredBlock370PC := 405.
        ].
        recoveredBlock370Step = 405 ifTrue: [
            recoveredBlock370Stack2 := 'MethodSignature'.
            recoveredBlock370PC := 407.
        ].
        recoveredBlock370Step = 407 ifTrue: [
            recoveredBlock370Stack3 := [:recoveredBlock370Block407Arg1 | 
    | recoveredBlock370Block407Value0 recoveredBlock370Block407Value1 |
    recoveredBlock370Block407Value0 := recoveredBlock370Block407Arg1.
    recoveredBlock370Block407Value1 := (self) readMethodSignatureT: (recoveredBlock370Block407Value0) methodClass: (nil) realized: (false).
    recoveredBlock370Block407Value1
].
            recoveredBlock370PC := 422.
        ].
        recoveredBlock370Step = 422 ifTrue: [
            recoveredBlock370Stack4 := 'RealizedMethodSignature'.
            recoveredBlock370PC := 426.
        ].
        recoveredBlock370Step = 426 ifTrue: [
            recoveredBlock370Stack5 := [:recoveredBlock370Block426Arg1 | 
    | recoveredBlock370Block426Value0 recoveredBlock370Block426Value1 |
    recoveredBlock370Block426Value0 := recoveredBlock370Block426Arg1.
    recoveredBlock370Block426Value1 := (self) readMethodSignatureT: (recoveredBlock370Block426Value0) methodClass: (nil) realized: (true).
    recoveredBlock370Block426Value1
].
            recoveredBlock370PC := 440.
        ].
        recoveredBlock370Step = 440 ifTrue: [
            recoveredBlock370Stack6 := 'RunnableSignature'.
            recoveredBlock370PC := 444.
        ].
        recoveredBlock370Step = 444 ifTrue: [
            recoveredBlock370Stack7 := [:recoveredBlock370Block444Arg1 | 
    | recoveredBlock370Block444Value0 recoveredBlock370Block444Value1 |
    recoveredBlock370Block444Value0 := recoveredBlock370Block444Arg1.
    recoveredBlock370Block444Value1 := (self) readRunnableSignatureT: (recoveredBlock370Block444Value0) realized: (false).
    recoveredBlock370Block444Value1
].
            recoveredBlock370PC := 458.
        ].
        recoveredBlock370Step = 458 ifTrue: [
            recoveredBlock370Stack8 := 'RealizedRunnableSignature'.
            recoveredBlock370PC := 462.
        ].
        recoveredBlock370Step = 462 ifTrue: [
            recoveredBlock370Stack9 := [:recoveredBlock370Block462Arg1 | 
    | recoveredBlock370Block462Value0 recoveredBlock370Block462Value1 |
    recoveredBlock370Block462Value0 := recoveredBlock370Block462Arg1.
    recoveredBlock370Block462Value1 := (self) readRunnableSignatureT: (recoveredBlock370Block462Value0) realized: (true).
    recoveredBlock370Block462Value1
].
            recoveredBlock370PC := 476.
        ].
        recoveredBlock370Step = 476 ifTrue: [
            recoveredBlock370Stack10 := [
    recoveredBlock370Local1 := true.
    true
].
            recoveredBlock370PC := 488.
        ].
        recoveredBlock370Step = 488 ifTrue: [
            (recoveredBlock370Stack1) choice: (recoveredBlock370Stack2) do: (recoveredBlock370Stack3) choice: (recoveredBlock370Stack4) do: (recoveredBlock370Stack5) choice: (recoveredBlock370Stack6) do: (recoveredBlock370Stack7) choice: (recoveredBlock370Stack8) do: (recoveredBlock370Stack9) ifNot: (recoveredBlock370Stack10).
            recoveredBlock370PC := 493.
        ].
        recoveredBlock370Step = 493 ifTrue: [
            recoveredBlock370Stack1 := recoveredBlock370Local1.
            recoveredBlock370PC := 496.
        ].
        recoveredBlock370Step = 496 ifTrue: [
            (recoveredBlock370Stack1) ifTrue: [recoveredBlock370PC := 498] ifFalse: [recoveredBlock370PC := 402].
        ].
        recoveredBlock370Step = 498 ifTrue: [
            recoveredBlock370Stack1 := recoveredBlock370Arg1.
            recoveredBlock370PC := 501.
        ].
        recoveredBlock370Step = 501 ifTrue: [
            recoveredBlock370Stack2 := handler.
            recoveredBlock370PC := 503.
        ].
        recoveredBlock370Step = 503 ifTrue: [
            recoveredBlock370Stack1 := (recoveredBlock370Stack1) doneIfNot: (recoveredBlock370Stack2).
            recoveredBlock370PC := 505.
        ].
        recoveredBlock370Step = 505 ifTrue: [
            recoveredBlock370Stack2 := nil.
            recoveredBlock370PC := 506.
        ].
        recoveredBlock370Step = 506 ifTrue: [
            recoveredBlock370Local1 := recoveredBlock370Stack2.
            recoveredBlock370PC := 509.
        ].
        recoveredBlock370Step = 509 ifTrue: [
            recoveredBlock370Result := recoveredBlock370Stack1.
            recoveredBlock370Done := true.
        ].
    ].
    recoveredBlock370Result
].
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack3 := handler.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            (recoveredStack0) required: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := 'WorkspaceTimeStamps'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            (recoveredStack0) readTimeStamps: (recoveredStack1).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := 'Interfaces'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := [:block28120250Arg1 | 
    | block28120250Value0 |
    block28120250Value0 := ('ignored') notNil.
    block28120250Value0
].
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := 'CustomerSpecificAttributes'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack2 := [:block28120274Arg1 | 
    | block28120274Value0 |
    block28120274Value0 := ('ignored') notNil.
    block28120274Value0
].
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack0 := groupedElements.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := [:recoveredBlock587Arg1 | 
    | recoveredBlock587Value0 recoveredBlock587Value1 recoveredBlock587Value2 |
    recoveredBlock587Value0 := recoveredBlock587Arg1.
    recoveredBlock587Value1 := recoveredLocal10.
    recoveredBlock587Value2 := (recoveredBlock587Value0) xmlFixupAfterImport: (recoveredBlock587Value1).
    recoveredBlock587Value2
].
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := ASDXMLImportStepSpecification.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack4 := importPath.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack5 := extension.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOn: (recoveredStack1) component: (recoveredStack2) protoClass: (recoveredStack3) importPath: (recoveredStack4) ext: (recoveredStack5).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064a930; bytecode file offset 0xf47328"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readAttributesBaseT: recoveredArg1 newEl: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlNeedsOwner.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlOID.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeDBProxy: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := SGVariable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 239].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := (recoveredBlock34Value0) getNMToken: ('scope').
    recoveredBlock34Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'exported'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 |
    recoveredBlock50Value0 := recoveredArg2.
    recoveredBlock50Value1 := (recoveredBlock50Value0) setToExportedBasic.
    recoveredBlock50Value1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := 'imported'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 |
    recoveredBlock64Value0 := recoveredArg2.
    recoveredBlock64Value1 := (recoveredBlock64Value0) setToImportedBasic.
    recoveredBlock64Value1
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack6 := 'local'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock78Value0 recoveredBlock78Value1 |
    recoveredBlock78Value0 := recoveredArg2.
    recoveredBlock78Value1 := (recoveredBlock78Value0) setToLocalBasic.
    recoveredBlock78Value1
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock90Value0 |
    recoveredBlock90Value0 := (self) inconsistentData: ('Unexpected token value for attribute "scope"').
    recoveredBlock90Value0
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) others: (recoveredStack8).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'read'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) setRead.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) clearRead.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'write'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) setWrite.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) clearWrite.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 'Call_74752'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := 'set'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) setSetAccessEnabled.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) protoItem.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTClass.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) setCTInput.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) clearSetAccessEnabled.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := 'get'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) setGetAccessEnabled.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) protoItem.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTClass.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 231].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) setCTOutput.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) clearGetAccessEnabled.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTOutput.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTInput.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 281].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'direct'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) setCTDirect.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 281.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) setCTNondirect.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'Call_1004154'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'Call_92902'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := 'Call_2010400604'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) sgClass: (recoveredStack2).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := SGMethodParameter.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 607].
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturn.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := 'read'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 346].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) setRead.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredPC := 351.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack1) clearRead.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := 'Call_337694'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalSchemaVersion.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := '6.2.0.0'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 370] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) setWrite.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredPC := 403.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := 'write'.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 390] ifFalse: [recoveredPC := 398].
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack1) setWrite.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredPC := 403.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) clearWrite.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredPC := 599.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := 'Call_1004154'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := 'Call_92902'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := 'Call_2010400604'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := 'read'.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := 'write'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 458] ifFalse: [recoveredPC := 452].
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 552] ifFalse: [recoveredPC := 458].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 482] ifFalse: [recoveredPC := 470].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := 'PrimitiveAttributes'.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 482] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) isScalar.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 504] ifFalse: [recoveredPC := 490].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := 'ScalarType'.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 504] ifFalse: [recoveredPC := 512].
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredPC := 516.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredPC := 552.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 'ComplexAttributes'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 532] ifFalse: [recoveredPC := 536].
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack2 := 'EnumerationAttributes'.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 548] ifFalse: [recoveredPC := 552].
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 558] ifFalse: [recoveredPC := 568].
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack1) setIn.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredPC := 575.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) clearIn.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 582] ifFalse: [recoveredPC := 592].
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            (recoveredStack1) setOut.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredPC := 599.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack1) clearOut.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack2 := 'Call_93938'.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessage.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 624] ifFalse: [recoveredPC := 755].
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLocal.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 634] ifFalse: [recoveredPC := 755].
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReceive.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 644] ifFalse: [recoveredPC := 654].
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSend.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 755] ifFalse: [recoveredPC := 654].
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := 'Local Messages with '.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReceive.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 668] ifFalse: [recoveredPC := 676].
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack2 := 'Receive'.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredPC := 680.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack2 := 'Send'.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := ' direction only'.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := ASDXMLImportIssueInvalidElementAttributes.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack4 := (recoveredStack4) protoItem.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack6 := 'Change to Send/Receive Message'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock720Value0 recoveredBlock720Value1 recoveredBlock720Value2 |
    recoveredBlock720Value0 := recoveredArg2.
    (recoveredBlock720Value0) setSend.
    recoveredBlock720Value1 := recoveredArg2.
    recoveredBlock720Value2 := (recoveredBlock720Value1) setReceive.
    recoveredBlock720Value2
].
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) parent: (recoveredStack4) problem: (recoveredStack5) autofixText: (recoveredStack6) repair: (recoveredStack7).
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2067181c; bytecode file offset 0xf6e27c"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readMethodSignatureT: recoveredArg1 methodClass: recoveredArg2 realized: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNMToken: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Unable to find method "'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := 'name'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNMToken: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := '" in protoClass'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'availableForOS'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDefault.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := SGAliasMethod.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodInterface.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := ASDMethodSignature.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := SGMethodProcess.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := SGMethod.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) aliasName: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) thing: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) methodName: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := 'UUID'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 |
    recoveredBlock167Value0 := recoveredLocal7.
    recoveredBlock167Value1 := recoveredBlock167Arg1.
    recoveredBlock167Value2 := (recoveredBlock167Value0) uuid: (recoveredBlock167Value1).
    recoveredBlock167Value2
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := 'defaultMethod'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) defaultMethod: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := 'Call_91767'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := 'hidden'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) enabled: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) specType.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := SGSmSpecification.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesBehavior: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 251].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 'reinitializeMethod'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := [:recoveredBlock236Arg1 | 
    | recoveredBlock236Value0 recoveredBlock236Value1 recoveredBlock236Value2 |
    recoveredBlock236Value0 := recoveredLocal7.
    recoveredBlock236Value1 := recoveredBlock236Arg1.
    recoveredBlock236Value2 := (recoveredBlock236Value0) reinitializeMethod: (recoveredBlock236Value1).
    recoveredBlock236Value2
].
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := 'sideEffectFree'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) sideEffectFree: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 419].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := 'interfaceName'.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack4 := 'interfaceOID'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElement: (recoveredStack2) nameAttr: (recoveredStack3) oidAttr: (recoveredStack4).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedInterfaces.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := (recoveredStack2) thing.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := 'signatureOID'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 376] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock318Value0 recoveredBlock318Value1 recoveredBlock318Value2 recoveredBlock318Value3 recoveredBlock318Value4 recoveredBlock318Value5 recoveredBlock318Value6 |
    recoveredBlock318Value0 := recoveredArg1.
    recoveredBlock318Value1 := recoveredLocal2.
    recoveredBlock318Value2 := (recoveredBlock318Value1) xmlSGClass.
    recoveredBlock318Value3 := (self) getMethod: (recoveredBlock318Value0) in: (recoveredBlock318Value2) nameTag: ('signatureName') oidTag: ('signatureOID').
    recoveredLocal4 := recoveredBlock318Value3.
    recoveredBlock318Value4 := recoveredLocal4.
    recoveredBlock318Value5 := (recoveredBlock318Value4) xmlOID.
    recoveredBlock318Value6 := recoveredBlock318Value5.
    recoveredLocal3 := recoveredBlock318Value6.
    recoveredBlock318Value5
].
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := ElementNotFound.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := [:block28127048Arg1 | 
    | block28127048Value0 block28127048Value1 block28127048Value2 |
    block28127048Value0 := ('Kli') == ('TFS_324990').
    block28127048Value1 := block28127048Arg1.
    block28127048Value2 := (block28127048Value1) exitWith: (nil).
    block28127048Value2
].
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredPC := 396.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) oidFromString: (recoveredStack2).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlOID.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack1) realizedSignature: (recoveredStack2).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := [:recoveredBlock422Arg1 | 
    | recoveredBlock422Value0 recoveredBlock422Value1 recoveredBlock422Value2 recoveredBlock422Value3 recoveredBlock422Value4 recoveredBlock422Value5 recoveredBlock422Value6 |
    recoveredBlock422Value0 := protoClass.
    recoveredBlock422Value1 := (recoveredBlock422Value0) thing.
    recoveredBlock422Value2 := (recoveredBlock422Value1) xmlCustomerDataBasic.
    recoveredBlock422Value3 := recoveredBlock422Arg1.
    recoveredBlock422Value4 := recoveredLocal6.
    recoveredBlock422Value5 := (recoveredBlock422Value4) thing.
    recoveredBlock422Value6 := (recoveredBlock422Value2) xmlSetData: (recoveredBlock422Value3) forMethod: (recoveredBlock422Value5).
    recoveredBlock422Value6
].
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack0) readCustomerDatas: (recoveredStack1) storeBlock: (recoveredStack2).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1069] ifFalse: [recoveredPC := 460].
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := 'Arguments'.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := [:recoveredBlock466Arg1 | 
    | recoveredBlock466Local1 recoveredBlock466Stack0 recoveredBlock466Stack1 recoveredBlock466Stack2 recoveredBlock466Stack3 recoveredBlock466Stack4 recoveredBlock466PC recoveredBlock466Step recoveredBlock466Done recoveredBlock466Result |
    recoveredBlock466Stack0 := self.
    recoveredBlock466PC := 472.
    recoveredBlock466Done := false.
    [recoveredBlock466Done not] whileTrue: [
        recoveredBlock466Step := recoveredBlock466PC.
        recoveredBlock466Step = 472 ifTrue: [
            recoveredBlock466Stack1 := recoveredArg3.
            recoveredBlock466PC := 475.
        ].
        recoveredBlock466Step = 475 ifTrue: [
            (recoveredBlock466Stack1) ifTrue: [recoveredBlock466PC := 478] ifFalse: [recoveredBlock466PC := 492].
        ].
        recoveredBlock466Step = 478 ifTrue: [
            recoveredBlock466Stack1 := recoveredLocal7.
            recoveredBlock466PC := 481.
        ].
        recoveredBlock466Step = 481 ifTrue: [
            recoveredBlock466Stack1 := (recoveredBlock466Stack1) class.
            recoveredBlock466PC := 485.
        ].
        recoveredBlock466Step = 485 ifTrue: [
            recoveredBlock466Stack1 := (recoveredBlock466Stack1) realizedArgumentClass.
            recoveredBlock466PC := 489.
        ].
        recoveredBlock466Step = 489 ifTrue: [
            recoveredBlock466PC := 503.
        ].
        recoveredBlock466Step = 492 ifTrue: [
            recoveredBlock466Stack1 := recoveredLocal7.
            recoveredBlock466PC := 495.
        ].
        recoveredBlock466Step = 495 ifTrue: [
            recoveredBlock466Stack1 := (recoveredBlock466Stack1) class.
            recoveredBlock466PC := 499.
        ].
        recoveredBlock466Step = 499 ifTrue: [
            recoveredBlock466Stack1 := (recoveredBlock466Stack1) argumentClass.
            recoveredBlock466PC := 503.
        ].
        recoveredBlock466Step = 503 ifTrue: [
            recoveredBlock466Local1 := recoveredBlock466Stack1.
            recoveredBlock466PC := 506.
        ].
        recoveredBlock466Step = 506 ifTrue: [
            recoveredBlock466Stack1 := recoveredBlock466Arg1.
            recoveredBlock466PC := 509.
        ].
        recoveredBlock466Step = 509 ifTrue: [
            recoveredBlock466Stack2 := 'Argument'.
            recoveredBlock466PC := 512.
        ].
        recoveredBlock466Step = 512 ifTrue: [
            recoveredBlock466Stack3 := [:recoveredBlock466Block512Arg1 | 
    | recoveredBlock466Block512Stack0 recoveredBlock466Block512Stack1 recoveredBlock466Block512Stack2 recoveredBlock466Block512Stack3 recoveredBlock466Block512Stack4 recoveredBlock466Block512PC recoveredBlock466Block512Step recoveredBlock466Block512Done recoveredBlock466Block512Result |
    recoveredBlock466Block512Stack0 := self.
    recoveredBlock466Block512PC := 518.
    recoveredBlock466Block512Done := false.
    [recoveredBlock466Block512Done not] whileTrue: [
        recoveredBlock466Block512Step := recoveredBlock466Block512PC.
        recoveredBlock466Block512Step = 518 ifTrue: [
            recoveredBlock466Block512Stack1 := [
    | recoveredBlock466Block512Block518Local1 recoveredBlock466Block512Block518Local2 recoveredBlock466Block512Block518Local3 recoveredBlock466Block512Block518Stack0 recoveredBlock466Block512Block518Stack1 recoveredBlock466Block512Block518Stack2 recoveredBlock466Block512Block518Stack3 recoveredBlock466Block512Block518Stack4 recoveredBlock466Block512Block518Stack5 recoveredBlock466Block512Block518PC recoveredBlock466Block512Block518Step recoveredBlock466Block512Block518Done recoveredBlock466Block512Block518Result |
    recoveredBlock466Block512Block518Stack0 := self.
    recoveredBlock466Block512Block518PC := 524.
    recoveredBlock466Block512Block518Done := false.
    [recoveredBlock466Block512Block518Done not] whileTrue: [
        recoveredBlock466Block512Block518Step := recoveredBlock466Block512Block518PC.
        recoveredBlock466Block512Block518Step = 524 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredBlock466Block512Arg1.
            recoveredBlock466Block512Block518PC := 527.
        ].
        recoveredBlock466Block512Block518Step = 527 ifTrue: [
            recoveredBlock466Block512Block518Stack2 := recoveredBlock466Local1.
            recoveredBlock466Block512Block518PC := 530.
        ].
        recoveredBlock466Block512Block518Step = 530 ifTrue: [
            recoveredBlock466Block512Block518Stack3 := recoveredLocal6.
            recoveredBlock466Block512Block518PC := 533.
        ].
        recoveredBlock466Block512Block518Step = 533 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) readElementT: (recoveredBlock466Block512Block518Stack1) defaultClass: (recoveredBlock466Block512Block518Stack2) parent: (recoveredBlock466Block512Block518Stack3).
            recoveredBlock466Block512Block518PC := 537.
        ].
        recoveredBlock466Block512Block518Step = 537 ifTrue: [
            recoveredBlock466Block512Block518Local3 := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518PC := 538.
        ].
        recoveredBlock466Block512Block518Step = 538 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := nil.
            recoveredBlock466Block512Block518PC := 539.
        ].
        recoveredBlock466Block512Block518Step = 539 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredBlock466Block512Block518Local3.
            recoveredBlock466Block512Block518PC := 540.
        ].
        recoveredBlock466Block512Block518Step = 540 ifTrue: [
            (recoveredBlock466Block512Block518Stack1 == nil) ifTrue: [recoveredBlock466Block512Block518PC := 679] ifFalse: [recoveredBlock466Block512Block518PC := 544].
        ].
        recoveredBlock466Block512Block518Step = 544 ifTrue: [
            recoveredBlock466Block512Block518PC := 545.
        ].
        recoveredBlock466Block512Block518Step = 545 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredLocal7.
            recoveredBlock466Block512Block518PC := 548.
        ].
        recoveredBlock466Block512Block518Step = 548 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredBlock466Block512Block518Local3.
            recoveredBlock466Block512Block518PC := 549.
        ].
        recoveredBlock466Block512Block518Step = 549 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := (recoveredBlock466Block512Block518Stack1) thing.
            recoveredBlock466Block512Block518PC := 551.
        ].
        recoveredBlock466Block512Block518Step = 551 ifTrue: [
            (recoveredBlock466Block512Block518Stack0) xmlAddArg: (recoveredBlock466Block512Block518Stack1).
            recoveredBlock466Block512Block518PC := 555.
        ].
        recoveredBlock466Block512Block518Step = 555 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := nil.
            recoveredBlock466Block512Block518PC := 556.
        ].
        recoveredBlock466Block512Block518Step = 556 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredLocal3.
            recoveredBlock466Block512Block518PC := 559.
        ].
        recoveredBlock466Block512Block518Step = 559 ifTrue: [
            (recoveredBlock466Block512Block518Stack1 == nil) ifTrue: [recoveredBlock466Block512Block518PC := 679] ifFalse: [recoveredBlock466Block512Block518PC := 562].
        ].
        recoveredBlock466Block512Block518Step = 562 ifTrue: [
            recoveredBlock466Block512Block518PC := 563.
        ].
        recoveredBlock466Block512Block518Step = 563 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredBlock466Block512Arg1.
            recoveredBlock466Block512Block518PC := 566.
        ].
        recoveredBlock466Block512Block518Step = 566 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := 'masterElementOID'.
            recoveredBlock466Block512Block518PC := 570.
        ].
        recoveredBlock466Block512Block518Step = 570 ifTrue: [
            recoveredBlock466Block512Block518Stack2 := nil.
            recoveredBlock466Block512Block518PC := 571.
        ].
        recoveredBlock466Block512Block518Step = 571 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) getOID: (recoveredBlock466Block512Block518Stack1) default: (recoveredBlock466Block512Block518Stack2).
            recoveredBlock466Block512Block518PC := 573.
        ].
        recoveredBlock466Block512Block518Step = 573 ifTrue: [
            recoveredBlock466Block512Block518Local2 := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518PC := 574.
        ].
        recoveredBlock466Block512Block518Step = 574 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredBlock466Block512Block518Local2.
            recoveredBlock466Block512Block518PC := 575.
        ].
        recoveredBlock466Block512Block518Step = 575 ifTrue: [
            (recoveredBlock466Block512Block518Stack0 ~~ nil) ifTrue: [recoveredBlock466Block512Block518PC := 650] ifFalse: [recoveredBlock466Block512Block518PC := 578].
        ].
        recoveredBlock466Block512Block518Step = 578 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredLocal4.
            recoveredBlock466Block512Block518PC := 581.
        ].
        recoveredBlock466Block512Block518Step = 581 ifTrue: [
            (recoveredBlock466Block512Block518Stack0 ~~ nil) ifTrue: [recoveredBlock466Block512Block518PC := 603] ifFalse: [recoveredBlock466Block512Block518PC := 584].
        ].
        recoveredBlock466Block512Block518Step = 584 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := self.
            recoveredBlock466Block512Block518PC := 585.
        ].
        recoveredBlock466Block512Block518Step = 585 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredArg1.
            recoveredBlock466Block512Block518PC := 588.
        ].
        recoveredBlock466Block512Block518Step = 588 ifTrue: [
            recoveredBlock466Block512Block518Stack2 := recoveredLocal2.
            recoveredBlock466Block512Block518PC := 591.
        ].
        recoveredBlock466Block512Block518Step = 591 ifTrue: [
            recoveredBlock466Block512Block518Stack2 := (recoveredBlock466Block512Block518Stack2) xmlSGClass.
            recoveredBlock466Block512Block518PC := 593.
        ].
        recoveredBlock466Block512Block518Step = 593 ifTrue: [
            recoveredBlock466Block512Block518Stack3 := 'signatureName'.
            recoveredBlock466Block512Block518PC := 595.
        ].
        recoveredBlock466Block512Block518Step = 595 ifTrue: [
            recoveredBlock466Block512Block518Stack4 := 'signatureOID'.
            recoveredBlock466Block512Block518PC := 597.
        ].
        recoveredBlock466Block512Block518Step = 597 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) getMethod: (recoveredBlock466Block512Block518Stack1) in: (recoveredBlock466Block512Block518Stack2) nameTag: (recoveredBlock466Block512Block518Stack3) oidTag: (recoveredBlock466Block512Block518Stack4).
            recoveredBlock466Block512Block518PC := 600.
        ].
        recoveredBlock466Block512Block518Step = 600 ifTrue: [
            recoveredLocal4 := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518PC := 603.
        ].
        recoveredBlock466Block512Block518Step = 603 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredLocal4.
            recoveredBlock466Block512Block518PC := 606.
        ].
        recoveredBlock466Block512Block518Step = 606 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredBlock466Block512Arg1.
            recoveredBlock466Block512Block518PC := 609.
        ].
        recoveredBlock466Block512Block518Step = 609 ifTrue: [
            recoveredBlock466Block512Block518Stack2 := 'masterElementName'.
            recoveredBlock466Block512Block518PC := 612.
        ].
        recoveredBlock466Block512Block518Step = 612 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := (recoveredBlock466Block512Block518Stack1) getString: (recoveredBlock466Block512Block518Stack2).
            recoveredBlock466Block512Block518PC := 617.
        ].
        recoveredBlock466Block512Block518Step = 617 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) xmlArgumentsByName: (recoveredBlock466Block512Block518Stack1).
            recoveredBlock466Block512Block518PC := 621.
        ].
        recoveredBlock466Block512Block518Step = 621 ifTrue: [
            recoveredBlock466Block512Block518Local1 := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518PC := 622.
        ].
        recoveredBlock466Block512Block518Step = 622 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredBlock466Block512Block518Local1.
            recoveredBlock466Block512Block518PC := 623.
        ].
        recoveredBlock466Block512Block518Step = 623 ifTrue: [
            (recoveredBlock466Block512Block518Stack0 ~~ nil) ifTrue: [recoveredBlock466Block512Block518PC := 641] ifFalse: [recoveredBlock466Block512Block518PC := 626].
        ].
        recoveredBlock466Block512Block518Step = 626 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := self.
            recoveredBlock466Block512Block518PC := 627.
        ].
        recoveredBlock466Block512Block518Step = 627 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := '<template for realization of>'.
            recoveredBlock466Block512Block518PC := 630.
        ].
        recoveredBlock466Block512Block518Step = 630 ifTrue: [
            recoveredBlock466Block512Block518Stack2 := recoveredBlock466Block512Block518Local3.
            recoveredBlock466Block512Block518PC := 631.
        ].
        recoveredBlock466Block512Block518Step = 631 ifTrue: [
            recoveredBlock466Block512Block518Stack2 := (recoveredBlock466Block512Block518Stack2) xmlName.
            recoveredBlock466Block512Block518PC := 635.
        ].
        recoveredBlock466Block512Block518Step = 635 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := (recoveredBlock466Block512Block518Stack1) , (recoveredBlock466Block512Block518Stack2).
            recoveredBlock466Block512Block518PC := 637.
        ].
        recoveredBlock466Block512Block518Step = 637 ifTrue: [
            (recoveredBlock466Block512Block518Stack0) elementNotFound: (recoveredBlock466Block512Block518Stack1).
            recoveredBlock466Block512Block518PC := 641.
        ].
        recoveredBlock466Block512Block518Step = 641 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredBlock466Block512Block518Local1.
            recoveredBlock466Block512Block518PC := 642.
        ].
        recoveredBlock466Block512Block518Step = 642 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) xmlOID.
            recoveredBlock466Block512Block518PC := 644.
        ].
        recoveredBlock466Block512Block518Step = 644 ifTrue: [
            recoveredBlock466Block512Block518Local2 := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518PC := 645.
        ].
        recoveredBlock466Block512Block518Step = 645 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := nil.
            recoveredBlock466Block512Block518PC := 646.
        ].
        recoveredBlock466Block512Block518Step = 646 ifTrue: [
            recoveredBlock466Block512Block518Local1 := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518PC := 647.
        ].
        recoveredBlock466Block512Block518Step = 647 ifTrue: [
            recoveredBlock466Block512Block518PC := 668.
        ].
        recoveredBlock466Block512Block518Step = 650 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredBlock466Block512Block518Local2.
            recoveredBlock466Block512Block518PC := 651.
        ].
        recoveredBlock466Block512Block518Step = 651 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) isString.
            recoveredBlock466Block512Block518PC := 653.
        ].
        recoveredBlock466Block512Block518Step = 653 ifTrue: [
            (recoveredBlock466Block512Block518Stack0) ifTrue: [recoveredBlock466Block512Block518PC := 656] ifFalse: [recoveredBlock466Block512Block518PC := 668].
        ].
        recoveredBlock466Block512Block518Step = 656 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := EtasXmlUtil.
            recoveredBlock466Block512Block518PC := 660.
        ].
        recoveredBlock466Block512Block518Step = 660 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) new.
            recoveredBlock466Block512Block518PC := 662.
        ].
        recoveredBlock466Block512Block518Step = 662 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredBlock466Block512Block518Local2.
            recoveredBlock466Block512Block518PC := 663.
        ].
        recoveredBlock466Block512Block518Step = 663 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) oidFromString: (recoveredBlock466Block512Block518Stack1).
            recoveredBlock466Block512Block518PC := 667.
        ].
        recoveredBlock466Block512Block518Step = 667 ifTrue: [
            recoveredBlock466Block512Block518Local2 := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518PC := 668.
        ].
        recoveredBlock466Block512Block518Step = 668 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := recoveredBlock466Block512Block518Local3.
            recoveredBlock466Block512Block518PC := 669.
        ].
        recoveredBlock466Block512Block518Step = 669 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) thing.
            recoveredBlock466Block512Block518PC := 671.
        ].
        recoveredBlock466Block512Block518Step = 671 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := recoveredBlock466Block512Block518Local2.
            recoveredBlock466Block512Block518PC := 672.
        ].
        recoveredBlock466Block512Block518Step = 672 ifTrue: [
            recoveredBlock466Block512Block518Stack0 := (recoveredBlock466Block512Block518Stack0) realizedElement: (recoveredBlock466Block512Block518Stack1).
            recoveredBlock466Block512Block518PC := 677.
        ].
        recoveredBlock466Block512Block518Step = 677 ifTrue: [
            recoveredBlock466Block512Block518Stack1 := nil.
            recoveredBlock466Block512Block518PC := 678.
        ].
        recoveredBlock466Block512Block518Step = 678 ifTrue: [
            recoveredBlock466Block512Block518Local2 := recoveredBlock466Block512Block518Stack1.
            recoveredBlock466Block512Block518PC := 679.
        ].
        recoveredBlock466Block512Block518Step = 679 ifTrue: [
            recoveredBlock466Block512Block518Result := recoveredBlock466Block512Block518Stack0.
            recoveredBlock466Block512Block518Done := true.
        ].
    ].
    recoveredBlock466Block512Block518Result
].
            recoveredBlock466Block512PC := 680.
        ].
        recoveredBlock466Block512Step = 680 ifTrue: [
            recoveredBlock466Block512Stack2 := ElementNotFound.
            recoveredBlock466Block512PC := 682.
        ].
        recoveredBlock466Block512Step = 682 ifTrue: [
            recoveredBlock466Block512Stack3 := [:block2812706cArg1 | 
    | block2812706cValue0 block2812706cValue1 |
    block2812706cValue0 := block2812706cArg1.
    block2812706cValue1 := (block2812706cValue0) exitWith: (nil).
    block2812706cValue1
].
            recoveredBlock466Block512PC := 686.
        ].
        recoveredBlock466Block512Step = 686 ifTrue: [
            recoveredBlock466Block512PC := 695.
        ].
        recoveredBlock466Block512Step = 695 ifTrue: [
            recoveredBlock466Block512Stack1 := (recoveredBlock466Block512Stack1) when: (recoveredBlock466Block512Stack2) do: (recoveredBlock466Block512Stack3).
            recoveredBlock466Block512PC := 697.
        ].
        recoveredBlock466Block512Step = 697 ifTrue: [
            recoveredBlock466Block512Result := recoveredBlock466Block512Stack1.
            recoveredBlock466Block512Done := true.
        ].
    ].
    recoveredBlock466Block512Result
].
            recoveredBlock466PC := 698.
        ].
        recoveredBlock466Step = 698 ifTrue: [
            (recoveredBlock466Stack1) multiple: (recoveredBlock466Stack2) do: (recoveredBlock466Stack3).
            recoveredBlock466PC := 703.
        ].
        recoveredBlock466Step = 703 ifTrue: [
            recoveredBlock466Stack1 := recoveredBlock466Arg1.
            recoveredBlock466PC := 706.
        ].
        recoveredBlock466Step = 706 ifTrue: [
            recoveredBlock466Stack2 := handler.
            recoveredBlock466PC := 708.
        ].
        recoveredBlock466Step = 708 ifTrue: [
            recoveredBlock466Stack1 := (recoveredBlock466Stack1) doneIfNot: (recoveredBlock466Stack2).
            recoveredBlock466PC := 713.
        ].
        recoveredBlock466Step = 713 ifTrue: [
            recoveredBlock466Result := recoveredBlock466Stack1.
            recoveredBlock466Done := true.
        ].
    ].
    recoveredBlock466Result
].
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack1 := 'Return'.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack2 := [:recoveredBlock726Arg1 | 
    | recoveredBlock726Stack0 recoveredBlock726Stack1 recoveredBlock726Stack2 recoveredBlock726Stack3 recoveredBlock726Stack4 recoveredBlock726PC recoveredBlock726Step recoveredBlock726Done recoveredBlock726Result |
    recoveredBlock726Stack0 := self.
    recoveredBlock726PC := 732.
    recoveredBlock726Done := false.
    [recoveredBlock726Done not] whileTrue: [
        recoveredBlock726Step := recoveredBlock726PC.
        recoveredBlock726Step = 732 ifTrue: [
            recoveredBlock726Stack1 := [
    | recoveredBlock726Block732Local1 recoveredBlock726Block732Local2 recoveredBlock726Block732Stack0 recoveredBlock726Block732Stack1 recoveredBlock726Block732Stack2 recoveredBlock726Block732Stack3 recoveredBlock726Block732Stack4 recoveredBlock726Block732Stack5 recoveredBlock726Block732PC recoveredBlock726Block732Step recoveredBlock726Block732Done recoveredBlock726Block732Result |
    recoveredBlock726Block732Stack0 := self.
    recoveredBlock726Block732PC := 738.
    recoveredBlock726Block732Done := false.
    [recoveredBlock726Block732Done not] whileTrue: [
        recoveredBlock726Block732Step := recoveredBlock726Block732PC.
        recoveredBlock726Block732Step = 738 ifTrue: [
            recoveredBlock726Block732Stack1 := recoveredBlock726Arg1.
            recoveredBlock726Block732PC := 741.
        ].
        recoveredBlock726Block732Step = 741 ifTrue: [
            recoveredBlock726Block732Stack2 := 'Comment'.
            recoveredBlock726Block732PC := 744.
        ].
        recoveredBlock726Block732Step = 744 ifTrue: [
            recoveredBlock726Block732Stack3 := [:block28127090Arg1 | 
    | block28127090Value0 block28127090Value1 |
    block28127090Value0 := block28127090Arg1.
    block28127090Value1 := (block28127090Value0) cData.
    block28127090Value1
].
            recoveredBlock726Block732PC := 748.
        ].
        recoveredBlock726Block732Step = 748 ifTrue: [
            recoveredBlock726Block732PC := 758.
        ].
        recoveredBlock726Block732Step = 758 ifTrue: [
            recoveredBlock726Block732Stack4 := [].
            recoveredBlock726Block732PC := 762.
        ].
        recoveredBlock726Block732Step = 762 ifTrue: [
            recoveredBlock726Block732Stack1 := (recoveredBlock726Block732Stack1) optional: (recoveredBlock726Block732Stack2) do: (recoveredBlock726Block732Stack3) ifNot: (recoveredBlock726Block732Stack4).
            recoveredBlock726Block732PC := 767.
        ].
        recoveredBlock726Block732Step = 767 ifTrue: [
            recoveredBlock726Block732Local1 := recoveredBlock726Block732Stack1.
            recoveredBlock726Block732PC := 770.
        ].
        recoveredBlock726Block732Step = 770 ifTrue: [
            recoveredBlock726Block732Stack1 := recoveredBlock726Arg1.
            recoveredBlock726Block732PC := 773.
        ].
        recoveredBlock726Block732Step = 773 ifTrue: [
            recoveredBlock726Block732Stack2 := 'ElementAttributes'.
            recoveredBlock726Block732PC := 776.
        ].
        recoveredBlock726Block732Step = 776 ifTrue: [
            recoveredBlock726Block732Stack3 := [:recoveredBlock726Block732Block776Arg1 | 
    | recoveredBlock726Block732Block776Local1 recoveredBlock726Block732Block776Local2 recoveredBlock726Block732Block776Stack0 recoveredBlock726Block732Block776Stack1 recoveredBlock726Block732Block776Stack2 recoveredBlock726Block732Block776Stack3 recoveredBlock726Block732Block776Stack4 recoveredBlock726Block732Block776Stack5 recoveredBlock726Block732Block776PC recoveredBlock726Block732Block776Step recoveredBlock726Block732Block776Done recoveredBlock726Block732Block776Result |
    recoveredBlock726Block732Block776Stack0 := self.
    recoveredBlock726Block732Block776PC := 782.
    recoveredBlock726Block732Block776Done := false.
    [recoveredBlock726Block732Block776Done not] whileTrue: [
        recoveredBlock726Block732Block776Step := recoveredBlock726Block732Block776PC.
        recoveredBlock726Block732Block776Step = 782 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredArg3.
            recoveredBlock726Block732Block776PC := 785.
        ].
        recoveredBlock726Block732Block776Step = 785 ifTrue: [
            (recoveredBlock726Block732Block776Stack1) ifTrue: [recoveredBlock726Block732Block776PC := 788] ifFalse: [recoveredBlock726Block732Block776PC := 802].
        ].
        recoveredBlock726Block732Block776Step = 788 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredLocal7.
            recoveredBlock726Block732Block776PC := 791.
        ].
        recoveredBlock726Block732Block776Step = 791 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := (recoveredBlock726Block732Block776Stack1) class.
            recoveredBlock726Block732Block776PC := 795.
        ].
        recoveredBlock726Block732Block776Step = 795 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := (recoveredBlock726Block732Block776Stack1) realizedReturnClass.
            recoveredBlock726Block732Block776PC := 799.
        ].
        recoveredBlock726Block732Block776Step = 799 ifTrue: [
            recoveredBlock726Block732Block776PC := 813.
        ].
        recoveredBlock726Block732Block776Step = 802 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredLocal7.
            recoveredBlock726Block732Block776PC := 805.
        ].
        recoveredBlock726Block732Block776Step = 805 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := (recoveredBlock726Block732Block776Stack1) class.
            recoveredBlock726Block732Block776PC := 809.
        ].
        recoveredBlock726Block732Block776Step = 809 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := (recoveredBlock726Block732Block776Stack1) returnClass.
            recoveredBlock726Block732Block776PC := 813.
        ].
        recoveredBlock726Block732Block776Step = 813 ifTrue: [
            recoveredBlock726Block732Block776Local2 := recoveredBlock726Block732Block776Stack1.
            recoveredBlock726Block732Block776PC := 814.
        ].
        recoveredBlock726Block732Block776Step = 814 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredBlock726Block732Block776Arg1.
            recoveredBlock726Block732Block776PC := 815.
        ].
        recoveredBlock726Block732Block776Step = 815 ifTrue: [
            recoveredBlock726Block732Block776Stack2 := recoveredBlock726Block732Block776Local2.
            recoveredBlock726Block732Block776PC := 816.
        ].
        recoveredBlock726Block732Block776Step = 816 ifTrue: [
            recoveredBlock726Block732Block776Stack3 := recoveredLocal6.
            recoveredBlock726Block732Block776PC := 819.
        ].
        recoveredBlock726Block732Block776Step = 819 ifTrue: [
            recoveredBlock726Block732Block776Stack3 := (recoveredBlock726Block732Block776Stack3) xmlElementReturn.
            recoveredBlock726Block732Block776PC := 823.
        ].
        recoveredBlock726Block732Block776Step = 823 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := (recoveredBlock726Block732Block776Stack0) readElementAttributesT: (recoveredBlock726Block732Block776Stack1) defaultClass: (recoveredBlock726Block732Block776Stack2) protoEl: (recoveredBlock726Block732Block776Stack3).
            recoveredBlock726Block732Block776PC := 827.
        ].
        recoveredBlock726Block732Block776Step = 827 ifTrue: [
            recoveredBlock726Block732Local2 := recoveredBlock726Block732Block776Stack0.
            recoveredBlock726Block732Block776PC := 830.
        ].
        recoveredBlock726Block732Block776Step = 830 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732Block776PC := 833.
        ].
        recoveredBlock726Block732Block776Step = 833 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredLocal6.
            recoveredBlock726Block732Block776PC := 836.
        ].
        recoveredBlock726Block732Block776Step = 836 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := (recoveredBlock726Block732Block776Stack1) xmlElementReturn.
            recoveredBlock726Block732Block776PC := 841.
        ].
        recoveredBlock726Block732Block776Step = 841 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := (recoveredBlock726Block732Block776Stack1) xmlOID.
            recoveredBlock726Block732Block776PC := 843.
        ].
        recoveredBlock726Block732Block776Step = 843 ifTrue: [
            (recoveredBlock726Block732Block776Stack0) aliasName: (recoveredBlock726Block732Block776Stack1).
            recoveredBlock726Block732Block776PC := 845.
        ].
        recoveredBlock726Block732Block776Step = 845 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredLocal3.
            recoveredBlock726Block732Block776PC := 848.
        ].
        recoveredBlock726Block732Block776Step = 848 ifTrue: [
            (recoveredBlock726Block732Block776Stack0 == nil) ifTrue: [recoveredBlock726Block732Block776PC := 913] ifFalse: [recoveredBlock726Block732Block776PC := 852].
        ].
        recoveredBlock726Block732Block776Step = 852 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredBlock726Arg1.
            recoveredBlock726Block732Block776PC := 855.
        ].
        recoveredBlock726Block732Block776Step = 855 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := 'masterElementOID'.
            recoveredBlock726Block732Block776PC := 858.
        ].
        recoveredBlock726Block732Block776Step = 858 ifTrue: [
            recoveredBlock726Block732Block776Stack2 := nil.
            recoveredBlock726Block732Block776PC := 859.
        ].
        recoveredBlock726Block732Block776Step = 859 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := (recoveredBlock726Block732Block776Stack0) getOID: (recoveredBlock726Block732Block776Stack1) default: (recoveredBlock726Block732Block776Stack2).
            recoveredBlock726Block732Block776PC := 861.
        ].
        recoveredBlock726Block732Block776Step = 861 ifTrue: [
            recoveredBlock726Block732Block776Local1 := recoveredBlock726Block732Block776Stack0.
            recoveredBlock726Block732Block776PC := 862.
        ].
        recoveredBlock726Block732Block776Step = 862 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredBlock726Block732Block776Local1.
            recoveredBlock726Block732Block776PC := 863.
        ].
        recoveredBlock726Block732Block776Step = 863 ifTrue: [
            (recoveredBlock726Block732Block776Stack0 ~~ nil) ifTrue: [recoveredBlock726Block732Block776PC := 902] ifFalse: [recoveredBlock726Block732Block776PC := 866].
        ].
        recoveredBlock726Block732Block776Step = 866 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredLocal4.
            recoveredBlock726Block732Block776PC := 869.
        ].
        recoveredBlock726Block732Block776Step = 869 ifTrue: [
            (recoveredBlock726Block732Block776Stack0 ~~ nil) ifTrue: [recoveredBlock726Block732Block776PC := 891] ifFalse: [recoveredBlock726Block732Block776PC := 872].
        ].
        recoveredBlock726Block732Block776Step = 872 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := self.
            recoveredBlock726Block732Block776PC := 873.
        ].
        recoveredBlock726Block732Block776Step = 873 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredArg1.
            recoveredBlock726Block732Block776PC := 876.
        ].
        recoveredBlock726Block732Block776Step = 876 ifTrue: [
            recoveredBlock726Block732Block776Stack2 := recoveredLocal2.
            recoveredBlock726Block732Block776PC := 879.
        ].
        recoveredBlock726Block732Block776Step = 879 ifTrue: [
            recoveredBlock726Block732Block776Stack2 := (recoveredBlock726Block732Block776Stack2) xmlSGClass.
            recoveredBlock726Block732Block776PC := 881.
        ].
        recoveredBlock726Block732Block776Step = 881 ifTrue: [
            recoveredBlock726Block732Block776Stack3 := 'signatureName'.
            recoveredBlock726Block732Block776PC := 883.
        ].
        recoveredBlock726Block732Block776Step = 883 ifTrue: [
            recoveredBlock726Block732Block776Stack4 := 'signatureOID'.
            recoveredBlock726Block732Block776PC := 885.
        ].
        recoveredBlock726Block732Block776Step = 885 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := (recoveredBlock726Block732Block776Stack0) getMethod: (recoveredBlock726Block732Block776Stack1) in: (recoveredBlock726Block732Block776Stack2) nameTag: (recoveredBlock726Block732Block776Stack3) oidTag: (recoveredBlock726Block732Block776Stack4).
            recoveredBlock726Block732Block776PC := 888.
        ].
        recoveredBlock726Block732Block776Step = 888 ifTrue: [
            recoveredLocal4 := recoveredBlock726Block732Block776Stack0.
            recoveredBlock726Block732Block776PC := 891.
        ].
        recoveredBlock726Block732Block776Step = 891 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredLocal4.
            recoveredBlock726Block732Block776PC := 894.
        ].
        recoveredBlock726Block732Block776Step = 894 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := (recoveredBlock726Block732Block776Stack0) xmlElementReturn.
            recoveredBlock726Block732Block776PC := 899.
        ].
        recoveredBlock726Block732Block776Step = 899 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := (recoveredBlock726Block732Block776Stack0) xmlOID.
            recoveredBlock726Block732Block776PC := 901.
        ].
        recoveredBlock726Block732Block776Step = 901 ifTrue: [
            recoveredBlock726Block732Block776Local1 := recoveredBlock726Block732Block776Stack0.
            recoveredBlock726Block732Block776PC := 902.
        ].
        recoveredBlock726Block732Block776Step = 902 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732Block776PC := 905.
        ].
        recoveredBlock726Block732Block776Step = 905 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredBlock726Block732Block776Local1.
            recoveredBlock726Block732Block776PC := 906.
        ].
        recoveredBlock726Block732Block776Step = 906 ifTrue: [
            (recoveredBlock726Block732Block776Stack0) realizedElement: (recoveredBlock726Block732Block776Stack1).
            recoveredBlock726Block732Block776PC := 911.
        ].
        recoveredBlock726Block732Block776Step = 911 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := nil.
            recoveredBlock726Block732Block776PC := 912.
        ].
        recoveredBlock726Block732Block776Step = 912 ifTrue: [
            recoveredBlock726Block732Block776Local1 := recoveredBlock726Block732Block776Stack0.
            recoveredBlock726Block732Block776PC := 913.
        ].
        recoveredBlock726Block732Block776Step = 913 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732Block776PC := 916.
        ].
        recoveredBlock726Block732Block776Step = 916 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredBlock726Block732Local1.
            recoveredBlock726Block732Block776PC := 919.
        ].
        recoveredBlock726Block732Block776Step = 919 ifTrue: [
            (recoveredBlock726Block732Block776Stack0) comment: (recoveredBlock726Block732Block776Stack1).
            recoveredBlock726Block732Block776PC := 923.
        ].
        recoveredBlock726Block732Block776Step = 923 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732Block776PC := 926.
        ].
        recoveredBlock726Block732Block776Step = 926 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredLocal7.
            recoveredBlock726Block732Block776PC := 929.
        ].
        recoveredBlock726Block732Block776Step = 929 ifTrue: [
            (recoveredBlock726Block732Block776Stack0) owner: (recoveredBlock726Block732Block776Stack1).
            recoveredBlock726Block732Block776PC := 933.
        ].
        recoveredBlock726Block732Block776Step = 933 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := recoveredLocal7.
            recoveredBlock726Block732Block776PC := 936.
        ].
        recoveredBlock726Block732Block776Step = 936 ifTrue: [
            recoveredBlock726Block732Block776Stack1 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732Block776PC := 939.
        ].
        recoveredBlock726Block732Block776Step = 939 ifTrue: [
            recoveredBlock726Block732Block776Stack0 := (recoveredBlock726Block732Block776Stack0) returnValue: (recoveredBlock726Block732Block776Stack1).
            recoveredBlock726Block732Block776PC := 943.
        ].
        recoveredBlock726Block732Block776Step = 943 ifTrue: [
            recoveredBlock726Block732Block776Result := recoveredBlock726Block732Block776Stack0.
            recoveredBlock726Block732Block776Done := true.
        ].
    ].
    recoveredBlock726Block732Block776Result
].
            recoveredBlock726Block732PC := 944.
        ].
        recoveredBlock726Block732Step = 944 ifTrue: [
            recoveredBlock726Block732Stack4 := handler.
            recoveredBlock726Block732PC := 946.
        ].
        recoveredBlock726Block732Step = 946 ifTrue: [
            (recoveredBlock726Block732Stack1) required: (recoveredBlock726Block732Stack2) do: (recoveredBlock726Block732Stack3) ifNot: (recoveredBlock726Block732Stack4).
            recoveredBlock726Block732PC := 951.
        ].
        recoveredBlock726Block732Step = 951 ifTrue: [
            recoveredBlock726Block732Stack1 := recoveredBlock726Arg1.
            recoveredBlock726Block732PC := 954.
        ].
        recoveredBlock726Block732Step = 954 ifTrue: [
            recoveredBlock726Block732Stack2 := 'UUID'.
            recoveredBlock726Block732PC := 956.
        ].
        recoveredBlock726Block732Step = 956 ifTrue: [
            recoveredBlock726Block732Stack3 := nil.
            recoveredBlock726Block732PC := 957.
        ].
        recoveredBlock726Block732Step = 957 ifTrue: [
            recoveredBlock726Block732Stack1 := (recoveredBlock726Block732Stack1) getString: (recoveredBlock726Block732Stack2) default: (recoveredBlock726Block732Stack3).
            recoveredBlock726Block732PC := 959.
        ].
        recoveredBlock726Block732Step = 959 ifTrue: [
            recoveredBlock726Block732Stack2 := [:recoveredBlock726Block732Block959Arg1 | 
    | recoveredBlock726Block732Block959Value0 recoveredBlock726Block732Block959Value1 recoveredBlock726Block732Block959Value2 |
    recoveredBlock726Block732Block959Value0 := recoveredBlock726Block732Local2.
    recoveredBlock726Block732Block959Value1 := recoveredBlock726Block732Block959Arg1.
    recoveredBlock726Block732Block959Value2 := (recoveredBlock726Block732Block959Value0) uuid: (recoveredBlock726Block732Block959Value1).
    recoveredBlock726Block732Block959Value2
].
            recoveredBlock726Block732PC := 973.
        ].
        recoveredBlock726Block732Step = 973 ifTrue: [
            (recoveredBlock726Block732Stack1) ifNotNil: (recoveredBlock726Block732Stack2).
            recoveredBlock726Block732PC := 975.
        ].
        recoveredBlock726Block732Step = 975 ifTrue: [
            recoveredBlock726Block732Stack1 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732PC := 978.
        ].
        recoveredBlock726Block732Step = 978 ifTrue: [
            recoveredBlock726Block732Stack1 := (recoveredBlock726Block732Stack1) isAliasDummy.
            recoveredBlock726Block732PC := 983.
        ].
        recoveredBlock726Block732Step = 983 ifTrue: [
            (recoveredBlock726Block732Stack1) ifTrue: [recoveredBlock726Block732PC := 986] ifFalse: [recoveredBlock726Block732PC := 992].
        ].
        recoveredBlock726Block732Step = 986 ifTrue: [
            recoveredBlock726Block732Stack1 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732PC := 989.
        ].
        recoveredBlock726Block732Step = 989 ifTrue: [
            recoveredBlock726Block732Stack2 := nil.
            recoveredBlock726Block732PC := 990.
        ].
        recoveredBlock726Block732Step = 990 ifTrue: [
            (recoveredBlock726Block732Stack1) aliasName: (recoveredBlock726Block732Stack2).
            recoveredBlock726Block732PC := 992.
        ].
        recoveredBlock726Block732Step = 992 ifTrue: [
            recoveredBlock726Block732Stack1 := recoveredLocal6.
            recoveredBlock726Block732PC := 995.
        ].
        recoveredBlock726Block732Step = 995 ifTrue: [
            recoveredBlock726Block732Stack1 := (recoveredBlock726Block732Stack1) xmlElementReturn.
            recoveredBlock726Block732PC := 999.
        ].
        recoveredBlock726Block732Step = 999 ifTrue: [
            recoveredBlock726Block732Stack2 := recoveredBlock726Block732Local2.
            recoveredBlock726Block732PC := 1002.
        ].
        recoveredBlock726Block732Step = 1002 ifTrue: [
            (recoveredBlock726Block732Stack1) thing: (recoveredBlock726Block732Stack2).
            recoveredBlock726Block732PC := 1004.
        ].
        recoveredBlock726Block732Step = 1004 ifTrue: [
            recoveredBlock726Block732Stack1 := recoveredBlock726Arg1.
            recoveredBlock726Block732PC := 1007.
        ].
        recoveredBlock726Block732Step = 1007 ifTrue: [
            recoveredBlock726Block732Stack2 := [:recoveredBlock726Block732Block1007Arg1 | 
    | recoveredBlock726Block732Block1007Value0 recoveredBlock726Block732Block1007Value1 recoveredBlock726Block732Block1007Value2 recoveredBlock726Block732Block1007Value3 recoveredBlock726Block732Block1007Value4 |
    recoveredBlock726Block732Block1007Value0 := recoveredLocal6.
    recoveredBlock726Block732Block1007Value1 := recoveredBlock726Block732Block1007Arg1.
    recoveredBlock726Block732Block1007Value2 := recoveredLocal6.
    recoveredBlock726Block732Block1007Value3 := (recoveredBlock726Block732Block1007Value2) xmlElementReturn.
    recoveredBlock726Block732Block1007Value4 := (recoveredBlock726Block732Block1007Value0) setCustomerData: (recoveredBlock726Block732Block1007Value1) forVariable: (recoveredBlock726Block732Block1007Value3).
    recoveredBlock726Block732Block1007Value4
].
            recoveredBlock726Block732PC := 1030.
        ].
        recoveredBlock726Block732Step = 1030 ifTrue: [
            (recoveredBlock726Block732Stack0) readCustomerDatas: (recoveredBlock726Block732Stack1) storeBlock: (recoveredBlock726Block732Stack2).
            recoveredBlock726Block732PC := 1035.
        ].
        recoveredBlock726Block732Step = 1035 ifTrue: [
            recoveredBlock726Block732Stack0 := recoveredBlock726Arg1.
            recoveredBlock726Block732PC := 1038.
        ].
        recoveredBlock726Block732Step = 1038 ifTrue: [
            recoveredBlock726Block732Stack1 := handler.
            recoveredBlock726Block732PC := 1040.
        ].
        recoveredBlock726Block732Step = 1040 ifTrue: [
            recoveredBlock726Block732Stack0 := (recoveredBlock726Block732Stack0) doneIfNot: (recoveredBlock726Block732Stack1).
            recoveredBlock726Block732PC := 1045.
        ].
        recoveredBlock726Block732Step = 1045 ifTrue: [
            recoveredBlock726Block732Result := recoveredBlock726Block732Stack0.
            recoveredBlock726Block732Done := true.
        ].
    ].
    recoveredBlock726Block732Result
].
            recoveredBlock726PC := 1046.
        ].
        recoveredBlock726Step = 1046 ifTrue: [
            recoveredBlock726Stack2 := ElementNotFound.
            recoveredBlock726PC := 1048.
        ].
        recoveredBlock726Step = 1048 ifTrue: [
            recoveredBlock726Stack3 := [:block281270b4Arg1 | 
    | block281270b4Value0 block281270b4Value1 |
    block281270b4Value0 := block281270b4Arg1.
    block281270b4Value1 := (block281270b4Value0) exitWith: (nil).
    block281270b4Value1
].
            recoveredBlock726PC := 1052.
        ].
        recoveredBlock726Step = 1052 ifTrue: [
            recoveredBlock726PC := 1061.
        ].
        recoveredBlock726Step = 1061 ifTrue: [
            recoveredBlock726Stack1 := (recoveredBlock726Stack1) when: (recoveredBlock726Stack2) do: (recoveredBlock726Stack3).
            recoveredBlock726PC := 1063.
        ].
        recoveredBlock726Step = 1063 ifTrue: [
            recoveredBlock726Result := recoveredBlock726Stack1.
            recoveredBlock726Done := true.
        ].
    ].
    recoveredBlock726Result
].
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack1 := 'Locals'.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack2 := [:recoveredBlock1076Arg1 | 
    | recoveredBlock1076Value0 recoveredBlock1076Value1 recoveredBlock1076Value2 recoveredBlock1076Value3 recoveredBlock1076Value4 |
    recoveredBlock1076Value0 := recoveredBlock1076Arg1.
    recoveredBlock1076Value1 := [:recoveredBlock1076Block1086Arg1 | 
    | recoveredBlock1076Block1086Stack0 recoveredBlock1076Block1086Stack1 recoveredBlock1076Block1086Stack2 recoveredBlock1076Block1086Stack3 recoveredBlock1076Block1086Stack4 recoveredBlock1076Block1086PC recoveredBlock1076Block1086Step recoveredBlock1076Block1086Done recoveredBlock1076Block1086Result |
    recoveredBlock1076Block1086Stack0 := self.
    recoveredBlock1076Block1086PC := 1092.
    recoveredBlock1076Block1086Done := false.
    [recoveredBlock1076Block1086Done not] whileTrue: [
        recoveredBlock1076Block1086Step := recoveredBlock1076Block1086PC.
        recoveredBlock1076Block1086Step = 1092 ifTrue: [
            recoveredBlock1076Block1086Stack1 := [
    | recoveredBlock1076Block1086Block1092Value0 recoveredBlock1076Block1086Block1092Value1 recoveredBlock1076Block1086Block1092Value2 recoveredBlock1076Block1086Block1092Value3 recoveredBlock1076Block1086Block1092Value4 recoveredBlock1076Block1086Block1092Value5 recoveredBlock1076Block1086Block1092Value6 |
    recoveredBlock1076Block1086Block1092Value0 := recoveredLocal7.
    recoveredBlock1076Block1086Block1092Value1 := recoveredBlock1076Block1086Arg1.
    recoveredBlock1076Block1086Block1092Value2 := SGLocalVariable.
    recoveredBlock1076Block1086Block1092Value3 := recoveredLocal6.
    recoveredBlock1076Block1086Block1092Value4 := (self) readElementT: (recoveredBlock1076Block1086Block1092Value1) defaultClass: (recoveredBlock1076Block1086Block1092Value2) parent: (recoveredBlock1076Block1086Block1092Value3).
    recoveredBlock1076Block1086Block1092Value5 := (recoveredBlock1076Block1086Block1092Value4) thing.
    recoveredBlock1076Block1086Block1092Value6 := (recoveredBlock1076Block1086Block1092Value0) internalAddVar: (recoveredBlock1076Block1086Block1092Value5).
    recoveredBlock1076Block1086Block1092Value6
].
            recoveredBlock1076Block1086PC := 1122.
        ].
        recoveredBlock1076Block1086Step = 1122 ifTrue: [
            recoveredBlock1076Block1086Stack2 := ElementNotFound.
            recoveredBlock1076Block1086PC := 1124.
        ].
        recoveredBlock1076Block1086Step = 1124 ifTrue: [
            recoveredBlock1076Block1086Stack3 := [:block281270d8Arg1 | 
    | block281270d8Value0 block281270d8Value1 |
    block281270d8Value0 := block281270d8Arg1.
    block281270d8Value1 := (block281270d8Value0) exitWith: (nil).
    block281270d8Value1
].
            recoveredBlock1076Block1086PC := 1128.
        ].
        recoveredBlock1076Block1086Step = 1128 ifTrue: [
            recoveredBlock1076Block1086PC := 1137.
        ].
        recoveredBlock1076Block1086Step = 1137 ifTrue: [
            recoveredBlock1076Block1086Stack1 := (recoveredBlock1076Block1086Stack1) when: (recoveredBlock1076Block1086Stack2) do: (recoveredBlock1076Block1086Stack3).
            recoveredBlock1076Block1086PC := 1139.
        ].
        recoveredBlock1076Block1086Step = 1139 ifTrue: [
            recoveredBlock1076Block1086Result := recoveredBlock1076Block1086Stack1.
            recoveredBlock1076Block1086Done := true.
        ].
    ].
    recoveredBlock1076Block1086Result
].
    (recoveredBlock1076Value0) multiple: ('Local') do: (recoveredBlock1076Value1).
    recoveredBlock1076Value2 := recoveredBlock1076Arg1.
    recoveredBlock1076Value3 := handler.
    recoveredBlock1076Value4 := (recoveredBlock1076Value2) doneIfNot: (recoveredBlock1076Value3).
    recoveredBlock1076Value4
].
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206750a4; bytecode file offset 0xf71b08"
!ASDXMLImportStepMainBase methodsFor: 'recovered'!
readElementAttributesT: recoveredArg1 defaultClass: recoveredArg2 protoEl: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := (LookupTable new) elementCount: (7); keyArray: (#(nil nil nil 'scalar' nil 'oned' 'twod' nil 'distribution' nil nil nil 'array' nil nil nil 'complex' nil nil nil nil 'matrix')); valueArray: (#(nil nil nil SGScalarType nil SGOneDCharTable SGTwoDCharTable nil SGDistribution nil nil nil SGVector nil nil nil nil nil nil nil nil SGMatrix)); yourself.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'modelType'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNMToken: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) isPrimitive: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'XMLImport'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'unit'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'unitId'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'basicModelType'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'implementationCast'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := SGImplementationCast.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'Call_71157'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlOID.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeDBProxy: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 1218.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 'Call_2009405875'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := ASDGenericComponentElement.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := SGVariable.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (LookupTable new) elementCount: (13); keyArray: (#(nil nil nil nil nil nil nil nil nil nil nil nil nil nil 'enumeration' nil nil 'cont' nil nil nil nil nil nil 'wrapInt' nil nil nil 'log' nil nil nil nil nil nil 'resource' 'dt' 'udisc' 'rteStandardReturnType' 'class' 'module' 'sdisc' 'limitInt' 'interface')); valueArray: (#(nil nil nil nil nil nil nil nil nil nil nil nil nil nil SGEnumeration nil nil SGReal nil nil nil nil nil nil SGWrapAroundInteger nil nil nil SGBoolean nil nil nil nil nil nil SGResource SGDeltaT SGUnsignedInteger SGRTEStandardReturnType nil nil SGSignedInteger SGLimitedInteger nil)); yourself.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := [:block28127900Arg1 | 
    | block28127900Value0 block28127900Value1 block28127900Value2 |
    block28127900Value0 := block28127900Arg1.
    block28127900Value1 := (block28127900Value0) new.
    block28127900Value2 := (block28127900Value1) initialize.
    block28127900Value2
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := 'AdditionalIntegerAttributes'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := [:recoveredBlock174Arg1 | 
    | recoveredBlock174Value0 recoveredBlock174Value1 recoveredBlock174Value2 |
    recoveredBlock174Value0 := recoveredBlock174Arg1.
    recoveredBlock174Value1 := recoveredLocal2.
    recoveredBlock174Value2 := (self) readXMLIntegerAttributesNode: (recoveredBlock174Value0) type: (recoveredBlock174Value1).
    recoveredBlock174Value2
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 'ScalarType'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := [:recoveredBlock194Arg1 | 
    | recoveredBlock194Value0 recoveredBlock194Value1 recoveredBlock194Value2 recoveredBlock194Value3 recoveredBlock194Value4 recoveredBlock194Value5 recoveredBlock194Value6 |
    recoveredBlock194Value0 := recoveredBlock194Arg1.
    recoveredBlock194Value1 := [:recoveredBlock194Block203Arg1 | 
    | recoveredBlock194Block203Value0 recoveredBlock194Block203Value1 recoveredBlock194Block203Value2 recoveredBlock194Block203Value3 |
    recoveredBlock194Block203Value0 := recoveredBlock194Block203Arg1.
    recoveredBlock194Block203Value1 := recoveredLocal3.
    recoveredBlock194Block203Value2 := recoveredLocal2.
    recoveredBlock194Block203Value3 := (self) readScalarAttributesT: (recoveredBlock194Block203Value0) newEl: (recoveredBlock194Block203Value1) type: (recoveredBlock194Block203Value2).
    recoveredBlock194Block203Value3
].
    recoveredBlock194Value2 := [:recoveredBlock194Block223Arg1 | 
    | recoveredBlock194Block223Value0 recoveredBlock194Block223Value1 recoveredBlock194Block223Value2 |
    recoveredBlock194Block223Value0 := recoveredBlock194Block223Arg1.
    recoveredBlock194Block223Value1 := recoveredLocal3.
    recoveredBlock194Block223Value2 := (self) readEnumerationAttributesT: (recoveredBlock194Block223Value0) newEl: (recoveredBlock194Block223Value1).
    recoveredBlock194Block223Value2
].
    recoveredBlock194Value3 := handler.
    (recoveredBlock194Value0) choice: ('ScalarAttributes') do: (recoveredBlock194Value1) choice: ('EnumerationAttributes') do: (recoveredBlock194Value2) ifNot: (recoveredBlock194Value3).
    recoveredBlock194Value4 := recoveredBlock194Arg1.
    recoveredBlock194Value5 := handler.
    recoveredBlock194Value6 := (recoveredBlock194Value4) doneIfNot: (recoveredBlock194Value5).
    recoveredBlock194Value6
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := 'DimensionalType'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack5 := [:recoveredBlock250Arg1 | 
    | recoveredBlock250Local1 recoveredBlock250Stack0 recoveredBlock250Stack1 recoveredBlock250Stack2 recoveredBlock250Stack3 recoveredBlock250Stack4 recoveredBlock250Stack5 recoveredBlock250PC recoveredBlock250Step recoveredBlock250Done recoveredBlock250Result |
    recoveredBlock250Stack0 := self.
    recoveredBlock250PC := 256.
    recoveredBlock250Done := false.
    [recoveredBlock250Done not] whileTrue: [
        recoveredBlock250Step := recoveredBlock250PC.
        recoveredBlock250Step = 256 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 259.
        ].
        recoveredBlock250Step = 259 ifTrue: [
            recoveredBlock250Stack2 := SGOneDCharTable.
            recoveredBlock250PC := 261.
        ].
        recoveredBlock250Step = 261 ifTrue: [
            (recoveredBlock250Stack1 == recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 272] ifFalse: [recoveredBlock250PC := 264].
        ].
        recoveredBlock250Step = 264 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 267.
        ].
        recoveredBlock250Step = 267 ifTrue: [
            recoveredBlock250Stack2 := SGTwoDCharTable.
            recoveredBlock250PC := 269.
        ].
        recoveredBlock250Step = 269 ifTrue: [
            (recoveredBlock250Stack1 ~~ recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 512] ifFalse: [recoveredBlock250PC := 272].
        ].
        recoveredBlock250Step = 272 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 275.
        ].
        recoveredBlock250Step = 275 ifTrue: [
            recoveredBlock250Stack2 := 'type'.
            recoveredBlock250PC := 277.
        ].
        recoveredBlock250Step = 277 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) getNMToken: (recoveredBlock250Stack2).
            recoveredBlock250PC := 278.
        ].
        recoveredBlock250Step = 278 ifTrue: [
            recoveredBlock250Local1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 281.
        ].
        recoveredBlock250Step = 281 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Local1.
            recoveredBlock250PC := 284.
        ].
        recoveredBlock250Step = 284 ifTrue: [
            recoveredBlock250Stack2 := 'grouped'.
            recoveredBlock250PC := 286.
        ].
        recoveredBlock250Step = 286 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) = (recoveredBlock250Stack2).
            recoveredBlock250PC := 287.
        ].
        recoveredBlock250Step = 287 ifTrue: [
            (recoveredBlock250Stack1) ifTrue: [recoveredBlock250PC := 290] ifFalse: [recoveredBlock250PC := 448].
        ].
        recoveredBlock250Step = 290 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 293.
        ].
        recoveredBlock250Step = 293 ifTrue: [
            recoveredBlock250Stack2 := SGOneDCharTable.
            recoveredBlock250PC := 295.
        ].
        recoveredBlock250Step = 295 ifTrue: [
            (recoveredBlock250Stack1 ~~ recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 346] ifFalse: [recoveredBlock250PC := 298].
        ].
        recoveredBlock250Step = 298 ifTrue: [
            recoveredBlock250Stack1 := SGOneDGroupCharTable.
            recoveredBlock250PC := 300.
        ].
        recoveredBlock250Step = 300 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) new.
            recoveredBlock250PC := 302.
        ].
        recoveredBlock250Step = 302 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) initialize.
            recoveredBlock250PC := 304.
        ].
        recoveredBlock250Step = 304 ifTrue: [
            recoveredLocal1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 307.
        ].
        recoveredBlock250Step = 307 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 310.
        ].
        recoveredBlock250Step = 310 ifTrue: [
            recoveredBlock250Stack2 := [
    | recoveredBlock250Block310Value0 recoveredBlock250Block310Value1 |
    recoveredBlock250Block310Value0 := recoveredBlock250Arg1.
    recoveredBlock250Block310Value1 := (self) getElementOID: (recoveredBlock250Block310Value0) nameAttr: ('xDistributionName') oidAttr: ('xDistributionOID').
    recoveredBlock250Block310Value1
].
            recoveredBlock250PC := 327.
        ].
        recoveredBlock250Step = 327 ifTrue: [
            recoveredBlock250Stack3 := ElementNotFound.
            recoveredBlock250PC := 329.
        ].
        recoveredBlock250Step = 329 ifTrue: [
            recoveredBlock250Stack4 := [:block28127924Arg1 | 
    | block28127924Value0 block28127924Value1 |
    block28127924Value0 := block28127924Arg1.
    block28127924Value1 := (block28127924Value0) exitWith: (nil).
    block28127924Value1
].
            recoveredBlock250PC := 331.
        ].
        recoveredBlock250Step = 331 ifTrue: [
            recoveredBlock250PC := 339.
        ].
        recoveredBlock250Step = 339 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) when: (recoveredBlock250Stack3) do: (recoveredBlock250Stack4).
            recoveredBlock250PC := 341.
        ].
        recoveredBlock250Step = 341 ifTrue: [
            (recoveredBlock250Stack1) xDistributionAlias: (recoveredBlock250Stack2).
            recoveredBlock250PC := 343.
        ].
        recoveredBlock250Step = 343 ifTrue: [
            recoveredBlock250PC := 427.
        ].
        recoveredBlock250Step = 346 ifTrue: [
            recoveredBlock250Stack1 := SGTwoDGroupCharTable.
            recoveredBlock250PC := 348.
        ].
        recoveredBlock250Step = 348 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) new.
            recoveredBlock250PC := 350.
        ].
        recoveredBlock250Step = 350 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) initialize.
            recoveredBlock250PC := 352.
        ].
        recoveredBlock250Step = 352 ifTrue: [
            recoveredLocal1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 355.
        ].
        recoveredBlock250Step = 355 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 358.
        ].
        recoveredBlock250Step = 358 ifTrue: [
            recoveredBlock250Stack2 := [
    | recoveredBlock250Block358Value0 recoveredBlock250Block358Value1 |
    recoveredBlock250Block358Value0 := recoveredBlock250Arg1.
    recoveredBlock250Block358Value1 := (self) getElementOID: (recoveredBlock250Block358Value0) nameAttr: ('xDistributionName') oidAttr: ('xDistributionOID').
    recoveredBlock250Block358Value1
].
            recoveredBlock250PC := 375.
        ].
        recoveredBlock250Step = 375 ifTrue: [
            recoveredBlock250Stack3 := ElementNotFound.
            recoveredBlock250PC := 377.
        ].
        recoveredBlock250Step = 377 ifTrue: [
            recoveredBlock250Stack4 := [:block28127948Arg1 | 
    | block28127948Value0 block28127948Value1 |
    block28127948Value0 := block28127948Arg1.
    block28127948Value1 := (block28127948Value0) exitWith: (nil).
    block28127948Value1
].
            recoveredBlock250PC := 379.
        ].
        recoveredBlock250Step = 379 ifTrue: [
            recoveredBlock250PC := 387.
        ].
        recoveredBlock250Step = 387 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) when: (recoveredBlock250Stack3) do: (recoveredBlock250Stack4).
            recoveredBlock250PC := 389.
        ].
        recoveredBlock250Step = 389 ifTrue: [
            (recoveredBlock250Stack1) xDistributionAlias: (recoveredBlock250Stack2).
            recoveredBlock250PC := 391.
        ].
        recoveredBlock250Step = 391 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 394.
        ].
        recoveredBlock250Step = 394 ifTrue: [
            recoveredBlock250Stack2 := [
    | recoveredBlock250Block394Value0 recoveredBlock250Block394Value1 |
    recoveredBlock250Block394Value0 := recoveredBlock250Arg1.
    recoveredBlock250Block394Value1 := (self) getElementOID: (recoveredBlock250Block394Value0) nameAttr: ('yDistributionName') oidAttr: ('yDistributionOID').
    recoveredBlock250Block394Value1
].
            recoveredBlock250PC := 411.
        ].
        recoveredBlock250Step = 411 ifTrue: [
            recoveredBlock250Stack3 := ElementNotFound.
            recoveredBlock250PC := 413.
        ].
        recoveredBlock250Step = 413 ifTrue: [
            recoveredBlock250Stack4 := [:block2812796cArg1 | 
    | block2812796cValue0 block2812796cValue1 |
    block2812796cValue0 := block2812796cArg1.
    block2812796cValue1 := (block2812796cValue0) exitWith: (nil).
    block2812796cValue1
].
            recoveredBlock250PC := 415.
        ].
        recoveredBlock250Step = 415 ifTrue: [
            recoveredBlock250PC := 423.
        ].
        recoveredBlock250Step = 423 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) when: (recoveredBlock250Stack3) do: (recoveredBlock250Stack4).
            recoveredBlock250PC := 425.
        ].
        recoveredBlock250Step = 425 ifTrue: [
            (recoveredBlock250Stack1) yDistributionAlias: (recoveredBlock250Stack2).
            recoveredBlock250PC := 427.
        ].
        recoveredBlock250Step = 427 ifTrue: [
            recoveredBlock250Stack1 := groupedElements.
            recoveredBlock250PC := 429.
        ].
        recoveredBlock250Step = 429 ifTrue: [
            recoveredBlock250Stack2 := recoveredLocal1.
            recoveredBlock250PC := 432.
        ].
        recoveredBlock250Step = 432 ifTrue: [
            (recoveredBlock250Stack1) add: (recoveredBlock250Stack2).
            recoveredBlock250PC := 437.
        ].
        recoveredBlock250Step = 437 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 440.
        ].
        recoveredBlock250Step = 440 ifTrue: [
            (recoveredBlock250Stack1) clearFixed.
            recoveredBlock250PC := 445.
        ].
        recoveredBlock250Step = 445 ifTrue: [
            recoveredBlock250PC := 489.
        ].
        recoveredBlock250Step = 448 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 451.
        ].
        recoveredBlock250Step = 451 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) new.
            recoveredBlock250PC := 453.
        ].
        recoveredBlock250Step = 453 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) initialize.
            recoveredBlock250PC := 455.
        ].
        recoveredBlock250Step = 455 ifTrue: [
            recoveredLocal1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 458.
        ].
        recoveredBlock250Step = 458 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 461.
        ].
        recoveredBlock250Step = 461 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Local1.
            recoveredBlock250PC := 464.
        ].
        recoveredBlock250Step = 464 ifTrue: [
            recoveredBlock250Stack3 := 'fixed'.
            recoveredBlock250PC := 468.
        ].
        recoveredBlock250Step = 468 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) = (recoveredBlock250Stack3).
            recoveredBlock250PC := 469.
        ].
        recoveredBlock250Step = 469 ifTrue: [
            (recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 472] ifFalse: [recoveredBlock250PC := 480].
        ].
        recoveredBlock250Step = 472 ifTrue: [
            recoveredBlock250Stack2 := 'setFixed'.
            recoveredBlock250PC := 476.
        ].
        recoveredBlock250Step = 476 ifTrue: [
            recoveredBlock250PC := 484.
        ].
        recoveredBlock250Step = 480 ifTrue: [
            recoveredBlock250Stack2 := 'clearFixed'.
            recoveredBlock250PC := 484.
        ].
        recoveredBlock250Step = 484 ifTrue: [
            (recoveredBlock250Stack1) perform: (recoveredBlock250Stack2).
            recoveredBlock250PC := 489.
        ].
        recoveredBlock250Step = 489 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 492.
        ].
        recoveredBlock250Step = 492 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 495.
        ].
        recoveredBlock250Step = 495 ifTrue: [
            recoveredBlock250Stack3 := 'interpolation'.
            recoveredBlock250PC := 498.
        ].
        recoveredBlock250Step = 498 ifTrue: [
            recoveredBlock250Stack4 := nil.
            recoveredBlock250PC := 499.
        ].
        recoveredBlock250Step = 499 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) getString: (recoveredBlock250Stack3) default: (recoveredBlock250Stack4).
            recoveredBlock250PC := 501.
        ].
        recoveredBlock250Step = 501 ifTrue: [
            (recoveredBlock250Stack1) setInterpolation: (recoveredBlock250Stack2).
            recoveredBlock250PC := 505.
        ].
        recoveredBlock250Step = 505 ifTrue: [
            recoveredBlock250Stack1 := nil.
            recoveredBlock250PC := 506.
        ].
        recoveredBlock250Step = 506 ifTrue: [
            recoveredBlock250Local1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 509.
        ].
        recoveredBlock250Step = 509 ifTrue: [
            recoveredBlock250PC := 522.
        ].
        recoveredBlock250Step = 512 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 515.
        ].
        recoveredBlock250Step = 515 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) new.
            recoveredBlock250PC := 517.
        ].
        recoveredBlock250Step = 517 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) initialize.
            recoveredBlock250PC := 519.
        ].
        recoveredBlock250Step = 519 ifTrue: [
            recoveredLocal1 := recoveredBlock250Stack1.
            recoveredBlock250PC := 522.
        ].
        recoveredBlock250Step = 522 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 525.
        ].
        recoveredBlock250Step = 525 ifTrue: [
            recoveredBlock250Stack2 := recoveredLocal2.
            recoveredBlock250PC := 528.
        ].
        recoveredBlock250Step = 528 ifTrue: [
            (recoveredBlock250Stack1) basicTypes: (recoveredBlock250Stack2).
            recoveredBlock250PC := 533.
        ].
        recoveredBlock250Step = 533 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 536.
        ].
        recoveredBlock250Step = 536 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) getNrDimensions.
            recoveredBlock250PC := 541.
        ].
        recoveredBlock250Step = 541 ifTrue: [
            recoveredBlock250Stack2 := 1.
            recoveredBlock250PC := 543.
        ].
        recoveredBlock250Step = 543 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) = (recoveredBlock250Stack2).
            recoveredBlock250PC := 544.
        ].
        recoveredBlock250Step = 544 ifTrue: [
            (recoveredBlock250Stack1) ifTrue: [recoveredBlock250PC := 548] ifFalse: [recoveredBlock250PC := 612].
        ].
        recoveredBlock250Step = 548 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 551.
        ].
        recoveredBlock250Step = 551 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 554.
        ].
        recoveredBlock250Step = 554 ifTrue: [
            recoveredBlock250Stack3 := 'maxSizeX'.
            recoveredBlock250PC := 558.
        ].
        recoveredBlock250Step = 558 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) getNNInt: (recoveredBlock250Stack3).
            recoveredBlock250PC := 563.
        ].
        recoveredBlock250Step = 563 ifTrue: [
            (recoveredBlock250Stack1) maxSize: (recoveredBlock250Stack2).
            recoveredBlock250PC := 567.
        ].
        recoveredBlock250Step = 567 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 570.
        ].
        recoveredBlock250Step = 570 ifTrue: [
            recoveredBlock250Stack2 := SGOneDCharTable.
            recoveredBlock250PC := 572.
        ].
        recoveredBlock250Step = 572 ifTrue: [
            (recoveredBlock250Stack1 ~~ recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 608] ifFalse: [recoveredBlock250PC := 576].
        ].
        recoveredBlock250Step = 576 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 579.
        ].
        recoveredBlock250Step = 579 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) xType.
            recoveredBlock250PC := 583.
        ].
        recoveredBlock250Step = 583 ifTrue: [
            recoveredBlock250Stack2 := [:recoveredBlock250Block583Arg1 | 
    | recoveredBlock250Block583Value0 recoveredBlock250Block583Value1 recoveredBlock250Block583Value2 recoveredBlock250Block583Value3 |
    recoveredBlock250Block583Value0 := recoveredBlock250Block583Arg1.
    recoveredBlock250Block583Value1 := recoveredBlock250Arg1.
    recoveredBlock250Block583Value2 := (recoveredBlock250Block583Value1) getNMToken: ('xUnitId') default: (nil).
    recoveredBlock250Block583Value3 := (recoveredBlock250Block583Value0) unitId: (recoveredBlock250Block583Value2).
    recoveredBlock250Block583Value3
].
            recoveredBlock250PC := 606.
        ].
        recoveredBlock250Step = 606 ifTrue: [
            (recoveredBlock250Stack1) ifNotNil: (recoveredBlock250Stack2).
            recoveredBlock250PC := 608.
        ].
        recoveredBlock250Step = 608 ifTrue: [
            recoveredBlock250PC := 720.
        ].
        recoveredBlock250Step = 612 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 615.
        ].
        recoveredBlock250Step = 615 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 618.
        ].
        recoveredBlock250Step = 618 ifTrue: [
            recoveredBlock250Stack3 := 'maxSizeX'.
            recoveredBlock250PC := 622.
        ].
        recoveredBlock250Step = 622 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) getNNInt: (recoveredBlock250Stack3).
            recoveredBlock250PC := 627.
        ].
        recoveredBlock250Step = 627 ifTrue: [
            recoveredBlock250Stack3 := recoveredBlock250Arg1.
            recoveredBlock250PC := 630.
        ].
        recoveredBlock250Step = 630 ifTrue: [
            recoveredBlock250Stack4 := 'maxSizeY'.
            recoveredBlock250PC := 634.
        ].
        recoveredBlock250Step = 634 ifTrue: [
            recoveredBlock250Stack3 := (recoveredBlock250Stack3) getNNInt: (recoveredBlock250Stack4).
            recoveredBlock250PC := 639.
        ].
        recoveredBlock250Step = 639 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) @ (recoveredBlock250Stack3).
            recoveredBlock250PC := 643.
        ].
        recoveredBlock250Step = 643 ifTrue: [
            (recoveredBlock250Stack1) maxSize: (recoveredBlock250Stack2).
            recoveredBlock250PC := 647.
        ].
        recoveredBlock250Step = 647 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 650.
        ].
        recoveredBlock250Step = 650 ifTrue: [
            recoveredBlock250Stack2 := SGTwoDCharTable.
            recoveredBlock250PC := 652.
        ].
        recoveredBlock250Step = 652 ifTrue: [
            (recoveredBlock250Stack1 ~~ recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 720] ifFalse: [recoveredBlock250PC := 656].
        ].
        recoveredBlock250Step = 656 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 659.
        ].
        recoveredBlock250Step = 659 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) xType.
            recoveredBlock250PC := 663.
        ].
        recoveredBlock250Step = 663 ifTrue: [
            recoveredBlock250Stack2 := [:recoveredBlock250Block663Arg1 | 
    | recoveredBlock250Block663Value0 recoveredBlock250Block663Value1 recoveredBlock250Block663Value2 recoveredBlock250Block663Value3 |
    recoveredBlock250Block663Value0 := recoveredBlock250Block663Arg1.
    recoveredBlock250Block663Value1 := recoveredBlock250Arg1.
    recoveredBlock250Block663Value2 := (recoveredBlock250Block663Value1) getNMToken: ('xUnitId') default: (nil).
    recoveredBlock250Block663Value3 := (recoveredBlock250Block663Value0) unitId: (recoveredBlock250Block663Value2).
    recoveredBlock250Block663Value3
].
            recoveredBlock250PC := 686.
        ].
        recoveredBlock250Step = 686 ifTrue: [
            (recoveredBlock250Stack1) ifNotNil: (recoveredBlock250Stack2).
            recoveredBlock250PC := 688.
        ].
        recoveredBlock250Step = 688 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 691.
        ].
        recoveredBlock250Step = 691 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) yType.
            recoveredBlock250PC := 695.
        ].
        recoveredBlock250Step = 695 ifTrue: [
            recoveredBlock250Stack2 := [:recoveredBlock250Block695Arg1 | 
    | recoveredBlock250Block695Value0 recoveredBlock250Block695Value1 recoveredBlock250Block695Value2 recoveredBlock250Block695Value3 |
    recoveredBlock250Block695Value0 := recoveredBlock250Block695Arg1.
    recoveredBlock250Block695Value1 := recoveredBlock250Arg1.
    recoveredBlock250Block695Value2 := (recoveredBlock250Block695Value1) getNMToken: ('yUnitId') default: (nil).
    recoveredBlock250Block695Value3 := (recoveredBlock250Block695Value0) unitId: (recoveredBlock250Block695Value2).
    recoveredBlock250Block695Value3
].
            recoveredBlock250PC := 718.
        ].
        recoveredBlock250Step = 718 ifTrue: [
            (recoveredBlock250Stack1) ifNotNil: (recoveredBlock250Stack2).
            recoveredBlock250PC := 720.
        ].
        recoveredBlock250Step = 720 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 723.
        ].
        recoveredBlock250Step = 723 ifTrue: [
            recoveredBlock250Stack2 := 'xSizeVariantElementName'.
            recoveredBlock250PC := 726.
        ].
        recoveredBlock250Step = 726 ifTrue: [
            recoveredBlock250Stack3 := nil.
            recoveredBlock250PC := 727.
        ].
        recoveredBlock250Step = 727 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) getNMToken: (recoveredBlock250Stack2) default: (recoveredBlock250Stack3).
            recoveredBlock250PC := 729.
        ].
        recoveredBlock250Step = 729 ifTrue: [
            (recoveredBlock250Stack1 ~~ nil) ifTrue: [recoveredBlock250PC := 744] ifFalse: [recoveredBlock250PC := 732].
        ].
        recoveredBlock250Step = 732 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 735.
        ].
        recoveredBlock250Step = 735 ifTrue: [
            recoveredBlock250Stack2 := 'xSizeVariantElementOID'.
            recoveredBlock250PC := 738.
        ].
        recoveredBlock250Step = 738 ifTrue: [
            recoveredBlock250Stack3 := nil.
            recoveredBlock250PC := 739.
        ].
        recoveredBlock250Step = 739 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) getNMToken: (recoveredBlock250Stack2) default: (recoveredBlock250Stack3).
            recoveredBlock250PC := 741.
        ].
        recoveredBlock250Step = 741 ifTrue: [
            (recoveredBlock250Stack1 == nil) ifTrue: [recoveredBlock250PC := 789] ifFalse: [recoveredBlock250PC := 744].
        ].
        recoveredBlock250Step = 744 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 747.
        ].
        recoveredBlock250Step = 747 ifTrue: [
            recoveredBlock250Stack2 := [
    | recoveredBlock250Block747Value0 recoveredBlock250Block747Value1 |
    recoveredBlock250Block747Value0 := recoveredBlock250Arg1.
    recoveredBlock250Block747Value1 := (self) getElementOID: (recoveredBlock250Block747Value0) nameAttr: ('xSizeVariantElementName') oidAttr: ('xSizeVariantElementOID').
    recoveredBlock250Block747Value1
].
            recoveredBlock250PC := 768.
        ].
        recoveredBlock250Step = 768 ifTrue: [
            recoveredBlock250Stack3 := ElementNotFound.
            recoveredBlock250PC := 770.
        ].
        recoveredBlock250Step = 770 ifTrue: [
            recoveredBlock250Stack4 := [:block28127990Arg1 | 
    | block28127990Value0 block28127990Value1 |
    block28127990Value0 := block28127990Arg1.
    block28127990Value1 := (block28127990Value0) exitWith: (nil).
    block28127990Value1
].
            recoveredBlock250PC := 774.
        ].
        recoveredBlock250Step = 774 ifTrue: [
            recoveredBlock250PC := 783.
        ].
        recoveredBlock250Step = 783 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) when: (recoveredBlock250Stack3) do: (recoveredBlock250Stack4).
            recoveredBlock250PC := 785.
        ].
        recoveredBlock250Step = 785 ifTrue: [
            (recoveredBlock250Stack1) xSizeCheckValue: (recoveredBlock250Stack2).
            recoveredBlock250PC := 789.
        ].
        recoveredBlock250Step = 789 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 792.
        ].
        recoveredBlock250Step = 792 ifTrue: [
            recoveredBlock250Stack2 := 'ySizeVariantElementName'.
            recoveredBlock250PC := 796.
        ].
        recoveredBlock250Step = 796 ifTrue: [
            recoveredBlock250Stack3 := nil.
            recoveredBlock250PC := 797.
        ].
        recoveredBlock250Step = 797 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) getNMToken: (recoveredBlock250Stack2) default: (recoveredBlock250Stack3).
            recoveredBlock250PC := 799.
        ].
        recoveredBlock250Step = 799 ifTrue: [
            (recoveredBlock250Stack1 ~~ nil) ifTrue: [recoveredBlock250PC := 814] ifFalse: [recoveredBlock250PC := 802].
        ].
        recoveredBlock250Step = 802 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 805.
        ].
        recoveredBlock250Step = 805 ifTrue: [
            recoveredBlock250Stack2 := 'ySizeVariantElementOID'.
            recoveredBlock250PC := 808.
        ].
        recoveredBlock250Step = 808 ifTrue: [
            recoveredBlock250Stack3 := nil.
            recoveredBlock250PC := 809.
        ].
        recoveredBlock250Step = 809 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) getNMToken: (recoveredBlock250Stack2) default: (recoveredBlock250Stack3).
            recoveredBlock250PC := 811.
        ].
        recoveredBlock250Step = 811 ifTrue: [
            (recoveredBlock250Stack1 == nil) ifTrue: [recoveredBlock250PC := 859] ifFalse: [recoveredBlock250PC := 814].
        ].
        recoveredBlock250Step = 814 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal1.
            recoveredBlock250PC := 817.
        ].
        recoveredBlock250Step = 817 ifTrue: [
            recoveredBlock250Stack2 := [
    | recoveredBlock250Block817Value0 recoveredBlock250Block817Value1 |
    recoveredBlock250Block817Value0 := recoveredBlock250Arg1.
    recoveredBlock250Block817Value1 := (self) getElementOID: (recoveredBlock250Block817Value0) nameAttr: ('ySizeVariantElementName') oidAttr: ('ySizeVariantElementOID').
    recoveredBlock250Block817Value1
].
            recoveredBlock250PC := 838.
        ].
        recoveredBlock250Step = 838 ifTrue: [
            recoveredBlock250Stack3 := ElementNotFound.
            recoveredBlock250PC := 840.
        ].
        recoveredBlock250Step = 840 ifTrue: [
            recoveredBlock250Stack4 := [:block281279b4Arg1 | 
    | block281279b4Value0 block281279b4Value1 |
    block281279b4Value0 := block281279b4Arg1.
    block281279b4Value1 := (block281279b4Value0) exitWith: (nil).
    block281279b4Value1
].
            recoveredBlock250PC := 844.
        ].
        recoveredBlock250Step = 844 ifTrue: [
            recoveredBlock250PC := 853.
        ].
        recoveredBlock250Step = 853 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) when: (recoveredBlock250Stack3) do: (recoveredBlock250Stack4).
            recoveredBlock250PC := 855.
        ].
        recoveredBlock250Step = 855 ifTrue: [
            (recoveredBlock250Stack1) ySizeCheckValue: (recoveredBlock250Stack2).
            recoveredBlock250PC := 859.
        ].
        recoveredBlock250Step = 859 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 862.
        ].
        recoveredBlock250Step = 862 ifTrue: [
            recoveredBlock250Stack2 := 'DimensionalAttributes'.
            recoveredBlock250PC := 866.
        ].
        recoveredBlock250Step = 866 ifTrue: [
            recoveredBlock250Stack3 := [:recoveredBlock250Block866Arg1 | 
    | recoveredBlock250Block866Value0 recoveredBlock250Block866Value1 recoveredBlock250Block866Value2 recoveredBlock250Block866Value3 |
    recoveredBlock250Block866Value0 := recoveredBlock250Block866Arg1.
    recoveredBlock250Block866Value1 := recoveredLocal3.
    recoveredBlock250Block866Value2 := recoveredLocal1.
    recoveredBlock250Block866Value3 := (self) readDimensionalAttributesT: (recoveredBlock250Block866Value0) newEl: (recoveredBlock250Block866Value1) type: (recoveredBlock250Block866Value2).
    recoveredBlock250Block866Value3
].
            recoveredBlock250PC := 884.
        ].
        recoveredBlock250Step = 884 ifTrue: [
            recoveredBlock250Stack4 := handler.
            recoveredBlock250PC := 886.
        ].
        recoveredBlock250Step = 886 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) required: (recoveredBlock250Stack2) do: (recoveredBlock250Stack3) ifNot: (recoveredBlock250Stack4).
            recoveredBlock250PC := 891.
        ].
        recoveredBlock250Step = 891 ifTrue: [
            recoveredBlock250Result := recoveredBlock250Stack1.
            recoveredBlock250Done := true.
        ].
    ].
    recoveredBlock250Result
].
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack6 := 'ComplexType'.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack7 := [:recoveredBlock896Arg1 | 
    | recoveredBlock896Value0 recoveredBlock896Value1 recoveredBlock896Value2 recoveredBlock896Value3 recoveredBlock896Value4 |
    recoveredBlock896Value0 := recoveredBlock896Arg1.
    recoveredBlock896Value1 := [:recoveredBlock896Block906Arg1 | 
    | recoveredBlock896Block906Stack0 recoveredBlock896Block906Stack1 recoveredBlock896Block906Stack2 recoveredBlock896Block906Stack3 recoveredBlock896Block906Stack4 recoveredBlock896Block906Stack5 recoveredBlock896Block906Stack6 recoveredBlock896Block906Stack7 recoveredBlock896Block906Stack8 recoveredBlock896Block906PC recoveredBlock896Block906Step recoveredBlock896Block906Done recoveredBlock896Block906Result |
    recoveredBlock896Block906Stack0 := self.
    recoveredBlock896Block906PC := 912.
    recoveredBlock896Block906Done := false.
    [recoveredBlock896Block906Done not] whileTrue: [
        recoveredBlock896Block906Step := recoveredBlock896Block906PC.
        recoveredBlock896Block906Step = 912 ifTrue: [
            recoveredBlock896Block906Stack1 := 'Kli'.
            recoveredBlock896Block906PC := 914.
        ].
        recoveredBlock896Block906Step = 914 ifTrue: [
            recoveredBlock896Block906Stack2 := 'Call_96625'.
            recoveredBlock896Block906PC := 918.
        ].
        recoveredBlock896Block906Step = 918 ifTrue: [
            recoveredBlock896Block906Stack1 := (recoveredBlock896Block906Stack1) == (recoveredBlock896Block906Stack2).
            recoveredBlock896Block906PC := 919.
        ].
        recoveredBlock896Block906Step = 919 ifTrue: [
            recoveredBlock896Block906PC := 920.
        ].
        recoveredBlock896Block906Step = 920 ifTrue: [
            recoveredBlock896Block906Stack1 := recoveredLocal6.
            recoveredBlock896Block906PC := 923.
        ].
        recoveredBlock896Block906Step = 923 ifTrue: [
            recoveredBlock896Block906Stack2 := 'interface'.
            recoveredBlock896Block906PC := 926.
        ].
        recoveredBlock896Block906Step = 926 ifTrue: [
            recoveredBlock896Block906Stack1 := (recoveredBlock896Block906Stack1) = (recoveredBlock896Block906Stack2).
            recoveredBlock896Block906PC := 927.
        ].
        recoveredBlock896Block906Step = 927 ifTrue: [
            (recoveredBlock896Block906Stack1) ifTrue: [recoveredBlock896Block906PC := 930] ifFalse: [recoveredBlock896Block906PC := 1006].
        ].
        recoveredBlock896Block906Step = 930 ifTrue: [
            recoveredBlock896Block906Stack1 := self.
            recoveredBlock896Block906PC := 931.
        ].
        recoveredBlock896Block906Step = 931 ifTrue: [
            recoveredBlock896Block906Stack2 := recoveredBlock896Block906Arg1.
            recoveredBlock896Block906PC := 932.
        ].
        recoveredBlock896Block906Step = 932 ifTrue: [
            recoveredBlock896Block906Stack3 := recoveredLocal3.
            recoveredBlock896Block906PC := 935.
        ].
        recoveredBlock896Block906Step = 935 ifTrue: [
            recoveredBlock896Block906Stack4 := self.
            recoveredBlock896Block906PC := 936.
        ].
        recoveredBlock896Block906Step = 936 ifTrue: [
            recoveredBlock896Block906Stack5 := recoveredBlock896Block906Arg1.
            recoveredBlock896Block906PC := 937.
        ].
        recoveredBlock896Block906Step = 937 ifTrue: [
            recoveredBlock896Block906Stack6 := 'componentName'.
            recoveredBlock896Block906PC := 940.
        ].
        recoveredBlock896Block906Step = 940 ifTrue: [
            recoveredBlock896Block906Stack7 := 'componentID'.
            recoveredBlock896Block906PC := 944.
        ].
        recoveredBlock896Block906Step = 944 ifTrue: [
            recoveredBlock896Block906Stack4 := (recoveredBlock896Block906Stack4) readReferenceProxy: (recoveredBlock896Block906Stack5) nameTag: (recoveredBlock896Block906Stack6) oidTag: (recoveredBlock896Block906Stack7).
            recoveredBlock896Block906PC := 949.
        ].
        recoveredBlock896Block906Step = 949 ifTrue: [
            (recoveredBlock896Block906Stack1) readInterfaceAttributesT: (recoveredBlock896Block906Stack2) newEl: (recoveredBlock896Block906Stack3) type: (recoveredBlock896Block906Stack4).
            recoveredBlock896Block906PC := 953.
        ].
        recoveredBlock896Block906Step = 953 ifTrue: [
            recoveredBlock896Block906Stack1 := recoveredLocal3.
            recoveredBlock896Block906PC := 956.
        ].
        recoveredBlock896Block906Step = 956 ifTrue: [
            recoveredBlock896Block906Stack2 := SGVariable.
            recoveredBlock896Block906PC := 958.
        ].
        recoveredBlock896Block906Step = 958 ifTrue: [
            recoveredBlock896Block906Stack1 := (recoveredBlock896Block906Stack1) isKindOf: (recoveredBlock896Block906Stack2).
            recoveredBlock896Block906PC := 963.
        ].
        recoveredBlock896Block906Step = 963 ifTrue: [
            (recoveredBlock896Block906Stack1) ifTrue: [recoveredBlock896Block906PC := 966] ifFalse: [recoveredBlock896Block906PC := 1003].
        ].
        recoveredBlock896Block906Step = 966 ifTrue: [
            recoveredBlock896Block906Stack1 := recoveredLocal3.
            recoveredBlock896Block906PC := 969.
        ].
        recoveredBlock896Block906Step = 969 ifTrue: [
            recoveredBlock896Block906Stack1 := (recoveredBlock896Block906Stack1) isParameter.
            recoveredBlock896Block906PC := 973.
        ].
        recoveredBlock896Block906Step = 973 ifTrue: [
            (recoveredBlock896Block906Stack1) ifTrue: [recoveredBlock896Block906PC := 1003] ifFalse: [recoveredBlock896Block906PC := 976].
        ].
        recoveredBlock896Block906Step = 976 ifTrue: [
            recoveredBlock896Block906Stack1 := recoveredLocal3.
            recoveredBlock896Block906PC := 979.
        ].
        recoveredBlock896Block906Step = 979 ifTrue: [
            recoveredBlock896Block906Stack1 := (recoveredBlock896Block906Stack1) isVariable.
            recoveredBlock896Block906PC := 983.
        ].
        recoveredBlock896Block906Step = 983 ifTrue: [
            (recoveredBlock896Block906Stack1) ifTrue: [recoveredBlock896Block906PC := 1003] ifFalse: [recoveredBlock896Block906PC := 986].
        ].
        recoveredBlock896Block906Step = 986 ifTrue: [
            recoveredBlock896Block906Stack1 := recoveredLocal3.
            recoveredBlock896Block906PC := 989.
        ].
        recoveredBlock896Block906Step = 989 ifTrue: [
            recoveredBlock896Block906Stack1 := (recoveredBlock896Block906Stack1) isReference.
            recoveredBlock896Block906PC := 993.
        ].
        recoveredBlock896Block906Step = 993 ifTrue: [
            (recoveredBlock896Block906Stack1) ifTrue: [recoveredBlock896Block906PC := 1003] ifFalse: [recoveredBlock896Block906PC := 996].
        ].
        recoveredBlock896Block906Step = 996 ifTrue: [
            recoveredBlock896Block906Stack1 := recoveredLocal3.
            recoveredBlock896Block906PC := 999.
        ].
        recoveredBlock896Block906Step = 999 ifTrue: [
            (recoveredBlock896Block906Stack1) setVariable.
            recoveredBlock896Block906PC := 1003.
        ].
        recoveredBlock896Block906Step = 1003 ifTrue: [
            recoveredBlock896Block906PC := 1029.
        ].
        recoveredBlock896Block906Step = 1006 ifTrue: [
            recoveredBlock896Block906Stack1 := self.
            recoveredBlock896Block906PC := 1007.
        ].
        recoveredBlock896Block906Step = 1007 ifTrue: [
            recoveredBlock896Block906Stack2 := recoveredBlock896Block906Arg1.
            recoveredBlock896Block906PC := 1008.
        ].
        recoveredBlock896Block906Step = 1008 ifTrue: [
            recoveredBlock896Block906Stack3 := recoveredLocal3.
            recoveredBlock896Block906PC := 1011.
        ].
        recoveredBlock896Block906Step = 1011 ifTrue: [
            recoveredBlock896Block906Stack4 := self.
            recoveredBlock896Block906PC := 1012.
        ].
        recoveredBlock896Block906Step = 1012 ifTrue: [
            recoveredBlock896Block906Stack5 := recoveredBlock896Block906Arg1.
            recoveredBlock896Block906PC := 1013.
        ].
        recoveredBlock896Block906Step = 1013 ifTrue: [
            recoveredBlock896Block906Stack6 := 'componentName'.
            recoveredBlock896Block906PC := 1016.
        ].
        recoveredBlock896Block906Step = 1016 ifTrue: [
            recoveredBlock896Block906Stack7 := 'componentID'.
            recoveredBlock896Block906PC := 1020.
        ].
        recoveredBlock896Block906Step = 1020 ifTrue: [
            recoveredBlock896Block906Stack4 := (recoveredBlock896Block906Stack4) readReferenceProxy: (recoveredBlock896Block906Stack5) nameTag: (recoveredBlock896Block906Stack6) oidTag: (recoveredBlock896Block906Stack7).
            recoveredBlock896Block906PC := 1025.
        ].
        recoveredBlock896Block906Step = 1025 ifTrue: [
            (recoveredBlock896Block906Stack1) readComplexAttributesT: (recoveredBlock896Block906Stack2) newEl: (recoveredBlock896Block906Stack3) type: (recoveredBlock896Block906Stack4).
            recoveredBlock896Block906PC := 1029.
        ].
        recoveredBlock896Block906Step = 1029 ifTrue: [
            recoveredBlock896Block906Stack1 := recoveredArg3.
            recoveredBlock896Block906PC := 1032.
        ].
        recoveredBlock896Block906Step = 1032 ifTrue: [
            recoveredBlock896Block906Stack2 := false.
            recoveredBlock896Block906PC := 1033.
        ].
        recoveredBlock896Block906Step = 1033 ifTrue: [
            recoveredBlock896Block906Stack1 := (recoveredBlock896Block906Stack1) isPrimitive: (recoveredBlock896Block906Stack2).
            recoveredBlock896Block906PC := 1035.
        ].
        recoveredBlock896Block906Step = 1035 ifTrue: [
            recoveredBlock896Block906Result := recoveredBlock896Block906Stack1.
            recoveredBlock896Block906Done := true.
        ].
    ].
    recoveredBlock896Block906Result
].
    recoveredBlock896Value2 := [:recoveredBlock896Block1040Arg1 | 
    | recoveredBlock896Block1040Stack0 recoveredBlock896Block1040Stack1 recoveredBlock896Block1040Stack2 recoveredBlock896Block1040Stack3 recoveredBlock896Block1040Stack4 recoveredBlock896Block1040Stack5 recoveredBlock896Block1040Stack6 recoveredBlock896Block1040Stack7 recoveredBlock896Block1040Stack8 recoveredBlock896Block1040PC recoveredBlock896Block1040Step recoveredBlock896Block1040Done recoveredBlock896Block1040Result |
    recoveredBlock896Block1040Stack0 := self.
    recoveredBlock896Block1040PC := 1046.
    recoveredBlock896Block1040Done := false.
    [recoveredBlock896Block1040Done not] whileTrue: [
        recoveredBlock896Block1040Step := recoveredBlock896Block1040PC.
        recoveredBlock896Block1040Step = 1046 ifTrue: [
            recoveredBlock896Block1040Stack1 := 'Kli'.
            recoveredBlock896Block1040PC := 1048.
        ].
        recoveredBlock896Block1040Step = 1048 ifTrue: [
            recoveredBlock896Block1040Stack2 := 'Call_96625'.
            recoveredBlock896Block1040PC := 1052.
        ].
        recoveredBlock896Block1040Step = 1052 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) == (recoveredBlock896Block1040Stack2).
            recoveredBlock896Block1040PC := 1053.
        ].
        recoveredBlock896Block1040Step = 1053 ifTrue: [
            recoveredBlock896Block1040PC := 1054.
        ].
        recoveredBlock896Block1040Step = 1054 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal6.
            recoveredBlock896Block1040PC := 1057.
        ].
        recoveredBlock896Block1040Step = 1057 ifTrue: [
            recoveredBlock896Block1040Stack2 := 'interface'.
            recoveredBlock896Block1040PC := 1060.
        ].
        recoveredBlock896Block1040Step = 1060 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) = (recoveredBlock896Block1040Stack2).
            recoveredBlock896Block1040PC := 1061.
        ].
        recoveredBlock896Block1040Step = 1061 ifTrue: [
            (recoveredBlock896Block1040Stack1) ifTrue: [recoveredBlock896Block1040PC := 1064] ifFalse: [recoveredBlock896Block1040PC := 1160].
        ].
        recoveredBlock896Block1040Step = 1064 ifTrue: [
            recoveredBlock896Block1040Stack1 := self.
            recoveredBlock896Block1040PC := 1065.
        ].
        recoveredBlock896Block1040Step = 1065 ifTrue: [
            recoveredBlock896Block1040Stack2 := recoveredBlock896Block1040Arg1.
            recoveredBlock896Block1040PC := 1066.
        ].
        recoveredBlock896Block1040Step = 1066 ifTrue: [
            recoveredBlock896Block1040Stack3 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1069.
        ].
        recoveredBlock896Block1040Step = 1069 ifTrue: [
            recoveredBlock896Block1040Stack4 := self.
            recoveredBlock896Block1040PC := 1070.
        ].
        recoveredBlock896Block1040Step = 1070 ifTrue: [
            recoveredBlock896Block1040Stack5 := recoveredBlock896Block1040Arg1.
            recoveredBlock896Block1040PC := 1071.
        ].
        recoveredBlock896Block1040Step = 1071 ifTrue: [
            recoveredBlock896Block1040Stack6 := 'componentName'.
            recoveredBlock896Block1040PC := 1074.
        ].
        recoveredBlock896Block1040Step = 1074 ifTrue: [
            recoveredBlock896Block1040Stack7 := 'componentID'.
            recoveredBlock896Block1040PC := 1078.
        ].
        recoveredBlock896Block1040Step = 1078 ifTrue: [
            recoveredBlock896Block1040Stack4 := (recoveredBlock896Block1040Stack4) readReferenceProxy: (recoveredBlock896Block1040Stack5) nameTag: (recoveredBlock896Block1040Stack6) oidTag: (recoveredBlock896Block1040Stack7).
            recoveredBlock896Block1040PC := 1083.
        ].
        recoveredBlock896Block1040Step = 1083 ifTrue: [
            (recoveredBlock896Block1040Stack1) readInterfaceAttributesT: (recoveredBlock896Block1040Stack2) newEl: (recoveredBlock896Block1040Stack3) type: (recoveredBlock896Block1040Stack4).
            recoveredBlock896Block1040PC := 1087.
        ].
        recoveredBlock896Block1040Step = 1087 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1090.
        ].
        recoveredBlock896Block1040Step = 1090 ifTrue: [
            recoveredBlock896Block1040Stack2 := SGVariable.
            recoveredBlock896Block1040PC := 1092.
        ].
        recoveredBlock896Block1040Step = 1092 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) isKindOf: (recoveredBlock896Block1040Stack2).
            recoveredBlock896Block1040PC := 1097.
        ].
        recoveredBlock896Block1040Step = 1097 ifTrue: [
            (recoveredBlock896Block1040Stack1) ifTrue: [recoveredBlock896Block1040PC := 1100] ifFalse: [recoveredBlock896Block1040PC := 1157].
        ].
        recoveredBlock896Block1040Step = 1100 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1103.
        ].
        recoveredBlock896Block1040Step = 1103 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) isParameter.
            recoveredBlock896Block1040PC := 1107.
        ].
        recoveredBlock896Block1040Step = 1107 ifTrue: [
            (recoveredBlock896Block1040Stack1) ifTrue: [recoveredBlock896Block1040PC := 1157] ifFalse: [recoveredBlock896Block1040PC := 1110].
        ].
        recoveredBlock896Block1040Step = 1110 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1113.
        ].
        recoveredBlock896Block1040Step = 1113 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) isVariable.
            recoveredBlock896Block1040PC := 1117.
        ].
        recoveredBlock896Block1040Step = 1117 ifTrue: [
            (recoveredBlock896Block1040Stack1) ifTrue: [recoveredBlock896Block1040PC := 1157] ifFalse: [recoveredBlock896Block1040PC := 1120].
        ].
        recoveredBlock896Block1040Step = 1120 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1123.
        ].
        recoveredBlock896Block1040Step = 1123 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) isReference.
            recoveredBlock896Block1040PC := 1127.
        ].
        recoveredBlock896Block1040Step = 1127 ifTrue: [
            (recoveredBlock896Block1040Stack1) ifTrue: [recoveredBlock896Block1040PC := 1157] ifFalse: [recoveredBlock896Block1040PC := 1130].
        ].
        recoveredBlock896Block1040Step = 1130 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1133.
        ].
        recoveredBlock896Block1040Step = 1133 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) isMessage.
            recoveredBlock896Block1040PC := 1137.
        ].
        recoveredBlock896Block1040Step = 1137 ifTrue: [
            (recoveredBlock896Block1040Stack1) ifTrue: [recoveredBlock896Block1040PC := 1157] ifFalse: [recoveredBlock896Block1040PC := 1140].
        ].
        recoveredBlock896Block1040Step = 1140 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1143.
        ].
        recoveredBlock896Block1040Step = 1143 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) isInterrunnable.
            recoveredBlock896Block1040PC := 1147.
        ].
        recoveredBlock896Block1040Step = 1147 ifTrue: [
            (recoveredBlock896Block1040Stack1) ifTrue: [recoveredBlock896Block1040PC := 1157] ifFalse: [recoveredBlock896Block1040PC := 1150].
        ].
        recoveredBlock896Block1040Step = 1150 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1153.
        ].
        recoveredBlock896Block1040Step = 1153 ifTrue: [
            (recoveredBlock896Block1040Stack1) setVariable.
            recoveredBlock896Block1040PC := 1157.
        ].
        recoveredBlock896Block1040Step = 1157 ifTrue: [
            recoveredBlock896Block1040PC := 1183.
        ].
        recoveredBlock896Block1040Step = 1160 ifTrue: [
            recoveredBlock896Block1040Stack1 := self.
            recoveredBlock896Block1040PC := 1161.
        ].
        recoveredBlock896Block1040Step = 1161 ifTrue: [
            recoveredBlock896Block1040Stack2 := recoveredBlock896Block1040Arg1.
            recoveredBlock896Block1040PC := 1162.
        ].
        recoveredBlock896Block1040Step = 1162 ifTrue: [
            recoveredBlock896Block1040Stack3 := recoveredLocal3.
            recoveredBlock896Block1040PC := 1165.
        ].
        recoveredBlock896Block1040Step = 1165 ifTrue: [
            recoveredBlock896Block1040Stack4 := self.
            recoveredBlock896Block1040PC := 1166.
        ].
        recoveredBlock896Block1040Step = 1166 ifTrue: [
            recoveredBlock896Block1040Stack5 := recoveredBlock896Block1040Arg1.
            recoveredBlock896Block1040PC := 1167.
        ].
        recoveredBlock896Block1040Step = 1167 ifTrue: [
            recoveredBlock896Block1040Stack6 := 'componentName'.
            recoveredBlock896Block1040PC := 1170.
        ].
        recoveredBlock896Block1040Step = 1170 ifTrue: [
            recoveredBlock896Block1040Stack7 := 'componentID'.
            recoveredBlock896Block1040PC := 1174.
        ].
        recoveredBlock896Block1040Step = 1174 ifTrue: [
            recoveredBlock896Block1040Stack4 := (recoveredBlock896Block1040Stack4) readReferenceProxy: (recoveredBlock896Block1040Stack5) nameTag: (recoveredBlock896Block1040Stack6) oidTag: (recoveredBlock896Block1040Stack7).
            recoveredBlock896Block1040PC := 1179.
        ].
        recoveredBlock896Block1040Step = 1179 ifTrue: [
            (recoveredBlock896Block1040Stack1) readRecordAttributesT: (recoveredBlock896Block1040Stack2) newEl: (recoveredBlock896Block1040Stack3) type: (recoveredBlock896Block1040Stack4).
            recoveredBlock896Block1040PC := 1183.
        ].
        recoveredBlock896Block1040Step = 1183 ifTrue: [
            recoveredBlock896Block1040Stack1 := recoveredArg3.
            recoveredBlock896Block1040PC := 1186.
        ].
        recoveredBlock896Block1040Step = 1186 ifTrue: [
            recoveredBlock896Block1040Stack2 := false.
            recoveredBlock896Block1040PC := 1187.
        ].
        recoveredBlock896Block1040Step = 1187 ifTrue: [
            recoveredBlock896Block1040Stack1 := (recoveredBlock896Block1040Stack1) isPrimitive: (recoveredBlock896Block1040Stack2).
            recoveredBlock896Block1040PC := 1189.
        ].
        recoveredBlock896Block1040Step = 1189 ifTrue: [
            recoveredBlock896Block1040Result := recoveredBlock896Block1040Stack1.
            recoveredBlock896Block1040Done := true.
        ].
    ].
    recoveredBlock896Block1040Result
].
    recoveredBlock896Value3 := handler.
    recoveredBlock896Value4 := (recoveredBlock896Value0) choice: ('ComplexAttributes') do: (recoveredBlock896Value1) choice: ('RecordAttributes') do: (recoveredBlock896Value2) ifNot: (recoveredBlock896Value3).
    recoveredBlock896Value4
].
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredStack8 := handler.
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            (recoveredStack1) choice: (recoveredStack2) do: (recoveredStack3) choice: (recoveredStack4) do: (recoveredStack5) choice: (recoveredStack6) do: (recoveredStack7) ifNot: (recoveredStack8).
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            (recoveredStack1) xmlUnit: (recoveredStack2).
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 1247] ifFalse: [recoveredPC := 1236].
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            (recoveredStack1) xmlUnitId: (recoveredStack2).
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

