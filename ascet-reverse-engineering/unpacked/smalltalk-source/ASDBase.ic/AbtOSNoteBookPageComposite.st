"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20181060; bytecode file offset 0xa7d924"
!AbtOSNoteBookPageComposite methodsFor: 'recovered'!
recreate
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    super recreate.
    recoveredBlock4Value0 := parent.
    recoveredBlock4Value1 := (recoveredBlock4Value0) recreated: (self).
    recoveredBlock4Value1
].
    (self) deferRedraw: (recoveredValue0).
    ^self
! !

