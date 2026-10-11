"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000018c; bytecode file offset 0x4b1b0"
!Fraction methodsFor: 'recovered'!
asFraction
    ^self
! !

"kernel.ic method 0x20000474; bytecode file offset 0x4b474"
!Fraction methodsFor: 'recovered'!
asDecimal
    | recoveredValue0 |
    recoveredValue0 := (self) asScaledDecimal.
    ^recoveredValue0
! !

"kernel.ic method 0x200004bc; bytecode file offset 0x4b474"
!Fraction methodsFor: 'recovered'!
asInteger
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"kernel.ic method 0x20001c90; bytecode file offset 0x4ce64"
!Fraction methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) truncated.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"kernel.ic method 0x20003c60; bytecode file offset 0x4ec04"
!Fraction methodsFor: 'recovered'!
numerator
    | recoveredValue0 |
    recoveredValue0 := numerator.
    ^recoveredValue0
! !

"kernel.ic method 0x20003dec; bytecode file offset 0x4ed88"
!Fraction methodsFor: 'recovered'!
denominator
    | recoveredValue0 |
    recoveredValue0 := denominator.
    ^recoveredValue0
! !

"kernel.ic method 0x20004570; bytecode file offset 0x4f5c4"
!Fraction methodsFor: 'recovered'!
isFraction
    ^true
! !

"kernel.ic method 0x200048d8; bytecode file offset 0x4f7e4"
!Fraction methodsFor: 'recovered'!
generality
    ^60
! !

"kernel.ic method 0x200051d4; bytecode file offset 0x500f0"
!Fraction methodsFor: 'recovered'!
truncated
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := numerator.
    recoveredValue1 := denominator.
    recoveredValue2 := (recoveredValue0) quo: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200051e0; bytecode file offset 0x500f0"
!Fraction methodsFor: 'recovered'!
normalized
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := numerator.
    recoveredValue1 := denominator.
    recoveredValue2 := (recoveredValue0) / (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200051f8; bytecode file offset 0x50104"
!Fraction methodsFor: 'recovered'!
negative
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := numerator.
    recoveredValue1 := (recoveredValue0) < (0).
    ^recoveredValue1
! !

"kernel.ic method 0x2000520c; bytecode file offset 0x50120"
!Fraction methodsFor: 'recovered'!
strictlyPositive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := numerator.
    recoveredValue1 := (recoveredValue0) > (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20005228; bytecode file offset 0x50134"
!Fraction methodsFor: 'recovered'!
positive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := numerator.
    recoveredValue1 := (recoveredValue0) >= (0).
    ^recoveredValue1
! !

"kernel.ic method 0x200052f0; bytecode file offset 0x50200"
!Fraction methodsFor: 'recovered'!
reciprocal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := denominator.
    recoveredValue1 := numerator.
    recoveredValue2 := (recoveredValue0) / (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20006050; bytecode file offset 0x50f64"
!Fraction methodsFor: 'recovered'!
asFloat
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := numerator.
    recoveredValue1 := (recoveredValue0) asFloat.
    recoveredValue2 := denominator.
    recoveredValue3 := (recoveredValue1) / (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20006bfc; bytecode file offset 0x51b20"
!Fraction methodsFor: 'recovered'!
asScaledDecimal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := numerator.
    recoveredValue1 := (recoveredValue0) asScaledDecimal.
    recoveredValue2 := denominator.
    recoveredValue3 := (recoveredValue2) asScaledDecimal.
    recoveredValue4 := (recoveredValue1) / (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20007324; bytecode file offset 0x52234"
!Fraction methodsFor: 'recovered'!
remFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) quoFrom: (recoveredValue1).
    recoveredValue3 := (self) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) - (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000a3a8; bytecode file offset 0x552b8"
!Fraction methodsFor: 'recovered'!
abs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000a5d8; bytecode file offset 0x554f0"
!Fraction methodsFor: 'recovered'!
negated
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := numerator.
    recoveredValue3 := (0) - (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := (recoveredValue1) numerator: (recoveredValue3) denominator: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000a6ec; bytecode file offset 0x55600"
!Fraction methodsFor: 'recovered'!
< recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) denominator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) numerator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) < (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000a70c; bytecode file offset 0x55620"
!Fraction methodsFor: 'recovered'!
compareGreaterThan: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) denominator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) numerator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) > (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000a72c; bytecode file offset 0x55640"
!Fraction methodsFor: 'recovered'!
// recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) denominator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) numerator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) // (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000a74c; bytecode file offset 0x5568c"
!Fraction methodsFor: 'recovered'!
quo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) denominator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) numerator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) quo: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000a760; bytecode file offset 0x5568c"
!Fraction methodsFor: 'recovered'!
/ recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) denominator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) numerator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) / (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000a774; bytecode file offset 0x5568c"
!Fraction methodsFor: 'recovered'!
* recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) numerator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) denominator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) / (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000a970; bytecode file offset 0x5589c"
!Fraction methodsFor: 'recovered'!
divFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) numerator.
    recoveredValue2 := denominator.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) denominator.
    recoveredValue6 := numerator.
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) / (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000a984; bytecode file offset 0x5589c"
!Fraction methodsFor: 'recovered'!
quoFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) numerator.
    recoveredValue2 := denominator.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) denominator.
    recoveredValue6 := numerator.
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) quo: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000b8fc; bytecode file offset 0x5680c"
!Fraction methodsFor: 'recovered'!
floor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000b91c; bytecode file offset 0x5682c"
!Fraction methodsFor: 'recovered'!
ceiling
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000e6a0; bytecode file offset 0x595b8"
!Fraction methodsFor: 'recovered'!
+ recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) denominator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) numerator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) + (recoveredValue7).
    recoveredValue9 := denominator.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) denominator.
    recoveredValue12 := (recoveredValue9) * (recoveredValue11).
    recoveredValue13 := (recoveredValue8) / (recoveredValue12).
    ^recoveredValue13
