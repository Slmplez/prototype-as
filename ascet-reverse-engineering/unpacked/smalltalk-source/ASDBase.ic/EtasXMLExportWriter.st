"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067264; bytecode file offset 0x9646f8"
!EtasXMLExportWriter methodsFor: 'recovered'!
controller
    | recoveredValue0 |
    recoveredValue0 := controller.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068154; bytecode file offset 0x965b90"
!EtasXMLExportWriter methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb28; bytecode file offset 0x96873c"
!EtasXMLExportWriter methodsFor: 'recovered'!
idrefs
    | recoveredValue0 |
    recoveredValue0 := idrefs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ca10; bytecode file offset 0x969c04"
!EtasXMLExportWriter methodsFor: 'recovered'!
schema
    | recoveredValue0 |
    recoveredValue0 := schema.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c83c; bytecode file offset 0x97c330"
!EtasXMLExportWriter methodsFor: 'recovered'!
isWorkspaceWriter
    ^false
! !

"ASDBase.ic method 0x2008ac10; bytecode file offset 0x9874c8"
!EtasXMLExportWriter methodsFor: 'recovered'!
schemaVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := controller.
    recoveredValue1 := schema.
    recoveredValue2 := (recoveredValue0) getSchemaVersion: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092878; bytecode file offset 0x98f298"
!EtasXMLExportWriter methodsFor: 'recovered'!
wrongAssumption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := controller.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) wrongAssumption: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad924; bytecode file offset 0x9aa218"
!EtasXMLExportWriter methodsFor: 'recovered'!
elementIDChain: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) elementIDChain: (recoveredValue0) item: (recoveredValue1) includeOIDs: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad948; bytecode file offset 0x9aa218"
!EtasXMLExportWriter methodsFor: 'recovered'!
modelIDChain: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) modelIDChain: (recoveredValue0) item: (recoveredValue1) includeOIDs: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200adb5c; bytecode file offset 0x9aa428"
!EtasXMLExportWriter methodsFor: 'recovered'!
attr: recoveredArg1 dbObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) globalId.
    (self) attr: (recoveredValue0) oid: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c1d0c; bytecode file offset 0x9beac8"
!EtasXMLExportWriter methodsFor: 'recovered'!
encryptNodes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    encryptionXPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d765c; bytecode file offset 0x9d3f18"
!EtasXMLExportWriter methodsFor: 'recovered'!
outdatedLocalID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := controller.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := controller.
    recoveredValue3 := (recoveredValue2) currentItem.
    (recoveredValue0) outdatedLocalID: (recoveredValue1) in: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e191c; bytecode file offset 0x9de1f0"
!EtasXMLExportWriter methodsFor: 'recovered'!
zombiePath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('Call_71010').
    recoveredValue1 := controller.
    recoveredValue2 := (recoveredValue1) zombiePath.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20157c90; bytecode file offset 0xa54550"
!EtasXMLExportWriter methodsFor: 'recovered'!
writeAbsent: recoveredArg1 nameTag: recoveredArg2 oidTag: recoveredArg3
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := '--absent--'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) localId: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016ff58; bytecode file offset 0xa6c824"
!EtasXMLExportWriter methodsFor: 'recovered'!
writeVersionInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := controller.
    recoveredValue1 := (recoveredValue0) mainController.
    recoveredValue2 := (recoveredValue1) currentProductVersionString.
    (self) attr: ('toolVersion') string: (recoveredValue2).
    recoveredValue3 := (self) schemaVersion.
    (self) attr: ('schemaVersion') string: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20174368; bytecode file offset 0xa70c30"
!EtasXMLExportWriter methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := path.
    recoveredValue1 := (recoveredValue0) , (': ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    super logError: (recoveredValue3).
    recoveredValue4 := System.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) logError: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201851d0; bytecode file offset 0xa81a94"
!EtasXMLExportWriter methodsFor: 'recovered'!
elementIdentification: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'elementName'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := '--absent--'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) writeXMLIdentification: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b7374; bytecode file offset 0xab3c3c"
!EtasXMLExportWriter methodsFor: 'recovered'!
initOn: recoveredArg1 filename: recoveredArg2 schema: recoveredArg3 sign: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXmlSupportDriverDOMTree.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) init.
    super initOnDriver: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    controller := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    path := recoveredValue4.
    recoveredValue5 := recoveredArg4.
    sign := recoveredValue5.
    recoveredValue6 := recoveredArg3.
    schema := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x201cfef4; bytecode file offset 0xacc7b0"
!EtasXMLExportWriter methodsFor: 'recovered'!
methodRef: recoveredArg1 in: recoveredArg2 nameTag: recoveredArg3 oidTag: recoveredArg4
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) writeAbsent: (recoveredStack2) nameTag: (recoveredStack3) oidTag: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) writeXML: (recoveredStack2) methodRefFor: (recoveredStack3) nameTag: (recoveredStack4) oidTag: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d87f8; bytecode file offset 0xad50c0"
!EtasXMLExportWriter methodsFor: 'recovered'!
resetIDREFs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    idrefs := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    exportedVars := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := exportedVars.
    recoveredValue6 := Set.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := ByteArray.
    recoveredValue9 := (recoveredValue8) new.
    (self) collectExported: (recoveredValue4) result: (recoveredValue5) visited: (recoveredValue7) path: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201dc8c8; bytecode file offset 0xad9190"
