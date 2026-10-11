"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000050; bytecode file offset 0x188a8"
!AbtDOMDocument class methodsFor: 'recovered'!
createDocumentFragment
    ^self
! !

"abtxmlp.ic method 0x200000f0; bytecode file offset 0x18938"
!AbtDOMDocument class methodsFor: 'recovered'!
createElement: recoveredArg1
    ^self
! !

"abtxmlp.ic method 0x20000138; bytecode file offset 0x18938"
!AbtDOMDocument class methodsFor: 'recovered'!
createTextNode: recoveredArg1
    ^self
! !

"abtxmlp.ic method 0x20000168; bytecode file offset 0x18990"
!AbtDOMDocument class methodsFor: 'recovered'!
createProcessingInstruction: recoveredArg1 target: recoveredArg2
    ^self
! !

"abtxmlp.ic method 0x20000170; bytecode file offset 0x18990"
!AbtDOMDocument class methodsFor: 'recovered'!
createElement: recoveredArg1 nameSpace: recoveredArg2
    ^self
! !

"abtxmlp.ic method 0x20000178; bytecode file offset 0x18990"
!AbtDOMDocument class methodsFor: 'recovered'!
createAttribute: recoveredArg1 nameSpace: recoveredArg2
    ^self
! !

"abtxmlp.ic method 0x20001404; bytecode file offset 0x19c64"
!AbtDOMDocument class methodsFor: 'recovered'!
createAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMAttr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001454; bytecode file offset 0x19c64"
!AbtDOMDocument class methodsFor: 'recovered'!
createEntityReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMEntityReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001834; bytecode file offset 0x1a028"
!AbtDOMDocument class methodsFor: 'recovered'!
createComment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMComment.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) data: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x200022d0; bytecode file offset 0x1aaec"
!AbtDOMDocument class methodsFor: 'recovered'!
createCDATASection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMCDataSection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) data: (recoveredValue3).
    ^recoveredValue1
! !