! !

"kernel.ic method 0x2000e6cc; bytecode file offset 0x595e4"
!Fraction methodsFor: 'recovered'!
- recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := numerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) denominator.
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) numerator.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) - (recoveredValue7).
    recoveredValue9 := denominator.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) denominator.
    recoveredValue12 := (recoveredValue9) * (recoveredValue11).
    recoveredValue13 := (recoveredValue8) / (recoveredValue12).
    ^recoveredValue13
! !

"kernel.ic method 0x2000e750; bytecode file offset 0x59668"
!Fraction methodsFor: 'recovered'!
subtractFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) numerator.
    recoveredValue2 := denominator.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) denominator.
    recoveredValue6 := numerator.
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := (recoveredValue3) - (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) denominator.
    recoveredValue11 := denominator.
    recoveredValue12 := (recoveredValue10) * (recoveredValue11).
    recoveredValue13 := (recoveredValue8) / (recoveredValue12).
    ^recoveredValue13
! !

"kernel.ic method 0x2000f128; bytecode file offset 0x5a048"
!Fraction methodsFor: 'recovered'!
coerce: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicNew.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) numerator: (recoveredStack2) denominator: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFraction.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000f850; bytecode file offset 0x5a768"
!Fraction methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isNumber.
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
            recoveredStack1 := numerator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) denominator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := denominator.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) numerator.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20012580; bytecode file offset 0x5d48c"
!Fraction methodsFor: 'recovered'!
sign
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
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
            recoveredStack1 := numerator.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20014c08; bytecode file offset 0x5fb1c"
!Fraction methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($().
    recoveredValue1 := numerator.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPut: ($/).
    recoveredValue4 := denominator.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPut: ($)).
    ^self
! !

"kernel.ic method 0x20014dfc; bytecode file offset 0x5fd08"
!Fraction methodsFor: 'recovered'!
numerator: recoveredArg1 denominator: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            numerator := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            denominator := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            numerator := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            denominator := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20018700; bytecode file offset 0x63610"
!Fraction methodsFor: 'recovered'!
rounded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := numerator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := numerator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := denominator.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := denominator.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := denominator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) quo: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := numerator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := numerator.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := denominator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := denominator.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := denominator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) quo: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

