"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200296b4; bytecode file offset 0x934580"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
isMdlArithmeticConstantIntValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) isMdlArithmeticConstantIntValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b2a4; bytecode file offset 0x934580"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
isMdlNonModifiableExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) isMdlNonModifiableExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c474; bytecode file offset 0x934580"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
mdlConstantValueInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) mdlConstantValueInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dca4; bytecode file offset 0x934580"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
evaluateMdlConstantValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) evaluateMdlConstantValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fd44; bytecode file offset 0x934580"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
isMdlArithmeticConstantValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) isMdlArithmeticConstantValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033a54; bytecode file offset 0x934580"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
isMdlConstantValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) isMdlConstantValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050ec0; bytecode file offset 0x94d84c"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
isMdlModelTypedExpression
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) isCgArithmeticLiteralType.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056004; bytecode file offset 0x952a9c"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) specialEnumCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009ddd0; bytecode file offset 0x99a69c"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
value
    | recoveredValue0 |
    (self) assertDeprecated: ('evaluateMdlConstantValue').
    recoveredValue0 := (self) evaluateMdlConstantValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20176ff0; bytecode file offset 0xa738b4"
!SGMdEnumSpecialCall methodsFor: 'recovered'!
semAnaExceedsEnumRange: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) mdlSemErrValue: (recoveredStack1) label: (recoveredStack2) exceedsRange: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

