"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200289c4; bytecode file offset 0x934580"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
feature
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) feature.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f6a4; bytecode file offset 0x934580"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
majorVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) majorVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035084; bytecode file offset 0x934580"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
minorVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) minorVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063058; bytecode file offset 0x95f910"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
isGraceModeAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graceTimeWithoutLicense.
    recoveredValue1 := (recoveredValue0) > (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068aec; bytecode file offset 0x965b90"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
oleWrapper
    | recoveredValue0 |
    recoveredValue0 := oleWrapper.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082fac; bytecode file offset 0x97f888"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
oleWrapper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    oleWrapper := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e0020; bytecode file offset 0x9dc8e4"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
featureHeartBeatFailed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Transcript.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    (recoveredValue0) show: ('#featureHeartBeatFailed').
    ^self
! !

"ASDBase.ic method 0x200e2154; bytecode file offset 0x9dec60"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
isInGraceModePeriode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGraceModeAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraceMode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f2464; bytecode file offset 0x9eedc0"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
isAfterGraceModePeriode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGraceModeAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraceMode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20231ff4; bytecode file offset 0xb2e8c4"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
isServerLicense
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := EtasLicenseManager.
    recoveredValue2 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isCheckout.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 30].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) oleWrapper.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isServerLicense.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            ^recoveredBlock12Stack1
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) exclusiveLiMaAccess: (recoveredValue2).
    ^false
! !

"ASDBase.ic method 0x2023203c; bytecode file offset 0xb2e908"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
isCheckout
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := EtasLicenseManager.
    recoveredValue2 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) oleWrapper.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2 == nil) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 24].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) oleWrapper.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isGraceMode.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) not.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            ^recoveredBlock12Stack1
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) exclusiveLiMaAccess: (recoveredValue2).
    ^false
! !

