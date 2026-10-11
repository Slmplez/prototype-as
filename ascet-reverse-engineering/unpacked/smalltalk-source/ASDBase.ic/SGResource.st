"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200173d8; bytecode file offset 0x92209c"
!SGResource methodsFor: 'recovered'!
iconName
    ^'ElementTypeResource'
! !

"ASDBase.ic method 0x2001a798; bytecode file offset 0x92209c"
!SGResource methodsFor: 'recovered'!
getBasicModelType
    ^'resource'
! !

"ASDBase.ic method 0x200267b8; bytecode file offset 0x923928"
!SGResource methodsFor: 'recovered'!
label
    ^'resource'
! !

"ASDBase.ic method 0x2003852c; bytecode file offset 0x935c54"
!SGResource methodsFor: 'recovered'!
conformsWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isSGResource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c114; bytecode file offset 0x9389cc"
!SGResource methodsFor: 'recovered'!
conformsWithCast: recoveredArg1 onWarningDo: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isSGResource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b7ec; bytecode file offset 0x958548"
!SGResource methodsFor: 'recovered'!
possibleTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074b54; bytecode file offset 0x9757c8"
!SGResource methodsFor: 'recovered'!
isSGResource
    ^true
! !

"ASDBase.ic method 0x2007e0a4; bytecode file offset 0x97c330"
!SGResource methodsFor: 'recovered'!
isSGEnumeration
    ^false
! !

"ASDBase.ic method 0x20088030; bytecode file offset 0x984bc0"
!SGResource methodsFor: 'recovered'!
releaseMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := (recoveredValue0) createWithName: ('release').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200880f8; bytecode file offset 0x984bc0"
!SGResource methodsFor: 'recovered'!
reserveMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := (recoveredValue0) createWithName: ('reserve').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009b7ec; bytecode file offset 0x998128"
!SGResource methodsFor: 'recovered'!
getMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) getMethod.
    recoveredValue3 := (recoveredValue0) createWithName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cc48c; bytecode file offset 0x9c8f90"
!SGResource methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) releaseMethod.
    recoveredValue2 := (self) reserveMethod.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162594; bytecode file offset 0xa5ee64"
!SGResource methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('free') with: ('reserved').
    (self) values: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016e9bc; bytecode file offset 0xa6b340"
!SGResource methodsFor: 'recovered'!
methodPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('reserve') put: (#(20)).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('release') put: (#(70)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201b5f90; bytecode file offset 0xab2864"
!SGResource methodsFor: 'recovered'!
writeXML: recoveredArg1 implementation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('ResourceImplementation').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) value.
    (recoveredValue1) attr: ('name') nmToken: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) extraImplInfo.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) writeXMLPrimitiveImplementation: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) closeComplex.
    ^self
! !

