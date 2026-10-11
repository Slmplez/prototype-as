"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003768; bytecode file offset 0x90206c"
!SGMdLiteral methodsFor: 'recovered'!
checkDenominatorInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006d1c; bytecode file offset 0x908be4"
!SGMdLiteral methodsFor: 'recovered'!
evaluateMdlConstantValue
    | recoveredValue0 |
    recoveredValue0 := (self) value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c9e4; bytecode file offset 0x909658"
!SGMdLiteral methodsFor: 'recovered'!
hasDerivative: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000f234; bytecode file offset 0x90bb38"
!SGMdLiteral methodsFor: 'recovered'!
hasDirectLinkLookup: recoveredArg1 or: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2002c204; bytecode file offset 0x934580"
!SGMdLiteral methodsFor: 'recovered'!
isMdlArithmeticConstantValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) isCgArithmeticType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034da4; bytecode file offset 0x934580"
!SGMdLiteral methodsFor: 'recovered'!
errLabelInitValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) printString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036ec4; bytecode file offset 0x934580"
!SGMdLiteral methodsFor: 'recovered'!
getPhysInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) asInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041dd0; bytecode file offset 0x93e6d0"
!SGMdLiteral methodsFor: 'recovered'!
mdlConstantValueInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) asInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055adc; bytecode file offset 0x952a9c"
!SGMdLiteral methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) literal: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c0ac; bytecode file offset 0x9692b0"
!SGMdLiteral methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074ec4; bytecode file offset 0x9757c8"
!SGMdLiteral methodsFor: 'recovered'!
isMdlSystemConstant
    ^true
! !

"ASDBase.ic method 0x20075f14; bytecode file offset 0x9757c8"
!SGMdLiteral methodsFor: 'recovered'!
isMdlNonModifiableExpr
    ^true
! !

"ASDBase.ic method 0x20076d24; bytecode file offset 0x9757c8"
!SGMdLiteral methodsFor: 'recovered'!
isMdlLiteral
    ^true
! !

"ASDBase.ic method 0x2009dc0c; bytecode file offset 0x99a578"
!SGMdLiteral methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('literal:') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a8ff4; bytecode file offset 0x9a58b0"
!SGMdLiteral methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := value.
    recoveredValue2 := (recoveredValue1) asString.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c2e2c; bytecode file offset 0x9bfde0"
!SGMdLiteral methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201181ac; bytecode file offset 0xa14cb0"
!SGMdLiteral methodsFor: 'recovered'!
isMdlArithmeticConstantIntValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgArithmeticType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20133bac; bytecode file offset 0xa30468"
!SGMdLiteral methodsFor: 'recovered'!
semAnaExceedsEnumRange: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) mdlSemErrValue: (recoveredStack1) exceedsRange: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164e18; bytecode file offset 0xa616e4"
!SGMdLiteral methodsFor: 'recovered'!
mdlHasSameValueAs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
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

"ASDBase.ic method 0x201eccd8; bytecode file offset 0xae95ac"
!SGMdLiteral methodsFor: 'recovered'!
asMdlComplementServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGMdComplementService.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) source.
    (recoveredValue2) source: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) expr: (self).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) asRedundantModelType.
    (recoveredValue5) mdlClass: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) mdlClassArgument: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

