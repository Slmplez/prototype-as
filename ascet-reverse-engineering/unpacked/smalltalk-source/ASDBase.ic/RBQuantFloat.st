"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20075414; bytecode file offset 0x9757c8"
!RBQuantFloat methodsFor: 'recovered'!
isRBQuantFloat
    ^true
! !

"ASDBase.ic method 0x200761ac; bytecode file offset 0x9757c8"
!RBQuantFloat methodsFor: 'recovered'!
isIleQuantFloatType
    ^true
! !

"ASDBase.ic method 0x2007be5c; bytecode file offset 0x97c330"
!RBQuantFloat methodsFor: 'recovered'!
isIleFloatType
    ^false
! !

"ASDBase.ic method 0x2007db54; bytecode file offset 0x97c330"
!RBQuantFloat methodsFor: 'recovered'!
isIleFloat64Type
    ^false
! !

"ASDBase.ic method 0x2007def4; bytecode file offset 0x97c330"
!RBQuantFloat methodsFor: 'recovered'!
isIleFloat32Type
    ^false
! !

"ASDBase.ic method 0x2007f74c; bytecode file offset 0x97c330"
!RBQuantFloat methodsFor: 'recovered'!
isIleBaseType
    ^false
! !

"ASDBase.ic method 0x200e84d8; bytecode file offset 0x9e4df4"
!RBQuantFloat methodsFor: 'recovered'!
equalsType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFloatType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleQuantFloatType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