!EtasXMLExportWriter methodsFor: 'recovered'!
complex: recoveredArg1 name: recoveredArg2 value: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) writeTypedObject: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dce4c; bytecode file offset 0xad970c"
!EtasXMLExportWriter methodsFor: 'recovered'!
methodRef: recoveredArg1 inVar: recoveredArg2 nameTag: recoveredArg3 oidTag: recoveredArg4
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) writeAbsent: (recoveredStack2) nameTag: (recoveredStack3) oidTag: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) methodRef: (recoveredStack2) in: (recoveredStack3) nameTag: (recoveredStack4) oidTag: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dfb44; bytecode file offset 0xadc40c"
!EtasXMLExportWriter methodsFor: 'recovered'!
elementIdentification: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) addReference: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) elementIdentification: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'elementOID'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) localId: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20229c0c; bytecode file offset 0xb264dc"
!EtasXMLExportWriter methodsFor: 'recovered'!
experimentElementReference: recoveredArg1 tag: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ID'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) id: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'UniqueName'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202afd54; bytecode file offset 0xbac628"
!EtasXMLExportWriter methodsFor: 'recovered'!
itemRef: recoveredArg1 nameTag: recoveredArg2 oidTag: recoveredArg3
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
            recoveredStack2 := [:block280e48f4Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlPathString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) addReference: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := '--absent--'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalId.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) idRef: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203281a0; bytecode file offset 0xc24a70"
!EtasXMLExportWriter methodsFor: 'recovered'!
elementRef: recoveredArg1 in: recoveredArg2 nameTag: recoveredArg3 oidTag: recoveredArg4
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) addReference: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) localId: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) writeAbsent: (recoveredStack1) nameTag: (recoveredStack2) oidTag: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20332138; bytecode file offset 0xc2ea24"
!EtasXMLExportWriter methodsFor: 'recovered'!
complex: recoveredArg1 fileRef: recoveredArg2 type: recoveredArg3 schema: recoveredArg4 writerBlock: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := ('Die') == ('Call_96418').
    recoveredValue1 := Util.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) checkFileName: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    (self) openComplex: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    (self) attr: ('type') nmToken: (recoveredValue5).
    recoveredValue6 := Util.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) splitPath: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) at: (2).
    (self) pcData: (recoveredValue9).
    (self) closeComplex.
    recoveredValue10 := controller.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg4.
    recoveredValue13 := (recoveredValue10) makeWriter: (recoveredValue11) schema: (recoveredValue12) sign: (true).
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredArg5.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) value: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    (recoveredValue16) close.
    ^self
! !

"ASDBase.ic method 0x203711b4; bytecode file offset 0xc6da8c"
!EtasXMLExportWriter methodsFor: 'recovered'!
writeGenericDatas: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) writeCustomerData: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:block280f1b30Arg1 :block280f1b30Arg2 | 
    | block280f1b30Value0 block280f1b30Value1 block280f1b30Value2 block280f1b30Value3 block280f1b30Value4 |
    block280f1b30Value0 := block280f1b30Arg1.
    block280f1b30Value1 := (block280f1b30Value0) asString.
    block280f1b30Value2 := block280f1b30Arg2.
    block280f1b30Value3 := (block280f1b30Value2) asString.
    block280f1b30Value4 := (block280f1b30Value1) < (block280f1b30Value3).
    block280f1b30Value4
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredArg1.
    recoveredBlock52Value1 := recoveredBlock52Arg1.
    recoveredBlock52Value2 := (recoveredBlock52Value0) at: (recoveredBlock52Value1).
    recoveredBlock52Value3 := (self) writeCustomerData: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b4f64; bytecode file offset 0xcb184c"
