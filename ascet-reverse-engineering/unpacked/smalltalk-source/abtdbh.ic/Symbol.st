"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000140; bytecode file offset 0x11c60"
!Symbol methodsFor: 'recovered'!
abtCloneWithRecursionSet: recoveredArg1
    ^self
! !

"abtdbh.ic method 0x20000180; bytecode file offset 0x11c60"
!Symbol methodsFor: 'recovered'!
abtPrimitiveCloneWithRecursionSet: recoveredArg1
    ^self
! !

"abtdbh.ic method 0x200007c8; bytecode file offset 0x122a8"
!Symbol methodsFor: 'recovered'!
abrSendTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) perform: (self).
    ^recoveredValue1
! !

"abtdbh.ic method 0x20001180; bytecode file offset 0x12c60"
!Symbol methodsFor: 'recovered'!
abrSendTo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) perform: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbh.ic method 0x2000118c; bytecode file offset 0x12c60"
!Symbol methodsFor: 'recovered'!
abrSendTo: recoveredArg1 withArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) perform: (self) withArguments: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbh.ic method 0x20001d44; bytecode file offset 0x13820"
!Symbol methodsFor: 'recovered'!
asMessageTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt64.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) selector: (self) arguments: (#()) receiver: (recoveredValue1).
    ^recoveredValue2
! !

