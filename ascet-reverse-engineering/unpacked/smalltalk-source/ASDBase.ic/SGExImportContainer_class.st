"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016718; bytecode file offset 0x92209c"
!SGExImportContainer class methodsFor: 'recovered'!
dbVersionString
    ^'dbVersion'
! !

"ASDBase.ic method 0x2001a5a0; bytecode file offset 0x92209c"
!SGExImportContainer class methodsFor: 'recovered'!
productIdString
    ^'productId'
! !

"ASDBase.ic method 0x200200fc; bytecode file offset 0x92209c"
!SGExImportContainer class methodsFor: 'recovered'!
toolVersionString
    ^'toolVersion'
! !

"ASDBase.ic method 0x20022688; bytecode file offset 0x92209c"
!SGExImportContainer class methodsFor: 'recovered'!
timeStampString
    ^'timeStamp'
! !

"ASDBase.ic method 0x201b7458; bytecode file offset 0xab3d28"
!SGExImportContainer class methodsFor: 'recovered'!
createFor: recoveredArg1 mainCtrl: recoveredArg2 product: recoveredArg3 dbVersion: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) sdLibrary: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) currentProductVersionString.
    (recoveredValue4) toolVersion: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) productId: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) dbVersion: (recoveredValue10).
    ^recoveredValue0
! !

"ASDBase.ic method 0x202102dc; bytecode file offset 0xb0cbb8"
!SGExImportContainer class methodsFor: 'recovered'!
createFor: recoveredArg1 mainCtrl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) sdLibrary: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) currentProductVersionString.
    (recoveredValue4) toolVersion: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) currentDBVersion.
    (recoveredValue7) dbVersion: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) class.
    recoveredValue13 := (recoveredValue12) product.
    (recoveredValue10) productId: (recoveredValue13).
    ^recoveredValue0
! !

