"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000b00; bytecode file offset 0x8ffcfc"
!SGASDLCodeVariantKey methodsFor: 'recovered'!
asExternalVariantKey
    ^self
! !

"ASDBase.ic method 0x20009d1c; bytecode file offset 0x908be4"
!SGASDLCodeVariantKey methodsFor: 'recovered'!
duplicate
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bf08; bytecode file offset 0x92209c"
!SGASDLCodeVariantKey methodsFor: 'recovered'!
docuString
    ^'ASDL'
! !

"ASDBase.ic method 0x20074e4c; bytecode file offset 0x9757c8"
!SGASDLCodeVariantKey methodsFor: 'recovered'!
isPhysicalVariant
    ^true
! !

"ASDBase.ic method 0x20085de4; bytecode file offset 0x98269c"
!SGASDLCodeVariantKey methodsFor: 'recovered'!
equalTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue0) == (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200948f4; bytecode file offset 0x9913f0"
!SGASDLCodeVariantKey methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('ASDL').
    ^self
! !

"ASDBase.ic method 0x200df1d8; bytecode file offset 0x9dba9c"
!SGASDLCodeVariantKey methodsFor: 'recovered'!
dbXmlDesc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('esdlKey').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

