"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002860; bytecode file offset 0x8ffcfc"
!ASDExportImportExtensionsApp class methodsFor: 'recovered'!
_PRAGMA_XMLOutputSystemExceptions
    ^self
! !

"ASDBase.ic method 0x20002a30; bytecode file offset 0x8ffcfc"
!ASDExportImportExtensionsApp class methodsFor: 'recovered'!
_PRAGMA_ASDExportImportExceptions
    ^self
! !

"ASDBase.ic method 0x20003168; bytecode file offset 0x8ffcfc"
!ASDExportImportExtensionsApp class methodsFor: 'recovered'!
_PRAGMA_EtasExImportExtensionsRTNlsPool
    ^self
! !

"ASDBase.ic method 0x2004f830; bytecode file offset 0x94d048"
!ASDExportImportExtensionsApp class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x200502bc; bytecode file offset 0x94d048"
!ASDExportImportExtensionsApp class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x201e18b0; bytecode file offset 0xade18c"
!ASDExportImportExtensionsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    ExASDImportError := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) description: ('ASCET Import Error').
    (recoveredValue1) resumable: (false).
    recoveredValue4 := SGImportManager.
    recoveredValue5 := (recoveredValue4) IncompatibleClassnames.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) add: ('SGETDataItem').
    ^self
! !

