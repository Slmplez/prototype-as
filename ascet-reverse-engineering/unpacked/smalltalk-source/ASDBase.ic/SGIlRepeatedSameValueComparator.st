"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cbbc; bytecode file offset 0x909658"
!SGIlRepeatedSameValueComparator methodsFor: 'recovered'!
assignExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cc34; bytecode file offset 0x909658"
!SGIlRepeatedSameValueComparator methodsFor: 'recovered'!
prePostIncDec: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cc94; bytecode file offset 0x909658"
!SGIlRepeatedSameValueComparator methodsFor: 'recovered'!
statementExpression: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cd6c; bytecode file offset 0x909658"
!SGIlRepeatedSameValueComparator methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20132bf4; bytecode file offset 0xa2f4dc"
!SGIlRepeatedSameValueComparator methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super abstractMethodCall: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

