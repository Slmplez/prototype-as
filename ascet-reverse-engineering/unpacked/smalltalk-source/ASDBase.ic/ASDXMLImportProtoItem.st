"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200021f0; bytecode file offset 0x8ffcfc"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
parentClass
    ^self
! !

"ASDBase.ic method 0x200049e0; bytecode file offset 0x90206c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
mergeExistingImpls: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005018; bytecode file offset 0x90206c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
improveKarma: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2004aa38; bytecode file offset 0x9472f4"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
markAsError
    hasErrors := true.
    ^self
! !

"ASDBase.ic method 0x2006ccf0; bytecode file offset 0x969c04"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
baseName
    | recoveredValue0 |
    recoveredValue0 := baseName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d8f4; bytecode file offset 0x96a390"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
hasErrors
    | recoveredValue0 |
    recoveredValue0 := hasErrors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dd00; bytecode file offset 0x96a9dc"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
namespace
    | recoveredValue0 |
    recoveredValue0 := namespace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e2ac; bytecode file offset 0x96af48"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
isImplicit
    | recoveredValue0 |
    recoveredValue0 := isImplicit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ea30; bytecode file offset 0x96b41c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
replaces
    | recoveredValue0 |
    recoveredValue0 := replaces.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ecdc; bytecode file offset 0x96b8a0"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 |
    recoveredValue0 := timeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f2c0; bytecode file offset 0x96bc1c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
timeStampCounter
    | recoveredValue0 |
    recoveredValue0 := timeStampCounter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f720; bytecode file offset 0x96c1f4"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
importPath
    | recoveredValue0 |
    recoveredValue0 := importPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fb48; bytecode file offset 0x96c42c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
meta
    | recoveredValue0 |
    recoveredValue0 := meta.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073948; bytecode file offset 0x970b34"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
defaultProjectStep
    ^nil
! !

"ASDBase.ic method 0x20085618; bytecode file offset 0x981ed0"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) removeDoubleSlashes.
    namespace := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200b19f0; bytecode file offset 0x9ae2a8"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
isImportedItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := baseName.
    recoveredValue1 := (recoveredValue0) notNil.
    recoveredValue2 := hasErrors.
    recoveredValue3 := (recoveredValue2) not.
    recoveredValue4 := (recoveredValue1) & (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b1a84; bytecode file offset 0x9ae350"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
denyRead
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := access.
    recoveredValue1 := DenyRead.
    recoveredValue2 := (recoveredValue0) | (recoveredValue1).
    access := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1a94; bytecode file offset 0x9ae350"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
denyWrite
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := access.
    recoveredValue1 := DenyWrite.
    recoveredValue2 := (recoveredValue0) | (recoveredValue1).
    access := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200c4aec; bytecode file offset 0x9c16b0"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
isImplicit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isImplicit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5640; bytecode file offset 0x9c1f64"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStamp := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c56fc; bytecode file offset 0x9c22c8"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
timeStampCounter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStampCounter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f94; bytecode file offset 0x9c29e8"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
meta: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    meta := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e12b0; bytecode file offset 0x9ddb70"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
fullyQualifiedName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := namespace.
    recoveredValue1 := (recoveredValue0) , ('/').
    recoveredValue2 := name.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) removeDoubleSlashes.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fe6f4; bytecode file offset 0x9fafb4"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
commitPreStep: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super commitPreStep: (recoveredValue0).
    recoveredValue1 := thing.
    (recoveredValue1) xmlPrepareCommit.
    ^self
! !

"ASDBase.ic method 0x20102c58; bytecode file offset 0x9ff524"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
isRead
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := access.
    recoveredValue1 := DenyRead.
    recoveredValue2 := (recoveredValue0) & (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) = (0).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20102c68; bytecode file offset 0x9ff524"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
isWrite
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := access.
    recoveredValue1 := DenyWrite.
    recoveredValue2 := (recoveredValue0) & (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) = (0).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20124334; bytecode file offset 0xa20bec"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 namespace: recoveredArg3 baseName: recoveredArg4 importPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) initOn: (recoveredValue0) oid: (recoveredValue1) namespace: (recoveredValue2) baseName: (recoveredValue3).
    recoveredValue4 := recoveredArg5.
    importPath := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2015d40c; bytecode file offset 0xa59cc8"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
path
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := baseName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := '???/'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := baseName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20164b94; bytecode file offset 0xa6145c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
replaces: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kli') == ('Call_94825').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) dbObject.
    super replaces: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    replaces := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2017f31c; bytecode file offset 0xa7bbe0"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
updateTimestamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := thing.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := timeStamp.
    (recoveredValue1) modifiedTimeStamp: (recoveredValue2).
    recoveredValue3 := thing.
    recoveredValue4 := (recoveredValue3) dbObject.
    recoveredValue5 := timeStampCounter.
    (recoveredValue4) applicationTimeStampNanoSecondsFromTimeStampWithCounter: (recoveredValue5).
    recoveredValue6 := thing.
    (recoveredValue6) doTimeStampUpdateAfterImport.
    ^self
! !

"ASDBase.ic method 0x2020bcdc; bytecode file offset 0xb085a8"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
pathName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespace.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) baseName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) namespace.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021bcbc; bytecode file offset 0xb1858c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
dbXmlRenameTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super dbXmlRenameTo: (recoveredValue0).
    recoveredValue1 := Util.
    recoveredValue2 := baseName.
    recoveredValue3 := (recoveredValue1) split: (recoveredValue2) onLast: ($/).
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredValue5 := (recoveredValue4) , ('/').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    baseName := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x202299dc; bytecode file offset 0xb2629c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
changeNamespaceRoot: recoveredArg1 new: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := baseName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := baseName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceStringStart: (recoveredStack2) old: (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            baseName := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := namespace.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceStringStart: (recoveredStack2) old: (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) namespace: (recoveredStack1).
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

"ASDBase.ic method 0x2022a820; bytecode file offset 0xb270e8"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 namespace: recoveredArg3 baseName: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    (recoveredValue0) loaded.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    super initOn: (recoveredValue1) oid: (recoveredValue2).
    hasErrors := false.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) removeDoubleSlashes.
    namespace := recoveredValue4.
    recoveredValue5 := recoveredArg4.
    baseName := recoveredValue5.
    isImplicit := false.
    access := 0.
    ^self
! !

"ASDBase.ic method 0x20273880; bytecode file offset 0xb7014c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
commit: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hasErrors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super commit: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := thing.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGProject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := thing.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) parentizeItem: (recoveredStack1).
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

"ASDBase.ic method 0x2028dd9c; bytecode file offset 0xb8a66c"
!ASDXMLImportProtoItem methodsFor: 'recovered'!
commitPostStep: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := access.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := DenyRead.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := thing.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) xmlClearRead.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := access.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := DenyWrite.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := thing.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) xmlClearWrite.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            super commitPostStep: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

