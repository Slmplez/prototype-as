"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200000cc; bytecode file offset 0x4b1b0"
!Symbol methodsFor: 'recovered'!
asSymbol
    ^self
! !

"kernel.ic method 0x20000114; bytecode file offset 0x4b1b0"
!Symbol methodsFor: 'recovered'!
shallowCopy
    ^self
! !

"kernel.ic method 0x20000244; bytecode file offset 0x4b1b0"
!Symbol methodsFor: 'recovered'!
deepCopy
    ^self
! !

"kernel.ic method 0x20000540; bytecode file offset 0x4b474"
!Symbol methodsFor: 'recovered'!
numArgs
    | recoveredValue0 |
    recoveredValue0 := (self) argumentCount.
    ^recoveredValue0
! !

"kernel.ic method 0x20000ce0; bytecode file offset 0x4bbfc"
!Symbol methodsFor: 'recovered'!
"VM primitive/special entry 0x23; native fast path not reconstructed; fallback bytecodes follow."
= recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x2000179c; bytecode file offset 0x4c844"
!Symbol methodsFor: 'recovered'!
species
    | recoveredValue0 |
    recoveredValue0 := String.
    ^recoveredValue0
! !

"kernel.ic method 0x20002084; bytecode file offset 0x4cf90"
!Symbol methodsFor: 'recovered'!
"VM primitive/special entry 0x3c; native fast path not reconstructed; fallback bytecodes follow."
hash
    ^0
! !

"kernel.ic method 0x200039c4; bytecode file offset 0x4e8d4"
!Symbol methodsFor: 'recovered'!
isUnary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) precedence.
    recoveredValue1 := (recoveredValue0) == (1).
    ^recoveredValue1
! !

"kernel.ic method 0x20003a18; bytecode file offset 0x4e928"
!Symbol methodsFor: 'recovered'!
isBinary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) precedence.
    recoveredValue1 := (recoveredValue0) == (2).
    ^recoveredValue1
! !

"kernel.ic method 0x20003a6c; bytecode file offset 0x4e97c"
!Symbol methodsFor: 'recovered'!
isKeyword
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) precedence.
    recoveredValue1 := (recoveredValue0) == (3).
    ^recoveredValue1
! !

"kernel.ic method 0x20004620; bytecode file offset 0x4f5c4"
!Symbol methodsFor: 'recovered'!
isSymbol
    ^true
! !

"kernel.ic method 0x2000a8c8; bytecode file offset 0x557dc"
!Symbol methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($#).
    (recoveredValue0) nextPutAll: (self).
    ^self
! !

"kernel.ic method 0x2000b4b4; bytecode file offset 0x563cc"
!Symbol methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($#).
    recoveredValue1 := recoveredArg1.
    super printOn: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2000e09c; bytecode file offset 0x58fb8"
!Symbol methodsFor: 'recovered'!
asString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := String.
    recoveredValue1 := (self) size.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue4) with: (self) startingAt: (1).
    ^recoveredValue5
! !

"kernel.ic method 0x20012a2c; bytecode file offset 0x5d94c"
!Symbol methodsFor: 'recovered'!
printString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := String.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) at: (1) put: ($#).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue4) replaceFrom: (2) to: (recoveredValue6) with: (self) startingAt: (1).
    ^recoveredValue7
! !

"kernel.ic method 0x20015288; bytecode file offset 0x601a4"
!Symbol methodsFor: 'recovered'!
precedence
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLetter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := $:.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200158e8; bytecode file offset 0x6080c"
!Symbol methodsFor: 'recovered'!
argumentCount
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '<>+-=\/@|&%*~,?!!'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := $:.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := $:.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) occurrencesOf: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

