"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d2a4; bytecode file offset 0x934580"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isMdlConstantValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) isMdlConstantValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034c74; bytecode file offset 0x934580"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isMdlNonModifiableExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) isMdlNonModifiableExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055b90; bytecode file offset 0x952a9c"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) specialConvertContCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005df84; bytecode file offset 0x95a838"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isTypeOfLeftHandSide
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := isTypeOfLeftHandSide.
    recoveredValue1 := (recoveredValue0) = (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d7e4; bytecode file offset 0x96a390"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
chooseInterval
    | recoveredValue0 |
    recoveredValue0 := chooseInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df38; bytecode file offset 0x96a9dc"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isImplicitConversion
    | recoveredValue0 |
    recoveredValue0 := isImplicitConversion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007608c; bytecode file offset 0x9757c8"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isMdlSideEffectFree
    ^true
! !

"ASDBase.ic method 0x20078bb4; bytecode file offset 0x9757c8"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isMdlConvertSpecialCall
    ^true
! !

"ASDBase.ic method 0x200c401c; bytecode file offset 0x9c0bf0"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
chooseInterval: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    chooseInterval := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4838; bytecode file offset 0x9c11bc"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isImplicitConversion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isImplicitConversion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b94; bytecode file offset 0x9c16b0"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
isTypeOfLeftHandSide: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isTypeOfLeftHandSide := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012d270; bytecode file offset 0xa29b34"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
errLabel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplicitConversion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super errLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20326714; bytecode file offset 0xc22fe8"
!SGMdConvertContSpecialCall methodsFor: 'recovered'!
evaluateMdlConstantValue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplicitConversion.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgLimitedIntegerType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

