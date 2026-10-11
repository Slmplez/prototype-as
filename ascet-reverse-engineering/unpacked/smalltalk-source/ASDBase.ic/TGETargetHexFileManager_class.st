"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008ffb8; bytecode file offset 0x98c878"
!TGETargetHexFileManager class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) addHeaderItem.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200afa28; bytecode file offset 0x9ac2fc"
!TGETargetHexFileManager class methodsFor: 'recovered'!
createFromByteArray: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) readFromByteArray: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200afa3c; bytecode file offset 0x9ac2fc"
!TGETargetHexFileManager class methodsFor: 'recovered'!
createFromFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) readFromFile: (recoveredValue3).
    ^recoveredValue4
! !