!EtasXMLExportWriter methodsFor: 'recovered'!
writeCustomerData: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := path.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) oldStyleCustomerData: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := (self) addSubElementFromString: (recoveredBlock30Value0).
    recoveredBlock30Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 recoveredBlock43Value6 |
    recoveredBlock43Value0 := Util.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    (recoveredBlock43Value0) writeStackTrace: (recoveredBlock43Value1).
    recoveredBlock43Value2 := recoveredBlock43Arg1.
    recoveredBlock43Value3 := (recoveredBlock43Value2) argument.
    recoveredBlock43Value4 := [:recoveredBlock43Block58Arg1 | 
    | recoveredBlock43Block58Value0 recoveredBlock43Block58Value1 recoveredBlock43Block58Value2 |
    recoveredBlock43Block58Value0 := recoveredBlock43Block58Arg1.
    recoveredBlock43Block58Value1 := (recoveredBlock43Block58Value0) asString.
    recoveredBlock43Block58Value2 := (self) logError: (recoveredBlock43Block58Value1).
    recoveredBlock43Block58Value2
].
    (recoveredBlock43Value3) ifNotNil: (recoveredBlock43Value4).
    recoveredBlock43Value5 := recoveredBlock43Arg1.
    recoveredBlock43Value6 := (recoveredBlock43Value5) exitWith: (nil).
    recoveredBlock43Value6
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e9934; bytecode file offset 0xce620c"
!EtasXMLExportWriter methodsFor: 'recovered'!
writeCustomerDatas: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '<CustomerData'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) writeCustomerData: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'CustomerData'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) writeCustomerData: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := '<CustomerData'.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) includesSubstring: (recoveredBlock51Stack2).
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 66] ifFalse: [recoveredBlock51PC := 74].
        ].
        recoveredBlock51Step = 66 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) writeCustomerData: (recoveredBlock51Stack2).
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack2 := 'CustomerData'.
            recoveredBlock51PC := 77.
        ].
        recoveredBlock51Step = 77 ifTrue: [
            (recoveredBlock51Stack1) openComplex: (recoveredBlock51Stack2).
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 80.
        ].
        recoveredBlock51Step = 80 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 81.
        ].
        recoveredBlock51Step = 81 ifTrue: [
            (recoveredBlock51Stack1) writeCustomerData: (recoveredBlock51Stack2).
            recoveredBlock51PC := 83.
        ].
        recoveredBlock51Step = 83 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) closeComplex.
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 86 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045ab30; bytecode file offset 0xd57420"
!EtasXMLExportWriter methodsFor: 'recovered'!
localIDChain: recoveredArg1 item: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitMultiOID: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 |
    recoveredBlock36Value0 := recoveredLocal2.
    recoveredBlock36Value1 := recoveredLocal1.
    recoveredBlock36Value2 := (recoveredBlock36Value0) , (recoveredBlock36Value1).
    recoveredBlock36Value3 := recoveredBlock36Arg1.
    recoveredBlock36Value4 := (self) localIdToString: (recoveredBlock36Value3).
    recoveredBlock36Value5 := (recoveredBlock36Value2) , (recoveredBlock36Value4).
    recoveredLocal2 := recoveredBlock36Value5.
    recoveredLocal1 := '/'.
    '/'
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'elementName'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) oidChainToName: (recoveredStack3) class: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 'elementOID'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046e824; bytecode file offset 0xd6b114"
!EtasXMLExportWriter methodsFor: 'recovered'!
modelIDChain: recoveredArg1 item: recoveredArg2 includeOIDs: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitMultiOID: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 |
    recoveredBlock36Value0 := recoveredLocal2.
    recoveredBlock36Value1 := recoveredLocal1.
    recoveredBlock36Value2 := (recoveredBlock36Value0) , (recoveredBlock36Value1).
    recoveredBlock36Value3 := recoveredBlock36Arg1.
    recoveredBlock36Value4 := (self) localIdToString: (recoveredBlock36Value3).
    recoveredBlock36Value5 := (recoveredBlock36Value2) , (recoveredBlock36Value4).
    recoveredLocal2 := recoveredBlock36Value5.
    recoveredLocal1 := '/'.
    '/'
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'modelName'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) oidChainToName: (recoveredStack3) class: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'modelOID'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c9b3c; bytecode file offset 0xdc6430"
!EtasXMLExportWriter methodsFor: 'recovered'!
elementEntryFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := idrefs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) class.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := SGDataNameObject.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) = (recoveredBlock9Stack2).
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 26] ifFalse: [recoveredBlock9PC := 130].
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) tableName.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg2.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) elementEntryForSimple: (recoveredBlock9Stack2) in: (recoveredBlock9Stack3).
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local2.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            (recoveredBlock9Stack1 == nil) ifTrue: [recoveredBlock9PC := 124] ifFalse: [recoveredBlock9PC := 42].
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) index.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) class.
            recoveredBlock9PC := 48.
        ].
        recoveredBlock9Step = 48 ifTrue: [
            recoveredBlock9Stack2 := Point.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) = (recoveredBlock9Stack2).
            recoveredBlock9PC := 51.
        ].
        recoveredBlock9Step = 51 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 54] ifFalse: [recoveredBlock9PC := 82].
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 57.
        ].
        recoveredBlock9Step = 57 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) index.
            recoveredBlock9PC := 59.
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) x.
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) printString.
            recoveredBlock9PC := 63.
        ].
        recoveredBlock9Step = 63 ifTrue: [
            recoveredBlock9Stack2 := '@'.
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) , (recoveredBlock9Stack2).
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 70.
        ].
        recoveredBlock9Step = 70 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) index.
            recoveredBlock9PC := 72.
        ].
        recoveredBlock9Step = 72 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) y.
            recoveredBlock9PC := 74.
        ].
        recoveredBlock9Step = 74 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) printString.
            recoveredBlock9PC := 76.
        ].
        recoveredBlock9Step = 76 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) , (recoveredBlock9Stack2).
            recoveredBlock9PC := 78.
        ].
        recoveredBlock9Step = 78 ifTrue: [
            recoveredBlock9PC := 89.
        ].
        recoveredBlock9Step = 82 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 85.
        ].
        recoveredBlock9Step = 85 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) index.
            recoveredBlock9PC := 87.
        ].
        recoveredBlock9Step = 87 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) printString.
            recoveredBlock9PC := 89.
        ].
        recoveredBlock9Step = 89 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 90.
        ].
        recoveredBlock9Step = 90 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local2.
            recoveredBlock9PC := 91.
        ].
        recoveredBlock9Step = 91 ifTrue: [
            recoveredBlock9Stack2 := 1.
            recoveredBlock9PC := 93.
        ].
        recoveredBlock9Step = 93 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local2.
            recoveredBlock9PC := 94.
        ].
        recoveredBlock9Step = 94 ifTrue: [
            recoveredBlock9Stack4 := 1.
            recoveredBlock9PC := 96.
        ].
        recoveredBlock9Step = 96 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) at: (recoveredBlock9Stack4).
            recoveredBlock9PC := 98.
        ].
        recoveredBlock9Step = 98 ifTrue: [
            recoveredBlock9Stack4 := '$'.
            recoveredBlock9PC := 100.
        ].
        recoveredBlock9Step = 100 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) , (recoveredBlock9Stack4).
            recoveredBlock9PC := 102.
        ].
        recoveredBlock9Step = 102 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Local1.
            recoveredBlock9PC := 103.
        ].
        recoveredBlock9Step = 103 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) , (recoveredBlock9Stack4).
            recoveredBlock9PC := 105.
        ].
        recoveredBlock9Step = 105 ifTrue: [
            (recoveredBlock9Stack1) at: (recoveredBlock9Stack2) put: (recoveredBlock9Stack3).
            recoveredBlock9PC := 107.
        ].
        recoveredBlock9Step = 107 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local2.
            recoveredBlock9PC := 108.
        ].
        recoveredBlock9Step = 108 ifTrue: [
            recoveredBlock9Stack2 := 2.
            recoveredBlock9PC := 110.
        ].
        recoveredBlock9Step = 110 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local2.
            recoveredBlock9PC := 111.
        ].
        recoveredBlock9Step = 111 ifTrue: [
            recoveredBlock9Stack4 := 2.
            recoveredBlock9PC := 113.
        ].
        recoveredBlock9Step = 113 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) at: (recoveredBlock9Stack4).
            recoveredBlock9PC := 115.
        ].
        recoveredBlock9Step = 115 ifTrue: [
            recoveredBlock9Stack4 := '/'.
            recoveredBlock9PC := 117.
        ].
        recoveredBlock9Step = 117 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) , (recoveredBlock9Stack4).
            recoveredBlock9PC := 119.
        ].
        recoveredBlock9Step = 119 ifTrue: [
            recoveredBlock9Stack4 := recoveredBlock9Local1.
            recoveredBlock9PC := 120.
        ].
        recoveredBlock9Step = 120 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) , (recoveredBlock9Stack4).
            recoveredBlock9PC := 122.
        ].
        recoveredBlock9Step = 122 ifTrue: [
            (recoveredBlock9Stack1) at: (recoveredBlock9Stack2) put: (recoveredBlock9Stack3).
            recoveredBlock9PC := 124.
        ].
        recoveredBlock9Step = 124 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 125.
        ].
        recoveredBlock9Step = 125 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 126.
        ].
        recoveredBlock9Step = 126 ifTrue: [
            recoveredBlock9PC := 140.
        ].
        recoveredBlock9Step = 130 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 131.
        ].
        recoveredBlock9Step = 131 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 134.
        ].
        recoveredBlock9Step = 134 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg2.
            recoveredBlock9PC := 137.
        ].
        recoveredBlock9Step = 137 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) elementEntryForSimple: (recoveredBlock9Stack2) in: (recoveredBlock9Stack3).
            recoveredBlock9PC := 139.
        ].
        recoveredBlock9Step = 139 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 140.
        ].
        recoveredBlock9Step = 140 ifTrue: [
            recoveredBlock9Stack1 := idrefs.
            recoveredBlock9PC := 142.
        ].
        recoveredBlock9Step = 142 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 145.
        ].
        recoveredBlock9Step = 145 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local2.
            recoveredBlock9PC := 146.
        ].
        recoveredBlock9Step = 146 ifTrue: [
            (recoveredBlock9Stack1) at: (recoveredBlock9Stack2) put: (recoveredBlock9Stack3).
            recoveredBlock9PC := 148.
        ].
        recoveredBlock9Step = 148 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local2.
            recoveredBlock9PC := 149.
        ].
        recoveredBlock9Step = 149 ifTrue: [
            ^recoveredBlock9Stack1
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204f6634; bytecode file offset 0xdf2f28"
!EtasXMLExportWriter methodsFor: 'recovered'!
collectExported: recoveredArg1 result: recoveredArg2 visited: recoveredArg3 path: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27Stack6 recoveredBlock27Stack7 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 37.
        ].
        recoveredBlock27Step = 37 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) isPrimitive.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 91] ifFalse: [recoveredBlock27PC := 42].
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack2 := [:block28109bdcArg1 | 
    nil
].
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) sgClassIfUndefined: (recoveredBlock27Stack2).
            recoveredBlock27PC := 54.
        ].
        recoveredBlock27Step = 54 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local1.
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            (recoveredBlock27Stack1 == nil) ifTrue: [recoveredBlock27PC := 87] ifFalse: [recoveredBlock27PC := 64].
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredBlock27Stack1 := self.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local1.
            recoveredBlock27PC := 68.
        ].
        recoveredBlock27Step = 68 ifTrue: [
            recoveredBlock27Stack3 := recoveredArg2.
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack4 := recoveredArg3.
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack5 := recoveredArg4.
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack6 := recoveredBlock27Local1.
            recoveredBlock27PC := 80.
        ].
        recoveredBlock27Step = 80 ifTrue: [
            recoveredBlock27Stack6 := (recoveredBlock27Stack6) xmlOID.
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredBlock27Stack5 := (recoveredBlock27Stack5) , (recoveredBlock27Stack6).
            recoveredBlock27PC := 84.
        ].
        recoveredBlock27Step = 84 ifTrue: [
            (recoveredBlock27Stack1) collectExported: (recoveredBlock27Stack2) result: (recoveredBlock27Stack3) visited: (recoveredBlock27Stack4) path: (recoveredBlock27Stack5).
            recoveredBlock27PC := 87.
        ].
        recoveredBlock27Step = 87 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 88.
        ].
        recoveredBlock27Step = 88 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 91.
        ].
        recoveredBlock27Step = 91 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 92.
        ].
        recoveredBlock27Step = 92 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 95.
        ].
        recoveredBlock27Step = 95 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isExported.
            recoveredBlock27PC := 97.
        ].
        recoveredBlock27Step = 97 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 100] ifFalse: [recoveredBlock27PC := 168].
        ].
        recoveredBlock27Step = 100 ifTrue: [
            recoveredBlock27PC := 101.
        ].
        recoveredBlock27Step = 101 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 104.
        ].
        recoveredBlock27Step = 104 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) defaultGlobalLabel.
            recoveredBlock27PC := 106.
        ].
        recoveredBlock27Step = 106 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 109.
        ].
        recoveredBlock27Step = 109 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg2.
            recoveredBlock27PC := 112.
        ].
        recoveredBlock27Step = 112 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Local1.
            recoveredBlock27PC := 115.
        ].
        recoveredBlock27Step = 115 ifTrue: [
            recoveredBlock27Stack3 := [
    | recoveredBlock27Block115Value0 recoveredBlock27Block115Value1 recoveredBlock27Block115Value2 recoveredBlock27Block115Value3 recoveredBlock27Block115Value4 recoveredBlock27Block115Value5 recoveredBlock27Block115Value6 |
    recoveredBlock27Block115Value0 := recoveredArg2.
    recoveredBlock27Block115Value1 := recoveredBlock27Local1.
    recoveredBlock27Block115Value2 := recoveredArg4.
    recoveredBlock27Block115Value3 := recoveredBlock27Arg1.
    recoveredBlock27Block115Value4 := (recoveredBlock27Block115Value3) aliasName.
    recoveredBlock27Block115Value5 := (recoveredBlock27Block115Value2) , (recoveredBlock27Block115Value4).
    recoveredBlock27Block115Value6 := (recoveredBlock27Block115Value0) at: (recoveredBlock27Block115Value1) put: (recoveredBlock27Block115Value5).
    recoveredBlock27Block115Value6
].
            recoveredBlock27PC := 141.
        ].
        recoveredBlock27Step = 141 ifTrue: [
            recoveredBlock27Stack4 := [:recoveredBlock27Block141Arg1 | 
    | recoveredBlock27Block141Value0 recoveredBlock27Block141Value1 recoveredBlock27Block141Value2 recoveredBlock27Block141Value3 recoveredBlock27Block141Value4 |
    recoveredBlock27Block141Value0 := controller.
    recoveredBlock27Block141Value1 := recoveredBlock27Local1.
    recoveredBlock27Block141Value2 := recoveredArg1.
    recoveredBlock27Block141Value3 := (recoveredBlock27Block141Value2) xmlPathString.
    recoveredBlock27Block141Value4 := (recoveredBlock27Block141Value0) ambiguousMessageName: (recoveredBlock27Block141Value1) componentName: (recoveredBlock27Block141Value3).
    recoveredBlock27Block141Value4
].
            recoveredBlock27PC := 161.
        ].
        recoveredBlock27Step = 161 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) at: (recoveredBlock27Stack2) ifAbsent: (recoveredBlock27Stack3) ifPresent: (recoveredBlock27Stack4).
            recoveredBlock27PC := 164.
        ].
        recoveredBlock27Step = 164 ifTrue: [
            recoveredBlock27Stack2 := nil.
            recoveredBlock27PC := 165.
        ].
        recoveredBlock27Step = 165 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 168.
        ].
        recoveredBlock27Step = 168 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) allVariablesDo: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205076c4; bytecode file offset 0xe03fcc"
