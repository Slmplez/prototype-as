"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a9fc; bytecode file offset 0x92209c"
!SGCgScoopixSettings class methodsFor: 'recovered'!
modelLinkBaseKey
    ^'modelLinkBase'
! !

"ASDBase.ic method 0x200243ec; bytecode file offset 0x92209c"
!SGCgScoopixSettings class methodsFor: 'recovered'!
rootPathKey
    ^'SCOOP-IX.ROOTPATH'
! !

"ASDBase.ic method 0x2003f628; bytecode file offset 0x93bf94"
!SGCgScoopixSettings class methodsFor: 'recovered'!
scoopixFilenameKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) scoopixFilenameKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e0960; bytecode file offset 0x9dd260"
!SGCgScoopixSettings class methodsFor: 'recovered'!
filenameTemplateKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue4 := (recoveredValue3) scoopixFilenameKey.
    (recoveredValue2) add: (recoveredValue4).
    ^recoveredValue1
! !

