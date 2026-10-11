"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200dd1bc; bytecode file offset 0x9d9b78"
!DBQuery class methodsFor: 'recovered'!
wildcard: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DBWildcardQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd1dc; bytecode file offset 0x9d9b78"
!DBQuery class methodsFor: 'recovered'!
subString: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DBSubStringQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd1ec; bytecode file offset 0x9d9b78"
!DBQuery class methodsFor: 'recovered'!
setSearch: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DBSetQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd1fc; bytecode file offset 0x9d9b78"
!DBQuery class methodsFor: 'recovered'!
setExactSearch: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DBSetExactQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dd2ac; bytecode file offset 0x9d9b78"
!DBQuery class methodsFor: 'recovered'!
setExactFullNameSearch: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DBSetExactFullNameQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eddf0; bytecode file offset 0x9ea72c"
!DBQuery class methodsFor: 'recovered'!
setExactSearch: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3 proxy: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := DBSetExactQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3) proxy: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ede70; bytecode file offset 0x9ea72c"
!DBQuery class methodsFor: 'recovered'!
setSearch: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3 cTreeInterface: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := DBSetQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3) cTreeInterface: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201121c0; bytecode file offset 0xa0ea7c"
!DBQuery class methodsFor: 'recovered'!
setExactSearch: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3 proxy: recoveredArg4 cTreeInterface: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := DBSetExactQuery.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) create: (recoveredValue1) index: (recoveredValue2) keyValue: (recoveredValue3) proxy: (recoveredValue4) cTreeInterface: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201beeb4; bytecode file offset 0xabb780"
!DBQuery class methodsFor: 'recovered'!
create: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3 cTreeInterface: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg4.
    (recoveredValue0) interface: (recoveredValue1).
    recoveredValue2 := (self) new.
    recoveredValue3 := (recoveredValue2) initializeInstances.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) dbInterface: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) index: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    (recoveredValue4) keyValue: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201e08b4; bytecode file offset 0xadd180"
!DBQuery class methodsFor: 'recovered'!
create: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3 proxy: recoveredArg4 cTreeInterface: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg5.
    (recoveredValue0) interface: (recoveredValue1).
    recoveredValue2 := (self) new.
    recoveredValue3 := (recoveredValue2) initializeInstances.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) dbInterface: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) index: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    (recoveredValue4) keyValue: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20272ec4; bytecode file offset 0xb6f7a4"
!DBQuery class methodsFor: 'recovered'!
create: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3 proxy: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) isString.
    (self) runtimeAssert: (recoveredValue1) additionalInfo: ('Searches for queries with bytearray should NOT be done only in ONE db interface').
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) className.
    recoveredValue6 := (recoveredValue3) getInterfaceForClassName: (recoveredValue5).
    (recoveredValue2) interface: (recoveredValue6).
    recoveredValue7 := (self) new.
    recoveredValue8 := (recoveredValue7) initializeInstances.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) dbInterface: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := recoveredArg2.
    (recoveredValue12) index: (recoveredValue13).
    recoveredValue14 := recoveredArg3.
    (recoveredValue9) keyValue: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x202ba374; bytecode file offset 0xbb6c58"
!DBQuery class methodsFor: 'recovered'!
create: recoveredArg1 index: recoveredArg2 keyValue: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) isString.
    (self) runtimeAssert: (recoveredValue1) additionalInfo: ('Searches for queries with bytearray should NOT be done only in ONE db interface').
    recoveredValue2 := ('hw') == ('call_88387').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue3) getInterfaceForClassName: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) interface: (recoveredValue7).
    recoveredValue8 := (self) new.
    recoveredValue9 := (recoveredValue8) initializeInstances.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := recoveredArg1.
    (recoveredValue11) dbInterface: (recoveredValue12).
    recoveredValue13 := recoveredValue10.
    recoveredValue14 := recoveredArg2.
    (recoveredValue13) index: (recoveredValue14).
    recoveredValue15 := recoveredArg3.
    (recoveredValue10) keyValue: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    ^recoveredValue16
! !

