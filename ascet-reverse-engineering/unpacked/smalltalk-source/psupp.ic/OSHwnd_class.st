"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20009350; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getFocus
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetFocus.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20009378; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getActiveWindow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetActiveWindow.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000938c; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getClipboardViewer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetClipboardViewer.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200093a0; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getClipboardOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetClipboardOwner.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200093c8; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getOpenClipboardWindow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetOpenClipboardWindow.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20009418; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getCapture
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetCapture.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000942c; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getDesktopWindow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetDesktopWindow.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20009440; bytecode file offset 0x15cd08"
!OSHwnd class methodsFor: 'recovered'!
getForegroundWindow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetForegroundWindow.
    recoveredValue1 := (recoveredValue0) call.
    recoveredValue2 := (self) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000be54; bytecode file offset 0x15f71c"
!OSHwnd class methodsFor: 'recovered'!
windowFromPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := WindowFromPoint.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (recoveredValue1).
    recoveredValue3 := (self) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20024088; bytecode file offset 0x177944"
!OSHwnd class methodsFor: 'recovered'!
findWindow: recoveredArg1 lpszWindow: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := FindWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (self) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20028820; bytecode file offset 0x17c0c4"
!OSHwnd class methodsFor: 'recovered'!
createStatusWindow: recoveredArg1 lpszText: recoveredArg2 hwndParent: recoveredArg3 wID: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CreateStatusWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x20031100; bytecode file offset 0x1849a4"
!OSHwnd class methodsFor: 'recovered'!
createMDIWindow: recoveredArg1 lpszWindowName: recoveredArg2 dwStyle: recoveredArg3 x: recoveredArg4 y: recoveredArg5 nWidth: recoveredArg6 nHeight: recoveredArg7 hwndParent: recoveredArg8 hinst: recoveredArg9 lParam: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := CreateMDIWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := recoveredArg8.
    recoveredValue11 := recoveredArg9.
    recoveredValue12 := recoveredArg10.
    recoveredValue13 := (recoveredValue0) callWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9) with: (recoveredValue10) with: (recoveredValue11) with: (recoveredValue12).
    recoveredValue14 := (self) immediate: (recoveredValue13).
    ^recoveredValue14
! !

"psupp.ic method 0x20031bf0; bytecode file offset 0x185490"
!OSHwnd class methodsFor: 'recovered'!
createUpDownControl: recoveredArg1 x: recoveredArg2 y: recoveredArg3 cx: recoveredArg4 cy: recoveredArg5 hParent: recoveredArg6 nID: recoveredArg7 hInst: recoveredArg8 hBuddy: recoveredArg9 nUpper: recoveredArg10 nLower: recoveredArg11 nPos: recoveredArg12
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := CreateUpDownControl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := recoveredArg8.
    recoveredValue9 := recoveredArg9.
    recoveredValue10 := recoveredArg10.
    recoveredValue11 := recoveredArg11.
    recoveredValue12 := recoveredArg12.
    recoveredValue13 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9) with: (recoveredValue10) with: (recoveredValue11) with: (recoveredValue12).
    recoveredValue14 := (self) immediate: (recoveredValue13).
    ^recoveredValue14
! !

"psupp.ic method 0x2003267c; bytecode file offset 0x185f20"
!OSHwnd class methodsFor: 'recovered'!
createWindowEx: recoveredArg1 lpszClassName: recoveredArg2 lpszWindowName: recoveredArg3 dwStyle: recoveredArg4 x: recoveredArg5 y: recoveredArg6 nWidth: recoveredArg7 nHeight: recoveredArg8 hwndParent: recoveredArg9 hmenu: recoveredArg10 hinst: recoveredArg11 lpvCreateParams: recoveredArg12
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := CreateWindowEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := recoveredArg8.
    recoveredValue11 := recoveredArg9.
    recoveredValue12 := recoveredArg10.
    recoveredValue13 := recoveredArg11.
    recoveredValue14 := recoveredArg12.
    recoveredValue15 := (recoveredValue0) callWith: (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9) with: (recoveredValue10) with: (recoveredValue11) with: (recoveredValue12) with: (recoveredValue13) with: (recoveredValue14).
    recoveredValue16 := (self) immediate: (recoveredValue15).
    ^recoveredValue16
! !