"ASDBase.ic method 0x202e2034; bytecode file offset 0xbde90c"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
isGraceMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) oleWrapper.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := [
    | recoveredBlock5Block12Value0 recoveredBlock5Block12Value1 |
    recoveredBlock5Block12Value0 := recoveredBlock5Arg1.
    recoveredBlock5Block12Value1 := (recoveredBlock5Block12Value0) isGraceMode.
    recoveredBlock5Block12Value1
].
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := ExError.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := [:block280e7348Arg1 | 
    | block280e7348Stack0 block280e7348Stack1 block280e7348Stack2 block280e7348Stack3 block280e7348PC block280e7348Step block280e7348Done block280e7348Result |
    block280e7348Stack0 := self.
    block280e7348PC := 4.
    block280e7348Done := false.
    [block280e7348Done not] whileTrue: [
        block280e7348Step := block280e7348PC.
        block280e7348Step = 4 ifTrue: [
            block280e7348Stack1 := nil.
            block280e7348PC := 5.
        ].
        block280e7348Step = 5 ifTrue: [
            block280e7348Stack2 := System.
            block280e7348PC := 7.
        ].
        block280e7348Step = 7 ifTrue: [
            block280e7348Stack2 := (block280e7348Stack2) isRuntime.
            block280e7348PC := 9.
        ].
        block280e7348Step = 9 ifTrue: [
            (block280e7348Stack2) ifTrue: [block280e7348PC := 12] ifFalse: [block280e7348PC := 17].
        ].
        block280e7348Step = 12 ifTrue: [
            block280e7348PC := 13.
        ].
        block280e7348Step = 13 ifTrue: [
            block280e7348Stack1 := block280e7348Arg1.
            block280e7348PC := 14.
        ].
        block280e7348Step = 14 ifTrue: [
            block280e7348Stack2 := false.
            block280e7348PC := 15.
        ].
        block280e7348Step = 15 ifTrue: [
            block280e7348Stack1 := (block280e7348Stack1) exitWith: (block280e7348Stack2).
            block280e7348PC := 17.
        ].
        block280e7348Step = 17 ifTrue: [
            block280e7348Result := block280e7348Stack1.
            block280e7348Done := true.
        ].
    ].
    block280e7348Result
].
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) when: (recoveredBlock5Stack2) do: (recoveredBlock5Stack3).
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            ^recoveredBlock5Stack1
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x202f4d18; bytecode file offset 0xbf15f0"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
graceModeDaysLeft
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) oleWrapper.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := [
    | recoveredBlock5Block12Value0 recoveredBlock5Block12Value1 |
    recoveredBlock5Block12Value0 := recoveredBlock5Arg1.
    recoveredBlock5Block12Value1 := (recoveredBlock5Block12Value0) getNoOfGraceModeDaysLeft.
    recoveredBlock5Block12Value1
].
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := ExError.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := [:block280e8980Arg1 | 
    | block280e8980Stack0 block280e8980Stack1 block280e8980Stack2 block280e8980Stack3 block280e8980PC block280e8980Step block280e8980Done block280e8980Result |
    block280e8980Stack0 := self.
    block280e8980PC := 4.
    block280e8980Done := false.
    [block280e8980Done not] whileTrue: [
        block280e8980Step := block280e8980PC.
        block280e8980Step = 4 ifTrue: [
            block280e8980Stack1 := nil.
            block280e8980PC := 5.
        ].
        block280e8980Step = 5 ifTrue: [
            block280e8980Stack2 := System.
            block280e8980PC := 7.
        ].
        block280e8980Step = 7 ifTrue: [
            block280e8980Stack2 := (block280e8980Stack2) isRuntime.
            block280e8980PC := 9.
        ].
        block280e8980Step = 9 ifTrue: [
            (block280e8980Stack2) ifTrue: [block280e8980PC := 12] ifFalse: [block280e8980PC := 18].
        ].
        block280e8980Step = 12 ifTrue: [
            block280e8980PC := 13.
        ].
        block280e8980Step = 13 ifTrue: [
            block280e8980Stack1 := block280e8980Arg1.
            block280e8980PC := 14.
        ].
        block280e8980Step = 14 ifTrue: [
            block280e8980Stack2 := 0.
            block280e8980PC := 16.
        ].
        block280e8980Step = 16 ifTrue: [
            block280e8980Stack1 := (block280e8980Stack1) exitWith: (block280e8980Stack2).
            block280e8980PC := 18.
        ].
        block280e8980Step = 18 ifTrue: [
            block280e8980Result := block280e8980Stack1.
            block280e8980Done := true.
        ].
    ].
    block280e8980Result
].
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) when: (recoveredBlock5Stack2) do: (recoveredBlock5Stack3).
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            ^recoveredBlock5Stack1
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^0
! !

"ASDBase.ic method 0x203b7a08; bytecode file offset 0xcb4300"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
popupForMissingLicenseTrialExceeded
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('ASCET has not found a valid license').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) nextPutAll: ('for the feature ').
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := (self) feature.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) nextPutAll: ('.').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) cr.
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) nextPutAll: ('The trial mode for the feature ').
    recoveredValue13 := recoveredValue4.
    recoveredValue14 := (self) feature.
    (recoveredValue13) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) cr.
    (recoveredValue4) nextPutAll: ('has expired.').
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue16.
    (recoveredValue18) cr.
    (recoveredValue16) nextPutAll: ('Please contact ETAS for a new license.').
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue19) contents.
    recoveredLocal1 := recoveredValue20.
    recoveredValue21 := RBUserInfo.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue21) errorMessage: (recoveredValue22).
    (recoveredValue23) prompt.
    ^self
! !

