"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000254; bytecode file offset 0x4b1b0"
!DBString methodsFor: 'recovered'!
asDBString
    ^self
! !

"kernel.ic method 0x20000f94; bytecode file offset 0x4beb0"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x95; native fast path not reconstructed; fallback bytecodes follow."
basicAt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20000fa0; bytecode file offset 0x4beb0"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x95; native fast path not reconstructed; fallback bytecodes follow."
at: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x200046b0; bytecode file offset 0x4f5c4"
!DBString methodsFor: 'recovered'!
isDBString
    ^true
! !

"kernel.ic method 0x20008c34; bytecode file offset 0x53b48"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x97; native fast path not reconstructed; fallback bytecodes follow."
replaceFrom: recoveredArg1 to: recoveredArg2 with: recoveredArg3 startingAt: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super replaceFrom: (recoveredValue0) to: (recoveredValue1) with: (recoveredValue2) startingAt: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000ab54; bytecode file offset 0x55a64"
!DBString methodsFor: 'recovered'!
asReducedString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSBString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000aef8; bytecode file offset 0x55e18"
!DBString methodsFor: 'recovered'!
outputToTTY
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('PR') = ('1EZ5P1F').
    recoveredValue1 := EsLeadEncodedBytes.
    recoveredValue2 := (recoveredValue1) fromString: (self).
    (recoveredValue2) outputToTTY.
    ^self
! !

"kernel.ic method 0x2000dfac; bytecode file offset 0x58ec8"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x96; native fast path not reconstructed; fallback bytecodes follow."
at: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveErrorCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := PrimErrReadOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveFailed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000f2ac; bytecode file offset 0x5a1cc"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
indexOfSubCollection: recoveredArg1 startingAt: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveErrorCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := PrimErrIndexOutOfRange.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super indexOfSubCollection: (recoveredStack1) startingAt: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000faa4; bytecode file offset 0x5a9e8"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
indexOfSubCollection: recoveredArg1 startingAt: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveErrorCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := PrimErrIndexOutOfRange.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super indexOfSubCollection: (recoveredStack1) startingAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010888; bytecode file offset 0x5b7cc"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
indexOf: recoveredArg1 startingAt: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EFARMF'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [
    0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := super indexOf: (recoveredStack1) startingAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010d8c; bytecode file offset 0x5bca8"
!DBString methodsFor: 'recovered'!
, recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) asDBString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := super , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := super , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001117c; bytecode file offset 0x5c098"
!DBString methodsFor: 'recovered'!
indexOf: recoveredArg1 startingAt: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EFARMF'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) startingAt: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200113d4; bytecode file offset 0x5c2f8"
!DBString methodsFor: 'recovered'!
asSymbol
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_2001988').
    recoveredValue1 := (self) asSBString.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) asSymbol.
    ^recoveredBlock11Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x200143f8; bytecode file offset 0x5f32c"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
