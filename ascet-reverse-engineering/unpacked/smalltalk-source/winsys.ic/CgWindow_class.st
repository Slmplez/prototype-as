"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002238; bytecode file offset 0x7e404"
!CgWindow class methodsFor: 'recovered'!
default
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) rootWindow.
    ^recoveredValue2
! !

"winsys.ic method 0x2000c8c0; bytecode file offset 0x88a94"
!CgWindow class methodsFor: 'recovered'!
screen: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super screen: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) defaultDepth.
    (recoveredValue2) depth: (recoveredValue4).
    recoveredValue5 := (recoveredValue1) shouldNotBeFreed.
    ^recoveredValue5
! !

"winsys.ic method 0x20013388; bytecode file offset 0x8f55c"
!CgWindow class methodsFor: 'recovered'!
createRootWindow: recoveredArg1 handle: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) screen: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal4 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) handle: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) defaultDepth.
    (recoveredValue5) depth: (recoveredValue7).
    (recoveredValue1) updateVirtualScreenSize.
    recoveredValue8 := recoveredLocal4.
    ^recoveredValue8
! !

"winsys.ic method 0x2001fd7c; bytecode file offset 0x9bf6c"
!CgWindow class methodsFor: 'recovered'!
currentVirtualScreenRect
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := OS.
    recoveredValue5 := SmYvirtualscreen.
    recoveredValue6 := (recoveredValue4) getSystemMetrics: (recoveredValue5).
    (recoveredValue3) top: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := OS.
    recoveredValue9 := SmCyvirtualscreen.
    recoveredValue10 := (recoveredValue8) getSystemMetrics: (recoveredValue9).
    (recoveredValue7) bottom: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := OS.
    recoveredValue13 := SmXvirtualscreen.
    recoveredValue14 := (recoveredValue12) getSystemMetrics: (recoveredValue13).
    (recoveredValue11) left: (recoveredValue14).
    recoveredValue15 := OS.
    recoveredValue16 := SmCxvirtualscreen.
    recoveredValue17 := (recoveredValue15) getSystemMetrics: (recoveredValue16).
    (recoveredValue2) right: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

