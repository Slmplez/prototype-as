"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000874; bytecode file offset 0x13930"
!SciSslRSAPrivateKey methodsFor: 'recovered'!
osRSAPrivateKey
    | recoveredValue0 |
    recoveredValue0 := osRSAPrivateKey.
    ^recoveredValue0
! !

"sci.ic method 0x2000124c; bytecode file offset 0x142c8"
!SciSslRSAPrivateKey methodsFor: 'recovered'!
osRSAPrivateKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osRSAPrivateKey := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001728; bytecode file offset 0x147ac"
!SciSslRSAPrivateKey methodsFor: 'recovered'!
free
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osRSAPrivateKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) osRSAPrivateKey.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

