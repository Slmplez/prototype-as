"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ddb4; bytecode file offset 0x934580"
!SGIaConst methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileExpr.
    recoveredValue1 := (recoveredValue0) interval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033b54; bytecode file offset 0x934580"
!SGIaConst methodsFor: 'recovered'!
getPhysInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) asInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036bc4; bytecode file offset 0x934580"
!SGIaConst methodsFor: 'recovered'!
implIntegerValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) implValue.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005f4dc; bytecode file offset 0x95c4f4"
!SGIaConst methodsFor: 'recovered'!
updateImplRep
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) implIntegerValue.
    recoveredValue1 := (recoveredValue0) asInterval.
    recoveredValue2 := (self) interval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062b2c; bytecode file offset 0x95f8b0"
!SGIaConst methodsFor: 'recovered'!
implValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (self) formula.
    recoveredValue2 := (recoveredValue0) transformedBy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c894; bytecode file offset 0x9692b0"
!SGIaConst methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075464; bytecode file offset 0x9757c8"
!SGIaConst methodsFor: 'recovered'!
isConstant
    ^true
! !

"ASDBase.ic method 0x200aea30; bytecode file offset 0x9ab2ec"
!SGIaConst methodsFor: 'recovered'!
adjustScaleConstantWith: recoveredArg1 attributes: recoveredArg2 operation: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1) with: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c3104; bytecode file offset 0x9bfde0"
!SGIaConst methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9ee4; bytecode file offset 0x9c679c"
!SGIaConst methodsFor: 'recovered'!
adjustScales: recoveredArg1 attributes: recoveredArg2 operation: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) adjustScaleConstantWith: (self) attributes: (recoveredValue1) operation: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015f2e8; bytecode file offset 0xa5bba4"
!SGIaConst methodsFor: 'recovered'!
isConstantZero
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
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
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
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

"ASDBase.ic method 0x201737a4; bytecode file offset 0xa70068"
!SGIaConst methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlNode.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := super source.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e7b54; bytecode file offset 0xae4424"
!SGIaConst methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: (' (').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) value.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20327d04; bytecode file offset 0xc245dc"
!SGIaConst methodsFor: 'recovered'!
adjustScaleExprWith: recoveredArg1 attributes: recoveredArg2 operation: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) representable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFraction.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) representable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFraction.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFraction.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) even.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeScaleTo: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustScaleExprWithExpr: (recoveredStack1) attributes: (recoveredStack2) operation: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

