"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c05c; bytecode file offset 0x908be4"
!ASAP2Raster methodsFor: 'recovered'!
rate
    | recoveredValue0 |
    recoveredValue0 := (self) period.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c23c; bytecode file offset 0x908be4"
!ASAP2Raster methodsFor: 'recovered'!
scalingUnit
    | recoveredValue0 |
    recoveredValue0 := (self) periodUnit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ba78; bytecode file offset 0x948384"
!ASAP2Raster methodsFor: 'recovered'!
rasterID
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bbc4; bytecode file offset 0x94877c"
!ASAP2Raster methodsFor: 'recovered'!
periodUnit
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bf2c; bytecode file offset 0x948b80"
!ASAP2Raster methodsFor: 'recovered'!
period
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c510; bytecode file offset 0x948e28"
!ASAP2Raster methodsFor: 'recovered'!
exclusive
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a4998; bytecode file offset 0x9a1ad4"
!ASAP2Raster methodsFor: 'recovered'!
getRasterID: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) rasterID: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4bb8; bytecode file offset 0x9a1ad4"
!ASAP2Raster methodsFor: 'recovered'!
getPeriodUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) periodUnit: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4f38; bytecode file offset 0x9a1ad4"
!ASAP2Raster methodsFor: 'recovered'!
getPeriod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) period: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a64dc; bytecode file offset 0x9a2f38"
!ASAP2Raster methodsFor: 'recovered'!
rasterID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a69f8; bytecode file offset 0x9a32e0"
!ASAP2Raster methodsFor: 'recovered'!
periodUnit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6db8; bytecode file offset 0x9a3694"
!ASAP2Raster methodsFor: 'recovered'!
period: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6f80; bytecode file offset 0x9a391c"
!ASAP2Raster methodsFor: 'recovered'!
exclusive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200e66f0; bytecode file offset 0x9e30bc"
!ASAP2Raster methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 |
    super minimizeCollections.
    recoveredValue0 := (self) exclusive.
    (recoveredValue0) minimizeSize.
    ^self
! !

"ASDBase.ic method 0x200fb23c; bytecode file offset 0x9f7ee4"
!ASAP2Raster methodsFor: 'recovered'!
putPeriodIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) period.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb318; bytecode file offset 0x9f7ee4"
!ASAP2Raster methodsFor: 'recovered'!
putPeriodUnitIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) periodUnit.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb37c; bytecode file offset 0x9f7ee4"
!ASAP2Raster methodsFor: 'recovered'!
putRasterIDIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) rasterID.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010b900; bytecode file offset 0xa085f0"
!ASAP2Raster methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) exclusive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a3a78; bytecode file offset 0xaa0458"
!ASAP2Raster methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) putLongNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putNameIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putRasterIDIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putPeriodUnitIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putPeriodIn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2021a82c; bytecode file offset 0xb17144"
!ASAP2Raster methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getLongName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getName: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getRasterID: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getPeriodUnit: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getPeriod: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) parse: (recoveredValue6).
    ^self
! !

