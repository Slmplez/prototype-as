"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013410; bytecode file offset 0x912098"
!AMLCollection class methodsFor: 'recovered'!
accessorClass
    | recoveredValue0 |
    recoveredValue0 := DBStructItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c574; bytecode file offset 0x92209c"
!AMLCollection class methodsFor: 'recovered'!
keyWord
    ^' ( '
! !

"ASDBase.ic method 0x202f75b0; bytecode file offset 0xbf3e98"
!AMLCollection class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: (')') put: ('getCollectionEnd3:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: (')*') put: ('getCollectionEnd2:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: (')*;') put: ('endOfStatement:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('*') put: ('getCollectionEnd2:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('*;') put: ('endOfStatement:').
    (recoveredValue0) at: (';') put: ('endOfStatement:').
    ^self
! !

