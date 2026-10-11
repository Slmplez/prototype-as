"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000780; bytecode file offset 0x8ffcfc"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
_PRAGMA_ASDCalibrationViewConstants
    ^self
! !

"ASDBase.ic method 0x20001ff8; bytecode file offset 0x8ffcfc"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
_PRAGMA_EtasMeasureFrameworkViewRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20002c10; bytecode file offset 0x8ffcfc"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
_PRAGMA_EtasMeasureConstants
    ^self
! !

"ASDBase.ic method 0x2002231c; bytecode file offset 0x92209c"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('addMeasureDataCallback' 'removeMeasureDataCallback')
! !

"ASDBase.ic method 0x2004e144; bytecode file offset 0x94d048"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x2004ebc4; bytecode file offset 0x94d048"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x2005c154; bytecode file offset 0x958ab0"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := EtasMeasureWidget.
    (recoveredValue0) clearAttributeBuffer.
    ^self
! !

"ASDBase.ic method 0x200efc8c; bytecode file offset 0x9ec554"
!EtasMeasureFrameworkViewRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasMeasureWidget.
    (recoveredValue0) clearAttributeBuffer.
    recoveredValue1 := RBMeasureDataAcquisitionManager.
    recoveredValue2 := RBMeasureError.
    (recoveredValue1) measureErrorClass: (recoveredValue2).
    ^self
! !

