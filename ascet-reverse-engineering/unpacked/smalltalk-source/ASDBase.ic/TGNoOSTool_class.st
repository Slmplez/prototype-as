"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202df1b8; bytecode file offset 0xbdbaac"
!TGNoOSTool class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) noToolType.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [].
    recoveredValue3 := (self) availableTool: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    ^recoveredBlock16Value0
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) new.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) identifier: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    (self) addInstance: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

