"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004158; bytecode file offset 0x65264"
!SstWsdlPart methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000420c; bytecode file offset 0x65328"
!SstWsdlPart methodsFor: 'recovered'!
element
    | recoveredValue0 |
    recoveredValue0 := element.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000489c; bytecode file offset 0x65b30"
!SstWsdlPart methodsFor: 'recovered'!
hasContent
    ^false
! !

"xxx_dyn.ic method 0x20007790; bytecode file offset 0x6887c"
!SstWsdlPart methodsFor: 'recovered'!
attributeSelectors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super attributeSelectors.
    recoveredValue1 := (recoveredValue0) , (#('type' 'element')).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20008600; bytecode file offset 0x6978c"
!SstWsdlPart methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000871c; bytecode file offset 0x69858"
!SstWsdlPart methodsFor: 'recovered'!
element: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    element := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000c5b0; bytecode file offset 0x6d67c"
!SstWsdlPart methodsFor: 'recovered'!
schemaTypeName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e4cc; bytecode file offset 0x6f5a4"
!SstWsdlPart methodsFor: 'recovered'!
wrappedObject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := AbtXmlSchemaTypeObjectWrapper.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) name: (recoveredStack1) type: (recoveredStack2) object: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001535c; bytecode file offset 0x76434"
!SstWsdlPart methodsFor: 'recovered'!
typeObject
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) element.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) elementNamed: (recoveredBlock5Value0).
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) type.
    recoveredValue3 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) typeNamed: (recoveredBlock19Value0).
    ^recoveredBlock19Value1
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^nil
! !

