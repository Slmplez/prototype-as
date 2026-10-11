"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200056b4; bytecode file offset 0x81880"
!CwWINFormatEtcFormat class methodsFor: 'recovered'!
cfFormatName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OS.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) registerClipboardFormat: (recoveredValue1).
    recoveredValue3 := (self) cfFormat: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x2000d584; bytecode file offset 0x89754"
!CwWINFormatEtcFormat class methodsFor: 'recovered'!
cfFormat: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) cfFormat: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) dwAspect: (1).
    recoveredValue4 := (recoveredValue0) tymed: (1).
    ^recoveredValue4
! !

