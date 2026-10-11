"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a504; bytecode file offset 0x934580"
!SGIlPhonyAssign methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) isIleCompileTimeConstantExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032854; bytecode file offset 0x934580"
!SGIlPhonyAssign methodsFor: 'recovered'!
hasIleFloatConstant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) hasIleFloatConstant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034074; bytecode file offset 0x934580"
!SGIlPhonyAssign methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034e54; bytecode file offset 0x934580"
!SGIlPhonyAssign methodsFor: 'recovered'!
isIleConstantExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) isIleConstantExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200555a8; bytecode file offset 0x952a9c"
!SGIlPhonyAssign methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) phonyAssignExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077734; bytecode file offset 0x9757c8"
!SGIlPhonyAssign methodsFor: 'recovered'!
isIlePhonyAssign
    ^true
! !

"ASDBase.ic method 0x20118bbc; bytecode file offset 0xa15490"
!SGIlPhonyAssign methodsFor: 'recovered'!
isIleFloatTypedExpr
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFloatType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleQuantFloatType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011bb2c; bytecode file offset 0xa183f0"
!SGIlPhonyAssign methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expressionContext.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) expr.
    recoveredBlock5Value1 := (recoveredBlock5Value0) ileRuntimeCosts.
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) executeInContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016f2b0; bytecode file offset 0xa6bc24"
!SGIlPhonyAssign methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            hash := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

