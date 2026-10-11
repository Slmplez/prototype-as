"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002814; bytecode file offset 0x4d79c"
!EsSmalltalkNamespace class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) new: (0).
    ^recoveredValue0
! !

"kernel.ic method 0x20004554; bytecode file offset 0x4f468"
!EsSmalltalkNamespace class methodsFor: 'recovered'!
minimumSize
    ^11
! !

"kernel.ic method 0x2000886c; bytecode file offset 0x53788"
!EsSmalltalkNamespace class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (self) minimumSize.
    recoveredValue5 := (recoveredValue3) max: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) initialize: (recoveredValue5).
    ^recoveredValue6
! !

