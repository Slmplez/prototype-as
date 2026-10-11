"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200001e0; bytecode file offset 0x8ffcfc"
!AbtDOMDocument class methodsFor: 'recovered'!
createDocumentFragment
    ^self
! !

"ASDBase.ic method 0x200037d8; bytecode file offset 0x90206c"
!AbtDOMDocument class methodsFor: 'recovered'!
createTextNode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003fa0; bytecode file offset 0x90206c"
!AbtDOMDocument class methodsFor: 'recovered'!
createElement: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200058f8; bytecode file offset 0x902744"
!AbtDOMDocument class methodsFor: 'recovered'!
createElement: recoveredArg1 nameSpace: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005938; bytecode file offset 0x902744"
!AbtDOMDocument class methodsFor: 'recovered'!
createProcessingInstruction: recoveredArg1 target: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005d18; bytecode file offset 0x902744"
!AbtDOMDocument class methodsFor: 'recovered'!
createAttribute: recoveredArg1 nameSpace: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20081688; bytecode file offset 0x97e234"
!AbtDOMDocument class methodsFor: 'recovered'!
createAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMAttr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200818c8; bytecode file offset 0x97e234"
!AbtDOMDocument class methodsFor: 'recovered'!
createEntityReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtDOMEntityReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200923c8; bytecode file offset 0x98ed78"
!AbtDOMDocument class methodsFor: 'recovered'!
createComment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtDOMComment.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) data: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7e8c; bytecode file offset 0x9b479c"
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

