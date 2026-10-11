"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001448; bytecode file offset 0x8ffcfc"
!RBNonArithmeticElement methodsFor: 'recovered'!
updateImplementationInterval
    ^self
! !

"ASDBase.ic method 0x20002ee8; bytecode file offset 0x8ffcfc"
!RBNonArithmeticElement methodsFor: 'recovered'!
updatePhysicsInterval
    ^self
! !

"ASDBase.ic method 0x20003b88; bytecode file offset 0x90206c"
!RBNonArithmeticElement methodsFor: 'recovered'!
updateForFormula: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200040a8; bytecode file offset 0x90206c"
!RBNonArithmeticElement methodsFor: 'recovered'!
setPhysInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005c70; bytecode file offset 0x902744"
!RBNonArithmeticElement methodsFor: 'recovered'!
checkImplementationFor: recoveredArg1 logicNode: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x200784c4; bytecode file offset 0x9757c8"
!RBNonArithmeticElement methodsFor: 'recovered'!
isSymbolic
    ^true
! !

"ASDBase.ic method 0x2009cd2c; bytecode file offset 0x999628"
!RBNonArithmeticElement methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBStringType.
    recoveredValue1 := (recoveredValue0) createDefault.
    (self) initializeForType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009d754; bytecode file offset 0x99a0d0"
!RBNonArithmeticElement methodsFor: 'recovered'!
updateImplType
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('Call_59204').
    ^self
! !

"ASDBase.ic method 0x20103a38; bytecode file offset 0xa00300"
!RBNonArithmeticElement methodsFor: 'recovered'!
asap2ExtendedLimitsForNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) asap2Limits.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) left.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) right.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2024a2f4; bytecode file offset 0xb46bcc"
!RBNonArithmeticElement methodsFor: 'recovered'!
initializeForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    description := recoveredValue1.
    (self) state: (0).
    recoveredValue2 := RBTypedValue.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) createForType: (recoveredValue3).
    (self) physicsRepresentation: (recoveredValue4).
    recoveredValue5 := RBTypedValue.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) createForType: (recoveredValue6).
    (self) implementationRepresentation: (recoveredValue7).
    recoveredValue8 := RBFormulaId.
    recoveredValue9 := (recoveredValue8) createDefault.
    (self) formula: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203a67f0; bytecode file offset 0xca30c8"
!RBNonArithmeticElement methodsFor: 'recovered'!
getMeasureIntervalPhys: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDataBoolean.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDataEnumeration.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) appliedInverseToNumber: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) appliedInverseToNumber: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

