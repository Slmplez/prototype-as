"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000734c; bytecode file offset 0x908be4"
!ASDNvramLoadSaveDialog class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    recoveredValue0 := (self) createForLoad.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200df4ac; bytecode file offset 0x9dbd80"
!ASDNvramLoadSaveDialog class methodsFor: 'recovered'!
createForLoad
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) modeString: ('Load').
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200df4c0; bytecode file offset 0x9dbd80"
!ASDNvramLoadSaveDialog class methodsFor: 'recovered'!
createForSave
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) modeString: ('Save').
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e2d1c; bytecode file offset 0x9df5d4"
!ASDNvramLoadSaveDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (260) @ (300).
    ^recoveredValue0
! !

