"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012f6c; bytecode file offset 0x912098"
!AMLBlock class methodsFor: 'recovered'!
accessorClass
    | recoveredValue0 |
    recoveredValue0 := DBStructItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016a84; bytecode file offset 0x92209c"
!AMLBlock class methodsFor: 'recovered'!
keyWord
    ^'block'
! !

"ASDBase.ic method 0x20137cc0; bytecode file offset 0xa3458c"
!AMLBlock class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: (')') put: ('endOfStatement:').
    ^self
! !

