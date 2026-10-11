"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009d94; bytecode file offset 0x908be4"
!EtasBorrowStatEntry methodsFor: 'recovered'!
vendorName
    | recoveredValue0 |
    recoveredValue0 := (self) vendor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b4e0; bytecode file offset 0x908be4"
!EtasBorrowStatEntry methodsFor: 'recovered'!
featureName
    | recoveredValue0 |
    recoveredValue0 := (self) feature.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066a9c; bytecode file offset 0x963428"
!EtasBorrowStatEntry methodsFor: 'recovered'!
feature
    | recoveredValue0 |
    recoveredValue0 := feature.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200677b4; bytecode file offset 0x9646f8"
!EtasBorrowStatEntry methodsFor: 'recovered'!
vendor
    | recoveredValue0 |
    recoveredValue0 := vendor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068104; bytecode file offset 0x965b90"
!EtasBorrowStatEntry methodsFor: 'recovered'!
start
    | recoveredValue0 |
    recoveredValue0 := start.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069818; bytecode file offset 0x966bdc"
!EtasBorrowStatEntry methodsFor: 'recovered'!
end
    | recoveredValue0 |
    recoveredValue0 := end.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200884bc; bytecode file offset 0x985628"
!EtasBorrowStatEntry methodsFor: 'recovered'!
endDate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Date.
    recoveredValue1 := (self) end.
    recoveredValue2 := (recoveredValue0) dateAndTimeFromDosSeconds: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088c8c; bytecode file offset 0x985628"
!EtasBorrowStatEntry methodsFor: 'recovered'!
startDate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Date.
    recoveredValue1 := (self) start.
    recoveredValue2 := (recoveredValue0) dateAndTimeFromDosSeconds: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be5fc; bytecode file offset 0x9bb178"
!EtasBorrowStatEntry methodsFor: 'recovered'!
feature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    feature := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bef50; bytecode file offset 0x9bc0b4"
!EtasBorrowStatEntry methodsFor: 'recovered'!
vendor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    vendor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf894; bytecode file offset 0x9bd228"
!EtasBorrowStatEntry methodsFor: 'recovered'!
start: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    start := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c10f8; bytecode file offset 0x9bdf14"
!EtasBorrowStatEntry methodsFor: 'recovered'!
end: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    end := recoveredValue0.
    ^self
! !

