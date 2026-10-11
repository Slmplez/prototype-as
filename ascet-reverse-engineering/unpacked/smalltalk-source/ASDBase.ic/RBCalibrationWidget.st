"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000f78; bytecode file offset 0x8ffcfc"
!RBCalibrationWidget methodsFor: 'recovered'!
grayBackground
    ^self
! !

"ASDBase.ic method 0x2001ed64; bytecode file offset 0x92209c"
!RBCalibrationWidget methodsFor: 'recovered'!
getHKStringforShiftUp
    ^'Alt+F10'
! !

"ASDBase.ic method 0x20020690; bytecode file offset 0x92209c"
!RBCalibrationWidget methodsFor: 'recovered'!
getHKStringforShiftDown
    ^'Alt+F9'
! !

"ASDBase.ic method 0x2002cc44; bytecode file offset 0x934580"
!RBCalibrationWidget methodsFor: 'recovered'!
textXAxisPrecision
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) textXAxisPrecision.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e2d4; bytecode file offset 0x934580"
!RBCalibrationWidget methodsFor: 'recovered'!
textYAxisPrecision
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) textYAxisPrecision.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f244; bytecode file offset 0x934580"
!RBCalibrationWidget methodsFor: 'recovered'!
textPrecision
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) textPrecision.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200362b4; bytecode file offset 0x934580"
!RBCalibrationWidget methodsFor: 'recovered'!
supportedSourceModels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) supportedSourceModels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e9e4; bytecode file offset 0x94d048"
!RBCalibrationWidget methodsFor: 'recovered'!
dataElement
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f1dc; bytecode file offset 0x94d048"
!RBCalibrationWidget methodsFor: 'recovered'!
createWidgetHierarchy
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20058778; bytecode file offset 0x956284"
!RBCalibrationWidget methodsFor: 'recovered'!
checkIfValidDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) checkIfValidDataElement: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059168; bytecode file offset 0x956284"
!RBCalibrationWidget methodsFor: 'recovered'!
getPostDigitsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getPostDigitsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007c304; bytecode file offset 0x97c330"
!RBCalibrationWidget methodsFor: 'recovered'!
doesSupportPointMenu
    ^false
! !

"ASDBase.ic method 0x2007c4cc; bytecode file offset 0x97c330"
!RBCalibrationWidget methodsFor: 'recovered'!
isBooleanEditor
    ^false
! !

"ASDBase.ic method 0x20081578; bytecode file offset 0x97e234"
!RBCalibrationWidget methodsFor: 'recovered'!
execShortOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20107344; bytecode file offset 0xa03cb0"
!RBCalibrationWidget methodsFor: 'recovered'!
getHKforDeleteElement
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Character.
    recoveredValue1 := XKDelete.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := ('Ctrl-') , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20107384; bytecode file offset 0xa03cb0"
!RBCalibrationWidget methodsFor: 'recovered'!
getHKforShiftUp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Character.
    recoveredValue1 := XKF10.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := ('Alt-') , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201073e4; bytecode file offset 0xa03cb0"
!RBCalibrationWidget methodsFor: 'recovered'!
getHKforShiftDown
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Character.
    recoveredValue1 := XKF9.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := ('Alt-') , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011b850; bytecode file offset 0xa18138"
!RBCalibrationWidget methodsFor: 'recovered'!
dataName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := '<Name>'.
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
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) wName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011ba34; bytecode file offset 0xa18310"
!RBCalibrationWidget methodsFor: 'recovered'!
master
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e1b08; bytecode file offset 0xade3e4"
!RBCalibrationWidget methodsFor: 'recovered'!
colorRed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (65535).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (0).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201e1b90; bytecode file offset 0xade484"
!RBCalibrationWidget methodsFor: 'recovered'!
colorGreen
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (32896).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (32896).
    ^recoveredValue1
! !

