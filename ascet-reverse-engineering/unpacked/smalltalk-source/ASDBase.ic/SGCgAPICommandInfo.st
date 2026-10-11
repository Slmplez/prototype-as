"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e5bc; bytecode file offset 0x96af48"
!SGCgAPICommandInfo methodsFor: 'recovered'!
numErrs
    | recoveredValue0 |
    recoveredValue0 := numErrs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e7a8; bytecode file offset 0x96b41c"
!SGCgAPICommandInfo methodsFor: 'recovered'!
numWarns
    | recoveredValue0 |
    recoveredValue0 := numWarns.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eeb4; bytecode file offset 0x96b8a0"
!SGCgAPICommandInfo methodsFor: 'recovered'!
oldStackSize
    | recoveredValue0 |
    recoveredValue0 := oldStackSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077fbc; bytecode file offset 0x9757c8"
!SGCgAPICommandInfo methodsFor: 'recovered'!
apiCommand
    ^true
! !

"ASDBase.ic method 0x200ad158; bytecode file offset 0x9a9a0c"
!SGCgAPICommandInfo methodsFor: 'recovered'!
collectErrors: recoveredArg1 warnings: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    numErrs := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    numWarns := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c54b8; bytecode file offset 0x9c1f64"
!SGCgAPICommandInfo methodsFor: 'recovered'!
oldStackSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldStackSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012fe20; bytecode file offset 0xa2c6dc"
!SGCgAPICommandInfo methodsFor: 'recovered'!
initialize
    super initialize.
    numErrs := 0.
    numWarns := 0.
    ^self
! !

