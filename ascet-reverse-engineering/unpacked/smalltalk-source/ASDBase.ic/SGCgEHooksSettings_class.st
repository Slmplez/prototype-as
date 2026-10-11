"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019430; bytecode file offset 0x92209c"
!SGCgEHooksSettings class methodsFor: 'recovered'!
externDefinedExportedElementKey
    ^'externDefinedExportedElement'
! !

"ASDBase.ic method 0x2001bc8c; bytecode file offset 0x92209c"
!SGCgEHooksSettings class methodsFor: 'recovered'!
categoryGlobal
    ^'GLOBAL'
! !

"ASDBase.ic method 0x200208d0; bytecode file offset 0x92209c"
!SGCgEHooksSettings class methodsFor: 'recovered'!
ehooksBackendKey
    ^'%EHOOKS.BACKEND%'
! !

"ASDBase.ic method 0x20021398; bytecode file offset 0x92209c"
!SGCgEHooksSettings class methodsFor: 'recovered'!
categoryLocal
    ^'LOCAL'
! !

"ASDBase.ic method 0x2002177c; bytecode file offset 0x92209c"
!SGCgEHooksSettings class methodsFor: 'recovered'!
externDefinedLocalElementKey
    ^'externDefinedLocalElement'
! !

"ASDBase.ic method 0x2003daa8; bytecode file offset 0x93bf94"
!SGCgEHooksSettings class methodsFor: 'recovered'!
asapDisplayIdLocalElementKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) asapDisplayIdLocalElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ddb8; bytecode file offset 0x93bf94"
!SGCgEHooksSettings class methodsFor: 'recovered'!
asapIdentifierExportedElementKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) asapIdentifierExportedElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dee8; bytecode file offset 0x93bf94"
!SGCgEHooksSettings class methodsFor: 'recovered'!
asapDisplayIdExportedElementKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) asapDisplayIdExportedElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003df78; bytecode file offset 0x93bf94"
!SGCgEHooksSettings class methodsFor: 'recovered'!
asapIdentifierLocalElementKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue1 := (recoveredValue0) asapIdentifierLocalElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2019e2f8; bytecode file offset 0xa9abc8"
!SGCgEHooksSettings class methodsFor: 'recovered'!
nameTemplateKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) externDefinedLocalElementKey.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) externDefinedExportedElementKey.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) asapNameTemplateKeys.
    (recoveredValue6) addAll: (recoveredValue7).
    ^recoveredValue1
! !

