"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065cac; bytecode file offset 0x963428"
!RBParseDLL methodsFor: 'recovered'!
isCallbackInitialized
    | recoveredValue0 |
    recoveredValue0 := callbackInit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20091770; bytecode file offset 0x98e0cc"
!RBParseDLL methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200b528c; bytecode file offset 0x9b1b48"
!RBParseDLL methodsFor: 'recovered'!
closeDLL
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) closeDLL.
    callbackInit := false.
    ^self
! !

