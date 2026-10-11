"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200093b0; bytecode file offset 0x908be4"
!ETASGroupItemFileDLL methodsFor: 'recovered'!
groupClass
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010352c; bytecode file offset 0x9ffde8"
!ETASGroupItemFileDLL methodsFor: 'recovered'!
createOneFileNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := selectedGroup.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createOneFileNamed: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := selectedGroup.
    (recoveredValue3) cleanupDLL.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

