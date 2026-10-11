"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042d2c; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
featureName
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('FeatureName').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200431ec; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
featureType
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('FeatureType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043e3c; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
majorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('MajorVersion').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200448cc; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
daysToExpire
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('DaysToExpire').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004628c; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
status
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Status').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046d9c; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
expiryDate
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('ExpiryDate').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047bdc; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
minorVersion
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('MinorVersion').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047cdc; bytecode file offset 0x9451f8"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
borrowExpiryDate
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('BorrowExpiryDate').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a3260; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
featureName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('FeatureName') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3400; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
minorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('MinorVersion') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3730; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
expiryDate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('ExpiryDate') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3a90; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
featureType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('FeatureType') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3be0; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
majorVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('MajorVersion') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f20; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
daysToExpire: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('DaysToExpire') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f50; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
borrowExpiryDate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('BorrowExpiryDate') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4140; bytecode file offset 0x9a0b4c"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
status: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('Status') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b2258; bytecode file offset 0x9aeb54"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
handleHeartBeatFailed
    (self) signalEvent: ('HeartBeatFailed') withArguments: (#()).
    ^self
! !

"ASDBase.ic method 0x200d0ba0; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
addRef
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('AddRef') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d0d1c; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
reInitialize
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('ReInitialize') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d0df8; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getNoOfGraceModeDaysLeft
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetNoOfGraceModeDaysLeft') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1000; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getReturnEarlierError
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetReturnEarlierError') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d112c; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
oleRelease
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Release') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d11cc; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getBorrowError
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetBorrowError') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1578; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getSerialNumber
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetSerialNumber') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1794; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
returnEarlier
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('ReturnEarlier') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d17e4; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
isGraceMode
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('IsGraceMode') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1a78; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getDaysToExpiry
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetDaysToExpiry') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1bb8; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
isServerLicense
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('IsServerLicense') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1be0; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
setHeartbeatFailed
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('SetHeartbeatFailed') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1cd0; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
checkin
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Checkin') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1e38; bytecode file offset 0x9ce734"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getCheckoutError
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetCheckoutError') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f8f44; bytecode file offset 0x9f5804"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
registerOleEventHandlers
    | recoveredValue0 |
    recoveredValue0 := (self) oleWidget.
    (recoveredValue0) addOleEventHandler: (1) receiver: (self) selector: ('handleHeartBeatFailed').
    ^self
! !

"ASDBase.ic method 0x2019a188; bytecode file offset 0xa97444"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
checkout: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('Checkout') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a1c0; bytecode file offset 0xa97444"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
borrowLicense: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('BorrowLicense') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a5cc; bytecode file offset 0xa97444"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
setExecuteAutomaticExtensionInterval: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('SetExecuteAutomaticExtensionInterval') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a6e4; bytecode file offset 0xa97444"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
setAutomaticExtensionDays: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('SetAutomaticExtensionDays') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a754; bytecode file offset 0xa97444"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getTypeInfoCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('GetTypeInfoCount') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019aa64; bytecode file offset 0xa97444"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
setBorrowOnStartUp: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('SetBorrowOnStartUp') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019ac28; bytecode file offset 0xa974ec"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
checkin: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (2) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201facec; bytecode file offset 0xaf7758"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
queryInterface: recoveredArg1 ppvObj: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: ('QueryInterface') withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201fae58; bytecode file offset 0xaf7758"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
enableHeartbeat: recoveredArg1 aHeartbeatFailuresUntilEvent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: ('EnableHeartbeat') withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201fae90; bytecode file offset 0xaf7758"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
checkoutWithGraceMode: recoveredArg1 days: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: ('CheckoutWithGraceMode') withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20244df4; bytecode file offset 0xb41860"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getTypeInfo: recoveredArg1 lcid: recoveredArg2 pptinfo: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) invoke: ('GetTypeInfo') withArguments: (recoveredValue8) returnType: (true).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202deb34; bytecode file offset 0xbdb530"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
getIDsOfNames: recoveredArg1 rgszNames: recoveredArg2 cNames: recoveredArg3 lcid: recoveredArg4 rgdispid: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredLocal1 := recoveredValue1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) invoke: ('GetIDsOfNames') withArguments: (recoveredValue12) returnType: (true).
    ^recoveredValue13
! !

"ASDBase.ic method 0x2037ffe4; bytecode file offset 0xc7c9e0"
!EtasLicensingFeatureOleWrapper methodsFor: 'recovered'!
invoke: recoveredArg1 riid: recoveredArg2 lcid: recoveredArg3 wFlags: recoveredArg4 pdispparams: recoveredArg5 pvarResult: recoveredArg6 pexcepinfo: recoveredArg7 puArgErr: recoveredArg8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredLocal1 := recoveredValue1.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) invoke: ('Invoke') withArguments: (recoveredValue18) returnType: (true).
    ^recoveredValue19
! !

