"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20058f48; bytecode file offset 0x956284"
!AbtXmlSchemaAppinfo methodsFor: 'recovered'!
addContent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) content.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b7c0; bytecode file offset 0x96873c"
!AbtXmlSchemaAppinfo methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ab42c; bytecode file offset 0x9a8250"
!AbtXmlSchemaAppinfo methodsFor: 'recovered'!
contentNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) content.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c2978; bytecode file offset 0x9bf474"
!AbtXmlSchemaAppinfo methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200db764; bytecode file offset 0x9d80a0"
!AbtXmlSchemaAppinfo methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Association.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) abrAsString.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) key: (recoveredValue2) value: (recoveredValue3).
    recoveredValue5 := (self) addContent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20128f70; bytecode file offset 0xa258cc"
!AbtXmlSchemaAppinfo methodsFor: 'recovered'!
content
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := content.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EsOrderedDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            content := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := content.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

