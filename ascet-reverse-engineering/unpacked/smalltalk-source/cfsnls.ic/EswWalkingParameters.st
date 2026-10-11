"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20001444; bytecode file offset 0x2469c"
!EswWalkingParameters methodsFor: 'recovered'!
initialize
    (self) reset.
    ^self
! !

"cfsnls.ic method 0x200019e4; bytecode file offset 0x24c64"
!EswWalkingParameters methodsFor: 'recovered'!
objectBeingWalked
    | recoveredValue0 |
    recoveredValue0 := objectBeingWalked.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001a58; bytecode file offset 0x24d00"
!EswWalkingParameters methodsFor: 'recovered'!
instVarBeingWalked
    | recoveredValue0 |
    recoveredValue0 := instVarBeingWalked.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20003e88; bytecode file offset 0x270d8"
!EswWalkingParameters methodsFor: 'recovered'!
objectBeingWalked: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    objectBeingWalked := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003ecc; bytecode file offset 0x27124"
!EswWalkingParameters methodsFor: 'recovered'!
instVarBeingWalked: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instVarBeingWalked := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20004788; bytecode file offset 0x279c0"
!EswWalkingParameters methodsFor: 'recovered'!
reset
    (self) objectBeingWalked: (nil).
    (self) instVarBeingWalked: (0).
    ^self
! !

