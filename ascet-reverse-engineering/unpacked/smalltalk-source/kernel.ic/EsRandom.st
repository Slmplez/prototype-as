"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001960; bytecode file offset 0x4c9a8"
!EsRandom methodsFor: 'recovered'!
multiplier
    ^#[0 0 0 0 0 88 149 64]
! !

"kernel.ic method 0x20001978; bytecode file offset 0x4c9a8"
!EsRandom methodsFor: 'recovered'!
additiveConstant
    ^#[0 0 0 0 152 107 2 65]
! !

"kernel.ic method 0x200019c0; bytecode file offset 0x4c9a8"
!EsRandom methodsFor: 'recovered'!
moduloFactor
    ^#[0 0 0 0 82 202 37 65]
! !

"kernel.ic method 0x20002be4; bytecode file offset 0x4db00"
!EsRandom methodsFor: 'recovered'!
nextPut: recoveredArg1
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20003cc8; bytecode file offset 0x4ec04"
!EsRandom methodsFor: 'recovered'!
seed1
    | recoveredValue0 |
    recoveredValue0 := seed1.
    ^recoveredValue0
! !

"kernel.ic method 0x20003d8c; bytecode file offset 0x4ed88"
!EsRandom methodsFor: 'recovered'!
seed2
    | recoveredValue0 |
    recoveredValue0 := seed2.
    ^recoveredValue0
! !

"kernel.ic method 0x20003f60; bytecode file offset 0x4eebc"
!EsRandom methodsFor: 'recovered'!
shuffleArray
    | recoveredValue0 |
    recoveredValue0 := shuffleArray.
    ^recoveredValue0
! !

"kernel.ic method 0x20004880; bytecode file offset 0x4f794"
!EsRandom methodsFor: 'recovered'!
atEnd
    ^false
! !

"kernel.ic method 0x20004950; bytecode file offset 0x4f85c"
!EsRandom methodsFor: 'recovered'!
shuffleSize
    ^98
! !

"kernel.ic method 0x20007504; bytecode file offset 0x52538"
!EsRandom methodsFor: 'recovered'!
seed1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    seed1 := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007640; bytecode file offset 0x52654"
!EsRandom methodsFor: 'recovered'!
seed2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    seed2 := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007784; bytecode file offset 0x52760"
!EsRandom methodsFor: 'recovered'!
shuffleArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shuffleArray := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000d73c; bytecode file offset 0x58660"
!EsRandom methodsFor: 'recovered'!
basicNext
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) seed2.
    recoveredValue1 := (self) multiplier.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := (self) additiveConstant.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (self) moduloFactor.
    recoveredValue6 := (recoveredValue4) rem: (recoveredValue5).
    (self) seed2: (recoveredValue6).
    recoveredValue7 := (self) seed2.
    ^recoveredValue7
! !

"kernel.ic method 0x2000e77c; bytecode file offset 0x5969c"
!EsRandom methodsFor: 'recovered'!
nextInt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) strictlyPositive.
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
            recoveredStack2 := 'Range must be positive'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200179bc; bytecode file offset 0x628f0"
!EsRandom methodsFor: 'recovered'!
next
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) shuffleSize.
    recoveredValue1 := (recoveredValue0) + (-1).
    recoveredValue2 := (self) seed1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (self) moduloFactor.
    recoveredValue5 := (recoveredValue3) / (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asInteger.
    recoveredValue7 := (1) + (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := (self) shuffleArray.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) at: (recoveredValue9).
    (self) seed1: (recoveredValue10).
    recoveredValue11 := (self) shuffleArray.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) basicNext.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := (self) seed1.
    recoveredValue15 := (self) moduloFactor.
    recoveredValue16 := (recoveredValue14) / (recoveredValue15).
    ^recoveredValue16
! !

