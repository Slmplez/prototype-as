"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001918; bytecode file offset 0x8ffcfc"
!ASDGenericComponentElement methodsFor: 'recovered'!
formula
    ^self
! !

"ASDBase.ic method 0x200034c0; bytecode file offset 0x90206c"
!ASDGenericComponentElement methodsFor: 'recovered'!
setReference: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003ff0; bytecode file offset 0x90206c"
!ASDGenericComponentElement methodsFor: 'recovered'!
formula: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001ba7c; bytecode file offset 0x92209c"
!ASDGenericComponentElement methodsFor: 'recovered'!
xmlElementKind
    ^'variable'
! !

"ASDBase.ic method 0x200757cc; bytecode file offset 0x9757c8"
!ASDGenericComponentElement methodsFor: 'recovered'!
xmlNeedsOwner
    ^true
! !

"ASDBase.ic method 0x20075aec; bytecode file offset 0x9757c8"
!ASDGenericComponentElement methodsFor: 'recovered'!
isLocal
    ^true
! !

"ASDBase.ic method 0x20075dac; bytecode file offset 0x9757c8"
!ASDGenericComponentElement methodsFor: 'recovered'!
isGenericComponentElement
    ^true
! !

"ASDBase.ic method 0x20079f7c; bytecode file offset 0x97c330"
!ASDGenericComponentElement methodsFor: 'recovered'!
isClassVariable
    ^false
! !

"ASDBase.ic method 0x2007bcdc; bytecode file offset 0x97c330"
!ASDGenericComponentElement methodsFor: 'recovered'!
isImplConfiguredElement
    ^false
! !

"ASDBase.ic method 0x2007e6f4; bytecode file offset 0x97c330"
!ASDGenericComponentElement methodsFor: 'recovered'!
isDataConfiguredElement
    ^false
! !

"ASDBase.ic method 0x200baf04; bytecode file offset 0x9b7828"
!ASDGenericComponentElement methodsFor: 'recovered'!
writeXMLKindAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlElementKind.
    (recoveredValue0) attr: ('kind') nmToken: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201839b0; bytecode file offset 0xa80278"
!ASDGenericComponentElement methodsFor: 'recovered'!
visualCallBackImage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) iconName.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super visualCallBackImage.
    ^recoveredValue2
! !

