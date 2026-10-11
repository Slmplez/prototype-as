"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002d4c; bytecode file offset 0x64108"
!SstWSProviderDescriptor methodsFor: 'recovered'!
addOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) operations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000383c; bytecode file offset 0x649e8"
!SstWSProviderDescriptor methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a78; bytecode file offset 0x64bac"
!SstWSProviderDescriptor methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c14; bytecode file offset 0x64d78"
!SstWSProviderDescriptor methodsFor: 'recovered'!
creationMethod
    | recoveredValue0 |
    recoveredValue0 := creationMethod.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007d0c; bytecode file offset 0x68f50"
!SstWSProviderDescriptor methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007fe8; bytecode file offset 0x69104"
!SstWSProviderDescriptor methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    className := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008054; bytecode file offset 0x692b8"
!SstWSProviderDescriptor methodsFor: 'recovered'!
creationMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    creationMethod := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200082a0; bytecode file offset 0x69404"
!SstWSProviderDescriptor methodsFor: 'recovered'!
operations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operations := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000be2c; bytecode file offset 0x6cef8"
!SstWSProviderDescriptor methodsFor: 'recovered'!
operations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := operations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            operations := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := operations.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000c6b0; bytecode file offset 0x6d788"
!SstWSProviderDescriptor methodsFor: 'recovered'!
addMethodNamed: recoveredArg1 selector: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SstWSOperationDescriptor.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) qName: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) addOperation: (recoveredValue6).
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x20017728; bytecode file offset 0x78818"
!SstWSProviderDescriptor methodsFor: 'recovered'!
abtXmlPrintAnyTypeOn: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) qualifiedNameFor: ('provider') uri: ('Smalltalk') inObject: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) startOpenTag: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) className.
    (recoveredValue5) addTagAttributeNamed: ('className') value: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) creationMethod.
    (recoveredValue7) addTagAttributeNamed: ('creationMethod') value: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) endNoContentTag.
    ^self
! !

"xxx_dyn.ic method 0x20018b9c; bytecode file offset 0x79c84"
!SstWSProviderDescriptor methodsFor: 'recovered'!
initializeImplementor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) className.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) abrAsClass.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 30] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) creationMethod.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) asSymbol.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) perform: (recoveredBlock5Stack2).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := 'No class definition found for %1'.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) bindWith: (recoveredBlock5Stack3).
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) error: (recoveredBlock5Stack2).
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

