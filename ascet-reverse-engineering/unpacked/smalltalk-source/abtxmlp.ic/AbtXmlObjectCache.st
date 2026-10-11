"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000d6c; bytecode file offset 0x19564"
!AbtXmlObjectCache methodsFor: 'recovered'!
aliases
    | recoveredValue0 |
    recoveredValue0 := aliases.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000df0; bytecode file offset 0x19600"
!AbtXmlObjectCache methodsFor: 'recovered'!
mappingSpecs
    | recoveredValue0 |
    recoveredValue0 := mappingSpecs.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000e44; bytecode file offset 0x1967c"
!AbtXmlObjectCache methodsFor: 'recovered'!
interfaceSpecs
    | recoveredValue0 |
    recoveredValue0 := interfaceSpecs.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000ef8; bytecode file offset 0x19700"
!AbtXmlObjectCache methodsFor: 'recovered'!
dtds
    | recoveredValue0 |
    recoveredValue0 := dtds.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000f64; bytecode file offset 0x19774"
!AbtXmlObjectCache methodsFor: 'recovered'!
outputSerializers
    | recoveredValue0 |
    recoveredValue0 := outputSerializers.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000fb0; bytecode file offset 0x197d8"
!AbtXmlObjectCache methodsFor: 'recovered'!
schemas
    | recoveredValue0 |
    recoveredValue0 := schemas.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001034; bytecode file offset 0x19834"
!AbtXmlObjectCache methodsFor: 'recovered'!
userData
    | recoveredValue0 |
    recoveredValue0 := userData.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001bb4; bytecode file offset 0x1a3a4"
!AbtXmlObjectCache methodsFor: 'recovered'!
addAlias: recoveredArg1 forName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) aliases.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001d50; bytecode file offset 0x1a550"
!AbtXmlObjectCache methodsFor: 'recovered'!
addMappingSpec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    (self) addMappingSpec: (recoveredValue0) named: (recoveredValue2).
    ^self
! !

"abtxmlp.ic method 0x20001d60; bytecode file offset 0x1a550"
!AbtXmlObjectCache methodsFor: 'recovered'!
addDTD: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) systemId.
    (self) addDTD: (recoveredValue0) named: (recoveredValue2).
    ^self
! !

"abtxmlp.ic method 0x20001df4; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
removeInterfaceSpecNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interfaceSpecs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001e08; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
mappingSpecNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mappingSpecs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001e30; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
removeDTDNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001e58; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
removeInterfaceSpecForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interfaceSpecs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001e6c; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
removeUserDataKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001e80; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
removeAlias: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) aliases.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001e94; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
dtdNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dtds.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001f20; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
aliasFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) aliases.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001f34; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
interfaceSpecNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interfaceSpecs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001f84; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
removeMappingSpecNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mappingSpecs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001f98; bytecode file offset 0x1a7a0"
!AbtXmlObjectCache methodsFor: 'recovered'!
userDataAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x200020e0; bytecode file offset 0x1a8d0"
!AbtXmlObjectCache methodsFor: 'recovered'!
userDataAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    ^recoveredValue3
! !

