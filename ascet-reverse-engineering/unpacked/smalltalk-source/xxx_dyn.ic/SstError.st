"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200016a8; bytecode file offset 0x62770"
!SstError methodsFor: 'recovered'!
isRecoverable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isNonRecoverable.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200026e0; bytecode file offset 0x637a4"
!SstError methodsFor: 'recovered'!
markRecoverable
    modifiers := false.
    ^self
! !

"xxx_dyn.ic method 0x200027f8; bytecode file offset 0x638bc"
!SstError methodsFor: 'recovered'!
markNonRecoverable
    modifiers := true.
    ^self
! !

"xxx_dyn.ic method 0x20003284; bytecode file offset 0x64348"
!SstError methodsFor: 'recovered'!
isNonRecoverable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := modifiers.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200036b0; bytecode file offset 0x647ac"
!SstError methodsFor: 'recovered'!
errorCode
    | recoveredValue0 |
    recoveredValue0 := super errorCode.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004760; bytecode file offset 0x6592c"
!SstError methodsFor: 'recovered'!
isSstError
    ^true
! !

"xxx_dyn.ic method 0x20004818; bytecode file offset 0x6592c"
!SstError methodsFor: 'recovered'!
sstIsImmutable
    ^true
! !

"xxx_dyn.ic method 0x20004820; bytecode file offset 0x6592c"
!SstError methodsFor: 'recovered'!
sstIsSystemObject
    ^true
! !

"xxx_dyn.ic method 0x20005110; bytecode file offset 0x6624c"
!SstError methodsFor: 'recovered'!
raise
    | recoveredValue0 |
    recoveredValue0 := ExSstNonFatalError.
    (self) raise: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20006d8c; bytecode file offset 0x67e58"
!SstError methodsFor: 'recovered'!
raise: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) printString.
    (recoveredValue0) signalWith: (recoveredValue1) with: (self).
    ^self
! !

"xxx_dyn.ic method 0x20007530; bytecode file offset 0x685f4"
!SstError methodsFor: 'recovered'!
isMarshalingError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := errorCode.
    recoveredValue1 := (recoveredValue0) between: (0) and: (49).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20009794; bytecode file offset 0x6a858"
!SstError methodsFor: 'recovered'!
isObjectSpaceError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := errorCode.
    recoveredValue1 := (recoveredValue0) between: (50) and: (99).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000a750; bytecode file offset 0x6b814"
!SstError methodsFor: 'recovered'!
isCommunicationsError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := errorCode.
    recoveredValue1 := (recoveredValue0) between: (150) and: (199).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000a768; bytecode file offset 0x6b82c"
!SstError methodsFor: 'recovered'!
isInvocationError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := errorCode.
    recoveredValue1 := (recoveredValue0) between: (100) and: (149).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000fac4; bytecode file offset 0x70ba0"
!SstError methodsFor: 'recovered'!
identifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstErrorConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block2800aa70Value0 block2800aa70Value1 |
    block2800aa70Value0 := NlsCatSSTG.
    block2800aa70Value1 := (block2800aa70Value0) indexedMsg: (2).
    block2800aa70Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20015e54; bytecode file offset 0x76f48"
!SstError methodsFor: 'recovered'!
debugPrintOn: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) debugPrintOn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20015e70; bytecode file offset 0x76f48"
!SstError methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

