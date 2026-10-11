"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20094878; bytecode file offset 0x991174"
!RBProxyProgressReporter class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) new: (recoveredValue0) prefix: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ec23c; bytecode file offset 0x9e8afc"
!RBProxyProgressReporter class methodsFor: 'recovered'!
new: recoveredArg1 prefix: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) parentReporter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) prefix: (recoveredValue4).
    ^recoveredValue0
! !

