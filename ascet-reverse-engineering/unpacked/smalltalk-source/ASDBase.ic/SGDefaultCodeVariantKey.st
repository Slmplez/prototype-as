"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002360; bytecode file offset 0x8ffcfc"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
asExternalVariantKey
    ^self
! !

"ASDBase.ic method 0x20009230; bytecode file offset 0x908be4"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
duplicate
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bd7c; bytecode file offset 0x92209c"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
target
    ^'Default'
! !

"ASDBase.ic method 0x2001d75c; bytecode file offset 0x92209c"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
docuString
    ^'Default C'
! !

"ASDBase.ic method 0x2002138c; bytecode file offset 0x92209c"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
xmlGetExportPath
    ^'defaultC'
! !

"ASDBase.ic method 0x2007517c; bytecode file offset 0x9757c8"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
isDefaultCodeVariantKey
    ^true
! !

"ASDBase.ic method 0x20078e74; bytecode file offset 0x9757c8"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
isPhysicalVariant
    ^true
! !

"ASDBase.ic method 0x20085dd8; bytecode file offset 0x98269c"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
equalTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue0) == (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20094ad4; bytecode file offset 0x9913f0"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('DefaultC').
    ^self
! !

"ASDBase.ic method 0x200df1a8; bytecode file offset 0x9dba9c"
!SGDefaultCodeVariantKey methodsFor: 'recovered'!
dbXmlDesc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('defaultCKey').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

