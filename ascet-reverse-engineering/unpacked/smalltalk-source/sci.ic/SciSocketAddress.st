"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000288; bytecode file offset 0x133fc"
!SciSocketAddress methodsFor: 'recovered'!
port
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := (recoveredValue0) port.
    ^recoveredValue1
! !

"sci.ic method 0x200002d8; bytecode file offset 0x133fc"
!SciSocketAddress methodsFor: 'recovered'!
family
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := (recoveredValue0) family.
    ^recoveredValue1
! !

"sci.ic method 0x200002f8; bytecode file offset 0x133fc"
!SciSocketAddress methodsFor: 'recovered'!
asString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"sci.ic method 0x20000348; bytecode file offset 0x133fc"
!SciSocketAddress methodsFor: 'recovered'!
address
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := (recoveredValue0) addr.
    ^recoveredValue1
! !

"sci.ic method 0x20000358; bytecode file offset 0x133fc"
!SciSocketAddress methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"sci.ic method 0x200008a4; bytecode file offset 0x13930"
!SciSocketAddress methodsFor: 'recovered'!
socketAddrStruct
    | recoveredValue0 |
    recoveredValue0 := socketAddrStruct.
    ^recoveredValue0
! !

"sci.ic method 0x20000d40; bytecode file offset 0x13e04"
!SciSocketAddress methodsFor: 'recovered'!
family: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) family: (recoveredValue1).
    ^self
! !

"sci.ic method 0x20000d50; bytecode file offset 0x13e04"
!SciSocketAddress methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"sci.ic method 0x20000d60; bytecode file offset 0x13e04"
!SciSocketAddress methodsFor: 'recovered'!
port: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) port: (recoveredValue1).
    ^self
! !

"sci.ic method 0x20000d80; bytecode file offset 0x13e04"
!SciSocketAddress methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) socketAddrStruct.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addr: (recoveredValue1).
    ^self
! !

"sci.ic method 0x20001214; bytecode file offset 0x142c8"
!SciSocketAddress methodsFor: 'recovered'!
socketAddrStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    socketAddrStruct := recoveredValue0.
    ^self
! !

"sci.ic method 0x2000204c; bytecode file offset 0x150d0"
!SciSocketAddress methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) socketAddrStruct.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) socketAddrStruct.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

