"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007c64; bytecode file offset 0x908be4"
!RBPrinterShell methodsFor: 'recovered'!
initializeGC
    | recoveredValue0 |
    recoveredValue0 := (self) createGC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20032444; bytecode file offset 0x934580"
!RBPrinterShell methodsFor: 'recovered'!
palette
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) window.
    recoveredValue1 := (recoveredValue0) getPalette.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005e39c; bytecode file offset 0x95ac54"
!RBPrinterShell methodsFor: 'recovered'!
freeGC
    | recoveredValue0 |
    recoveredValue0 := gc.
    (recoveredValue0) freeGC.
    ^self
! !

"ASDBase.ic method 0x20070f88; bytecode file offset 0x96d87c"
!RBPrinterShell methodsFor: 'recovered'!
gc
    | recoveredValue0 |
    recoveredValue0 := gc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007621c; bytecode file offset 0x9757c8"
!RBPrinterShell methodsFor: 'recovered'!
displayForDocu
    ^true
! !

"ASDBase.ic method 0x200864f4; bytecode file offset 0x982e18"
!RBPrinterShell methodsFor: 'recovered'!
pixelNearestToColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) window.
    recoveredValue1 := (recoveredValue0) getPalette.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) nearestPixelValue: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c75d8; bytecode file offset 0x9c3efc"
!RBPrinterShell methodsFor: 'recovered'!
gc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    gc := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f72b4; bytecode file offset 0x9f3b74"
!RBPrinterShell methodsFor: 'recovered'!
createGC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) window.
    recoveredValue1 := None.
    recoveredValue2 := (recoveredValue0) createGC: (recoveredValue1) values: (nil).
    gc := recoveredValue2.
    recoveredValue3 := gc.
    ^recoveredValue3
! !

