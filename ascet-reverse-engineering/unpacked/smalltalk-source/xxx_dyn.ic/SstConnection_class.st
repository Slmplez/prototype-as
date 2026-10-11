"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000575c; bytecode file offset 0x66a34"
!SstConnection class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000c538; bytecode file offset 0x6d60c"
!SstConnection class methodsFor: 'recovered'!
on: recoveredArg1 peer: recoveredArg2 using: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) handle: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) peer: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) transport: (recoveredValue6).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20017584; bytecode file offset 0x78664"
!SstConnection class methodsFor: 'recovered'!
on: recoveredArg1 using: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := (self) on: (recoveredBlock4Value0) peer: (nil) using: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ExSstNonFatalError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [:block2800b034Arg1 | 
    | block2800b034Value0 block2800b034Value1 block2800b034Value2 block2800b034Value3 block2800b034Value4 |
    block2800b034Value0 := block2800b034Arg1.
    block2800b034Value1 := block2800b034Arg1.
    block2800b034Value2 := (block2800b034Value1) arguments.
    block2800b034Value3 := (block2800b034Value2) last.
    block2800b034Value4 := (block2800b034Value0) exitWith: (block2800b034Value3).
    block2800b034Value4
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

