"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200229e8; bytecode file offset 0x92209c"
!ASAP2Unknown class methodsFor: 'recovered'!
keyWord
    ^'Unknown dummy'
! !

"ASDBase.ic method 0x20023e4c; bytecode file offset 0x92209c"
!ASAP2Unknown class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:')
! !

"ASDBase.ic method 0x2026b664; bytecode file offset 0xb67f44"
!ASAP2Unknown class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeKeyWords.
    recoveredValue0 := WinProfile.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) asap2UnknownSection.
    recoveredValue3 := (self) asap2Inifile.
    recoveredValue4 := (recoveredValue1) getSectionEntries: (recoveredValue2) from: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := keyWords.
    recoveredBlock19Value1 := recoveredBlock19Arg2.
    recoveredBlock19Value2 := (recoveredBlock19Value1) value.
    recoveredBlock19Value3 := (recoveredBlock19Value0) at: (recoveredBlock19Value2) put: ('skipToEndOfSection:last:').
    recoveredBlock19Value3
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    ^self
! !

