"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000219c; bytecode file offset 0x4d118"
!ExceptionalEventCollection methodsFor: 'recovered'!
ancestorOf: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) handles: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20005168; bytecode file offset 0x5008c"
!ExceptionalEventCollection methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    contents := recoveredValue1.
    ^self
! !

"kernel.ic method 0x200057d0; bytecode file offset 0x506ec"
!ExceptionalEventCollection methodsFor: 'recovered'!
| recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20006944; bytecode file offset 0x51858"
!ExceptionalEventCollection methodsFor: 'recovered'!
handle: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) contents.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000d2cc; bytecode file offset 0x581f0"
!ExceptionalEventCollection methodsFor: 'recovered'!
handles: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) handles: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) anySatisfy: (recoveredValue1).
    ^recoveredValue2
! !

