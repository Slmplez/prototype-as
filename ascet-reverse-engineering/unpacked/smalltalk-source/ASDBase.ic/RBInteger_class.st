"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d138; bytecode file offset 0x92209c"
!RBInteger class methodsFor: 'recovered'!
asCType
    ^''
! !

"ASDBase.ic method 0x2004fdf4; bytecode file offset 0x94d048"
!RBInteger class methodsFor: 'recovered'!
typeSize
    (self) halt.
    ^self
! !

"ASDBase.ic method 0x20086138; bytecode file offset 0x982a70"
!RBInteger class methodsFor: 'recovered'!
providesImplType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allImplTypeClasses.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue0) includes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cb758; bytecode file offset 0x9c80c4"
!RBInteger class methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := MinusInfinity.
    recoveredValue2 := PlusInfinity.
    recoveredValue3 := (recoveredValue0) left: (recoveredValue1) right: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f816c; bytecode file offset 0x9f4e38"
!RBInteger class methodsFor: 'recovered'!
allImplTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImplTypeClasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5820Arg1 | 
    | block280c5820Value0 block280c5820Value1 |
    block280c5820Value0 := block280c5820Arg1.
    block280c5820Value1 := (block280c5820Value0) createDefault.
    block280c5820Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e9c54; bytecode file offset 0xbe652c"
!RBInteger class methodsFor: 'recovered'!
allImplTypeClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := RBInt8Signed.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := RBInt16Signed.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := RBInt32Signed.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := RBInt8Unsigned.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := RBInt16Unsigned.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := RBInt32Unsigned.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    ^recoveredValue1
! !

