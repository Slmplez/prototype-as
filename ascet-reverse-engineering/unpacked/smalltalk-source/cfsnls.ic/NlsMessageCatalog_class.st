"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000a0c; bytecode file offset 0x23c4c"
!NlsMessageCatalog class methodsFor: 'recovered'!
primaryWorkingFileName
    | recoveredValue0 |
    recoveredValue0 := PrimaryWorkingFileName.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000a18; bytecode file offset 0x23c4c"
!NlsMessageCatalog class methodsFor: 'recovered'!
secondaryWorkingFileName
    | recoveredValue0 |
    recoveredValue0 := SecondaryWorkingFileName.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200014dc; bytecode file offset 0x24740"
!NlsMessageCatalog class methodsFor: 'recovered'!
primaryWorkingFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    PrimaryWorkingFileName := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x200014e8; bytecode file offset 0x24740"
!NlsMessageCatalog class methodsFor: 'recovered'!
secondaryWorkingFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SecondaryWorkingFileName := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20002bf4; bytecode file offset 0x25e58"
!NlsMessageCatalog class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"cfsnls.ic method 0x200049d4; bytecode file offset 0x27c14"
!NlsMessageCatalog class methodsFor: 'recovered'!
on: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) fileName: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) initialize.
    ^recoveredValue3
! !

"cfsnls.ic method 0x20010788; bytecode file offset 0x33a20"
!NlsMessageCatalog class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    (self) primaryWorkingFileName: ('nlsxtrn1.$$$').
    (self) secondaryWorkingFileName: ('nlsxtrn2.$$$').
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    ErrorCodes := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: (1000) put: ('Locale not supported.').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: (1001) put: ('Error in External Dictionary operation.').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: (1002) put: ('The pool being initialized contains keys for which no translations are available.').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: (1003) put: ('Could not open specified file.').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: (1004) put: ('Non-portable messages detected.  Examine error log for details.').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: (1005) put: ('Error renaming file.  Ensure filename is valid and no old working files exist.').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: (1006) put: ('Error removing secondary working file.').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: (1007) put: ('Invalid attempt to crossload.').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: (1010) put: ('File write error.').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: (1011) put: ('Fatal Error: Object size estimation failed - working file is corrupt.').
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) at: (1012) put: ('Catalog file is corrupt (or not a catalog file).').
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) at: (1013) put: ('Invalid indexed message identifer (must be >0).').
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) at: (1014) put: ('Indexed message not found.').
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) at: (1015) put: ('No messages stored for locale.').
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) at: (1016) put: ('No message dictionary available.').
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) at: (1017) put: ('Locale not found.').
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) at: (2000) put: ('Error encountered loading object.').
    (recoveredValue1) at: (2001) put: ('Error encountered dumping object.').
    ^self
! !

