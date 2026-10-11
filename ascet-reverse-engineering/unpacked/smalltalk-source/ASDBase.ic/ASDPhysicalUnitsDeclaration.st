"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003de08; bytecode file offset 0x93bf94"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGHostAccess.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066e5c; bytecode file offset 0x9646f8"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
fileContents
    | recoveredValue0 |
    recoveredValue0 := fileContents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068674; bytecode file offset 0x965b90"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009a1d8; bytecode file offset 0x997194"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
getStreamFromXMLFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) getFileStream: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bf2b0; bytecode file offset 0x9bc0b4"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
fileContents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileContents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0594; bytecode file offset 0x9bd228"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e702c; bytecode file offset 0x9e38f4"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
warning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('Unit declaration: ') , (recoveredValue2).
    (recoveredValue1) addWarningText: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20167438; bytecode file offset 0xa63d1c"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
fileExists: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForExistency: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186ac4; bytecode file offset 0xa83398"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
lookupPhysicalUnitExponents: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := units.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) isCgPhysicalUnitIdentical: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20196168; bytecode file offset 0xa92a28"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
lookupPhysicalUnitId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := units.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) ansiCName.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20233d44; bytecode file offset 0xb30608"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
lookupPhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := units.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) name.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 29] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) ansiCName.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) = (recoveredBlock6Stack2).
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202394a0; bytecode file offset 0xb35d6c"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
getDOMFromXMLFile: recoveredArg1 rootTagName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) getStreamFromXMLFile: (recoveredValue0) ifFail: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) getDOMFromStream: (recoveredValue3) fileName: (recoveredValue4) rootTagName: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202a4cc4; bytecode file offset 0xba158c"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
isValid
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFileContents: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileContents.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030d20c; bytecode file offset 0xc09aec"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            units := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hostAccess.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFileContents: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) fileContents: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileContents.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeFromStream: (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040d89c; bytecode file offset 0xd0a194"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
getDOMFromStream: recoveredArg1 fileName: recoveredArg2 rootTagName: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) parseStream: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 |
    recoveredBlock25Value0 := RBUserInfo.
    recoveredBlock25Value1 := ('Unable to read in file\') withCrs.
    recoveredBlock25Value2 := recoveredArg2.
    recoveredBlock25Value3 := (recoveredBlock25Value1) , (recoveredBlock25Value2).
    recoveredBlock25Value4 := ('.\A parser error occured.') withCrs.
    recoveredBlock25Value5 := (recoveredBlock25Value3) , (recoveredBlock25Value4).
    recoveredBlock25Value6 := (recoveredBlock25Value0) errorMessage: (recoveredBlock25Value5).
    (recoveredBlock25Value6) prompt.
    ^nil
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'XML file is not valid.\Root Tag <'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := '> expected.'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2062b5e4; bytecode file offset 0xf27fa8"
!ASDPhysicalUnitsDeclaration methodsFor: 'recovered'!
initializeFromStream: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getDOMFromStream: (recoveredValue0) fileName: (recoveredValue1) rootTagName: ('Units').
    recoveredValue3 := recoveredValue2.
    recoveredLocal5 := recoveredValue3.
    recoveredValue4 := [
    ^self
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    units := recoveredValue6.
    recoveredValue7 := units.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := ASDPhysicalBaseUnit.
    recoveredValue10 := (recoveredValue9) create: ('Meter') ansiCName: ('m') category: ('Length') autosarAttributeName: ('lengthExp').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := ASDPhysicalBaseUnit.
    recoveredValue13 := (recoveredValue12) create: ('Kilogram') ansiCName: ('kg') category: ('Mass') autosarAttributeName: ('massExp').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := ASDPhysicalBaseUnit.
    recoveredValue16 := (recoveredValue15) create: ('Second') ansiCName: ('s') category: ('Time') autosarAttributeName: ('timeExp').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := ASDPhysicalBaseUnit.
    recoveredValue19 := (recoveredValue18) create: ('Kelvin') ansiCName: ('K') category: ('Temperature') autosarAttributeName: ('temperatureExp').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue7.
    recoveredValue21 := ASDPhysicalBaseUnit.
    recoveredValue22 := (recoveredValue21) create: ('Ampere') ansiCName: ('A') category: ('Eletric Current') autosarAttributeName: ('currentExp').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue7.
    recoveredValue24 := ASDPhysicalBaseUnit.
    recoveredValue25 := (recoveredValue24) create: ('mol') ansiCName: ('mol') category: ('Amount of Substance') autosarAttributeName: ('molarAmountExp').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue7.
    recoveredValue27 := ASDPhysicalBaseUnit.
    recoveredValue28 := (recoveredValue27) create: ('Candela') ansiCName: ('cd') category: ('Luminous Intensity') autosarAttributeName: ('luminousIntensityExp').
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue7.
    recoveredValue30 := ASDGenericPhysicalUnit.
    recoveredValue31 := (recoveredValue30) create: ('*') ansiCName: ('anything').
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue7.
    recoveredValue33 := ASDGenericPhysicalUnitWithOffset.
    recoveredValue34 := (recoveredValue33) create: ('*+*') ansiCName: ('anythingWithOffset').
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := recoveredLocal5.
    recoveredValue36 := (recoveredValue35) rootTag.
    recoveredValue37 := (recoveredValue36) childNodes.
    recoveredValue38 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Local1 recoveredBlock179Stack0 recoveredBlock179Stack1 recoveredBlock179Stack2 recoveredBlock179Stack3 recoveredBlock179Stack4 recoveredBlock179Stack5 recoveredBlock179Stack6 recoveredBlock179Stack7 recoveredBlock179PC recoveredBlock179Step recoveredBlock179Done recoveredBlock179Result |
    recoveredBlock179Stack0 := self.
    recoveredBlock179PC := 186.
    recoveredBlock179Done := false.
    [recoveredBlock179Done not] whileTrue: [
        recoveredBlock179Step := recoveredBlock179PC.
        recoveredBlock179Step = 186 ifTrue: [
            recoveredBlock179Stack1 := recoveredBlock179Arg1.
            recoveredBlock179PC := 187.
        ].
        recoveredBlock179Step = 187 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) nodeName.
            recoveredBlock179PC := 189.
        ].
        recoveredBlock179Step = 189 ifTrue: [
            recoveredBlock179Stack2 := 'derivedUnit'.
            recoveredBlock179PC := 191.
        ].
        recoveredBlock179Step = 191 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) = (recoveredBlock179Stack2).
            recoveredBlock179PC := 192.
        ].
        recoveredBlock179Step = 192 ifTrue: [
            (recoveredBlock179Stack1) ifTrue: [recoveredBlock179PC := 196] ifFalse: [recoveredBlock179PC := 242].
        ].
        recoveredBlock179Step = 196 ifTrue: [
            recoveredBlock179Stack1 := ASDPhysicalDerivedUnit.
            recoveredBlock179PC := 198.
        ].
        recoveredBlock179Step = 198 ifTrue: [
            recoveredBlock179Stack2 := recoveredBlock179Arg1.
            recoveredBlock179PC := 199.
        ].
        recoveredBlock179Step = 199 ifTrue: [
            recoveredBlock179Stack3 := 'name'.
            recoveredBlock179PC := 201.
        ].
        recoveredBlock179Step = 201 ifTrue: [
            recoveredBlock179Stack2 := (recoveredBlock179Stack2) getAttribute: (recoveredBlock179Stack3).
            recoveredBlock179PC := 203.
        ].
        recoveredBlock179Step = 203 ifTrue: [
            recoveredBlock179Stack3 := recoveredBlock179Arg1.
            recoveredBlock179PC := 204.
        ].
        recoveredBlock179Step = 204 ifTrue: [
            recoveredBlock179Stack4 := 'ansiCName'.
            recoveredBlock179PC := 206.
        ].
        recoveredBlock179Step = 206 ifTrue: [
            recoveredBlock179Stack3 := (recoveredBlock179Stack3) getAttribute: (recoveredBlock179Stack4).
            recoveredBlock179PC := 208.
        ].
        recoveredBlock179Step = 208 ifTrue: [
            recoveredBlock179Stack4 := recoveredBlock179Arg1.
            recoveredBlock179PC := 209.
        ].
        recoveredBlock179Step = 209 ifTrue: [
            recoveredBlock179Stack5 := 'category'.
            recoveredBlock179PC := 211.
        ].
        recoveredBlock179Step = 211 ifTrue: [
            recoveredBlock179Stack4 := (recoveredBlock179Stack4) getAttribute: (recoveredBlock179Stack5).
            recoveredBlock179PC := 213.
        ].
        recoveredBlock179Step = 213 ifTrue: [
            recoveredBlock179Stack5 := recoveredBlock179Arg1.
            recoveredBlock179PC := 214.
        ].
        recoveredBlock179Step = 214 ifTrue: [
            recoveredBlock179Stack6 := 'formula'.
            recoveredBlock179PC := 216.
        ].
        recoveredBlock179Step = 216 ifTrue: [
            recoveredBlock179Stack5 := (recoveredBlock179Stack5) getAttribute: (recoveredBlock179Stack6).
            recoveredBlock179PC := 218.
        ].
        recoveredBlock179Step = 218 ifTrue: [
            recoveredBlock179Stack6 := units.
            recoveredBlock179PC := 220.
        ].
        recoveredBlock179Step = 220 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) create: (recoveredBlock179Stack2) ansiCName: (recoveredBlock179Stack3) category: (recoveredBlock179Stack4) parseFormula: (recoveredBlock179Stack5) units: (recoveredBlock179Stack6).
            recoveredBlock179PC := 223.
        ].
        recoveredBlock179Step = 223 ifTrue: [
            recoveredBlock179Local1 := recoveredBlock179Stack1.
            recoveredBlock179PC := 224.
        ].
        recoveredBlock179Step = 224 ifTrue: [
            recoveredBlock179Stack1 := nil.
            recoveredBlock179PC := 225.
        ].
        recoveredBlock179Step = 225 ifTrue: [
            recoveredBlock179Stack2 := recoveredBlock179Local1.
            recoveredBlock179PC := 226.
        ].
        recoveredBlock179Step = 226 ifTrue: [
            (recoveredBlock179Stack2 == nil) ifTrue: [recoveredBlock179PC := 236] ifFalse: [recoveredBlock179PC := 230].
        ].
        recoveredBlock179Step = 230 ifTrue: [
            recoveredBlock179PC := 231.
        ].
        recoveredBlock179Step = 231 ifTrue: [
            recoveredBlock179Stack1 := units.
            recoveredBlock179PC := 233.
        ].
        recoveredBlock179Step = 233 ifTrue: [
            recoveredBlock179Stack2 := recoveredBlock179Local1.
            recoveredBlock179PC := 234.
        ].
        recoveredBlock179Step = 234 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) add: (recoveredBlock179Stack2).
            recoveredBlock179PC := 236.
        ].
        recoveredBlock179Step = 236 ifTrue: [
            recoveredBlock179Stack2 := nil.
            recoveredBlock179PC := 237.
        ].
        recoveredBlock179Step = 237 ifTrue: [
            recoveredBlock179Local1 := recoveredBlock179Stack2.
            recoveredBlock179PC := 238.
        ].
        recoveredBlock179Step = 238 ifTrue: [
            recoveredBlock179PC := 256.
        ].
        recoveredBlock179Step = 242 ifTrue: [
            recoveredBlock179Stack1 := self.
            recoveredBlock179PC := 243.
        ].
        recoveredBlock179Step = 243 ifTrue: [
            recoveredBlock179Stack2 := 'Unknown element "'.
            recoveredBlock179PC := 245.
        ].
        recoveredBlock179Step = 245 ifTrue: [
            recoveredBlock179Stack3 := recoveredBlock179Arg1.
            recoveredBlock179PC := 246.
        ].
        recoveredBlock179Step = 246 ifTrue: [
            recoveredBlock179Stack3 := (recoveredBlock179Stack3) nodeName.
            recoveredBlock179PC := 248.
        ].
        recoveredBlock179Step = 248 ifTrue: [
            recoveredBlock179Stack2 := (recoveredBlock179Stack2) , (recoveredBlock179Stack3).
            recoveredBlock179PC := 250.
        ].
        recoveredBlock179Step = 250 ifTrue: [
            recoveredBlock179Stack3 := '" - ignored'.
            recoveredBlock179PC := 252.
        ].
        recoveredBlock179Step = 252 ifTrue: [
            recoveredBlock179Stack2 := (recoveredBlock179Stack2) , (recoveredBlock179Stack3).
            recoveredBlock179PC := 254.
        ].
        recoveredBlock179Step = 254 ifTrue: [
            recoveredBlock179Stack1 := (recoveredBlock179Stack1) warning: (recoveredBlock179Stack2).
            recoveredBlock179PC := 256.
        ].
        recoveredBlock179Step = 256 ifTrue: [
            recoveredBlock179Result := recoveredBlock179Stack1.
            recoveredBlock179Done := true.
        ].
    ].
    recoveredBlock179Result
].
    (recoveredValue37) do: (recoveredValue38).
    recoveredValue39 := Set.
    recoveredValue40 := (recoveredValue39) new.
    recoveredLocal4 := recoveredValue40.
    recoveredValue41 := Set.
    recoveredValue42 := (recoveredValue41) new.
    recoveredLocal3 := recoveredValue42.
    recoveredValue43 := Set.
    recoveredValue44 := (recoveredValue43) new.
    recoveredLocal2 := recoveredValue44.
    recoveredValue45 := Set.
    recoveredValue46 := (recoveredValue45) new.
    recoveredLocal1 := recoveredValue46.
    recoveredValue47 := units.
    recoveredValue48 := [:recoveredBlock295Arg1 | 
    | recoveredBlock295Stack0 recoveredBlock295Stack1 recoveredBlock295Stack2 recoveredBlock295Stack3 recoveredBlock295Stack4 recoveredBlock295PC recoveredBlock295Step recoveredBlock295Done recoveredBlock295Result |
    recoveredBlock295Stack0 := self.
    recoveredBlock295PC := 302.
    recoveredBlock295Done := false.
    [recoveredBlock295Done not] whileTrue: [
        recoveredBlock295Step := recoveredBlock295PC.
        recoveredBlock295Step = 302 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal4.
            recoveredBlock295PC := 305.
        ].
        recoveredBlock295Step = 305 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 306.
        ].
        recoveredBlock295Step = 306 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) name.
            recoveredBlock295PC := 311.
        ].
        recoveredBlock295Step = 311 ifTrue: [
            recoveredBlock295Stack1 := (recoveredBlock295Stack1) includes: (recoveredBlock295Stack2).
            recoveredBlock295PC := 315.
        ].
        recoveredBlock295Step = 315 ifTrue: [
            (recoveredBlock295Stack1) ifTrue: [recoveredBlock295PC := 318] ifFalse: [recoveredBlock295PC := 347].
        ].
        recoveredBlock295Step = 318 ifTrue: [
            recoveredBlock295Stack1 := self.
            recoveredBlock295PC := 319.
        ].
        recoveredBlock295Step = 319 ifTrue: [
            recoveredBlock295Stack2 := 'Duplicate name for unit: "'.
            recoveredBlock295PC := 322.
        ].
        recoveredBlock295Step = 322 ifTrue: [
            recoveredBlock295Stack3 := recoveredBlock295Arg1.
            recoveredBlock295PC := 323.
        ].
        recoveredBlock295Step = 323 ifTrue: [
            recoveredBlock295Stack3 := (recoveredBlock295Stack3) name.
            recoveredBlock295PC := 327.
        ].
        recoveredBlock295Step = 327 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 329.
        ].
        recoveredBlock295Step = 329 ifTrue: [
            recoveredBlock295Stack3 := '"'.
            recoveredBlock295PC := 332.
        ].
        recoveredBlock295Step = 332 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 334.
        ].
        recoveredBlock295Step = 334 ifTrue: [
            (recoveredBlock295Stack1) warning: (recoveredBlock295Stack2).
            recoveredBlock295PC := 336.
        ].
        recoveredBlock295Step = 336 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal2.
            recoveredBlock295PC := 339.
        ].
        recoveredBlock295Step = 339 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 340.
        ].
        recoveredBlock295Step = 340 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) name.
            recoveredBlock295PC := 345.
        ].
        recoveredBlock295Step = 345 ifTrue: [
            (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 347.
        ].
        recoveredBlock295Step = 347 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal3.
            recoveredBlock295PC := 350.
        ].
        recoveredBlock295Step = 350 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 351.
        ].
        recoveredBlock295Step = 351 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) name.
            recoveredBlock295PC := 355.
        ].
        recoveredBlock295Step = 355 ifTrue: [
            recoveredBlock295Stack1 := (recoveredBlock295Stack1) includes: (recoveredBlock295Stack2).
            recoveredBlock295PC := 359.
        ].
        recoveredBlock295Step = 359 ifTrue: [
            (recoveredBlock295Stack1) ifTrue: [recoveredBlock295PC := 362] ifFalse: [recoveredBlock295PC := 401].
        ].
        recoveredBlock295Step = 362 ifTrue: [
            recoveredBlock295Stack1 := self.
            recoveredBlock295PC := 363.
        ].
        recoveredBlock295Step = 363 ifTrue: [
            recoveredBlock295Stack2 := 'Different units have the same name and ANSI-C name: "'.
            recoveredBlock295PC := 366.
        ].
        recoveredBlock295Step = 366 ifTrue: [
            recoveredBlock295Stack3 := recoveredBlock295Arg1.
            recoveredBlock295PC := 367.
        ].
        recoveredBlock295Step = 367 ifTrue: [
            recoveredBlock295Stack3 := (recoveredBlock295Stack3) name.
            recoveredBlock295PC := 371.
        ].
        recoveredBlock295Step = 371 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 373.
        ].
        recoveredBlock295Step = 373 ifTrue: [
            recoveredBlock295Stack3 := '"'.
            recoveredBlock295PC := 376.
        ].
        recoveredBlock295Step = 376 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 378.
        ].
        recoveredBlock295Step = 378 ifTrue: [
            (recoveredBlock295Stack1) warning: (recoveredBlock295Stack2).
            recoveredBlock295PC := 380.
        ].
        recoveredBlock295Step = 380 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal2.
            recoveredBlock295PC := 383.
        ].
        recoveredBlock295Step = 383 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 384.
        ].
        recoveredBlock295Step = 384 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) name.
            recoveredBlock295PC := 389.
        ].
        recoveredBlock295Step = 389 ifTrue: [
            (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 391.
        ].
        recoveredBlock295Step = 391 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal1.
            recoveredBlock295PC := 394.
        ].
        recoveredBlock295Step = 394 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 395.
        ].
        recoveredBlock295Step = 395 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) name.
            recoveredBlock295PC := 399.
        ].
        recoveredBlock295Step = 399 ifTrue: [
            (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 401.
        ].
        recoveredBlock295Step = 401 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal3.
            recoveredBlock295PC := 404.
        ].
        recoveredBlock295Step = 404 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 405.
        ].
        recoveredBlock295Step = 405 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) ansiCName.
            recoveredBlock295PC := 409.
        ].
        recoveredBlock295Step = 409 ifTrue: [
            recoveredBlock295Stack1 := (recoveredBlock295Stack1) includes: (recoveredBlock295Stack2).
            recoveredBlock295PC := 413.
        ].
        recoveredBlock295Step = 413 ifTrue: [
            (recoveredBlock295Stack1) ifTrue: [recoveredBlock295PC := 416] ifFalse: [recoveredBlock295PC := 445].
        ].
        recoveredBlock295Step = 416 ifTrue: [
            recoveredBlock295Stack1 := self.
            recoveredBlock295PC := 417.
        ].
        recoveredBlock295Step = 417 ifTrue: [
            recoveredBlock295Stack2 := 'Duplicate ANSI-C name for unit: "'.
            recoveredBlock295PC := 420.
        ].
        recoveredBlock295Step = 420 ifTrue: [
            recoveredBlock295Stack3 := recoveredBlock295Arg1.
            recoveredBlock295PC := 421.
        ].
        recoveredBlock295Step = 421 ifTrue: [
            recoveredBlock295Stack3 := (recoveredBlock295Stack3) ansiCName.
            recoveredBlock295PC := 425.
        ].
        recoveredBlock295Step = 425 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 427.
        ].
        recoveredBlock295Step = 427 ifTrue: [
            recoveredBlock295Stack3 := '"'.
            recoveredBlock295PC := 430.
        ].
        recoveredBlock295Step = 430 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 432.
        ].
        recoveredBlock295Step = 432 ifTrue: [
            (recoveredBlock295Stack1) warning: (recoveredBlock295Stack2).
            recoveredBlock295PC := 434.
        ].
        recoveredBlock295Step = 434 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal1.
            recoveredBlock295PC := 437.
        ].
        recoveredBlock295Step = 437 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 438.
        ].
        recoveredBlock295Step = 438 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) ansiCName.
            recoveredBlock295PC := 443.
        ].
        recoveredBlock295Step = 443 ifTrue: [
            (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 445.
        ].
        recoveredBlock295Step = 445 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal4.
            recoveredBlock295PC := 448.
        ].
        recoveredBlock295Step = 448 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 449.
        ].
        recoveredBlock295Step = 449 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) ansiCName.
            recoveredBlock295PC := 453.
        ].
        recoveredBlock295Step = 453 ifTrue: [
            recoveredBlock295Stack1 := (recoveredBlock295Stack1) includes: (recoveredBlock295Stack2).
            recoveredBlock295PC := 457.
        ].
        recoveredBlock295Step = 457 ifTrue: [
            (recoveredBlock295Stack1) ifTrue: [recoveredBlock295PC := 460] ifFalse: [recoveredBlock295PC := 499].
        ].
        recoveredBlock295Step = 460 ifTrue: [
            recoveredBlock295Stack1 := self.
            recoveredBlock295PC := 461.
        ].
        recoveredBlock295Step = 461 ifTrue: [
            recoveredBlock295Stack2 := 'Different units have the same name and ANSI-C name: "'.
            recoveredBlock295PC := 464.
        ].
        recoveredBlock295Step = 464 ifTrue: [
            recoveredBlock295Stack3 := recoveredBlock295Arg1.
            recoveredBlock295PC := 465.
        ].
        recoveredBlock295Step = 465 ifTrue: [
            recoveredBlock295Stack3 := (recoveredBlock295Stack3) ansiCName.
            recoveredBlock295PC := 469.
        ].
        recoveredBlock295Step = 469 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 471.
        ].
        recoveredBlock295Step = 471 ifTrue: [
            recoveredBlock295Stack3 := '"'.
            recoveredBlock295PC := 474.
        ].
        recoveredBlock295Step = 474 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) , (recoveredBlock295Stack3).
            recoveredBlock295PC := 476.
        ].
        recoveredBlock295Step = 476 ifTrue: [
            (recoveredBlock295Stack1) warning: (recoveredBlock295Stack2).
            recoveredBlock295PC := 478.
        ].
        recoveredBlock295Step = 478 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal2.
            recoveredBlock295PC := 481.
        ].
        recoveredBlock295Step = 481 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 482.
        ].
        recoveredBlock295Step = 482 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) ansiCName.
            recoveredBlock295PC := 487.
        ].
        recoveredBlock295Step = 487 ifTrue: [
            (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 489.
        ].
        recoveredBlock295Step = 489 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal1.
            recoveredBlock295PC := 492.
        ].
        recoveredBlock295Step = 492 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 493.
        ].
        recoveredBlock295Step = 493 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) ansiCName.
            recoveredBlock295PC := 497.
        ].
        recoveredBlock295Step = 497 ifTrue: [
            (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 499.
        ].
        recoveredBlock295Step = 499 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal4.
            recoveredBlock295PC := 502.
        ].
        recoveredBlock295Step = 502 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 503.
        ].
        recoveredBlock295Step = 503 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) name.
            recoveredBlock295PC := 507.
        ].
        recoveredBlock295Step = 507 ifTrue: [
            (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 509.
        ].
        recoveredBlock295Step = 509 ifTrue: [
            recoveredBlock295Stack1 := recoveredLocal3.
            recoveredBlock295PC := 512.
        ].
        recoveredBlock295Step = 512 ifTrue: [
            recoveredBlock295Stack2 := recoveredBlock295Arg1.
            recoveredBlock295PC := 513.
        ].
        recoveredBlock295Step = 513 ifTrue: [
            recoveredBlock295Stack2 := (recoveredBlock295Stack2) ansiCName.
            recoveredBlock295PC := 517.
        ].
        recoveredBlock295Step = 517 ifTrue: [
            recoveredBlock295Stack1 := (recoveredBlock295Stack1) add: (recoveredBlock295Stack2).
            recoveredBlock295PC := 519.
        ].
        recoveredBlock295Step = 519 ifTrue: [
            recoveredBlock295Result := recoveredBlock295Stack1.
            recoveredBlock295Done := true.
        ].
    ].
    recoveredBlock295Result
].
    (recoveredValue47) do: (recoveredValue48).
    recoveredValue49 := units.
    recoveredValue50 := units.
    recoveredValue51 := [:recoveredBlock529Arg1 | 
    | recoveredBlock529Value0 recoveredBlock529Value1 recoveredBlock529Value2 recoveredBlock529Value3 |
    recoveredBlock529Value0 := recoveredLocal2.
    recoveredBlock529Value1 := recoveredBlock529Arg1.
    recoveredBlock529Value2 := (recoveredBlock529Value1) name.
    recoveredBlock529Value3 := (recoveredBlock529Value0) includes: (recoveredBlock529Value2).
    recoveredBlock529Value3
].
    recoveredValue52 := (recoveredValue50) select: (recoveredValue51).
    (recoveredValue49) removeAll: (recoveredValue52).
    recoveredValue53 := units.
    recoveredValue54 := units.
    recoveredValue55 := [:recoveredBlock563Arg1 | 
    | recoveredBlock563Value0 recoveredBlock563Value1 recoveredBlock563Value2 recoveredBlock563Value3 |
    recoveredBlock563Value0 := recoveredLocal1.
    recoveredBlock563Value1 := recoveredBlock563Arg1.
    recoveredBlock563Value2 := (recoveredBlock563Value1) ansiCName.
    recoveredBlock563Value3 := (recoveredBlock563Value0) includes: (recoveredBlock563Value2).
    recoveredBlock563Value3
].
    recoveredValue56 := (recoveredValue54) select: (recoveredValue55).
    (recoveredValue53) removeAll: (recoveredValue56).
    ^self
! !

