"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200610d8; bytecode file offset 0x95db34"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
isConversionCompleted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) conversionStatus.
    recoveredValue1 := (recoveredValue0) == ('completed').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061218; bytecode file offset 0x95db34"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
isConversionRunning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) conversionStatus.
    recoveredValue1 := (recoveredValue0) == ('conversionRunning').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065ddc; bytecode file offset 0x963428"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
dBName
    | recoveredValue0 |
    recoveredValue0 := dBName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067314; bytecode file offset 0x9646f8"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
dBPath
    | recoveredValue0 |
    recoveredValue0 := dBPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067f2c; bytecode file offset 0x965b90"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
dBInfo
    | recoveredValue0 |
    recoveredValue0 := dBInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069840; bytecode file offset 0x966bdc"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
sizeDB
    | recoveredValue0 |
    recoveredValue0 := sizeDB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aa24; bytecode file offset 0x967a18"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
sizeDBConverted
    | recoveredValue0 |
    recoveredValue0 := sizeDBConverted.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b948; bytecode file offset 0x96873c"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
conversionError
    | recoveredValue0 |
    recoveredValue0 := conversionError.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c4bc; bytecode file offset 0x9692b0"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
conversionStatus
    | recoveredValue0 |
    recoveredValue0 := conversionStatus.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ce98; bytecode file offset 0x969c04"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
selected
    | recoveredValue0 |
    recoveredValue0 := selected.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e6bc; bytecode file offset 0x98b0bc"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
noConvertionNeeded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dBVersion.
    recoveredValue1 := ASDPersistenceController.
    recoveredValue2 := (recoveredValue1) currentDBVersion.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be074; bytecode file offset 0x9bb178"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
dBName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dBName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf7e0; bytecode file offset 0x9bc0b4"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
dBPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dBPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c062c; bytecode file offset 0x9bd228"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
dBInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dBInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1578; bytecode file offset 0x9bdf14"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
sizeDB: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sizeDB := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1ed4; bytecode file offset 0x9beac8"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
sizeDBConverted: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sizeDBConverted := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c31dc; bytecode file offset 0x9bfde0"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
conversionStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    conversionStatus := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3890; bytecode file offset 0x9c058c"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
selected: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selected := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c417c; bytecode file offset 0x9c0bf0"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
isSCM: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isSCM := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20106260; bytecode file offset 0xa02b14"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
isSCM
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isSCM.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            isSCM := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := isSCM.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201161d4; bytecode file offset 0xa12a8c"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
isSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selected.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) selected: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := selected.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018f0bc; bytecode file offset 0xa8b984"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
isPossibleConvertion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) dBVersion.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asNumber.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := #[246 40 92 143 194 245 244 63].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) dBVersion.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ASDPersistenceController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentDBVersion.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20254ba8; bytecode file offset 0xb51470"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
dBVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dBInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) dBInfo.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) dBInfo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'version'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    ^#[0 0 0 0 0 0 0 0]
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b43ec; bytecode file offset 0xbb0cb0"
!EtasDatabaseSubstitution methodsFor: 'recovered'!
conversionError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            conversionError := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := conversionError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            conversionError := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := conversionError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := conversionError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            conversionError := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            conversionError := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

