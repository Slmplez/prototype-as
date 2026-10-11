"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017bb8; bytecode file offset 0x92209c"
!SGRemoteHandle class methodsFor: 'recovered'!
cebraPackageName
    ^'java.lang'
! !

"ASDBase.ic method 0x200202c4; bytecode file offset 0x92209c"
!SGRemoteHandle class methodsFor: 'recovered'!
cebraClassName
    ^'Object'
! !

"ASDBase.ic method 0x20030784; bytecode file offset 0x934580"
!SGRemoteHandle class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) remoteInit.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b3dcc; bytecode file offset 0x9b0708"
!SGRemoteHandle class methodsFor: 'recovered'!
cebraClassNameLong
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cebraPackageName.
    recoveredValue1 := (recoveredValue0) , ('.').
    recoveredValue2 := (self) cebraClassName.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

