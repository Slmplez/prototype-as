"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000660; bytecode file offset 0x619a4"
!Set methodsFor: 'recovered'!
sstAsShallowValue
    | recoveredValue0 |
    recoveredValue0 := (self) sstAsDoubleShallowValue.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200052e4; bytecode file offset 0x663b4"
!Set methodsFor: 'recovered'!
sstAsSoapArray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SstSoapArray.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) contents: (self).
    ^recoveredValue2
! !

