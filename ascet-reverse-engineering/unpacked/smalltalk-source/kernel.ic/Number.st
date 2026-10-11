"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000007c; bytecode file offset 0x4b1b0"
!Number methodsFor: 'recovered'!
asNumber
    ^self
! !

"kernel.ic method 0x2000009c; bytecode file offset 0x4b1b0"
!Number methodsFor: 'recovered'!
numerator
    ^self
! !

"kernel.ic method 0x200000f4; bytecode file offset 0x4b1b0"
!Number methodsFor: 'recovered'!
deepCopy
    ^self
! !

"kernel.ic method 0x2000010c; bytecode file offset 0x4b1b0"
!Number methodsFor: 'recovered'!
shallowCopy
    ^self
! !

"kernel.ic method 0x2000030c; bytecode file offset 0x4b474"
!Number methodsFor: 'recovered'!
asFloatQ
    | recoveredValue0 |
    recoveredValue0 := (self) asFloat.
    ^recoveredValue0
! !

"kernel.ic method 0x2000036c; bytecode file offset 0x4b474"
!Number methodsFor: 'recovered'!
asInteger
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"kernel.ic method 0x20000450; bytecode file offset 0x4b474"
!Number methodsFor: 'recovered'!
asFloatD
    | recoveredValue0 |
    recoveredValue0 := (self) asFloat.
    ^recoveredValue0
! !

"kernel.ic method 0x200004ec; bytecode file offset 0x4b474"
!Number methodsFor: 'recovered'!
integerPart
    | recoveredValue0 |
    recoveredValue0 := (self) truncated.
    ^recoveredValue0
! !

"kernel.ic method 0x20000528; bytecode file offset 0x4b474"
!Number methodsFor: 'recovered'!
asFloatE
    | recoveredValue0 |
    recoveredValue0 := (self) asFloat.
    ^recoveredValue0
! !

"kernel.ic method 0x20001acc; bytecode file offset 0x4c9d8"
!Number methodsFor: 'recovered'!
squared
    | recoveredValue0 |
    recoveredValue0 := (self) * (self).
    ^recoveredValue0
! !

"kernel.ic method 0x20001b40; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
arcCos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) arcCos.
    ^recoveredValue1
! !

"kernel.ic method 0x20001bb0; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
arcSin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) arcSin.
    ^recoveredValue1
! !

"kernel.ic method 0x20001c10; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
sqrt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) sqrt.
    ^recoveredValue1
! !

"kernel.ic method 0x20001ca0; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
cos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) cos.
    ^recoveredValue1
! !

"kernel.ic method 0x20001cf0; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
sin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) sin.
    ^recoveredValue1
! !

"kernel.ic method 0x20001d00; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
exp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) exp.
    ^recoveredValue1
! !

"kernel.ic method 0x20001e90; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
tan
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) tan.
    ^recoveredValue1
! !

"kernel.ic method 0x20001ec0; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
ln
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) ln.
    ^recoveredValue1
! !

"kernel.ic method 0x20001f20; bytecode file offset 0x4ce64"
!Number methodsFor: 'recovered'!
arcTan
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asFloat.
    recoveredValue1 := (recoveredValue0) arcTan.
    ^recoveredValue1
! !

