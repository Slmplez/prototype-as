"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009ddc; bytecode file offset 0x908be4"
!SGIlUnaryOp methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfUnary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20050b80; bytecode file offset 0x94d4ec"
!SGIlUnaryOp methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) getIntervalFromExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005616c; bytecode file offset 0x952a9c"
!SGIlUnaryOp methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) unaryOp: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058a78; bytecode file offset 0x956284"
!SGIlUnaryOp methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ileDependsOnAccessExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20076134; bytecode file offset 0x9757c8"
!SGIlUnaryOp methodsFor: 'recovered'!
isIleUnaryOp
    ^true
! !

"ASDBase.ic method 0x2016f260; bytecode file offset 0xa6bc24"
!SGIlUnaryOp methodsFor: 'recovered'!
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
            recoveredStack2 := (recoveredStack2) leftExpr.
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

