"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a9d4; bytecode file offset 0x934580"
!SGIlExpOSTemplateData methodsFor: 'recovered'!
oilTemplateConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := (recoveredValue0) contents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ff238; bytecode file offset 0x9fbafc"
!SGIlExpOSTemplateData methodsFor: 'recovered'!
attributeEmptyList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) templateConfigStream.
    (recoveredValue0) newline.
    recoveredValue1 := recoveredArg1.
    (self) attribute: (recoveredValue1) list: (#()).
    ^self
! !

"ASDBase.ic method 0x20253948; bytecode file offset 0xb50224"
!SGIlExpOSTemplateData methodsFor: 'recovered'!
beginOperatingSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('package _asd_os_data;').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) newline.
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) paragraphBanner: ('Operating System Configuration').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) newlinePutAll: ('sub getOSData {').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) incIndent.
    (recoveredValue0) newlinePutAll: ('my $OS_Data = ').
    (self) beginStructure.
    ^self
! !

"ASDBase.ic method 0x2025f5cc; bytecode file offset 0xb5bea4"
!SGIlExpOSTemplateData methodsFor: 'recovered'!
endOperatingSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) endStructure.
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) endStmnt.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) newlinePutAll: ('return $OS_Data;').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) decIndent.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) newline.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) newlinePutAll: ('}').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) newline.
    (recoveredValue0) newlinePutAll: ('1;').
    ^self
! !

