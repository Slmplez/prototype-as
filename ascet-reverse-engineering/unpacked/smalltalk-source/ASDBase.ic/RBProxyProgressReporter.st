"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200be2dc; bytecode file offset 0x9bb178"
!RBProxyProgressReporter methodsFor: 'recovered'!
parentReporter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentReporter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf2c8; bytecode file offset 0x9bc0b4"
!RBProxyProgressReporter methodsFor: 'recovered'!
prefix: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prefix := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d7450; bytecode file offset 0x9d3d0c"
!RBProxyProgressReporter methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := parentReporter.
    recoveredValue1 := prefix.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    (recoveredValue0) messageString: (recoveredValue3).
    ^self
! !

