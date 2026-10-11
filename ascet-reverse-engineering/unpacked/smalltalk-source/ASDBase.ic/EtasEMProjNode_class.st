"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20038250; bytecode file offset 0x934b68"
!EtasEMProjNode class methodsFor: 'recovered'!
buildDeviceLabel: recoveredArg1
    ^'Dummy'
! !

"ASDBase.ic method 0x2028aeb8; bytecode file offset 0xb87798"
!EtasEMProjNode class methodsFor: 'recovered'!
createProjectNodeTreeForProject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    (self) resetExImportNodes.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInstVar.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredLocal3.
    (recoveredValue4) reference: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) device: (nil).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) simEntry: (true).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) label.
    (recoveredValue8) label: (recoveredValue10).
    recoveredLocal2 := recoveredValue2.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) nextLevel.
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue13) resolveExImportsFast.
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2029ef28; bytecode file offset 0xb9b80c"
!EtasEMProjNode class methodsFor: 'recovered'!
createForDevice: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    (self) resetExImportNodes.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) project.
    recoveredValue2 := (recoveredValue1) asInstVar.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := (self) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) initialize.
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredLocal3.
    (recoveredValue5) reference: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) device: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) simEntry: (true).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (self) buildDeviceLabel: (recoveredValue11).
    (recoveredValue10) label: (recoveredValue12).
    recoveredLocal2 := recoveredValue3.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue13) nextLevel.
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) resolveExImportsFast.
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

