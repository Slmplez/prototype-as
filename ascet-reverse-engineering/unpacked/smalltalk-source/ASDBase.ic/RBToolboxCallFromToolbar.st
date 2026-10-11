"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b250; bytecode file offset 0x96873c"
!RBToolboxCallFromToolbar methodsFor: 'recovered'!
icon
    | recoveredValue0 |
    recoveredValue0 := icon.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c0bc; bytecode file offset 0x9692b0"
!RBToolboxCallFromToolbar methodsFor: 'recovered'!
helpText
    | recoveredValue0 |
    recoveredValue0 := helpText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2a58; bytecode file offset 0x9bf474"
!RBToolboxCallFromToolbar methodsFor: 'recovered'!
icon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    icon := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2d9c; bytecode file offset 0x9bfde0"
!RBToolboxCallFromToolbar methodsFor: 'recovered'!
helpText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpText := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012f930; bytecode file offset 0xa2c1f4"
!RBToolboxCallFromToolbar methodsFor: 'recovered'!
initialize
    super initialize.
    (self) icon: (nil).
    (self) helpText: (nil).
    ^self
! !

"ASDBase.ic method 0x2023ed18; bytecode file offset 0xb3b61c"
!RBToolboxCallFromToolbar methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) icon.
    recoveredValue5 := ('        icon: ') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (' helpText: ').
    recoveredValue7 := (self) helpText.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue3) nextPutAll: (recoveredValue8).
    (recoveredValue1) cr.
    ^self
! !

