"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20037f34; bytecode file offset 0x9347e8"
!RBFormulaConst methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := c0.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b480; bytecode file offset 0x96873c"
!RBFormulaConst methodsFor: 'recovered'!
c0
    | recoveredValue0 |
    recoveredValue0 := c0.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007afb4; bytecode file offset 0x97c330"
!RBFormulaConst methodsFor: 'recovered'!
isInvertible
    ^false
! !

"ASDBase.ic method 0x2007c984; bytecode file offset 0x97c330"
!RBFormulaConst methodsFor: 'recovered'!
isLinearAndInvertible
    ^false
! !

"ASDBase.ic method 0x2007f544; bytecode file offset 0x97c330"
!RBFormulaConst methodsFor: 'recovered'!
hasInverse
    ^false
! !

"ASDBase.ic method 0x2007f604; bytecode file offset 0x97c330"
!RBFormulaConst methodsFor: 'recovered'!
isIdentityFormula
    ^false
! !

"ASDBase.ic method 0x20087d80; bytecode file offset 0x98463c"
!RBFormulaConst methodsFor: 'recovered'!
parameterValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := c0.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088ad4; bytecode file offset 0x985628"
!RBFormulaConst methodsFor: 'recovered'!
parameterArray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) c0.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094914; bytecode file offset 0x9913f0"
!RBFormulaConst methodsFor: 'recovered'!
printFormInverseOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('phys = ...').
    ^self
! !

"ASDBase.ic method 0x2009d638; bytecode file offset 0x999ef8"
!RBFormulaConst methodsFor: 'recovered'!
printFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := c0.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('f(phys) = ') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c2490; bytecode file offset 0x9bf474"
!RBFormulaConst methodsFor: 'recovered'!
c0: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    c0 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2610; bytecode file offset 0x9bf474"
!RBFormulaConst methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    c0 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e9120; bytecode file offset 0x9e59e4"
!RBFormulaConst methodsFor: 'recovered'!
printFormOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := c0.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('f(phys) = ') , (recoveredValue2).
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200eaef0; bytecode file offset 0x9e77b4"
!RBFormulaConst methodsFor: 'recovered'!
rescaleByFactor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) c0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) * (recoveredValue4).
    (recoveredValue2) c0: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fa8e8; bytecode file offset 0x9f71d0"
!RBFormulaConst methodsFor: 'recovered'!
initialize
    super initialize.
    (self) c0: (0).
    ^self
! !

"ASDBase.ic method 0x2015d2d0; bytecode file offset 0xa59b8c"
!RBFormulaConst methodsFor: 'recovered'!
offset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := c0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := c0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := c0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := c0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20185614; bytecode file offset 0xa81ed8"
!RBFormulaConst methodsFor: 'recovered'!
checkAndWriteParameters: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntOrFloatOrFraction.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) c0: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021b9f8; bytecode file offset 0xb182cc"
!RBFormulaConst methodsFor: 'recovered'!
mergeWith: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isLinearAndInvertible.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := c0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) scale.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) offset.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) c0: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := description.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) description: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

