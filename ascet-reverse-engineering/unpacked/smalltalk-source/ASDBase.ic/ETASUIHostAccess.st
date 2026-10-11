"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006698c; bytecode file offset 0x963428"
!ETASUIHostAccess methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 |
    recoveredValue0 := hostAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be5a4; bytecode file offset 0x9bb178"
!ETASUIHostAccess methodsFor: 'recovered'!
hostAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hostAccess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2021ca68; bytecode file offset 0xb1933c"
!ETASUIHostAccess methodsFor: 'recovered'!
requiresFileExistency: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := RBUserInfo.
    recoveredBlock8Value1 := ('File "%1" not found. \%2.') withCrs.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := recoveredBlock8Arg1.
    recoveredBlock8Value4 := (recoveredBlock8Value1) bindWith: (recoveredBlock8Value2) with: (recoveredBlock8Value3).
    recoveredBlock8Value5 := (recoveredBlock8Value0) message: (recoveredBlock8Value4).
    recoveredBlock8Value6 := (recoveredBlock8Value5) prompt.
    recoveredBlock8Value6
].
    recoveredValue3 := (recoveredValue0) checkForExistency: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202342d4; bytecode file offset 0xb30ba8"
!ETASUIHostAccess methodsFor: 'recovered'!
deleteFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := RBUserInfo.
    recoveredBlock8Value1 := ('Can not remove file "%1". \%2.') withCrs.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := recoveredBlock8Arg1.
    recoveredBlock8Value4 := (recoveredBlock8Value1) bindWith: (recoveredBlock8Value2) with: (recoveredBlock8Value3).
    recoveredBlock8Value5 := (recoveredBlock8Value0) message: (recoveredBlock8Value4).
    (recoveredBlock8Value5) prompt.
    ^false
].
    (recoveredValue0) removeFile: (recoveredValue1) ifFail: (recoveredValue2).
    ^true
! !