"abtxmlp.ic method 0x2000243c; bytecode file offset 0x1ac8c"
!AbtXmlObjectCache methodsFor: 'recovered'!
aliases: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aliases := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002528; bytecode file offset 0x1ad18"
!AbtXmlObjectCache methodsFor: 'recovered'!
mappingSpecs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingSpecs := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002564; bytecode file offset 0x1ad9c"
!AbtXmlObjectCache methodsFor: 'recovered'!
interfaceSpecs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interfaceSpecs := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200025e0; bytecode file offset 0x1ae20"
!AbtXmlObjectCache methodsFor: 'recovered'!
dtds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dtds := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000264c; bytecode file offset 0x1ae94"
!AbtXmlObjectCache methodsFor: 'recovered'!
outputSerializers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputSerializers := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200026e0; bytecode file offset 0x1aef0"
!AbtXmlObjectCache methodsFor: 'recovered'!
schemas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schemas := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000271c; bytecode file offset 0x1af34"
!AbtXmlObjectCache methodsFor: 'recovered'!
userData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userData := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200043d8; bytecode file offset 0x1cbe8"
!AbtXmlObjectCache methodsFor: 'recovered'!
addDTD: recoveredArg1 named: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) dtds.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x200043e8; bytecode file offset 0x1cbe8"
!AbtXmlObjectCache methodsFor: 'recovered'!
addMappingSpec: recoveredArg1 named: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingSpecs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x200043f8; bytecode file offset 0x1cbe8"
!AbtXmlObjectCache methodsFor: 'recovered'!
addInterfaceSpec: recoveredArg1 named: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceSpecs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x20004470; bytecode file offset 0x1cc68"
!AbtXmlObjectCache methodsFor: 'recovered'!
interfaceSpecForClass: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) abrAsClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceSpecs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x20004c54; bytecode file offset 0x1d448"
!AbtXmlObjectCache methodsFor: 'recovered'!
addInterfaceSpec: recoveredArg1 forClass: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrAsClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceSpecs.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x20006d18; bytecode file offset 0x1f524"
!AbtXmlObjectCache methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Boolean.
    recoveredValue1 := (recoveredValue0) new.
    (self) mappingSpecs: (recoveredValue1).
    recoveredValue2 := Boolean.
    recoveredValue3 := (recoveredValue2) new.
    (self) interfaceSpecs: (recoveredValue3).
    recoveredValue4 := Boolean.
    recoveredValue5 := (recoveredValue4) new.
    (self) dtds: (recoveredValue5).
    recoveredValue6 := Boolean.
    recoveredValue7 := (recoveredValue6) new.
    (self) userData: (recoveredValue7).
    recoveredValue8 := Boolean.
    recoveredValue9 := (recoveredValue8) new.
    (self) outputSerializers: (recoveredValue9).
    recoveredValue10 := Boolean.
    recoveredValue11 := (recoveredValue10) new.
    (self) schemas: (recoveredValue11).
    recoveredValue12 := Boolean.
    recoveredValue13 := (recoveredValue12) new.
    (self) aliases: (recoveredValue13).
    ^self
! !

"abtxmlp.ic method 0x2000a80c; bytecode file offset 0x23040"
!AbtXmlObjectCache methodsFor: 'recovered'!
interfaceSelectorsForApplication: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CldtConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CurrentStringClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) extended.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) defined.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := #(268456966 nil 58 8388611 nil nil).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceSpecs.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 :recoveredBlock47Arg2 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal2.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Arg1.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) includes: (recoveredBlock47Stack3).
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            (recoveredBlock47Stack2) ifTrue: [recoveredBlock47PC := 64] ifFalse: [recoveredBlock47PC := 71].
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredBlock47PC := 65.
        ].
        recoveredBlock47Step = 65 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal3.
            recoveredBlock47PC := 68.
        ].
        recoveredBlock47Step = 68 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg2.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) add: (recoveredBlock47Stack2).
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 |
    recoveredBlock77Value0 := recoveredBlock77Arg1.
    recoveredBlock77Value1 := (recoveredBlock77Value0) abtAttributes.
    recoveredBlock77Value2 := [:recoveredBlock77Block87Arg1 | 
    | recoveredBlock77Block87Value0 recoveredBlock77Block87Value1 recoveredBlock77Block87Value2 recoveredBlock77Block87Value3 recoveredBlock77Block87Value4 recoveredBlock77Block87Value5 recoveredBlock77Block87Value6 |
    recoveredBlock77Block87Value0 := recoveredLocal1.
    recoveredBlock77Block87Value1 := recoveredBlock77Block87Value0.
    recoveredBlock77Block87Value2 := recoveredBlock77Block87Arg1.
    recoveredBlock77Block87Value3 := (recoveredBlock77Block87Value2) getSelector.
    (recoveredBlock77Block87Value1) add: (recoveredBlock77Block87Value3).
    recoveredBlock77Block87Value4 := recoveredBlock77Block87Arg1.
    recoveredBlock77Block87Value5 := (recoveredBlock77Block87Value4) setSelector.
    recoveredBlock77Block87Value6 := (recoveredBlock77Block87Value0) add: (recoveredBlock77Block87Value5).
    recoveredBlock77Block87Value6
].
    recoveredBlock77Value3 := (recoveredBlock77Value1) do: (recoveredBlock77Value2).
    recoveredBlock77Value3
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

