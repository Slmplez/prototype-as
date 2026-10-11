"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003c40; bytecode file offset 0x90206c"
!ASDManagerDummyDAMOS methodsFor: 'recovered'!
addNotChangedParameter: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004960; bytecode file offset 0x90206c"
!ASDManagerDummyDAMOS methodsFor: 'recovered'!
notMatchedParameters: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200050b0; bytecode file offset 0x90206c"
!ASDManagerDummyDAMOS methodsFor: 'recovered'!
matchedParameters: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2008442c; bytecode file offset 0x981ca4"
!ASDManagerDummyDAMOS methodsFor: 'recovered'!
parseError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) writeToMonitor: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20086974; bytecode file offset 0x983274"
!ASDManagerDummyDAMOS methodsFor: 'recovered'!
notifyDCMParseError: recoveredArg1 label: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) parseError: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200869b0; bytecode file offset 0x983274"
!ASDManagerDummyDAMOS methodsFor: 'recovered'!
notifyDCMParseWarning: recoveredArg1 label: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) writeToMonitor: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a2c58; bytecode file offset 0x99f57c"
!ASDManagerDummyDAMOS methodsFor: 'recovered'!
writeToMonitor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addText: (recoveredValue2).
    ^self
! !

