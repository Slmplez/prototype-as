"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002338; bytecode file offset 0x8ffcfc"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
_PRAGMA_FLEXlmInterfaceDefinitions
    ^self
! !

"ASDBase.ic method 0x20002730; bytecode file offset 0x8ffcfc"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
_PRAGMA_FLEXnetInterfaceDefinitions
    ^self
! !

"ASDBase.ic method 0x20019eec; bytecode file offset 0x92209c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
callingConvention
    ^'C'
! !

"ASDBase.ic method 0x20022ae4; bytecode file offset 0x92209c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
flexNetlibraryName
    ^'bcrtl32'
! !

"ASDBase.ic method 0x200b0284; bytecode file offset 0x9acb60"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
closeDll
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) flexNetlibraryName.
    recoveredValue2 := (recoveredValue0) logicalName: (recoveredValue1).
    (recoveredValue2) close.
    ^self
! !

"ASDBase.ic method 0x200f1ea0; bytecode file offset 0x9ee764"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
saving
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := EtasLicenseManager.
    (recoveredValue1) closeLiMaMutex.
    ^self
! !

"ASDBase.ic method 0x2012b514; bytecode file offset 0xa27ddc"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    (self) initializeFLEXnetPlatformFunctions.
    recoveredValue1 := EtasLicenseManager.
    (recoveredValue1) closeLiMaMutex.
    ^self
! !

"ASDBase.ic method 0x2016e170; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetGetAttr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_get_attr') library: (recoveredValue2) parameterTypes: (#('pointer' 'int32' 'pointer')) returnType: ('int32').
    FLEXnetGetAttr := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e198; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetFreeJob
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_free_job') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('void').
    FLEXnetFreeJob := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e1c0; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetFeatureGetAttrExpDate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_getFeatureExpDate') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer')) returnType: ('pointer').
    FLEXnetFeatureGetAttrExpDate := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e1e8; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetFeatureGetAttrServerName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_getFeatureServerName') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer')) returnType: ('pointer').
    FLEXnetFeatureGetAttrServerName := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e210; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetFeatureGetAttrServerPort
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_getFeatureServerPort') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer')) returnType: ('int32').
    FLEXnetFeatureGetAttrServerPort := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e238; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetBorrowStatFeature
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_GetBorrowStatFeature') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('pointer').
    FLEXnetBorrowStatFeature := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e260; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetHeartbeat
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_heartbeat') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer' 'int32')) returnType: ('int32').
    FLEXnetHeartbeat := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e288; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetNewJob
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_new_job') library: (recoveredValue2) parameterTypes: (#('pointer' 'handle')) returnType: ('int32').
    FLEXnetNewJob := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e2b0; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetBorrowStatNext
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_GetBorrowStatNext') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('pointer').
    FLEXnetBorrowStatNext := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e2d8; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetBorrowStatEnd
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_GetBorrowStatEnd') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('int32').
    FLEXnetBorrowStatEnd := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e300; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetGetErrno
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_get_errno') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('int32').
    FLEXnetGetErrno := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e328; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetErrstring
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_errstring') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('pointer').
    FLEXnetErrstring := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e350; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetCheckout
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_checkout') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer' 'pointer' 'int32' 'int32' 'int32')) returnType: ('int32').
    FLEXnetCheckout := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e378; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetCheckin
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_checkin') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer' 'int32')) returnType: ('void').
    FLEXnetCheckin := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e3a0; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetPError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_perror') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer')) returnType: ('void').
    FLEXnetPError := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e3c8; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetBorrowStatStart
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_GetBorrowStatStart') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('int32').
    FLEXnetBorrowStatStart := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e3f0; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetBorrowStatVendor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_GetBorrowStatVendor') library: (recoveredValue2) parameterTypes: (#('pointer')) returnType: ('pointer').
    FLEXnetBorrowStatVendor := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e418; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetFeatureGetAttrExpDays
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_getFeatureExpDays') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer')) returnType: ('int32').
    FLEXnetFeatureGetAttrExpDays := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e440; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetFeatureGetAttrVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_getFeatureVersion') library: (recoveredValue2) parameterTypes: (#('pointer' 'pointer')) returnType: ('pointer').
    FLEXnetFeatureGetAttrVersion := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016e468; bytecode file offset 0xa6ad3c"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetSetAttr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (self) callingConvention.
    recoveredValue2 := (self) flexNetlibraryName.
    recoveredValue3 := (recoveredValue0) callingConvention: (recoveredValue1) function: ('fls_set_attr') library: (recoveredValue2) parameterTypes: (#('pointer' 'int32' 'pointer')) returnType: ('int32').
    FLEXnetSetAttr := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20361390; bytecode file offset 0xc5dc94"
!EtasSoftwareLicensingPackageApp class methodsFor: 'recovered'!
initializeFLEXnetPlatformFunctions
    (self) initializeFLEXnetNewJob.
    (self) initializeFLEXnetFreeJob.
    (self) initializeFLEXnetCheckout.
    (self) initializeFLEXnetCheckin.
    (self) initializeFLEXnetHeartbeat.
    (self) initializeFLEXnetErrstring.
    (self) initializeFLEXnetGetErrno.
    (self) initializeFLEXnetPError.
    (self) initializeFLEXnetSetAttr.
    (self) initializeFLEXnetGetAttr.
    (self) initializeFLEXnetFeatureGetAttrVersion.
    (self) initializeFLEXnetFeatureGetAttrExpDate.
    (self) initializeFLEXnetFeatureGetAttrServerName.
    (self) initializeFLEXnetFeatureGetAttrServerPort.
    (self) initializeFLEXnetFeatureGetAttrExpDays.
    (self) initializeFLEXnetBorrowStatNext.
    (self) initializeFLEXnetBorrowStatFeature.
    (self) initializeFLEXnetBorrowStatVendor.
    (self) initializeFLEXnetBorrowStatStart.
    (self) initializeFLEXnetBorrowStatEnd.
    ^self
! !