replaceFrom: recoveredArg1 to: recoveredArg2 withObject: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 31]] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20016d78; bytecode file offset 0x61c8c"
!DBString methodsFor: 'recovered'!
byteAt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueAt: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueAt: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 255.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20019d3c; bytecode file offset 0x64c58"
!DBString methodsFor: 'recovered'!
memcpyStringFrom: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) valueAt: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) valueAt: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 45]] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001abf8; bytecode file offset 0x65b20"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x96; native fast path not reconstructed; fallback bytecodes follow."
basicAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveErrorCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := PrimErrReadOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredArg2.
    recoveredBlock12Value1 := (recoveredBlock12Value0) value.
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (self) attemptedROMStore: (recoveredBlock12Value1) intoSlot: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) critical.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) basicAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveFailed.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001bde8; bytecode file offset 0x66d04"
!DBString methodsFor: 'recovered'!
byteAt: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueAt: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 255.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) valueAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 65280.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) valueAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001c7d4; bytecode file offset 0x676f4"
!DBString methodsFor: 'recovered'!
asSBString
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) valueAt: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) valueAt: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 20] ifFalse: [recoveredLocal1 := nil. recoveredPC := 53]] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001dcf4; bytecode file offset 0x68c10"
!DBString methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 :recoveredBlock35Arg2 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack4 := recoveredBlock35Arg2.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) at: (recoveredBlock35Stack4).
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) = (recoveredBlock35Stack3).
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 57] ifFalse: [recoveredBlock35PC := 54].
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            recoveredBlock35Stack1 := false.
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20025674; bytecode file offset 0x705b4"
!DBString methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBLocale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := super printOn: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) isDoubleByte.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 42] ifFalse: [recoveredBlock30PC := 68].
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack3 := Character.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) highByte.
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) value: (recoveredBlock30Stack4).
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            (recoveredBlock30Stack2) nextPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack2 := Character.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) lowByte.
            recoveredBlock30PC := 60.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) value: (recoveredBlock30Stack3).
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) nextPut: (recoveredBlock30Stack2).
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack2 := $'.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            (recoveredBlock30Stack1 ~~ recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 84] ifFalse: [recoveredBlock30PC := 76].
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 79.
        ].
        recoveredBlock30Step = 79 ifTrue: [
            recoveredBlock30Stack2 := $'.
            recoveredBlock30PC := 82.
        ].
        recoveredBlock30Step = 82 ifTrue: [
            (recoveredBlock30Stack1) nextPut: (recoveredBlock30Stack2).
            recoveredBlock30PC := 84.
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 87.
        ].
        recoveredBlock30Step = 87 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) nextPut: (recoveredBlock30Stack2).
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 90 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) apply: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20025720; bytecode file offset 0x7066c"
!DBString methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('((').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPutAll: (' new: ').
    recoveredValue5 := (self) basicSize.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPut: ($)).
    recoveredValue8 := [:recoveredBlock38Arg1 :recoveredBlock38Arg2 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 |
    recoveredBlock38Value0 := recoveredArg1.
    recoveredBlock38Value1 := recoveredBlock38Value0.
    (recoveredBlock38Value1) cr.
    recoveredBlock38Value2 := recoveredBlock38Value0.
    (recoveredBlock38Value2) tab.
    (recoveredBlock38Value0) nextPutAll: ('at: ').
    recoveredBlock38Value3 := recoveredBlock38Arg2.
    recoveredBlock38Value4 := recoveredArg1.
    (recoveredBlock38Value3) storeOn: (recoveredBlock38Value4).
    recoveredBlock38Value5 := recoveredArg1.
    (recoveredBlock38Value5) nextPutAll: (' put: ').
    recoveredBlock38Value6 := recoveredBlock38Arg1.
    recoveredBlock38Value7 := recoveredArg1.
    (recoveredBlock38Value6) storeOn: (recoveredBlock38Value7).
    recoveredBlock38Value8 := recoveredArg1.
    recoveredBlock38Value9 := (recoveredBlock38Value8) nextPut: ($;).
    recoveredBlock38Value9
].
    recoveredValue9 := (self) size.
    (recoveredValue8) applyWithIndex: (self) from: (1) to: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) cr.
    recoveredValue12 := recoveredValue10.
    (recoveredValue12) tab.
    (recoveredValue10) nextPutAll: ('yourself)').
    ^self
! !

