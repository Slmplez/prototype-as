"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200084d8; bytecode file offset 0x15caa4"
!OSHkey methodsFor: 'recovered'!
regFlushKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RegFlushKey.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008568; bytecode file offset 0x15caa4"
!OSHkey methodsFor: 'recovered'!
regCloseKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RegCloseKey.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2001dee4; bytecode file offset 0x1717fc"
!OSHkey methodsFor: 'recovered'!
regUnLoadKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RegUnLoadKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001def8; bytecode file offset 0x1717fc"
!OSHkey methodsFor: 'recovered'!
regDeleteKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RegDeleteKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001df0c; bytecode file offset 0x1717fc"
!OSHkey methodsFor: 'recovered'!
regDeleteValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RegDeleteValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002149c; bytecode file offset 0x174df8"
!OSHkey methodsFor: 'recovered'!
regSetKeySecurity: recoveredArg1 pSecurityDescriptor: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RegSetKeySecurity.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20023fbc; bytecode file offset 0x1778d4"
!OSHkey methodsFor: 'recovered'!
regSaveKey: recoveredArg1 lpSecurityAttributes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RegSaveKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20023fd0; bytecode file offset 0x1778d4"
!OSHkey methodsFor: 'recovered'!
regOpenKey: recoveredArg1 phkResult: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RegOpenKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20023ff8; bytecode file offset 0x1778d4"
!OSHkey methodsFor: 'recovered'!
regCreateKey: recoveredArg1 phkResult: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RegCreateKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024034; bytecode file offset 0x1778d4"
!OSHkey methodsFor: 'recovered'!
regRestoreKey: recoveredArg1 dwFlags: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RegRestoreKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024548; bytecode file offset 0x1781a4"
!OSHkey methodsFor: 'recovered'!
regEnumKey: recoveredArg1 lpName: recoveredArg2 cbName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RegEnumKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024868; bytecode file offset 0x1781a4"
!OSHkey methodsFor: 'recovered'!
regGetKeySecurity: recoveredArg1 pSecurityDescriptor: recoveredArg2 lpcbSecurityDescriptor: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RegGetKeySecurity.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20025884; bytecode file offset 0x179124"
!OSHkey methodsFor: 'recovered'!
regLoadKey: recoveredArg1 lpFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RegLoadKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20025fa4; bytecode file offset 0x179858"
!OSHkey methodsFor: 'recovered'!
regQueryValue: recoveredArg1 lpValue: recoveredArg2 lpcbValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RegQueryValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200265ec; bytecode file offset 0x179e98"
!OSHkey methodsFor: 'recovered'!
regQueryMultipleValues: recoveredArg1 numVals: recoveredArg2 lpValueBuf: recoveredArg3 ldwTotsize: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RegQueryMultipleValues.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200265fc; bytecode file offset 0x179e98"
!OSHkey methodsFor: 'recovered'!
regNotifyChangeKeyValue: recoveredArg1 dwNotifyFilter: recoveredArg2 hEvent: recoveredArg3 fAsynchronus: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RegNotifyChangeKeyValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200287d4; bytecode file offset 0x17c09c"
!OSHkey methodsFor: 'recovered'!
regOpenKeyEx: recoveredArg1 ulOptions: recoveredArg2 samDesired: recoveredArg3 phkResult: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RegOpenKeyEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20029600; bytecode file offset 0x17cea0"
!OSHkey methodsFor: 'recovered'!
regReplaceKey: recoveredArg1 lpNewFile: recoveredArg2 lpOldFile: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RegReplaceKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) asPSZ.
    recoveredValue7 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x200296b4; bytecode file offset 0x17cf54"
!OSHkey methodsFor: 'recovered'!
regSetValue: recoveredArg1 dwType: recoveredArg2 lpData: recoveredArg3 cbData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RegSetValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002a970; bytecode file offset 0x17e238"
!OSHkey methodsFor: 'recovered'!
regQueryValueEx: recoveredArg1 lpReserved: recoveredArg2 lpType: recoveredArg3 lpData: recoveredArg4 lpcbData: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RegQueryValueEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002a984; bytecode file offset 0x17e238"
!OSHkey methodsFor: 'recovered'!
regSetValueEx: recoveredArg1 reserved: recoveredArg2 dwType: recoveredArg3 lpData: recoveredArg4 cbData: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RegSetValueEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002c558; bytecode file offset 0x17fe54"
!OSHkey methodsFor: 'recovered'!
regEnumValue: recoveredArg1 lpValueName: recoveredArg2 lpcbValueName: recoveredArg3 lpReserved: recoveredArg4 lpType: recoveredArg5 lpData: recoveredArg6 lpcbData: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RegEnumValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    ^recoveredValue8
! !

"psupp.ic method 0x2002c598; bytecode file offset 0x17fe54"
!OSHkey methodsFor: 'recovered'!
regEnumKeyEx: recoveredArg1 lpName: recoveredArg2 lpcbName: recoveredArg3 lpReserved: recoveredArg4 lpClass: recoveredArg5 lpcbClass: recoveredArg6 lpftLastWriteTime: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RegEnumKeyEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    ^recoveredValue8
! !

"psupp.ic method 0x2002e948; bytecode file offset 0x1821e8"
!OSHkey methodsFor: 'recovered'!
regCreateKeyEx: recoveredArg1 reserved: recoveredArg2 lpClass: recoveredArg3 dwOptions: recoveredArg4 samDesired: recoveredArg5 lpSecurityAttributes: recoveredArg6 phkResult: recoveredArg7 lpdwDisposition: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := RegCreateKeyEx.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := recoveredArg8.
    recoveredValue10 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9).
    ^recoveredValue10
! !

"psupp.ic method 0x20031210; bytecode file offset 0x184abc"
!OSHkey methodsFor: 'recovered'!
regQueryInfoKey: recoveredArg1 lpcbClass: recoveredArg2 lpReserved: recoveredArg3 lpcSubKeys: recoveredArg4 lpcbMaxSubKeyLen: recoveredArg5 lpcbMaxClassLen: recoveredArg6 lpcValues: recoveredArg7 lpcbMaxValueNameLen: recoveredArg8 lpcbMaxValueLen: recoveredArg9 lpcbSecurityDescriptor: recoveredArg10 lpftLastWriteTime: recoveredArg11
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RegQueryInfoKey.
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
    recoveredValue12 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9) with: (recoveredValue10) with: (recoveredValue11).
    ^recoveredValue12
! !

