"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003cd0; bytecode file offset 0x90206c"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
checkConsistency: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004708; bytecode file offset 0x90206c"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
commit: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005b98; bytecode file offset 0x902744"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
resolveReferences: recoveredArg1 missing: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x200092fc; bytecode file offset 0x908be4"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
xmlName
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002a624; bytecode file offset 0x934580"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
importPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parentClass.
    recoveredValue1 := (recoveredValue0) importPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200535bc; bytecode file offset 0x9505d0"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
replaces: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065ee4; bytecode file offset 0x963428"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
xmlOID
    | recoveredValue0 |
    recoveredValue0 := oid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f44; bytecode file offset 0x9646f8"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
uuid
    | recoveredValue0 |
    recoveredValue0 := uuid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006920c; bytecode file offset 0x965b90"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069f30; bytecode file offset 0x966bdc"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
thing
    | recoveredValue0 |
    recoveredValue0 := thing.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af14; bytecode file offset 0x967a18"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ba78; bytecode file offset 0x96873c"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
unmappedOID
    | recoveredValue0 |
    recoveredValue0 := unmappedOID.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200735b0; bytecode file offset 0x970b34"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
refItem
    ^nil
! !

"ASDBase.ic method 0x20073880; bytecode file offset 0x970b34"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
refOID
    ^nil
! !

"ASDBase.ic method 0x20073a20; bytecode file offset 0x970b34"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
refPath
    ^nil
! !

"ASDBase.ic method 0x20076b94; bytecode file offset 0x9757c8"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
isXMLImportProtoObject
    ^true
! !

"ASDBase.ic method 0x2007da74; bytecode file offset 0x97c330"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
isImportedItem
    ^false
! !

"ASDBase.ic method 0x200be8f0; bytecode file offset 0x9bc0b4"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
uuid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uuid := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c070c; bytecode file offset 0x9bd228"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
dbXmlRenameTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c07c4; bytecode file offset 0x9bd228"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c18c4; bytecode file offset 0x9beac8"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb870; bytecode file offset 0x9e8124"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredValue1.
    oid := recoveredValue2.
    unmappedOID := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200fdd30; bytecode file offset 0x9fa5e8"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
thing: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            thing := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105d48; bytecode file offset 0xa02600"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
parentClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20110538; bytecode file offset 0xa0cdf0"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
collectOIDs: recoveredArg1 class: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) registerElement: (recoveredStack2) controller: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011deec; bytecode file offset 0xa1a7a4"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
keepOIDs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := oid.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOID: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            oid := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5864; bytecode file offset 0xad2128"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
path
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
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
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e5e38; bytecode file offset 0xae26f8"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
remapOIDs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := oid.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := oid.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            unmappedOID := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := unmappedOID.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) remapOID: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            oid := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d9820; bytecode file offset 0xbd60f8"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
markAsConvertedFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) importManager.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) convertedItems.
    recoveredBlock7Value2 := oid.
    recoveredBlock7Value3 := [
    | recoveredBlock7Block20Value0 recoveredBlock7Block20Value1 recoveredBlock7Block20Value2 recoveredBlock7Block20Value3 recoveredBlock7Block20Value4 recoveredBlock7Block20Value5 |
    recoveredBlock7Block20Value0 := recoveredBlock7Arg1.
    recoveredBlock7Block20Value1 := (recoveredBlock7Block20Value0) convertedItems.
    recoveredBlock7Block20Value2 := oid.
    recoveredBlock7Block20Value3 := Set.
    recoveredBlock7Block20Value4 := (recoveredBlock7Block20Value3) new.
    recoveredBlock7Block20Value5 := (recoveredBlock7Block20Value1) at: (recoveredBlock7Block20Value2) put: (recoveredBlock7Block20Value4).
    recoveredBlock7Block20Value5
].
    recoveredBlock7Value4 := (recoveredBlock7Value1) at: (recoveredBlock7Value2) ifAbsent: (recoveredBlock7Value3).
    recoveredBlock7Value5 := recoveredArg1.
    recoveredBlock7Value6 := (recoveredBlock7Value4) add: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203e0ac0; bytecode file offset 0xcdd3a4"
!ASDXMLImportProtoBase methodsFor: 'recovered'!
add: recoveredArg1 into: recoveredArg2 controller: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) parent: (self).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := [].
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19Stack7 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) xmlOID.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) xmlOID.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) = (recoveredBlock19Stack2).
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 36] ifFalse: [recoveredBlock19PC := 51].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg3.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack2 := ASDXMLImportIssueDuplOID.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) new.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack3 := recoveredArg1.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) initOn: (recoveredBlock19Stack3) earlier: (recoveredBlock19Stack4).
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            (recoveredBlock19Stack1) addIssue: (recoveredBlock19Stack2).
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg3.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack2 := ASDXMLImportIssueDuplicateElement.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) new.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack3 := recoveredArg1.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack4 := self.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack5 := recoveredArg2.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack6 := false.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) initOn: (recoveredBlock19Stack3) parent: (recoveredBlock19Stack4) namespace: (recoveredBlock19Stack5) fatal: (recoveredBlock19Stack6).
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            (recoveredBlock19Stack1) addIssue: (recoveredBlock19Stack2).
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            ^recoveredBlock19Stack0
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue1) at: (recoveredValue3) ifAbsent: (recoveredValue4) ifPresent: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) name.
    recoveredValue9 := recoveredArg1.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    ^self
! !

