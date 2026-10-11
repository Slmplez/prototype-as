"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200be624; bytecode file offset 0x9bb178"
!SimpleDOMDocument methodsFor: 'recovered'!
rootTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootTag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fd1e8; bytecode file offset 0x9f9aa8"
!SimpleDOMDocument methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('<?xml version="1.0"?>').
    recoveredValue1 := rootTag.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) abtXmlPrintOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010c728; bytecode file offset 0xa09004"
!SimpleDOMDocument methodsFor: 'recovered'!
createElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SimpleTag.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) ownerDocument: (self).
    ^recoveredValue1
! !

