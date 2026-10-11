"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20000010; bytecode file offset 0xe1bc"
!PCDExecuter methodsFor: 'recovered'!
parse: recoveredArg1
    ^self
! !

"ASDGenUtil_base.ic method 0x20000020; bytecode file offset 0xe1bc"
!PCDExecuter methodsFor: 'recovered'!
isHide: recoveredArg1
    ^self
! !

"ASDGenUtil_base.ic method 0x200004d8; bytecode file offset 0xe674"
!PCDExecuter methodsFor: 'recovered'!
entries
    | recoveredValue0 |
    recoveredValue0 := entries.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200006e8; bytecode file offset 0xe888"
!PCDExecuter methodsFor: 'recovered'!
executeInScope: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) log: (recoveredValue0).
    ^self
! !

"ASDGenUtil_base.ic method 0x2000080c; bytecode file offset 0xe9b0"
!PCDExecuter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    entries := recoveredValue1.
    ^self
! !

"ASDGenUtil_base.ic method 0x20001da4; bytecode file offset 0xff6c"
!PCDExecuter methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Log.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := Time.
    recoveredValue3 := (recoveredValue2) now.
    recoveredValue4 := (recoveredValue3) printString.
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) tab.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) name.
    (recoveredValue6) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) tab.
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := executable.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := (recoveredValue12) , (' executed').
    (recoveredValue10) nextPutAll: (recoveredValue13).
    (recoveredValue0) cr.
    ^self
! !

