"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000620; bytecode file offset 0x8ffcfc"
!SGIlFloatConstant methodsFor: 'recovered'!
asIleFloatConstant
    ^self
! !

"ASDBase.ic method 0x20055a1c; bytecode file offset 0x952a9c"
!SGIlFloatConstant methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) floatConstant: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006104c; bytecode file offset 0x95d978"
!SGIlFloatConstant methodsFor: 'recovered'!
isIleZeroInInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) = (#[0 0 0 0 0 0 0 0]).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006109c; bytecode file offset 0x95d978"
!SGIlFloatConstant methodsFor: 'recovered'!
isIleConstantValueOne
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) = (#[0 0 0 0 0 0 240 63]).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063094; bytecode file offset 0x95f97c"
!SGIlFloatConstant methodsFor: 'recovered'!
isIleConstantValueZero
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) = (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007569c; bytecode file offset 0x9757c8"
!SGIlFloatConstant methodsFor: 'recovered'!
isIleFloatConstant
    ^true
! !

"ASDBase.ic method 0x200776cc; bytecode file offset 0x9757c8"
!SGIlFloatConstant methodsFor: 'recovered'!
hasIleFloatConstant
    ^true
! !

"ASDBase.ic method 0x2007857c; bytecode file offset 0x9757c8"
!SGIlFloatConstant methodsFor: 'recovered'!
isIleFloatTypedExpr
    ^true
! !

"ASDBase.ic method 0x2008f67c; bytecode file offset 0x98c228"
!SGIlFloatConstant methodsFor: 'recovered'!
neg
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) value.
    recoveredValue2 := (recoveredValue1) negated.
    recoveredValue3 := (recoveredValue0) createFloatConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f73c; bytecode file offset 0x98c228"
!SGIlFloatConstant methodsFor: 'recovered'!
abs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) value.
    recoveredValue2 := (recoveredValue1) abs.
    recoveredValue3 := (recoveredValue0) createFloatConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f7cc; bytecode file offset 0x98c228"
!SGIlFloatConstant methodsFor: 'recovered'!
asIleIntConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) value.
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := (recoveredValue0) createIntConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20090040; bytecode file offset 0x98c91c"
!SGIlFloatConstant methodsFor: 'recovered'!
createIleTypeFromInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) ileFloat64.
    type := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200908a8; bytecode file offset 0x98d184"
!SGIlFloatConstant methodsFor: 'recovered'!
isIleConstantAbsValueOne
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) abs.
    recoveredValue2 := (recoveredValue1) = (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009943c; bytecode file offset 0x995e2c"
!SGIlFloatConstant methodsFor: 'recovered'!
sub: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) subFromFloatConstant: (self) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d0944; bytecode file offset 0x9cd3a0"
!SGIlFloatConstant methodsFor: 'recovered'!
createIlePropagatedImplType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rl') == ('Call_63311').
    recoveredValue1 := (self) expander.
    recoveredValue2 := (recoveredValue1) ileFloat64.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200eab24; bytecode file offset 0x9e73e8"
!SGIlFloatConstant methodsFor: 'recovered'!
asIleFloatConstantType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) roundToInfinity.
    recoveredValue4 := (recoveredValue0) createFloatConstant: (recoveredValue1) type: (recoveredValue2) roundToInfinity: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ebd2c; bytecode file offset 0x9e85e8"
!SGIlFloatConstant methodsFor: 'recovered'!
adaptAssignmentType: recoveredArg1 castStrategy: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIntegerType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleIntConstant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166258; bytecode file offset 0xa62b1c"
!SGIlFloatConstant methodsFor: 'recovered'!
changeIleType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleIntConstant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeIleType: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super changeIleType: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

