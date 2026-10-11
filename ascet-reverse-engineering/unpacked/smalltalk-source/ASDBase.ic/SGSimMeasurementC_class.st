"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200265e4; bytecode file offset 0x923928"
!SGSimMeasurementC class methodsFor: 'recovered'!
defaultMeasureViewType
    ^'numeric'
! !

"ASDBase.ic method 0x20071f80; bytecode file offset 0x96ee04"
!SGSimMeasurementC class methodsFor: 'recovered'!
defaultOfflineRate1
    ^1
! !

"ASDBase.ic method 0x20072000; bytecode file offset 0x96ee04"
!SGSimMeasurementC class methodsFor: 'recovered'!
offlineChannelGroup
    ^1
! !

"ASDBase.ic method 0x20072460; bytecode file offset 0x96ee04"
!SGSimMeasurementC class methodsFor: 'recovered'!
defaultOfflineRate
    ^1
! !

"ASDBase.ic method 0x2007469c; bytecode file offset 0x970f98"
!SGSimMeasurementC class methodsFor: 'recovered'!
defaultOfflineRate10
    ^10
! !

"ASDBase.ic method 0x20080eb0; bytecode file offset 0x97d79c"
!SGSimMeasurementC class methodsFor: 'recovered'!
maxMeasureOfflineRate
    ^100
! !

"ASDBase.ic method 0x200d98d0; bytecode file offset 0x9d6198"
!SGSimMeasurementC class methodsFor: 'recovered'!
defaultDataBooleanConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) defaultDataConfigObjectClass.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := (recoveredValue3) displayType: ('step').
    ^recoveredValue4
! !

"ASDBase.ic method 0x2018be54; bytecode file offset 0xa8871c"
!SGSimMeasurementC class methodsFor: 'recovered'!
create: recoveredArg1 mainController: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) userInterface: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) mainController: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) measureSystemC: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201a689c; bytecode file offset 0xaa316c"
!SGSimMeasurementC class methodsFor: 'recovered'!
defaultDataConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) defaultDataConfigObjectClass.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) wMin: (0).
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) wMax: (100).
    recoveredValue6 := (recoveredValue3) displayType: ('step').
    ^recoveredValue6
! !

"ASDBase.ic method 0x201fa32c; bytecode file offset 0xaf6c00"
!SGSimMeasurementC class methodsFor: 'recovered'!
defaultWinConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWindowConfigObjectClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'xMin'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) canUnderstand: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) xMin: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) xMax: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

