"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001568; bytecode file offset 0x8ffcfc"
!RBFileSelectionPrompter class methodsFor: 'recovered'!
genConstants
    ^self
! !

"ASDBase.ic method 0x203341c8; bytecode file offset 0xc30ac0"
!RBFileSelectionPrompter class methodsFor: 'recovered'!
promptGraphicsFileTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) title: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := XmOPEN.
    (recoveredValue3) accessType: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) searchMask: ('*.bmp;*.jpg;*.tif').
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := Dictionary.
    recoveredValue8 := (recoveredValue7) new.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) at: ('*.bmp;*.jpg;*.tif') put: ('Graphics ').
    recoveredValue10 := recoveredValue8.
    (recoveredValue10) at: ('*.bmp') put: ('BMP ').
    recoveredValue11 := recoveredValue8.
    (recoveredValue11) at: ('*.jpg') put: ('JPG ').
    recoveredValue12 := recoveredValue8.
    (recoveredValue12) at: ('*.tif') put: ('TIF ').
    (recoveredValue6) filterDictionary: (recoveredValue8).
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) searchMask: ('*.bmp;*.jpg;*.tif').
    recoveredValue14 := (recoveredValue0) prompt.
    ^recoveredValue14
! !

