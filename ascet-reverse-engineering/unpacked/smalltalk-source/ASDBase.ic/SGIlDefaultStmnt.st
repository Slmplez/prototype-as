"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cbac; bytecode file offset 0x909658"
!SGIlDefaultStmnt methodsFor: 'recovered'!
isIleOptimizedCase: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20029174; bytecode file offset 0x934580"
!SGIlDefaultStmnt methodsFor: 'recovered'!
asIleOpimizedLabeledStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) asIleOpimizedLabeledStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200320b4; bytecode file offset 0x934580"
!SGIlDefaultStmnt methodsFor: 'recovered'!
isIleOpimizableLabeledStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stmnt.
    recoveredValue1 := (recoveredValue0) isIleOpimizableLabeledStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055d88; bytecode file offset 0x952a9c"
!SGIlDefaultStmnt methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) defaultStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200591f8; bytecode file offset 0x956284"
!SGIlDefaultStmnt methodsFor: 'recovered'!
createLabeledStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) defaultStmnt: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200777ac; bytecode file offset 0x9757c8"
!SGIlDefaultStmnt methodsFor: 'recovered'!
hasIleCompileTimeConstantExpr
    ^true
! !

"ASDBase.ic method 0x200787dc; bytecode file offset 0x9757c8"
!SGIlDefaultStmnt methodsFor: 'recovered'!
isIleDefaultStmnt
    ^true
! !

"ASDBase.ic method 0x2016f29c; bytecode file offset 0xa6bc24"
!SGIlDefaultStmnt methodsFor: 'recovered'!
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
            recoveredStack2 := (recoveredStack2) stmnt.
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