"ASDBase.ic method 0x20440924; bytecode file offset 0xd3d234"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
popupForMissingLicenseTrial
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Date.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) today.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) graceModeDaysLeft.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) addDays: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'ASCET has not found a valid license'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'for the feature '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) feature.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := '.'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) feature.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := ' has been enabled in'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'Trial Mode until '.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := Date.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) today.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'today'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'Please contact ETAS for a valid license.'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048384c; bytecode file offset 0xd80164"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
checkin
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCheckout.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EtasLicenseManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) logCr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '#checkin: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) log: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := EtasLicenseManager.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := EtasLicensingFeatureManagerOleWrapper.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) createObject.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredLocal3 := recoveredBlock32Stack1.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 116] ifFalse: [recoveredBlock32PC := 52].
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := [
    | recoveredBlock32Block52Value0 recoveredBlock32Block52Value1 recoveredBlock32Block52Value2 recoveredBlock32Block52Value3 recoveredBlock32Block52Value4 recoveredBlock32Block52Value5 recoveredBlock32Block52Value6 |
    recoveredBlock32Block52Value0 := (self) oleWrapper.
    recoveredLocal2 := recoveredBlock32Block52Value0.
    (self) oleWrapper: (nil).
    recoveredBlock32Block52Value1 := recoveredLocal2.
    (recoveredBlock32Block52Value1) checkin.
    recoveredBlock32Block52Value2 := EtasLicenseManager.
    (recoveredBlock32Block52Value2) log: (' succeeded').
    recoveredBlock32Block52Value3 := recoveredLocal3.
    recoveredBlock32Block52Value4 := recoveredLocal2.
    (recoveredBlock32Block52Value3) removeFeatureWrapper: (recoveredBlock32Block52Value4).
    recoveredBlock32Block52Value5 := recoveredLocal2.
    recoveredBlock32Block52Value6 := (recoveredBlock32Block52Value5) releaseObject.
    recoveredBlock32Block52Value6
].
            recoveredBlock32PC := 92.
        ].
        recoveredBlock32Step = 92 ifTrue: [
            recoveredBlock32Stack2 := ExError.
            recoveredBlock32PC := 94.
        ].
        recoveredBlock32Step = 94 ifTrue: [
            recoveredBlock32Stack3 := [:block28102820Arg1 | 
    | block28102820Value0 block28102820Value1 block28102820Value2 block28102820Value3 |
    block28102820Value0 := EtasLicenseManager.
    block28102820Value1 := block28102820Value0.
    (block28102820Value1) logCr.
    (block28102820Value0) log: ('system error occured').
    block28102820Value2 := block28102820Arg1.
    block28102820Value3 := (block28102820Value2) exitWith: (nil).
    block28102820Value3
].
            recoveredBlock32PC := 96.
        ].
        recoveredBlock32Step = 96 ifTrue: [
            recoveredBlock32PC := 114.
        ].
        recoveredBlock32Step = 114 ifTrue: [
            (recoveredBlock32Stack1) when: (recoveredBlock32Stack2) do: (recoveredBlock32Stack3).
            recoveredBlock32PC := 116.
        ].
        recoveredBlock32Step = 116 ifTrue: [
            recoveredBlock32Stack1 := EtasLicenseManager.
            recoveredBlock32PC := 118.
        ].
        recoveredBlock32Step = 118 ifTrue: [
            recoveredBlock32Stack2 := 'featureCheckin:'.
            recoveredBlock32PC := 120.
        ].
        recoveredBlock32Step = 120 ifTrue: [
            recoveredBlock32Stack3 := self.
            recoveredBlock32PC := 121.
        ].
        recoveredBlock32Step = 121 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) broadcast: (recoveredBlock32Stack2) with: (recoveredBlock32Stack3).
            recoveredBlock32PC := 123.
        ].
        recoveredBlock32Step = 123 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) exclusiveLiMaAccess: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055f294; bytecode file offset 0xe5bbd4"
