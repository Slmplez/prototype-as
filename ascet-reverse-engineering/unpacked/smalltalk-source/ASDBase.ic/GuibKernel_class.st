"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004f4d0; bytecode file offset 0x94d048"
!GuibKernel class methodsFor: 'recovered'!
loaded
    (self) startUp.
    ^self
! !

"ASDBase.ic method 0x2005076c; bytecode file offset 0x94d048"
!GuibKernel class methodsFor: 'recovered'!
removing
    (self) exiting.
    ^self
! !

"ASDBase.ic method 0x2005bf04; bytecode file offset 0x958ab0"
!GuibKernel class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := GuibFontManager.
    (recoveredValue0) freeFonts.
    ^self
! !

"ASDBase.ic method 0x2005c1a4; bytecode file offset 0x958ab0"
!GuibKernel class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := GuibFontManager.
    (recoveredValue0) initialize.
    ^self
! !

