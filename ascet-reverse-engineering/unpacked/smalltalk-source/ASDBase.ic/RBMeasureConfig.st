"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004428; bytecode file offset 0x90206c"
!RBMeasureConfig methodsFor: 'recovered'!
writeXML: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2003a1e4; bytecode file offset 0x938608"
!RBMeasureConfig methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065d74; bytecode file offset 0x963428"
!RBMeasureConfig methodsFor: 'recovered'!
getContents
    | recoveredValue0 |
    recoveredValue0 := contents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200895bc; bytecode file offset 0x985ef8"
!RBMeasureConfig methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    contents := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200be04c; bytecode file offset 0x9bb178"
!RBMeasureConfig methodsFor: 'recovered'!
setContents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contents := recoveredValue0.
    ^self
! !