!EtasFLEXnetSystemDefinedFeature methodsFor: 'recovered'!
checkout
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasLicenseManager.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) logCr.
    recoveredValue2 := (self) printString.
    recoveredValue3 := ('#checkout: ') , (recoveredValue2).
    (recoveredValue0) log: (recoveredValue3).
    recoveredValue4 := ('MultiInstance') == ('Kk').
    recoveredValue5 := EtasLicenseManager.
    recoveredValue6 := [
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := EtasLicensingFeatureManagerOleWrapper.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) createObject.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredLocal2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            (recoveredBlock25Stack1 == nil) ifTrue: [recoveredBlock25PC := 222] ifFalse: [recoveredBlock25PC := 46].
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack1 := [
    | recoveredBlock25Block46Stack0 recoveredBlock25Block46Stack1 recoveredBlock25Block46Stack2 recoveredBlock25Block46Stack3 recoveredBlock25Block46Stack4 recoveredBlock25Block46Stack5 recoveredBlock25Block46PC recoveredBlock25Block46Step recoveredBlock25Block46Done recoveredBlock25Block46Result |
    recoveredBlock25Block46Stack0 := self.
    recoveredBlock25Block46PC := 52.
    recoveredBlock25Block46Done := false.
    [recoveredBlock25Block46Done not] whileTrue: [
        recoveredBlock25Block46Step := recoveredBlock25Block46PC.
        recoveredBlock25Block46Step = 52 ifTrue: [
            recoveredBlock25Block46Stack1 := recoveredLocal2.
            recoveredBlock25Block46PC := 55.
        ].
        recoveredBlock25Block46Step = 55 ifTrue: [
            recoveredBlock25Block46Stack2 := self.
            recoveredBlock25Block46PC := 56.
        ].
        recoveredBlock25Block46Step = 56 ifTrue: [
            recoveredBlock25Block46Stack2 := (recoveredBlock25Block46Stack2) feature.
            recoveredBlock25Block46PC := 58.
        ].
        recoveredBlock25Block46Step = 58 ifTrue: [
            recoveredBlock25Block46Stack3 := self.
            recoveredBlock25Block46PC := 59.
        ].
        recoveredBlock25Block46Step = 59 ifTrue: [
            recoveredBlock25Block46Stack3 := (recoveredBlock25Block46Stack3) majorVersion.
            recoveredBlock25Block46PC := 61.
        ].
        recoveredBlock25Block46Step = 61 ifTrue: [
            recoveredBlock25Block46Stack4 := self.
            recoveredBlock25Block46PC := 62.
        ].
        recoveredBlock25Block46Step = 62 ifTrue: [
            recoveredBlock25Block46Stack4 := (recoveredBlock25Block46Stack4) minorVersion.
            recoveredBlock25Block46PC := 64.
        ].
        recoveredBlock25Block46Step = 64 ifTrue: [
            recoveredBlock25Block46Stack1 := (recoveredBlock25Block46Stack1) createFeatureWrapper: (recoveredBlock25Block46Stack2) aMajorVersion: (recoveredBlock25Block46Stack3) aMinorVersion: (recoveredBlock25Block46Stack4).
            recoveredBlock25Block46PC := 67.
        ].
        recoveredBlock25Block46Step = 67 ifTrue: [
            recoveredLocal1 := recoveredBlock25Block46Stack1.
            recoveredBlock25Block46PC := 70.
        ].
        recoveredBlock25Block46Step = 70 ifTrue: [
            recoveredBlock25Block46Stack1 := nil.
            recoveredBlock25Block46PC := 71.
        ].
        recoveredBlock25Block46Step = 71 ifTrue: [
            recoveredBlock25Block46Stack2 := recoveredLocal1.
            recoveredBlock25Block46PC := 74.
        ].
        recoveredBlock25Block46Step = 74 ifTrue: [
            recoveredBlock25Block46Stack2 := (recoveredBlock25Block46Stack2) isError.
            recoveredBlock25Block46PC := 76.
        ].
        recoveredBlock25Block46Step = 76 ifTrue: [
            (recoveredBlock25Block46Stack2) ifTrue: [recoveredBlock25Block46PC := 198] ifFalse: [recoveredBlock25Block46PC := 80].
        ].
        recoveredBlock25Block46Step = 80 ifTrue: [
            recoveredBlock25Block46PC := 81.
        ].
        recoveredBlock25Block46Step = 81 ifTrue: [
            recoveredBlock25Block46Stack1 := [
    | recoveredBlock25Block46Block81Local1 recoveredBlock25Block46Block81Stack0 recoveredBlock25Block46Block81Stack1 recoveredBlock25Block46Block81Stack2 recoveredBlock25Block46Block81Stack3 recoveredBlock25Block46Block81PC recoveredBlock25Block46Block81Step recoveredBlock25Block46Block81Done recoveredBlock25Block46Block81Result |
    recoveredBlock25Block46Block81Stack0 := self.
    recoveredBlock25Block46Block81PC := 88.
    recoveredBlock25Block46Block81Done := false.
    [recoveredBlock25Block46Block81Done not] whileTrue: [
        recoveredBlock25Block46Block81Step := recoveredBlock25Block46Block81PC.
        recoveredBlock25Block46Block81Step = 88 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := recoveredLocal1.
            recoveredBlock25Block46Block81PC := 91.
        ].
        recoveredBlock25Block46Block81Step = 91 ifTrue: [
            (recoveredBlock25Block46Block81Stack0) oleWrapper: (recoveredBlock25Block46Block81Stack1).
            recoveredBlock25Block46Block81PC := 93.
        ].
        recoveredBlock25Block46Block81Step = 93 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := self.
            recoveredBlock25Block46Block81PC := 94.
        ].
        recoveredBlock25Block46Block81Step = 94 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := (recoveredBlock25Block46Block81Stack0) isGraceModeAvailable.
            recoveredBlock25Block46Block81PC := 96.
        ].
        recoveredBlock25Block46Block81Step = 96 ifTrue: [
            (recoveredBlock25Block46Block81Stack0) ifTrue: [recoveredBlock25Block46Block81PC := 100] ifFalse: [recoveredBlock25Block46Block81PC := 112].
        ].
        recoveredBlock25Block46Block81Step = 100 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := recoveredLocal1.
            recoveredBlock25Block46Block81PC := 103.
        ].
        recoveredBlock25Block46Block81Step = 103 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := true.
            recoveredBlock25Block46Block81PC := 104.
        ].
        recoveredBlock25Block46Block81Step = 104 ifTrue: [
            recoveredBlock25Block46Block81Stack2 := self.
            recoveredBlock25Block46Block81PC := 105.
        ].
        recoveredBlock25Block46Block81Step = 105 ifTrue: [
            recoveredBlock25Block46Block81Stack2 := (recoveredBlock25Block46Block81Stack2) graceTimeWithoutLicense.
            recoveredBlock25Block46Block81PC := 107.
        ].
        recoveredBlock25Block46Block81Step = 107 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := (recoveredBlock25Block46Block81Stack0) checkoutWithGraceMode: (recoveredBlock25Block46Block81Stack1) days: (recoveredBlock25Block46Block81Stack2).
            recoveredBlock25Block46Block81PC := 109.
        ].
        recoveredBlock25Block46Block81Step = 109 ifTrue: [
            recoveredBlock25Block46Block81PC := 118.
        ].
        recoveredBlock25Block46Block81Step = 112 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := recoveredLocal1.
            recoveredBlock25Block46Block81PC := 115.
        ].
        recoveredBlock25Block46Block81Step = 115 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := true.
            recoveredBlock25Block46Block81PC := 116.
        ].
        recoveredBlock25Block46Block81Step = 116 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := (recoveredBlock25Block46Block81Stack0) checkout: (recoveredBlock25Block46Block81Stack1).
            recoveredBlock25Block46Block81PC := 118.
        ].
        recoveredBlock25Block46Block81Step = 118 ifTrue: [
            recoveredBlock25Block46Block81Local1 := recoveredBlock25Block46Block81Stack0.
            recoveredBlock25Block46Block81PC := 119.
        ].
        recoveredBlock25Block46Block81Step = 119 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := recoveredBlock25Block46Block81Local1.
            recoveredBlock25Block46Block81PC := 120.
        ].
        recoveredBlock25Block46Block81Step = 120 ifTrue: [
            (recoveredBlock25Block46Block81Stack0) ifTrue: [recoveredBlock25Block46Block81PC := 124] ifFalse: [recoveredBlock25Block46Block81PC := 150].
        ].
        recoveredBlock25Block46Block81Step = 124 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := self.
            recoveredBlock25Block46Block81PC := 125.
        ].
        recoveredBlock25Block46Block81Step = 125 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := (recoveredBlock25Block46Block81Stack0) isInGraceModePeriode.
            recoveredBlock25Block46Block81PC := 127.
        ].
        recoveredBlock25Block46Block81Step = 127 ifTrue: [
            (recoveredBlock25Block46Block81Stack0) ifTrue: [recoveredBlock25Block46Block81PC := 130] ifFalse: [recoveredBlock25Block46Block81PC := 140].
        ].
        recoveredBlock25Block46Block81Step = 130 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := EtasLicenseManager.
            recoveredBlock25Block46Block81PC := 132.
        ].
        recoveredBlock25Block46Block81Step = 132 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := ' grace mode active'.
            recoveredBlock25Block46Block81PC := 134.
        ].
        recoveredBlock25Block46Block81Step = 134 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := (recoveredBlock25Block46Block81Stack0) log: (recoveredBlock25Block46Block81Stack1).
            recoveredBlock25Block46Block81PC := 136.
        ].
        recoveredBlock25Block46Block81Step = 136 ifTrue: [
            recoveredBlock25Block46Block81PC := 146.
        ].
        recoveredBlock25Block46Block81Step = 140 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := EtasLicenseManager.
            recoveredBlock25Block46Block81PC := 142.
        ].
        recoveredBlock25Block46Block81Step = 142 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := ' succeeded'.
            recoveredBlock25Block46Block81PC := 144.
        ].
        recoveredBlock25Block46Block81Step = 144 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := (recoveredBlock25Block46Block81Stack0) log: (recoveredBlock25Block46Block81Stack1).
            recoveredBlock25Block46Block81PC := 146.
        ].
        recoveredBlock25Block46Block81Step = 146 ifTrue: [
            recoveredBlock25Block46Block81PC := 173.
        ].
        recoveredBlock25Block46Block81Step = 150 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := EtasLicenseManager.
            recoveredBlock25Block46Block81PC := 152.
        ].
        recoveredBlock25Block46Block81Step = 152 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := ' failed'.
            recoveredBlock25Block46Block81PC := 154.
        ].
        recoveredBlock25Block46Block81Step = 154 ifTrue: [
            (recoveredBlock25Block46Block81Stack0) log: (recoveredBlock25Block46Block81Stack1).
            recoveredBlock25Block46Block81PC := 156.
        ].
        recoveredBlock25Block46Block81Step = 156 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := self.
            recoveredBlock25Block46Block81PC := 157.
        ].
        recoveredBlock25Block46Block81Step = 157 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := nil.
            recoveredBlock25Block46Block81PC := 158.
        ].
        recoveredBlock25Block46Block81Step = 158 ifTrue: [
            (recoveredBlock25Block46Block81Stack0) oleWrapper: (recoveredBlock25Block46Block81Stack1).
            recoveredBlock25Block46Block81PC := 160.
        ].
        recoveredBlock25Block46Block81Step = 160 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := recoveredLocal2.
            recoveredBlock25Block46Block81PC := 163.
        ].
        recoveredBlock25Block46Block81Step = 163 ifTrue: [
            recoveredBlock25Block46Block81Stack1 := recoveredLocal1.
            recoveredBlock25Block46Block81PC := 166.
        ].
        recoveredBlock25Block46Block81Step = 166 ifTrue: [
            (recoveredBlock25Block46Block81Stack0) removeFeatureWrapper: (recoveredBlock25Block46Block81Stack1).
            recoveredBlock25Block46Block81PC := 168.
        ].
        recoveredBlock25Block46Block81Step = 168 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := recoveredLocal1.
            recoveredBlock25Block46Block81PC := 171.
        ].
        recoveredBlock25Block46Block81Step = 171 ifTrue: [
            recoveredBlock25Block46Block81Stack0 := (recoveredBlock25Block46Block81Stack0) releaseObject.
            recoveredBlock25Block46Block81PC := 173.
        ].
        recoveredBlock25Block46Block81Step = 173 ifTrue: [
            recoveredBlock25Block46Block81Result := recoveredBlock25Block46Block81Stack0.
            recoveredBlock25Block46Block81Done := true.
        ].
    ].
    recoveredBlock25Block46Block81Result
].
            recoveredBlock25Block46PC := 174.
        ].
        recoveredBlock25Block46Step = 174 ifTrue: [
            recoveredBlock25Block46Stack2 := ExError.
            recoveredBlock25Block46PC := 176.
        ].
        recoveredBlock25Block46Step = 176 ifTrue: [
            recoveredBlock25Block46Stack3 := [:block2811062cArg1 | 
    | block2811062cValue0 block2811062cValue1 block2811062cValue2 block2811062cValue3 |
    block2811062cValue0 := EtasLicenseManager.
    block2811062cValue1 := block2811062cValue0.
    (block2811062cValue1) logCr.
    (block2811062cValue0) log: ('system error occured').
    block2811062cValue2 := block2811062cArg1.
    block2811062cValue3 := (block2811062cValue2) exitWith: (nil).
    block2811062cValue3
].
            recoveredBlock25Block46PC := 178.
        ].
        recoveredBlock25Block46Step = 178 ifTrue: [
            recoveredBlock25Block46PC := 196.
        ].
        recoveredBlock25Block46Step = 196 ifTrue: [
            recoveredBlock25Block46Stack1 := (recoveredBlock25Block46Stack1) when: (recoveredBlock25Block46Stack2) do: (recoveredBlock25Block46Stack3).
            recoveredBlock25Block46PC := 198.
        ].
        recoveredBlock25Block46Step = 198 ifTrue: [
            recoveredBlock25Block46Result := recoveredBlock25Block46Stack1.
            recoveredBlock25Block46Done := true.
        ].
    ].
    recoveredBlock25Block46Result
].
            recoveredBlock25PC := 199.
        ].
        recoveredBlock25Step = 199 ifTrue: [
            recoveredBlock25Stack2 := ExError.
            recoveredBlock25PC := 201.
        ].
        recoveredBlock25Step = 201 ifTrue: [
            recoveredBlock25Stack3 := [:block28110650Arg1 | 
    | block28110650Value0 block28110650Value1 block28110650Value2 block28110650Value3 |
    block28110650Value0 := EtasLicenseManager.
    block28110650Value1 := block28110650Value0.
    (block28110650Value1) logCr.
    (block28110650Value0) log: ('system error occured').
    block28110650Value2 := block28110650Arg1.
    block28110650Value3 := (block28110650Value2) exitWith: (nil).
    block28110650Value3
].
            recoveredBlock25PC := 203.
        ].
        recoveredBlock25Step = 203 ifTrue: [
            recoveredBlock25PC := 220.
        ].
        recoveredBlock25Step = 220 ifTrue: [
            (recoveredBlock25Stack1) when: (recoveredBlock25Stack2) do: (recoveredBlock25Stack3).
            recoveredBlock25PC := 222.
        ].
        recoveredBlock25Step = 222 ifTrue: [
            recoveredBlock25Stack1 := EtasLicenseManager.
            recoveredBlock25PC := 224.
        ].
        recoveredBlock25Step = 224 ifTrue: [
            recoveredBlock25Stack2 := 'featureCheckout:'.
            recoveredBlock25PC := 226.
        ].
        recoveredBlock25Step = 226 ifTrue: [
            recoveredBlock25Stack3 := self.
            recoveredBlock25PC := 227.
        ].
        recoveredBlock25Step = 227 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) broadcast: (recoveredBlock25Stack2) with: (recoveredBlock25Stack3).
            recoveredBlock25PC := 229.
        ].
        recoveredBlock25Step = 229 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue5) exclusiveLiMaAccess: (recoveredValue6).
    ^self
! !

