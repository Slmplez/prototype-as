"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006d464; bytecode file offset 0x96a390"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
refPath
    | recoveredValue0 |
    recoveredValue0 := refPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e118; bytecode file offset 0x96a9dc"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
refOID
    | recoveredValue0 |
    recoveredValue0 := refOID.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e26c; bytecode file offset 0x96af48"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
refItem
    | recoveredValue0 |
    recoveredValue0 := refItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e514; bytecode file offset 0x96af48"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
xmlSGClass
    | recoveredValue0 |
    recoveredValue0 := refItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083368; bytecode file offset 0x97fc20"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
asProxy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := refOID.
    recoveredValue2 := (recoveredValue0) makeDBProxy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011e294; bytecode file offset 0xa1ab4c"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
xmlElementByName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := refItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := refItem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20156c98; bytecode file offset 0xa53554"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
resolveReferences: recoveredArg1 missing: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := refPath.
    recoveredValue2 := refOID.
    recoveredValue3 := (self) parentClass.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := importPath.
    recoveredValue6 := (recoveredValue0) itemForPath: (recoveredValue1) oid: (recoveredValue2) ownBase: (recoveredValue3) missing: (recoveredValue4) importPath: (recoveredValue5).
    refItem := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x20169668; bytecode file offset 0xa65f24"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
initOn: recoveredArg1 refOID: recoveredArg2 importPath: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initOn: (nil) oid: (nil).
    recoveredValue0 := recoveredArg3.
    importPath := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    refPath := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    refOID := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20179e8c; bytecode file offset 0xa76748"
!ASDXMLImportProtoRef methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 refPath: recoveredArg3 refOID: recoveredArg4 importPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initOn: (recoveredValue0) oid: (recoveredValue1).
    recoveredValue2 := recoveredArg5.
    importPath := recoveredValue2.
    recoveredValue3 := recoveredArg3.
    refPath := recoveredValue3.
    recoveredValue4 := recoveredArg4.
    refOID := recoveredValue4.
    ^self
! !

