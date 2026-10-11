"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200037a8; bytecode file offset 0x90206c"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
applicationTimeStamp: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200049f0; bytecode file offset 0x90206c"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
applicationFlag: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004f08; bytecode file offset 0x90206c"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
modified: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200053c0; bytecode file offset 0x90206c"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
applicationTimeStampNanoSecondsFromTimeStampWithCounter: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001daec; bytecode file offset 0x92209c"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
accessRights
    ^4294950903
! !

"ASDBase.ic method 0x20020708; bytecode file offset 0x92209c"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
getLoggingInfo
    ^'xml import dummy'
! !

"ASDBase.ic method 0x200718dc; bytecode file offset 0x96e578"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
applicationFlag
    ^0
! !

"ASDBase.ic method 0x2008d6a8; bytecode file offset 0x989fc0"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
xmlInit
    (self) istate: (0).
    ^self
! !

"ASDBase.ic method 0x200b35dc; bytecode file offset 0x9afec4"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
asRBDBPartOfParent
    | recoveredValue0 |
    (self) etasDevHalt.
    recoveredValue0 := super asRBDBPartOfParent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201036c8; bytecode file offset 0x9fff8c"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
accessRights: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dbClass.
    recoveredValue2 := (self) accessRightsName.
    recoveredValue3 := (self) asAttributeProxy: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) create: (recoveredValue3) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201132f4; bytecode file offset 0xa0fbb8"
!ASDXMLImportDBDummy methodsFor: 'recovered'!
modifiedTimeStamp: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dbClass.
    recoveredValue2 := (self) modifiedTimeStampName.
    recoveredValue3 := (self) asAttributeProxy: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) create: (recoveredValue3) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

