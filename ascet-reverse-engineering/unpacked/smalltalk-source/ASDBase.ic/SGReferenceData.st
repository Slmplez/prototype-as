"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200002c8; bytecode file offset 0x8ffcfc"
!SGReferenceData methodsFor: 'recovered'!
convertToASDV61
    ^self
! !

"ASDBase.ic method 0x20000398; bytecode file offset 0x8ffcfc"
!SGReferenceData methodsFor: 'recovered'!
yDistribution
    ^self
! !

"ASDBase.ic method 0x20001888; bytecode file offset 0x8ffcfc"
!SGReferenceData methodsFor: 'recovered'!
asMdlInitValue
    ^self
! !

"ASDBase.ic method 0x20002638; bytecode file offset 0x8ffcfc"
!SGReferenceData methodsFor: 'recovered'!
xDistribution
    ^self
! !

"ASDBase.ic method 0x20003ea0; bytecode file offset 0x90206c"
!SGReferenceData methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004180; bytecode file offset 0x90206c"
!SGReferenceData methodsFor: 'recovered'!
interpolationValue: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005968; bytecode file offset 0x902744"
!SGReferenceData methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 andOwner: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005ce0; bytecode file offset 0x902744"
!SGReferenceData methodsFor: 'recovered'!
walkthrough: recoveredArg1 visited: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000cb7c; bytecode file offset 0x909658"
!SGReferenceData methodsFor: 'recovered'!
isCompatibleModelDataTypeFor: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cd04; bytecode file offset 0x909658"
!SGReferenceData methodsFor: 'recovered'!
replaceOwner: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20030694; bytecode file offset 0x934580"
!SGReferenceData methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053844; bytecode file offset 0x9505d0"
!SGReferenceData methodsFor: 'recovered'!
internalWriteXML: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20057948; bytecode file offset 0x956284"
!SGReferenceData methodsFor: 'recovered'!
checkForCompatibleData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) checkForCompatibleData: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200730b8; bytecode file offset 0x970b34"
!SGReferenceData methodsFor: 'recovered'!
interpolationValue
    ^nil
! !

"ASDBase.ic method 0x20073b28; bytecode file offset 0x970b34"
!SGReferenceData methodsFor: 'recovered'!
getGradientDirection
    ^nil
! !

"ASDBase.ic method 0x20075b6c; bytecode file offset 0x9757c8"
!SGReferenceData methodsFor: 'recovered'!
isValid
    ^true
! !

"ASDBase.ic method 0x20076d54; bytecode file offset 0x9757c8"
!SGReferenceData methodsFor: 'recovered'!
isValidForComponent
    ^true
! !

"ASDBase.ic method 0x2007701c; bytecode file offset 0x9757c8"
!SGReferenceData methodsFor: 'recovered'!
isReferenceData
    ^true
! !

"ASDBase.ic method 0x2007b254; bytecode file offset 0x97c330"
!SGReferenceData methodsFor: 'recovered'!
isExternalReference
    ^false
! !

"ASDBase.ic method 0x2007cdec; bytecode file offset 0x97c330"
!SGReferenceData methodsFor: 'recovered'!
isInitialReference
    ^false
! !

"ASDBase.ic method 0x2007e834; bytecode file offset 0x97c330"
!SGReferenceData methodsFor: 'recovered'!
isMonotonyDecrease
    ^false
! !

"ASDBase.ic method 0x2009d7d4; bytecode file offset 0x99a0d0"
!SGReferenceData methodsFor: 'recovered'!
makeConsistent
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_82196').
    ^self
! !

"ASDBase.ic method 0x2012253c; bytecode file offset 0xa1ee00"
!SGReferenceData methodsFor: 'recovered'!
writeXMLData: recoveredArg1 forElement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('ReferenceType').
    recoveredValue1 := recoveredArg1.
    (self) internalWriteXML: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) closeComplex.
    ^self
! !

