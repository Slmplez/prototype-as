"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20030a54; bytecode file offset 0x934580"
!TGHexToMapManager class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200911b4; bytecode file offset 0x98de70"
!TGHexToMapManager class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20289650; bytecode file offset 0xb85f28"
!TGHexToMapManager class methodsFor: 'recovered'!
createETASMap: recoveredArg1 hexFile: recoveredArg2 objectList: recoveredArg3 asapFile: recoveredArg4 byteOrder: recoveredArg5 mapFile: recoveredArg6 offset: recoveredArg7
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) objectFile: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) hexFile: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) objectList: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) asapFile: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) byteOrder: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) mapFile: (recoveredValue13).
    recoveredValue14 := recoveredArg7.
    (recoveredValue1) offset: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) make.
    ^recoveredValue16
! !

