"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20000498; bytecode file offset 0xce84"
!TGAccessSimulationManager class methodsFor: 'recovered'!
pid
    ^0
! !

"HwAccessETarget.ic method 0x200038c8; bytecode file offset 0x102e8"
!TGAccessSimulationManager class methodsFor: 'recovered'!
initializeCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    CMethods := recoveredValue1.
    recoveredValue2 := CMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('startedWithoutHost()') put: (4).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('getProgramIdentifier()') put: (5).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('getTargetIdentifier()') put: (7).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('getSWVersion()') put: (12).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('getSubModelPseudoAdr()') put: (13).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('getModelType()') put: (14).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('getSerialNumber()') put: (15).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('getDeviceName()') put: (16).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('isNvramAvailable()') put: (17).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('getModelString()') put: (24).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('getBuildEnvironmentVersion()') put: (25).
    ^self
! !

