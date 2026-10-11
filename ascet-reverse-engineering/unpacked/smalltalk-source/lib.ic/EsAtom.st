"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200098b8; bytecode file offset 0x458f0"
!EsAtom methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) writeLiteralTypeFor: (self).
    recoveredValue2 := String.
    recoveredValue3 := (self) basicSize.
    recoveredValue4 := (recoveredValue2) new: (recoveredValue3).
    recoveredValue5 := (self) basicSize.
    recoveredValue6 := (recoveredValue4) replaceFrom: (1) to: (recoveredValue5) with: (self).
    (recoveredValue0) writeString: (recoveredValue6).
    ^self
! !

