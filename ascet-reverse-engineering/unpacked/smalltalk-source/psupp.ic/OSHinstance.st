"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008398; bytecode file offset 0x15caa4"
!OSHinstance methodsFor: 'recovered'!
coFreeLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CoFreeLibrary.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000acac; bytecode file offset 0x15e5d8"
!OSHinstance methodsFor: 'recovered'!
freeLibrary
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000bf68; bytecode file offset 0x15fa24"
!OSHinstance methodsFor: 'recovered'!
loadResource: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c078; bytecode file offset 0x15fa24"
!OSHinstance methodsFor: 'recovered'!
sizeofResource: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c098; bytecode file offset 0x15fa24"
!OSHinstance methodsFor: 'recovered'!
getProcAddress: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c55c; bytecode file offset 0x15fe28"
!OSHinstance methodsFor: 'recovered'!
enumResourceTypes: recoveredArg1 lParam: recoveredArg2
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c56c; bytecode file offset 0x15fe28"
!OSHinstance methodsFor: 'recovered'!
findResource: recoveredArg1 lpszType: recoveredArg2
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c58c; bytecode file offset 0x15fe28"
!OSHinstance methodsFor: 'recovered'!
getModuleFileName: recoveredArg1 cbFileName: recoveredArg2
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c5a8; bytecode file offset 0x15fe94"
!OSHinstance methodsFor: 'recovered'!
enumResourceNames: recoveredArg1 lpEnumFunc: recoveredArg2 lParam: recoveredArg3
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c5d8; bytecode file offset 0x15fe94"
!OSHinstance methodsFor: 'recovered'!
findResourceEx: recoveredArg1 lpszName: recoveredArg2 wLanguage: recoveredArg3
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c5e8; bytecode file offset 0x15fe94"
!OSHinstance methodsFor: 'recovered'!
winMain: recoveredArg1 lpCmdLine: recoveredArg2 nShowCmd: recoveredArg3
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c648; bytecode file offset 0x15fee4"
!OSHinstance methodsFor: 'recovered'!
enumResourceLanguages: recoveredArg1 lpszName: recoveredArg2 lpEnumFunc: recoveredArg3 lParam: recoveredArg4
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2002276c; bytecode file offset 0x1760d0"
!OSHinstance methodsFor: 'recovered'!
duplicateIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := DuplicateIcon.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20023fa8; bytecode file offset 0x1778d4"
!OSHinstance methodsFor: 'recovered'!
getClassInfo: recoveredArg1 lpwc: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetClassInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024020; bytecode file offset 0x1778d4"
!OSHinstance methodsFor: 'recovered'!
getClassInfoEx: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetClassInfoEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200242a8; bytecode file offset 0x1781a4"
!OSHinstance methodsFor: 'recovered'!
loadString: recoveredArg1 lpszBuffer: recoveredArg2 cbBuffer: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LoadString.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2002642c; bytecode file offset 0x179e98"
!OSHinstance methodsFor: 'recovered'!
dialogBoxIndirectParam: recoveredArg1 hwndOwner: recoveredArg2 dlgprc: recoveredArg3 lParamInit: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := DialogBoxIndirectParam.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20027878; bytecode file offset 0x17b1e4"
!OSHinstance methodsFor: 'recovered'!
loadBitmap: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := LoadBitmap.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200278cc; bytecode file offset 0x17b1e4"
!OSHinstance methodsFor: 'recovered'!
loadMenu: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHmenu.
    recoveredValue1 := LoadMenu.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200278e8; bytecode file offset 0x17b1e4"
!OSHinstance methodsFor: 'recovered'!
loadAccelerators: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHaccel.
    recoveredValue1 := LoadAccelerators.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20027904; bytecode file offset 0x17b1e4"
!OSHinstance methodsFor: 'recovered'!
loadCursor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHcursor.
    recoveredValue1 := LoadCursor.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x2002793c; bytecode file offset 0x17b1e4"
!OSHinstance methodsFor: 'recovered'!
loadIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := LoadIcon.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20027f0c; bytecode file offset 0x17b888"
!OSHinstance methodsFor: 'recovered'!
extractAssociatedIcon: recoveredArg1 lpiIcon: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := ExtractAssociatedIcon.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) immediate: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200287c0; bytecode file offset 0x17c09c"
!OSHinstance methodsFor: 'recovered'!
dialogBoxParam: recoveredArg1 hwndOwner: recoveredArg2 dlgprc: recoveredArg3 lParamInit: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := DialogBoxParam.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002a6a8; bytecode file offset 0x17df88"
!OSHinstance methodsFor: 'recovered'!
extractIcon: recoveredArg1 nIconIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := ExtractIcon.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002a784; bytecode file offset 0x17e0a0"
!OSHinstance methodsFor: 'recovered'!
createDialogIndirectParam: recoveredArg1 hwndOwner: recoveredArg2 dlgprc: recoveredArg3 lParamInit: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := CreateDialogIndirectParam.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002a7cc; bytecode file offset 0x17e0a0"
!OSHinstance methodsFor: 'recovered'!
createMappedBitmap: recoveredArg1 wFlags: recoveredArg2 lpColorMap: recoveredArg3 iNumMaps: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := CreateMappedBitmap.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002ba44; bytecode file offset 0x17f2ec"
!OSHinstance methodsFor: 'recovered'!
createDialogParam: recoveredArg1 hwndOwner: recoveredArg2 dlgprc: recoveredArg3 lParamInit: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := CreateDialogParam.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) immediate: (recoveredValue7).
    ^recoveredValue8
! !

"psupp.ic method 0x2002cd7c; bytecode file offset 0x180624"
!OSHinstance methodsFor: 'recovered'!
loadImage: recoveredArg1 uType: recoveredArg2 cxDesired: recoveredArg3 cyDesired: recoveredArg4 fuLoad: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := LoadImage.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (recoveredValue0) immediate: (recoveredValue8).
    ^recoveredValue9
! !

"psupp.ic method 0x2002cdb0; bytecode file offset 0x18069c"
!OSHinstance methodsFor: 'recovered'!
createIcon: recoveredArg1 nHeight: recoveredArg2 bPlanes: recoveredArg3 bBitsPixel: recoveredArg4 lpvANDbits: recoveredArg5 lpvXORbits: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OSHicon.
    recoveredValue1 := CreateIcon.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (recoveredValue0) immediate: (recoveredValue8).
    ^recoveredValue9
! !

"psupp.ic method 0x2002cdc8; bytecode file offset 0x18069c"
!OSHinstance methodsFor: 'recovered'!
createCursor: recoveredArg1 yHotSpot: recoveredArg2 nWidth: recoveredArg3 nHeight: recoveredArg4 lpvANDplane: recoveredArg5 lpvXORplane: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OSHcursor.
    recoveredValue1 := CreateCursor.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := (recoveredValue1) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (recoveredValue0) immediate: (recoveredValue8).
    ^recoveredValue9
! !

"psupp.ic method 0x2002e8b4; bytecode file offset 0x18215c"
!OSHinstance methodsFor: 'recovered'!
imageListLoadImage: recoveredArg1 cx: recoveredArg2 cGrow: recoveredArg3 crMask: recoveredArg4 uType: recoveredArg5 uFlags: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OSHimagelist.
    recoveredValue1 := ImageListLoadImage.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8).
    recoveredValue10 := (recoveredValue0) immediate: (recoveredValue9).
    ^recoveredValue10
! !

