"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x2000003c; bytecode file offset 0x54d0"
!CwDragContext class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"drgdrp.ic method 0x2000012c; bytecode file offset 0x55a8"
!CwDragContext class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x20000b34; bytecode file offset 0x5fa0"
!CwDragContext class methodsFor: 'recovered'!
for: recoveredArg1 event: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    (self) current: (recoveredValue0).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    (recoveredValue2) createWidget: (recoveredValue3) argBlock: (recoveredValue4).
    (self) current: (nil).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

