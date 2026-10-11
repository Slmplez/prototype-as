"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002045c; bytecode file offset 0x92209c"
!ASDTarget methodsFor: 'recovered'!
compilerToolsKeyName
    ^'compilerTools'
! !

"ASDBase.ic method 0x20020a68; bytecode file offset 0x92209c"
!ASDTarget methodsFor: 'recovered'!
osToolsKeyName
    ^'osTools'
! !

"ASDBase.ic method 0x20173670; bytecode file offset 0xa6ff54"
!ASDTarget methodsFor: 'recovered'!
compilerTools
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) compilerToolsKeyName.
    recoveredValue1 := (self) getOption: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) optionClass.
    recoveredBlock7Value2 := (recoveredBlock7Value1) valueCollection.
    ^recoveredBlock7Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x2017368c; bytecode file offset 0xa6ff54"
!ASDTarget methodsFor: 'recovered'!
osTools
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osToolsKeyName.
    recoveredValue1 := (self) getOption: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) optionClass.
    recoveredBlock7Value2 := (recoveredBlock7Value1) valueCollection.
    ^recoveredBlock7Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

