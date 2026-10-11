"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000f60; bytecode file offset 0x155d58"
!OSKeyEventRecordAnon5 methodsFor: 'recovered'!
AsciiChar
    | recoveredValue0 |
    recoveredValue0 := (self) int8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20001d34; bytecode file offset 0x155d58"
!OSKeyEventRecordAnon5 methodsFor: 'recovered'!
UnicodeChar
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fe78; bytecode file offset 0x165330"
!OSKeyEventRecordAnon5 methodsFor: 'recovered'!
UnicodeChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200115b8; bytecode file offset 0x165330"
!OSKeyEventRecordAnon5 methodsFor: 'recovered'!
AsciiChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (0) put: (recoveredValue0).
    ^self
! !

