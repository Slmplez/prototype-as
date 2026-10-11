"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019b2c; bytecode file offset 0x92209c"
!SGSignalItem class methodsFor: 'recovered'!
apiItemTypes
    ^#('Signal')
! !

"ASDBase.ic method 0x2001fa24; bytecode file offset 0x92209c"
!SGSignalItem class methodsFor: 'recovered'!
defaultItemLabel
    ^'Signal'
! !

"ASDBase.ic method 0x2020358c; bytecode file offset 0xaffe54"
!SGSignalItem class methodsFor: 'recovered'!
dbXmlDeleteFromDisk: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super dbXmlDeleteFromDisk: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    ^nil
].
    recoveredValue3 := (recoveredValue1) getObjectIfUndefined: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) database.
    (recoveredValue3) preDelete: (recoveredValue5).
    ^self
! !