"kernel.ic method 0x2002e028; bytecode file offset 0x78f78"
!DBString methodsFor: 'recovered'!
"VM primitive/special entry 0x9a; native fast path not reconstructed; fallback bytecodes follow."
uint8At: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveErrorCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := PrimErrReadOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) uint8At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint8At: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock77Stack0 recoveredBlock77Stack1 recoveredBlock77Stack2 recoveredBlock77Stack3 recoveredBlock77Stack4 recoveredBlock77PC recoveredBlock77Step recoveredBlock77Done recoveredBlock77Result |
    recoveredBlock77Stack0 := self.
    recoveredBlock77PC := 84.
    recoveredBlock77Done := false.
    [recoveredBlock77Done not] whileTrue: [
        recoveredBlock77Step := recoveredBlock77PC.
        recoveredBlock77Step = 84 ifTrue: [
            recoveredBlock77Stack1 := System.
            recoveredBlock77PC := 86.
        ].
        recoveredBlock77Step = 86 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) bigEndian.
            recoveredBlock77PC := 88.
        ].
        recoveredBlock77Step = 88 ifTrue: [
            (recoveredBlock77Stack1) ifTrue: [recoveredBlock77PC := 92] ifFalse: [recoveredBlock77PC := 146].
        ].
        recoveredBlock77Step = 92 ifTrue: [
            recoveredBlock77Stack1 := recoveredArg1.
            recoveredBlock77PC := 95.
        ].
        recoveredBlock77Step = 95 ifTrue: [
            recoveredBlock77Stack2 := 2.
            recoveredBlock77PC := 97.
        ].
        recoveredBlock77Step = 97 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) \\ (recoveredBlock77Stack2).
            recoveredBlock77PC := 98.
        ].
        recoveredBlock77Step = 98 ifTrue: [
            recoveredBlock77Stack2 := 0.
            recoveredBlock77PC := 100.
        ].
        recoveredBlock77Step = 100 ifTrue: [
            (recoveredBlock77Stack1 == recoveredBlock77Stack2) ifTrue: [recoveredBlock77PC := 122] ifFalse: [recoveredBlock77PC := 104].
        ].
        recoveredBlock77Step = 104 ifTrue: [
            recoveredBlock77Stack1 := self.
            recoveredBlock77PC := 105.
        ].
        recoveredBlock77Step = 105 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal1.
            recoveredBlock77PC := 108.
        ].
        recoveredBlock77Step = 108 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) valueAt: (recoveredBlock77Stack2).
            recoveredBlock77PC := 110.
        ].
        recoveredBlock77Step = 110 ifTrue: [
            recoveredBlock77Stack2 := 65280.
            recoveredBlock77PC := 112.
        ].
        recoveredBlock77Step = 112 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) bitAnd: (recoveredBlock77Stack2).
            recoveredBlock77PC := 114.
        ].
        recoveredBlock77Step = 114 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal2.
            recoveredBlock77PC := 117.
        ].
        recoveredBlock77Step = 117 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) + (recoveredBlock77Stack2).
            recoveredBlock77PC := 118.
        ].
        recoveredBlock77Step = 118 ifTrue: [
            recoveredBlock77PC := 142.
        ].
        recoveredBlock77Step = 122 ifTrue: [
            recoveredBlock77Stack1 := self.
            recoveredBlock77PC := 123.
        ].
        recoveredBlock77Step = 123 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal1.
            recoveredBlock77PC := 126.
        ].
        recoveredBlock77Step = 126 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) valueAt: (recoveredBlock77Stack2).
            recoveredBlock77PC := 128.
        ].
        recoveredBlock77Step = 128 ifTrue: [
            recoveredBlock77Stack2 := 255.
            recoveredBlock77PC := 132.
        ].
        recoveredBlock77Step = 132 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) bitAnd: (recoveredBlock77Stack2).
            recoveredBlock77PC := 134.
        ].
        recoveredBlock77Step = 134 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal2.
            recoveredBlock77PC := 137.
        ].
        recoveredBlock77Step = 137 ifTrue: [
            recoveredBlock77Stack3 := 256.
            recoveredBlock77PC := 140.
        ].
        recoveredBlock77Step = 140 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) * (recoveredBlock77Stack3).
            recoveredBlock77PC := 141.
        ].
        recoveredBlock77Step = 141 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) + (recoveredBlock77Stack2).
            recoveredBlock77PC := 142.
        ].
        recoveredBlock77Step = 142 ifTrue: [
            recoveredBlock77PC := 196.
        ].
        recoveredBlock77Step = 146 ifTrue: [
            recoveredBlock77Stack1 := recoveredArg1.
            recoveredBlock77PC := 149.
        ].
        recoveredBlock77Step = 149 ifTrue: [
            recoveredBlock77Stack2 := 2.
            recoveredBlock77PC := 151.
        ].
        recoveredBlock77Step = 151 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) \\ (recoveredBlock77Stack2).
            recoveredBlock77PC := 152.
        ].
        recoveredBlock77Step = 152 ifTrue: [
            recoveredBlock77Stack2 := 0.
            recoveredBlock77PC := 154.
        ].
        recoveredBlock77Step = 154 ifTrue: [
            (recoveredBlock77Stack1 ~~ recoveredBlock77Stack2) ifTrue: [recoveredBlock77PC := 176] ifFalse: [recoveredBlock77PC := 158].
        ].
        recoveredBlock77Step = 158 ifTrue: [
            recoveredBlock77Stack1 := self.
            recoveredBlock77PC := 159.
        ].
        recoveredBlock77Step = 159 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal1.
            recoveredBlock77PC := 162.
        ].
        recoveredBlock77Step = 162 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) valueAt: (recoveredBlock77Stack2).
            recoveredBlock77PC := 164.
        ].
        recoveredBlock77Step = 164 ifTrue: [
            recoveredBlock77Stack2 := 65280.
            recoveredBlock77PC := 166.
        ].
        recoveredBlock77Step = 166 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) bitAnd: (recoveredBlock77Stack2).
            recoveredBlock77PC := 168.
        ].
        recoveredBlock77Step = 168 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal2.
            recoveredBlock77PC := 171.
        ].
        recoveredBlock77Step = 171 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) + (recoveredBlock77Stack2).
            recoveredBlock77PC := 172.
        ].
        recoveredBlock77Step = 172 ifTrue: [
            recoveredBlock77PC := 196.
        ].
        recoveredBlock77Step = 176 ifTrue: [
            recoveredBlock77Stack1 := self.
            recoveredBlock77PC := 177.
        ].
        recoveredBlock77Step = 177 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal1.
            recoveredBlock77PC := 180.
        ].
        recoveredBlock77Step = 180 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) valueAt: (recoveredBlock77Stack2).
            recoveredBlock77PC := 182.
        ].
        recoveredBlock77Step = 182 ifTrue: [
            recoveredBlock77Stack2 := 255.
            recoveredBlock77PC := 186.
        ].
        recoveredBlock77Step = 186 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) bitAnd: (recoveredBlock77Stack2).
            recoveredBlock77PC := 188.
        ].
        recoveredBlock77Step = 188 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal2.
            recoveredBlock77PC := 191.
        ].
        recoveredBlock77Step = 191 ifTrue: [
            recoveredBlock77Stack3 := 256.
            recoveredBlock77PC := 194.
        ].
        recoveredBlock77Step = 194 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) * (recoveredBlock77Stack3).
            recoveredBlock77PC := 195.
        ].
        recoveredBlock77Step = 195 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) + (recoveredBlock77Stack2).
            recoveredBlock77PC := 196.
        ].
        recoveredBlock77Step = 196 ifTrue: [
            recoveredLocal2 := recoveredBlock77Stack1.
            recoveredBlock77PC := 199.
        ].
        recoveredBlock77Step = 199 ifTrue: [
            recoveredBlock77Stack1 := recoveredLocal1.
            recoveredBlock77PC := 202.
        ].
        recoveredBlock77Step = 202 ifTrue: [
            recoveredBlock77Stack2 := Character.
            recoveredBlock77PC := 204.
        ].
        recoveredBlock77Step = 204 ifTrue: [
            recoveredBlock77Stack3 := recoveredLocal2.
            recoveredBlock77PC := 207.
        ].
        recoveredBlock77Step = 207 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) value: (recoveredBlock77Stack3).
            recoveredBlock77PC := 209.
        ].
        recoveredBlock77Step = 209 ifTrue: [
            recoveredBlock77Stack0 := (recoveredBlock77Stack0) basicAt: (recoveredBlock77Stack1) put: (recoveredBlock77Stack2).
            recoveredBlock77PC := 211.
        ].
        recoveredBlock77Step = 211 ifTrue: [
            recoveredBlock77Result := recoveredBlock77Stack0.
            recoveredBlock77Done := true.
        ].
    ].
    recoveredBlock77Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveFailed.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

