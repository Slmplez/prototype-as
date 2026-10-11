"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015d94; bytecode file offset 0x92209c"
!ARDataInterface class methodsFor: 'recovered'!
apiItemTypes
    ^#('DataInterface')
! !

"ASDBase.ic method 0x20016028; bytecode file offset 0x92209c"
!ARDataInterface class methodsFor: 'recovered'!
defaultItemLabelTypeCalibration
    ^'Calibration_Interface'
! !

"ASDBase.ic method 0x200187ac; bytecode file offset 0x92209c"
!ARDataInterface class methodsFor: 'recovered'!
interfaceTypeCalibration
    ^'Calibration'
! !

"ASDBase.ic method 0x2001af90; bytecode file offset 0x92209c"
!ARDataInterface class methodsFor: 'recovered'!
defaultItemLabelTypeNVData
    ^'NVData_Interface'
! !

"ASDBase.ic method 0x2001ede8; bytecode file offset 0x92209c"
!ARDataInterface class methodsFor: 'recovered'!
defaultItemLabels
    ^#('Calibration_Interface' 'NVData_Interface' 'SenderReceiver_Interface')
! !

"ASDBase.ic method 0x2001f2e0; bytecode file offset 0x92209c"
!ARDataInterface class methodsFor: 'recovered'!
interfaceTypeSenderReceiver
    ^'SenderReceiver'
! !

"ASDBase.ic method 0x200245a8; bytecode file offset 0x92209c"
!ARDataInterface class methodsFor: 'recovered'!
defaultItemLabelTypeSenderReceiver
    ^'SenderReceiver_Interface'
! !

"ASDBase.ic method 0x20025f9c; bytecode file offset 0x923928"
!ARDataInterface class methodsFor: 'recovered'!
defaultItemLabel
    ^'Data_Interface'
! !

"ASDBase.ic method 0x20026494; bytecode file offset 0x923928"
!ARDataInterface class methodsFor: 'recovered'!
interfaceTypeNVData
    ^'NVData'
! !

"ASDBase.ic method 0x20104bc0; bytecode file offset 0xa01584"
!ARDataInterface class methodsFor: 'recovered'!
interfaceTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) interfaceTypeSenderReceiver.
    recoveredValue2 := (self) interfaceTypeNVData.
    recoveredValue3 := (self) interfaceTypeCalibration.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201287e0; bytecode file offset 0xa250a8"
!ARDataInterface class methodsFor: 'recovered'!
OldClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('ARSenderReceiverInterface').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('ARCalibrationInterface').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20262110; bytecode file offset 0xb5e9e0"
!ARDataInterface class methodsFor: 'recovered'!
defaultItemLabelForType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceTypeCalibration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultItemLabelTypeCalibration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceTypeNVData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultItemLabelTypeNVData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceTypeSenderReceiver.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultItemLabelTypeSenderReceiver.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'Data_Interface'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