!EtasXMLExportWriter methodsFor: 'recovered'!
elementIDChain: recoveredArg1 item: recoveredArg2 includeOIDs: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitMultiOID: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 |
    recoveredBlock36Value0 := recoveredLocal3.
    recoveredBlock36Value1 := recoveredLocal1.
    recoveredBlock36Value2 := (recoveredBlock36Value0) , (recoveredBlock36Value1).
    recoveredBlock36Value3 := recoveredBlock36Arg1.
    recoveredBlock36Value4 := (self) localIdToString: (recoveredBlock36Value3).
    recoveredBlock36Value5 := (recoveredBlock36Value2) , (recoveredBlock36Value4).
    recoveredLocal3 := recoveredBlock36Value5.
    recoveredLocal1 := '/'.
    '/'
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalOidChainToName: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := '--Absent--'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 157] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) notNil: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 'elementName'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := 'elementOID'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20515e60; bytecode file offset 0xe12770"
!EtasXMLExportWriter methodsFor: 'recovered'!
close
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSignExport.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := driver.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getResult.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := EtasXmlSupportDOMElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSignatureNode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addSubElement: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := EtasXmlSupportDoc.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlNormalize.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) initFromTree: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) destVersion.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := controller.
    recoveredBlock53Value1 := (recoveredBlock53Value0) catalog.
    recoveredBlock53Value2 := [:recoveredBlock53Block64Arg1 | 
    | recoveredBlock53Block64Value0 recoveredBlock53Block64Value1 recoveredBlock53Block64Value2 recoveredBlock53Block64Value3 recoveredBlock53Block64Value4 recoveredBlock53Block64Value5 recoveredBlock53Block64Value6 recoveredBlock53Block64Value7 |
    recoveredBlock53Block64Value0 := recoveredBlock53Block64Arg1.
    recoveredBlock53Block64Value1 := recoveredLocal3.
    recoveredBlock53Block64Value2 := schema.
    recoveredBlock53Block64Value3 := recoveredBlock53Arg1.
    recoveredBlock53Block64Value4 := recoveredBlock53Arg1.
    recoveredBlock53Block64Value5 := (recoveredBlock53Block64Value4) size.
    recoveredBlock53Block64Value6 := (recoveredBlock53Block64Value3) copyFrom: (2) to: (recoveredBlock53Block64Value5).
    recoveredBlock53Block64Value7 := (recoveredBlock53Block64Value0) bringFromCurrent: (recoveredBlock53Block64Value1) type: (recoveredBlock53Block64Value2) to: (recoveredBlock53Block64Value6).
    recoveredBlock53Block64Value7
].
    recoveredBlock53Value3 := (recoveredBlock53Value1) ifNotNil: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) encryptionKey.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) signKey.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := path.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) sign: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) sign.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := encryptionXPath.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) encryptionKey.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := encryptionXPath.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := controller.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := (recoveredStack3) encryptionKey.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) encrypt: (recoveredStack2) key: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := path.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) writeToFile: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) dispose.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20517230; bytecode file offset 0xe13b44"
