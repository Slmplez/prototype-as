"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200185f0; bytecode file offset 0x92209c"
!ARCalibrationInterface methodsFor: 'recovered'!
iconName
    ^'ComponentsCALInterface'
! !

"ASDBase.ic method 0x200199ac; bytecode file offset 0x92209c"
!ARCalibrationInterface methodsFor: 'recovered'!
itemTypeLabel
    ^'Calibration Interface'
! !

"ASDBase.ic method 0x2001c454; bytecode file offset 0x92209c"
!ARCalibrationInterface methodsFor: 'recovered'!
editorIconName
    ^'ComponentsCALInterface'
! !

"ASDBase.ic method 0x2001df24; bytecode file offset 0x92209c"
!ARCalibrationInterface methodsFor: 'recovered'!
getComponentType
    ^'AUTOSAR_CalibrationInterface'
! !

"ASDBase.ic method 0x20024dc4; bytecode file offset 0x92209c"
!ARCalibrationInterface methodsFor: 'recovered'!
sourceModel
    ^'calibrationinterface'
! !

"ASDBase.ic method 0x200326b4; bytecode file offset 0x934580"
!ARCalibrationInterface methodsFor: 'recovered'!
typeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultItemLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074984; bytecode file offset 0x9757c8"
!ARCalibrationInterface methodsFor: 'recovered'!
isARDataInterface
    ^true
! !

"ASDBase.ic method 0x2007557c; bytecode file offset 0x9757c8"
!ARCalibrationInterface methodsFor: 'recovered'!
isCalibrationInterface
    ^true
! !

"ASDBase.ic method 0x2007941c; bytecode file offset 0x97c330"
!ARCalibrationInterface methodsFor: 'recovered'!
isReferenceTypeAPI
    ^false
! !

"ASDBase.ic method 0x200b5a3c; bytecode file offset 0x9b2324"
!ARCalibrationInterface methodsFor: 'recovered'!
mdlClassTypeAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super mdlClassTypeAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgOptCalPrmInterfaceType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200cb6f8; bytecode file offset 0x9c80c4"
!ARCalibrationInterface methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := ASDRecord.
    recoveredValue2 := SGEnumerationDB.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e84e8; bytecode file offset 0x9e4df4"
!ARCalibrationInterface methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGEnumeration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecord.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028a348; bytecode file offset 0xb86c28"
!ARCalibrationInterface methodsFor: 'recovered'!
minToolVersion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) destVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := super minToolVersion: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'V6.1.0'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'AUTOSAR Calibration Interfaces only supported with ASCET V6.1.0 or higher. (%1)'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'V6.1.0'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

