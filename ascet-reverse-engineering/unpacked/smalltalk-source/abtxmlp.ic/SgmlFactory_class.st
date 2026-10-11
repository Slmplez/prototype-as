"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20001414; bytecode file offset 0x19c64"
!SgmlFactory class methodsFor: 'recovered'!
newTag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SgmlTag.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001434; bytecode file offset 0x19c64"
!SgmlFactory class methodsFor: 'recovered'!
newEntityReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SgmlEntityReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001444; bytecode file offset 0x19c64"
!SgmlFactory class methodsFor: 'recovered'!
newCharacterReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SgmlCharacterReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001fec; bytecode file offset 0x1a7dc"
!SgmlFactory class methodsFor: 'recovered'!
newTagProxy: recoveredArg1 resolveBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SgmlTagProxy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue1) resolveBlock: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x200022f8; bytecode file offset 0x1aaec"
!SgmlFactory class methodsFor: 'recovered'!
newText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SgmlText.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) add: (recoveredValue3).
    ^recoveredValue1
! !