!EtasXMLExportWriter methodsFor: 'recovered'!
writeTypedObject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := Boolean.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 'boolean'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := Integer.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 'int'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 'String'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := SequenceableCollection.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 recoveredBlock104Value4 |
    recoveredBlock104Value0 := recoveredLocal1.
    recoveredBlock104Value1 := (recoveredBlock104Value0) , ('\').
    recoveredBlock104Value2 := recoveredBlock104Arg1.
    recoveredBlock104Value3 := (recoveredBlock104Value1) , (recoveredBlock104Value2).
    recoveredBlock104Value4 := recoveredBlock104Value3.
    recoveredLocal1 := recoveredBlock104Value4.
    recoveredBlock104Value3
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := 'MultiSelectionEnum'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 'type'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := '__unknown__'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 'value'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 'Option not of an expected type: '.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := ' type: '.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) wrongAssumption: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fbdac; bytecode file offset 0xef8700"
!EtasXMLExportWriter methodsFor: 'recovered'!
elementEntryForSimple: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitMultiOID: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'experiment variable '.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) badRef: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasAsIdString.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 197.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemByOID: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) removeFirst.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200Stack4 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal4.
            recoveredBlock200PC := 209.
        ].
        recoveredBlock200Step = 209 ifTrue: [
            (recoveredBlock200Stack1 == nil) ifTrue: [recoveredBlock200PC := 220] ifFalse: [recoveredBlock200PC := 212].
        ].
        recoveredBlock200Step = 212 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal4.
            recoveredBlock200PC := 215.
        ].
        recoveredBlock200Step = 215 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) isError.
            recoveredBlock200PC := 217.
        ].
        recoveredBlock200Step = 217 ifTrue: [
            (recoveredBlock200Stack1) ifTrue: [recoveredBlock200PC := 220] ifFalse: [recoveredBlock200PC := 234].
        ].
        recoveredBlock200Step = 220 ifTrue: [
            recoveredBlock200Stack1 := controller.
            recoveredBlock200PC := 222.
        ].
        recoveredBlock200Step = 222 ifTrue: [
            recoveredBlock200Stack2 := 'class of element '.
            recoveredBlock200PC := 224.
        ].
        recoveredBlock200Step = 224 ifTrue: [
            recoveredBlock200Stack3 := recoveredLocal5.
            recoveredBlock200PC := 227.
        ].
        recoveredBlock200Step = 227 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) , (recoveredBlock200Stack3).
            recoveredBlock200PC := 229.
        ].
        recoveredBlock200Step = 229 ifTrue: [
            recoveredBlock200Stack3 := nil.
            recoveredBlock200PC := 230.
        ].
        recoveredBlock200Step = 230 ifTrue: [
            (recoveredBlock200Stack1) badRef: (recoveredBlock200Stack2) oid: (recoveredBlock200Stack3).
            recoveredBlock200PC := 232.
        ].
        recoveredBlock200Step = 232 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 233.
        ].
        recoveredBlock200Step = 233 ifTrue: [
            ^recoveredBlock200Stack1
        ].
        recoveredBlock200Step = 234 ifTrue: [
            recoveredBlock200Stack1 := 'Kli'.
            recoveredBlock200PC := 236.
        ].
        recoveredBlock200Step = 236 ifTrue: [
            recoveredBlock200Stack2 := 'Call_327799'.
            recoveredBlock200PC := 238.
        ].
        recoveredBlock200Step = 238 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) == (recoveredBlock200Stack2).
            recoveredBlock200PC := 239.
        ].
        recoveredBlock200Step = 239 ifTrue: [
            recoveredBlock200PC := 240.
        ].
        recoveredBlock200Step = 240 ifTrue: [
            recoveredBlock200Stack1 := recoveredBlock200Arg1.
            recoveredBlock200PC := 241.
        ].
        recoveredBlock200Step = 241 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) asString.
            recoveredBlock200PC := 243.
        ].
        recoveredBlock200Step = 243 ifTrue: [
            recoveredBlock200Stack2 := SGReservedNames.
            recoveredBlock200PC := 245.
        ].
        recoveredBlock200Step = 245 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) smName.
            recoveredBlock200PC := 247.
        ].
        recoveredBlock200Step = 247 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) = (recoveredBlock200Stack2).
            recoveredBlock200PC := 248.
        ].
        recoveredBlock200Step = 248 ifTrue: [
            (recoveredBlock200Stack1) ifTrue: [recoveredBlock200PC := 252] ifFalse: [recoveredBlock200PC := 270].
        ].
        recoveredBlock200Step = 252 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal7.
            recoveredBlock200PC := 255.
        ].
        recoveredBlock200Step = 255 ifTrue: [
            recoveredBlock200Stack2 := '_'.
            recoveredBlock200PC := 257.
        ].
        recoveredBlock200Step = 257 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 259.
        ].
        recoveredBlock200Step = 259 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 260.
        ].
        recoveredBlock200Step = 260 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) asString.
            recoveredBlock200PC := 262.
        ].
        recoveredBlock200Step = 262 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 264.
        ].
        recoveredBlock200Step = 264 ifTrue: [
            recoveredLocal7 := recoveredBlock200Stack1.
            recoveredBlock200PC := 267.
        ].
        recoveredBlock200Step = 267 ifTrue: [
            recoveredBlock200PC := 285.
        ].
        recoveredBlock200Step = 270 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal7.
            recoveredBlock200PC := 273.
        ].
        recoveredBlock200Step = 273 ifTrue: [
            recoveredBlock200Stack2 := '_'.
            recoveredBlock200PC := 275.
        ].
        recoveredBlock200Step = 275 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 277.
        ].
        recoveredBlock200Step = 277 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 278.
        ].
        recoveredBlock200Step = 278 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) aliasAsIdString.
            recoveredBlock200PC := 280.
        ].
        recoveredBlock200Step = 280 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 282.
        ].
        recoveredBlock200Step = 282 ifTrue: [
            recoveredLocal7 := recoveredBlock200Stack1.
            recoveredBlock200PC := 285.
        ].
        recoveredBlock200Step = 285 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal4.
            recoveredBlock200PC := 288.
        ].
        recoveredBlock200Step = 288 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) isPrimitive.
            recoveredBlock200PC := 290.
        ].
        recoveredBlock200Step = 290 ifTrue: [
            (recoveredBlock200Stack1) ifTrue: [recoveredBlock200PC := 294] ifFalse: [recoveredBlock200PC := 308].
        ].
        recoveredBlock200Step = 294 ifTrue: [
            recoveredBlock200Stack1 := 'hw'.
            recoveredBlock200PC := 296.
        ].
        recoveredBlock200Step = 296 ifTrue: [
            recoveredBlock200Stack2 := 'mca'.
            recoveredBlock200PC := 298.
        ].
        recoveredBlock200Step = 298 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) == (recoveredBlock200Stack2).
            recoveredBlock200PC := 299.
        ].
        recoveredBlock200Step = 299 ifTrue: [
            recoveredBlock200PC := 300.
        ].
        recoveredBlock200Step = 300 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 301.
        ].
        recoveredBlock200Step = 301 ifTrue: [
            recoveredLocal2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 304.
        ].
        recoveredBlock200Step = 304 ifTrue: [
            recoveredBlock200PC := 317.
        ].
        recoveredBlock200Step = 308 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal4.
            recoveredBlock200PC := 311.
        ].
        recoveredBlock200Step = 311 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 312.
        ].
        recoveredBlock200Step = 312 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) elementAliasName: (recoveredBlock200Stack2).
            recoveredBlock200PC := 314.
        ].
        recoveredBlock200Step = 314 ifTrue: [
            recoveredLocal2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 317.
        ].
        recoveredBlock200Step = 317 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal2.
            recoveredBlock200PC := 320.
        ].
        recoveredBlock200Step = 320 ifTrue: [
            (recoveredBlock200Stack1 ~~ nil) ifTrue: [recoveredBlock200PC := 333] ifFalse: [recoveredBlock200PC := 324].
        ].
        recoveredBlock200Step = 324 ifTrue: [
            recoveredBlock200Stack1 := controller.
            recoveredBlock200PC := 326.
        ].
        recoveredBlock200Step = 326 ifTrue: [
            recoveredBlock200Stack2 := 'element in experiment variable chain'.
            recoveredBlock200PC := 328.
        ].
        recoveredBlock200Step = 328 ifTrue: [
            recoveredBlock200Stack3 := recoveredBlock200Arg1.
            recoveredBlock200PC := 329.
        ].
        recoveredBlock200Step = 329 ifTrue: [
            (recoveredBlock200Stack1) badRef: (recoveredBlock200Stack2) oid: (recoveredBlock200Stack3).
            recoveredBlock200PC := 331.
        ].
        recoveredBlock200Step = 331 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 332.
        ].
        recoveredBlock200Step = 332 ifTrue: [
            ^recoveredBlock200Stack1
        ].
        recoveredBlock200Step = 333 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal2.
            recoveredBlock200PC := 336.
        ].
        recoveredBlock200Step = 336 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) isMethodParameter.
            recoveredBlock200PC := 338.
        ].
        recoveredBlock200Step = 338 ifTrue: [
            (recoveredBlock200Stack1) ifTrue: [recoveredBlock200PC := 342] ifFalse: [recoveredBlock200PC := 365].
        ].
        recoveredBlock200Step = 342 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal5.
            recoveredBlock200PC := 345.
        ].
        recoveredBlock200Step = 345 ifTrue: [
            recoveredBlock200Stack2 := '/'.
            recoveredBlock200PC := 347.
        ].
        recoveredBlock200Step = 347 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 349.
        ].
        recoveredBlock200Step = 349 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal2.
            recoveredBlock200PC := 352.
        ].
        recoveredBlock200Step = 352 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) owner.
            recoveredBlock200PC := 354.
        ].
        recoveredBlock200Step = 354 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) methodName.
            recoveredBlock200PC := 356.
        ].
        recoveredBlock200Step = 356 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 358.
        ].
        recoveredBlock200Step = 358 ifTrue: [
            recoveredBlock200Stack2 := '('.
            recoveredBlock200PC := 360.
        ].
        recoveredBlock200Step = 360 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 362.
        ].
        recoveredBlock200Step = 362 ifTrue: [
            recoveredLocal5 := recoveredBlock200Stack1.
            recoveredBlock200PC := 365.
        ].
        recoveredBlock200Step = 365 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal5.
            recoveredBlock200PC := 368.
        ].
        recoveredBlock200Step = 368 ifTrue: [
            recoveredBlock200Stack2 := '/'.
            recoveredBlock200PC := 370.
        ].
        recoveredBlock200Step = 370 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 372.
        ].
        recoveredBlock200Step = 372 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal2.
            recoveredBlock200PC := 375.
        ].
        recoveredBlock200Step = 375 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) elementName.
            recoveredBlock200PC := 377.
        ].
        recoveredBlock200Step = 377 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 379.
        ].
        recoveredBlock200Step = 379 ifTrue: [
            recoveredLocal5 := recoveredBlock200Stack1.
            recoveredBlock200PC := 382.
        ].
        recoveredBlock200Step = 382 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal2.
            recoveredBlock200PC := 385.
        ].
        recoveredBlock200Step = 385 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) sgClass.
            recoveredBlock200PC := 387.
        ].
        recoveredBlock200Step = 387 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 388.
        ].
        recoveredBlock200Step = 388 ifTrue: [
            recoveredLocal4 := recoveredBlock200Stack2.
            recoveredBlock200PC := 391.
        ].
        recoveredBlock200Step = 391 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := 'Call_77363'.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 415] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := 'element in experiment variable chain'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack1) badRef: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack4 := (recoveredStack4) isParameter.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

