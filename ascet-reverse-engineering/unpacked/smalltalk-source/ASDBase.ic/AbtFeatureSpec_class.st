"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20073280; bytecode file offset 0x970b34"
!AbtFeatureSpec class methodsFor: 'recovered'!
featureType
    ^nil
! !

"ASDBase.ic method 0x20079c84; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isPrimitiveAction
    ^false
! !

"ASDBase.ic method 0x2007a1dc; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isVariableAttribute
    ^false
! !

"ASDBase.ic method 0x2007b244; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isSubpartFeature
    ^false
! !

"ASDBase.ic method 0x2007b2bc; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isPrimitiveAttribute
    ^false
! !

"ASDBase.ic method 0x2007b714; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isInstanceAttribute
    ^false
! !

"ASDBase.ic method 0x2007bb5c; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isAction
    ^false
! !

"ASDBase.ic method 0x2007c204; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isPrimitiveEvent
    ^false
! !

"ASDBase.ic method 0x2007cbc4; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isEvent
    ^false
! !

"ASDBase.ic method 0x2007e71c; bytecode file offset 0x97c330"
!AbtFeatureSpec class methodsFor: 'recovered'!
isAttribute
    ^false
! !

"ASDBase.ic method 0x20175c00; bytecode file offset 0xa724c4"
!AbtFeatureSpec class methodsFor: 'recovered'!
fromDOMElement: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'AttributeSpec'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AbtAttributeSpec.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOMElement: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

