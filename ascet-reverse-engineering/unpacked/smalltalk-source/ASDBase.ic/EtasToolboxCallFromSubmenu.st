"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006eb48; bytecode file offset 0x96b41c"
!EtasToolboxCallFromSubmenu methodsFor: 'recovered'!
submenu
    | recoveredValue0 |
    recoveredValue0 := submenu.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007536c; bytecode file offset 0x9757c8"
!EtasToolboxCallFromSubmenu methodsFor: 'recovered'!
isSubmenuCall
    ^true
! !

"ASDBase.ic method 0x200c4f80; bytecode file offset 0x9c1afc"
!EtasToolboxCallFromSubmenu methodsFor: 'recovered'!
submenu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    submenu := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20185c48; bytecode file offset 0xa82518"
!EtasToolboxCallFromSubmenu methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) submenu.
    recoveredValue4 := ('        submenu: ') , (recoveredValue3).
    (recoveredValue2) nextPutAll: (recoveredValue4).
    (recoveredValue1) cr.
    ^self
! !

