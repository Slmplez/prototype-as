"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012d08; bytecode file offset 0x912098"
!AMLEnumType class methodsFor: 'recovered'!
accessorClass
    | recoveredValue0 |
    recoveredValue0 := DBEnumItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015438; bytecode file offset 0x912098"
!AMLEnumType class methodsFor: 'recovered'!
memberClass
    | recoveredValue0 |
    recoveredValue0 := DBU32Item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200212cc; bytecode file offset 0x92209c"
!AMLEnumType class methodsFor: 'recovered'!
keyWord
    ^'enum'
! !

"ASDBase.ic method 0x201aad4c; bytecode file offset 0xaa7620"
!AMLEnumType class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('=') put: ('getAssociation:').
    (recoveredValue0) at: (',') put: ('getEnumeration:').
    ^self
! !

