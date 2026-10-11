"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002fd0; bytecode file offset 0x8ffcfc"
!AbtTypeConverter methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x20065dec; bytecode file offset 0x963428"
!AbtTypeConverter methodsFor: 'recovered'!
smalltalkClass
    | recoveredValue0 |
    recoveredValue0 := smalltalkClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079bac; bytecode file offset 0x97c330"
!AbtTypeConverter methodsFor: 'recovered'!
isAnyType
    ^false
! !

"ASDBase.ic method 0x200836cc; bytecode file offset 0x980230"
!AbtTypeConverter methodsFor: 'recovered'!
objectFromString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) objectFromString: (recoveredValue0) context: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083918; bytecode file offset 0x980230"
!AbtTypeConverter methodsFor: 'recovered'!
convertToString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convertToString: (recoveredValue0) context: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bdbc4; bytecode file offset 0x9bb178"
!AbtTypeConverter methodsFor: 'recovered'!
smalltalkClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    smalltalkClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011234c; bytecode file offset 0xa0ec18"
!AbtTypeConverter methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 type: recoveredArg4 context: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg5.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    (recoveredValue1) abtXmlPrint: (recoveredValue2) on: (recoveredValue3) tagName: (recoveredValue4) simpleType: (recoveredValue5) context: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201351a8; bytecode file offset 0xa31a64"
!AbtTypeConverter methodsFor: 'recovered'!
objectFromString: recoveredArg1 context: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) smalltalkClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) smalltalkClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlFromString: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20147560; bytecode file offset 0xa43e20"
!AbtTypeConverter methodsFor: 'recovered'!
convertToString: recoveredArg1 context: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlMappedObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlPrintString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlMappedObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlPrintUsing: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

