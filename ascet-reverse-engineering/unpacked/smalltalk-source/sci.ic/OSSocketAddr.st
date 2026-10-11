"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000048; bytecode file offset 0x130cc"
!OSSocketAddr methodsFor: 'recovered'!
port: recoveredArg1
    ^self
! !

"sci.ic method 0x20000050; bytecode file offset 0x130cc"
!OSSocketAddr methodsFor: 'recovered'!
addr: recoveredArg1
    ^self
! !

"sci.ic method 0x200002b8; bytecode file offset 0x133fc"
!OSSocketAddr methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    ^recoveredValue1
! !

"sci.ic method 0x20000af4; bytecode file offset 0x13ba4"
!OSSocketAddr methodsFor: 'recovered'!
asString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SciError.
    recoveredValue1 := EOPNOTSUPP.
    recoveredValue2 := (recoveredValue0) errorCode: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x20000b08; bytecode file offset 0x13ba4"
!OSSocketAddr methodsFor: 'recovered'!
addr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SciError.
    recoveredValue1 := EOPNOTSUPP.
    recoveredValue2 := (recoveredValue0) errorCode: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x20000b1c; bytecode file offset 0x13ba4"
!OSSocketAddr methodsFor: 'recovered'!
port
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SciError.
    recoveredValue1 := EOPNOTSUPP.
    recoveredValue2 := (recoveredValue0) errorCode: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x20002554; bytecode file offset 0x155e4"
!OSSocketAddr methodsFor: 'recovered'!
family
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) osType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'AIX'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint8At: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint16At: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002f5c; bytecode file offset 0x15fec"
!OSSocketAddr methodsFor: 'recovered'!
family: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) osType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'AIX'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) uint8At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) uint16At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

