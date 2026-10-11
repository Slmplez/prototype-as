"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000102c; bytecode file offset 0x155d58"
!OSCharInfoAnon1 methodsFor: 'recovered'!
UnicodeChar
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200021f0; bytecode file offset 0x155d58"
!OSCharInfoAnon1 methodsFor: 'recovered'!
AsciiChar
    | recoveredValue0 |
    recoveredValue0 := (self) int8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010d18; bytecode file offset 0x165330"
!OSCharInfoAnon1 methodsFor: 'recovered'!
UnicodeChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011750; bytecode file offset 0x165330"
!OSCharInfoAnon1 methodsFor: 'recovered'!
AsciiChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (0) put: (recoveredValue0).
    ^self
! !