"kernel.ic method 0x200026e4; bytecode file offset 0x4d5f4"
!Number methodsFor: 'recovered'!
fractionPart
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) truncated.
    recoveredValue1 := (self) - (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200027d4; bytecode file offset 0x4d6e0"
!Number methodsFor: 'recovered'!
negative
    | recoveredValue0 |
    recoveredValue0 := (self) < (0).
    ^recoveredValue0
! !

"kernel.ic method 0x200027e4; bytecode file offset 0x4d6f0"
!Number methodsFor: 'recovered'!
strictlyPositive
    | recoveredValue0 |
    recoveredValue0 := (self) > (0).
    ^recoveredValue0
! !

"kernel.ic method 0x200027f4; bytecode file offset 0x4d700"
!Number methodsFor: 'recovered'!
positive
    | recoveredValue0 |
    recoveredValue0 := (self) >= (0).
    ^recoveredValue0
! !

"kernel.ic method 0x20002804; bytecode file offset 0x4d710"
!Number methodsFor: 'recovered'!
isZero
    | recoveredValue0 |
    recoveredValue0 := (self) = (0).
    ^recoveredValue0
! !

"kernel.ic method 0x20002b18; bytecode file offset 0x4db00"
!Number methodsFor: 'recovered'!
/ recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002b30; bytecode file offset 0x4db00"
!Number methodsFor: 'recovered'!
< recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002b3c; bytecode file offset 0x4db00"
!Number methodsFor: 'recovered'!
// recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002b48; bytecode file offset 0x4db00"
!Number methodsFor: 'recovered'!
* recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002b84; bytecode file offset 0x4db00"
!Number methodsFor: 'recovered'!
- recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002b90; bytecode file offset 0x4db00"
!Number methodsFor: 'recovered'!
+ recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"kernel.ic method 0x20002c04; bytecode file offset 0x4db18"
!Number methodsFor: 'recovered'!
>= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) < (recoveredValue0).
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"kernel.ic method 0x20002df0; bytecode file offset 0x4dcfc"
!Number methodsFor: 'recovered'!
> recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) < (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20002e40; bytecode file offset 0x4dd68"
!Number methodsFor: 'recovered'!
raisedToInteger: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) power: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20002f34; bytecode file offset 0x4de88"
!Number methodsFor: 'recovered'!
quo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) / (recoveredValue0).
    recoveredValue2 := (recoveredValue1) truncated.
    ^recoveredValue2
! !

"kernel.ic method 0x20002f44; bytecode file offset 0x4de88"
!Number methodsFor: 'recovered'!
floorLog: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) log: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) floor.
    ^recoveredValue2
! !

"kernel.ic method 0x20003210; bytecode file offset 0x4e214"
!Number methodsFor: 'recovered'!
days
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Duration.
    recoveredValue1 := (recoveredValue0) days: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20003230; bytecode file offset 0x4e214"
!Number methodsFor: 'recovered'!
hours
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Duration.
    recoveredValue1 := (recoveredValue0) hours: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20003250; bytecode file offset 0x4e214"
!Number methodsFor: 'recovered'!
weeks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Duration.
    recoveredValue1 := (recoveredValue0) weeks: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20003260; bytecode file offset 0x4e214"
!Number methodsFor: 'recovered'!
minutes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Duration.
    recoveredValue1 := (recoveredValue0) minutes: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20003280; bytecode file offset 0x4e214"
!Number methodsFor: 'recovered'!
seconds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Duration.
    recoveredValue1 := (recoveredValue0) seconds: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x200032a0; bytecode file offset 0x4e214"
!Number methodsFor: 'recovered'!
milliseconds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Duration.
    recoveredValue1 := (recoveredValue0) milliseconds: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20004400; bytecode file offset 0x4f32c"
!Number methodsFor: 'recovered'!
denominator
    ^1
! !

"kernel.ic method 0x20004588; bytecode file offset 0x4f5c4"
!Number methodsFor: 'recovered'!
isNumber
    ^true
! !

"kernel.ic method 0x20004720; bytecode file offset 0x4f794"
!Number methodsFor: 'recovered'!
isNaN
    ^false
! !

"kernel.ic method 0x20004858; bytecode file offset 0x4f794"
!Number methodsFor: 'recovered'!
isInf
    ^false
! !

"kernel.ic method 0x20004b50; bytecode file offset 0x4fa5c"
!Number methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) < (self).
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"kernel.ic method 0x20004c10; bytecode file offset 0x4fb74"
!Number methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0).
    ^self
! !

