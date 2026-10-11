"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001b3c; bytecode file offset 0x155d58"
!OSBroadcastsysmsg methodsFor: 'recovered'!
uiMessage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002b88; bytecode file offset 0x157170"
!OSBroadcastsysmsg methodsFor: 'recovered'!
wParam
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000421c; bytecode file offset 0x157f64"
!OSBroadcastsysmsg methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010310; bytecode file offset 0x165330"
!OSBroadcastsysmsg methodsFor: 'recovered'!
uiMessage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012980; bytecode file offset 0x166e00"
!OSBroadcastsysmsg methodsFor: 'recovered'!
wParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ea4; bytecode file offset 0x1683c0"
!OSBroadcastsysmsg methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

