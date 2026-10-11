"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x20000054; bytecode file offset 0x54d0"
!CwDropTransfer class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000144; bytecode file offset 0x55a8"
!CwDropTransfer class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x200001b0; bytecode file offset 0x5614"
!CwDropTransfer class methodsFor: 'recovered'!
cleanUp
    (self) current: (nil).
    ^self
! !

"drgdrp.ic method 0x20000988; bytecode file offset 0x5df4"
!CwDropTransfer class methodsFor: 'recovered'!
for: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    (self) current: (recoveredValue0).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) createWidget: (recoveredValue3) argBlock: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

