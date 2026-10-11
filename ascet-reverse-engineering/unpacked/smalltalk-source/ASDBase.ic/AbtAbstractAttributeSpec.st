"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dd64; bytecode file offset 0x90ab8c"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
isReadOnlyAttributeIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) isReadOnlyAttribute.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e4dc; bytecode file offset 0x92209c"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
basicEvent
    ^'abtWhenIn:perform:'
! !

"ASDBase.ic method 0x20060b50; bytecode file offset 0x95d41c"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
parameters
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := attributeClass.
    recoveredValue2 := (recoveredValue0) parametersWithDefaultClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200687e4; bytecode file offset 0x965b90"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
attributeType
    | recoveredValue0 |
    recoveredValue0 := attributeClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007b96c; bytecode file offset 0x97c330"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
isReadOnlyAttribute
    ^false
! !

"ASDBase.ic method 0x20083834; bytecode file offset 0x980230"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
performIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) setValueIn: (recoveredValue0) to: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20084e58; bytecode file offset 0x981ca4"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
attributeType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeClass: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20086c14; bytecode file offset 0x98376c"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
abtWhenIn: recoveredArg1 perform: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) abtWhenChangedIn: (recoveredValue0) perform: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c06dc; bytecode file offset 0x9bd228"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
attributeClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributeClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca89c; bytecode file offset 0x9c716c"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
abtConvertValue: recoveredArg1 in: recoveredArg2 forAttribute: recoveredArg3 in: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) abtConvertValue: (recoveredValue1) forAttribute: (recoveredValue2) in: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d572c; bytecode file offset 0x9d2050"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super hash.
    recoveredValue1 := (self) attributeClass.
    recoveredValue2 := (recoveredValue1) hash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ed180; bytecode file offset 0x9e9a3c"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
getValueIn: recoveredArg1 convertedTo: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getValueIn: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) abtConvertValue: (recoveredValue2) forAttribute: (recoveredValue3) in: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2014d100; bytecode file offset 0xa499bc"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
attributeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributeClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := attributeClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsPartType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20164c90; bytecode file offset 0xa61550"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := super = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributeClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20192244; bytecode file offset 0xa8eb0c"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
secondaryPartType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            extraInstanceVariables := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'secondaryPartType'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtAsPartTypeRef.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a8638; bytecode file offset 0xaa4ef8"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
performIn: recoveredArg1 arguments: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) setValueIn: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f34b0; bytecode file offset 0xaefd70"
!AbtAbstractAttributeSpec methodsFor: 'recovered'!
secondaryPartType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := extraInstanceVariables.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'secondaryPartType'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsPartType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