"kernel.ic method 0x20004d08; bytecode file offset 0x4fc18"
!Number methodsFor: 'recovered'!
truncateTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) quo: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20004d90; bytecode file offset 0x4fcac"
!Number methodsFor: 'recovered'!
lessGeneralThan: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generality.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) generality.
    recoveredValue3 := (recoveredValue0) < (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20004db4; bytecode file offset 0x4fcc4"
!Number methodsFor: 'recovered'!
moreGeneralThan: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generality.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) generality.
    recoveredValue3 := (recoveredValue0) > (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20004dcc; bytecode file offset 0x4fce0"
!Number methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ln.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ln.
    recoveredValue3 := (recoveredValue0) / (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x200062c0; bytecode file offset 0x511d4"
!Number methodsFor: 'recovered'!
to: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Interval.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) from: (self) to: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200063b0; bytecode file offset 0x512bc"
!Number methodsFor: 'recovered'!
\\ recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) // (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (self) - (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x200064ac; bytecode file offset 0x513bc"
!Number methodsFor: 'recovered'!
rem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) quo: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) * (recoveredValue2).
    recoveredValue4 := (self) - (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20006b80; bytecode file offset 0x51a9c"
!Number methodsFor: 'recovered'!
degreesToRadians
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Float.
    recoveredValue1 := (recoveredValue0) pi.
    recoveredValue2 := (self) * (recoveredValue1).
    recoveredValue3 := (recoveredValue2) / (#[0 0 0 0 0 128 102 64]).
    ^recoveredValue3
! !

"kernel.ic method 0x20006cc0; bytecode file offset 0x51bdc"
!Number methodsFor: 'recovered'!
radiansToDegrees
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) * (#[0 0 0 0 0 128 102 64]).
    recoveredValue1 := Float.
    recoveredValue2 := (recoveredValue1) pi.
    recoveredValue3 := (recoveredValue0) / (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20006d00; bytecode file offset 0x51c18"
!Number methodsFor: 'recovered'!
rounded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sign.
    recoveredValue1 := (recoveredValue0) * (#[0 0 0 0 0 0 224 63]).
    recoveredValue2 := (self) + (recoveredValue1).
    recoveredValue3 := (recoveredValue2) truncated.
    ^recoveredValue3
! !

"kernel.ic method 0x20008928; bytecode file offset 0x5383c"
!Number methodsFor: 'recovered'!
to: recoveredArg1 by: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Interval.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) from: (self) to: (recoveredValue1) by: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20009350; bytecode file offset 0x54270"
!Number methodsFor: 'recovered'!
dividedIntoDuration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Duration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asMilliseconds.
    recoveredValue3 := (recoveredValue2) / (self).
    recoveredValue4 := (recoveredValue3) asInteger.
    recoveredValue5 := (recoveredValue0) milliseconds: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000937c; bytecode file offset 0x54298"
!Number methodsFor: 'recovered'!
@ recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Point.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) x: (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) y: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000a0f0; bytecode file offset 0x55008"
!Number methodsFor: 'recovered'!
to: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Interval.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) from: (self) to: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"kernel.ic method 0x2000a824; bytecode file offset 0x55740"
!Number methodsFor: 'recovered'!
roundTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) sign.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) / (2).
    recoveredValue3 := (recoveredValue2) abs.
    recoveredValue4 := (recoveredValue0) * (recoveredValue3).
    recoveredValue5 := (self) + (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) truncateTo: (recoveredValue6).
    ^recoveredValue7
! !

"kernel.ic method 0x2000af64; bytecode file offset 0x55e70"
!Number methodsFor: 'recovered'!
abs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
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
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000b73c; bytecode file offset 0x56654"
!Number methodsFor: 'recovered'!
to: recoveredArg1 by: recoveredArg2 do: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Interval.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) from: (self) to: (recoveredValue1) by: (recoveredValue2).
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"kernel.ic method 0x2000d7fc; bytecode file offset 0x58710"
!Number methodsFor: 'recovered'!
floor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) rem: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
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
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000d824; bytecode file offset 0x58738"
!Number methodsFor: 'recovered'!
ceiling
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) rem: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
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
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000eb1c; bytecode file offset 0x59a2c"
!Number methodsFor: 'recovered'!
timesRepeat: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010548; bytecode file offset 0x5b454"
!Number methodsFor: 'recovered'!
sign
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20014c3c; bytecode file offset 0x5fb5c"
!Number methodsFor: 'recovered'!
raisedTo: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedToInteger: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) ln.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) exp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001c6c4; bytecode file offset 0x675f0"
!Number methodsFor: 'recovered'!
asScaledDecimal: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asScaledDecimal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) scale.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) scale.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) powerOfTen.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) scale: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) powerOfTen.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) rounded.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := ScaledDecimal.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) sign.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromUnscaled: (recoveredStack1) sign: (recoveredStack2) scale: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001cb1c; bytecode file offset 0x67a44"
!Number methodsFor: 'recovered'!
retry: recoveredArg1 coercing: recoveredArg2
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
            recoveredStack2 := '='.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) generality.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) generality.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) coerce: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) generality.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) generality.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) coerce: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := ExCLDTInvalidArgument.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

