"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008458; bytecode file offset 0x15caa4"
!OSHmodule methodsFor: 'recovered'!
disableThreadLibraryCalls
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DisableThreadLibraryCalls.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008c68; bytecode file offset 0x15caa4"
!OSHmodule methodsFor: 'recovered'!
freeLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := FreeLibrary.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ac6c; bytecode file offset 0x15e5d8"
!OSHmodule methodsFor: 'recovered'!
removeFontModule
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000acec; bytecode file offset 0x15e5d8"
!OSHmodule methodsFor: 'recovered'!
addFontModule
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000f21c; bytecode file offset 0x163098"
!OSHmodule methodsFor: 'recovered'!
freeLibraryAndExitThread: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := FreeLibraryAndExitThread.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f61c; bytecode file offset 0x163098"
!OSHmodule methodsFor: 'recovered'!
sizeofResource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SizeofResource.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001df34; bytecode file offset 0x1717fc"
!OSHmodule methodsFor: 'recovered'!
getProcAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetProcAddress.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200214cc; bytecode file offset 0x174df8"
!OSHmodule methodsFor: 'recovered'!
getModuleFileName: recoveredArg1 cbFileName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetModuleFileName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002151c; bytecode file offset 0x174df8"
!OSHmodule methodsFor: 'recovered'!
enumResourceTypes: recoveredArg1 lParam: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EnumResourceTypes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200227cc; bytecode file offset 0x1760d0"
!OSHmodule methodsFor: 'recovered'!
loadResource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHglobal.
    recoveredValue1 := LoadResource.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) immediate: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20025f54; bytecode file offset 0x179858"
!OSHmodule methodsFor: 'recovered'!
enumResourceNames: recoveredArg1 lpEnumFunc: recoveredArg2 lParam: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EnumResourceNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200296dc; bytecode file offset 0x17cf90"
!OSHmodule methodsFor: 'recovered'!
enumResourceLanguages: recoveredArg1 lpszName: recoveredArg2 lpEnumFunc: recoveredArg3 lParam: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EnumResourceLanguages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002b070; bytecode file offset 0x17e91c"
!OSHmodule methodsFor: 'recovered'!
findResource: recoveredArg1 lpszType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHrsrc.
    recoveredValue1 := FindResource.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asParameter.
    recoveredValue6 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002ba10; bytecode file offset 0x17f2bc"
!OSHmodule methodsFor: 'recovered'!
findResourceEx: recoveredArg1 lpszName: recoveredArg2 wLanguage: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSHrsrc.
    recoveredValue1 := FindResourceEx.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asParameter.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue1) callWith: (self) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) immediate: (recoveredValue7).
    ^recoveredValue8
! !

