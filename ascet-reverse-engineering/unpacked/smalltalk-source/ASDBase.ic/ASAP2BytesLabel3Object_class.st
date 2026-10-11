"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026188; bytecode file offset 0x923928"
!ASAP2BytesLabel3Object class methodsFor: 'recovered'!
localMembers
    ^#('extendedLimits' 'recordLayout' 'memorySegment')
! !

"ASDBase.ic method 0x200910a0; bytecode file offset 0x98d9dc"
!ASAP2BytesLabel3Object class methodsFor: 'recovered'!
bytesSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super bytesSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6080; bytecode file offset 0x9b39ac"
!ASAP2BytesLabel3Object class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('extendedLimits' 'recordLayout' 'memorySegment' 'variants')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6140; bytecode file offset 0x9b39ac"
!ASAP2BytesLabel3Object class methodsFor: 'recovered'!
setMembers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super setMembers.
    recoveredValue1 := (recoveredValue0) , (#('extendedLimits:' 'recordLayout:' 'memorySegment:' 'variants:')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7474; bytecode file offset 0x9b3da0"
!ASAP2BytesLabel3Object class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202c888c; bytecode file offset 0xbc5170"
!ASAP2BytesLabel3Object class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2RecordLayout.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('recordLayout') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ASAP2BytesAxisDescription.
    recoveredValue6 := (recoveredValue5) withAllSubclasses.
    recoveredValue7 := (self) allowedCollectionClasses.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue4) at: ('axisDescription') put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := ASAP2VariantCoding.
    recoveredValue11 := (recoveredValue10) withAllSubclasses.
    recoveredValue12 := (self) allowedCollectionClasses.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    (recoveredValue9) at: ('variants') put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x20359d40; bytecode file offset 0xc56740"
!ASAP2BytesLabel3Object class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('EXTENDED_LIMITS') put: ('getExtendedLimits:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('GUARD_RAILS') put: ('getGuardRails:').
    (recoveredValue0) at: ('CALIBRATION_ACCESS') put: ('getCalibrationAccess:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('EXTENDED_LIMITS') value: ('putIn:extendedLimits:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('GUARD_RAILS') value: ('putIn:guardRails:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('CALIBRATION_ACCESS') value: ('putIn:calibrationAccess:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

