"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004a58; bytecode file offset 0x90206c"
!SGCalibrationConfigManager methodsFor: 'recovered'!
hookCalibrationCallbacksFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200098fc; bytecode file offset 0x908be4"
!SGCalibrationConfigManager methodsFor: 'recovered'!
permission
    | recoveredValue0 |
    recoveredValue0 := (self) isPermission.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20038718; bytecode file offset 0x935c54"
!SGCalibrationConfigManager methodsFor: 'recovered'!
returnReferenceValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) deepCopy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073450; bytecode file offset 0x970b34"
!SGCalibrationConfigManager methodsFor: 'recovered'!
simEnvironment
    ^nil
! !

"ASDBase.ic method 0x2007d92c; bytecode file offset 0x97c330"
!SGCalibrationConfigManager methodsFor: 'recovered'!
canEditGroupArgs
    ^false
! !

"ASDBase.ic method 0x200b931c; bytecode file offset 0x9b5bf8"
!SGCalibrationConfigManager methodsFor: 'recovered'!
isCalibrationElementInOpenedView: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_92424').
    ^false
! !

"ASDBase.ic method 0x200cdb4c; bytecode file offset 0x9ca404"
!SGCalibrationConfigManager methodsFor: 'recovered'!
setPermission
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cdb68; bytecode file offset 0x9ca42c"
!SGCalibrationConfigManager methodsFor: 'recovered'!
isPermission
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cdb90; bytecode file offset 0x9ca454"
!SGCalibrationConfigManager methodsFor: 'recovered'!
clearPermission
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cdb9c; bytecode file offset 0x9ca454"
!SGCalibrationConfigManager methodsFor: 'recovered'!
setCanEditMaxSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cdbb8; bytecode file offset 0x9ca47c"
!SGCalibrationConfigManager methodsFor: 'recovered'!
canEditMaxSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cdbe0; bytecode file offset 0x9ca4a4"
!SGCalibrationConfigManager methodsFor: 'recovered'!
setEditInterpolation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (4).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cdc20; bytecode file offset 0x9ca4d8"
!SGCalibrationConfigManager methodsFor: 'recovered'!
canEditInterpolation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e9bec; bytecode file offset 0x9e64a4"
!SGCalibrationConfigManager methodsFor: 'recovered'!
updateCalibrationViewTitleFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := 'Unknwon'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011cb88; bytecode file offset 0xa19448"
!SGCalibrationConfigManager methodsFor: 'recovered'!
initialize
    super initialize.
    state := 0.
    (self) setPermission.
    ^self
! !

"ASDBase.ic method 0x20131dac; bytecode file offset 0xa2e6a8"
!SGCalibrationConfigManager methodsFor: 'recovered'!
permission: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setPermission.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearPermission.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20165be0; bytecode file offset 0xa624a4"
!SGCalibrationConfigManager methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) cr.
    recoveredValue1 := recoveredArg1.
    super printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredArg1.
    (self) statePrintOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f41c4; bytecode file offset 0xaf0b10"
!SGCalibrationConfigManager methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isPermission.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isPermission: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) canEditMaxSize.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('canEditMaxSize: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x203fd51c; bytecode file offset 0xcf9e00"
!SGCalibrationConfigManager methodsFor: 'recovered'!
extendEditMenu: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addLine.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := false.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) owner.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack2 == nil) ifTrue: [recoveredBlock15PC := 52] ifFalse: [recoveredBlock15PC := 30].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) owner.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) dataElement.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack3 := 'fileInFromString:'.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) respondsTo: (recoveredBlock15Stack3).
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 44] ifFalse: [recoveredBlock15PC := 52].
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) owner.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) writeProtection.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) not.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) add: ('menuFileInData') label: ('File ~In Data') enable: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := [
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := false.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := recoveredArg1.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) owner.
            recoveredBlock60PC := 71.
        ].
        recoveredBlock60Step = 71 ifTrue: [
            (recoveredBlock60Stack2 == nil) ifTrue: [recoveredBlock60PC := 85] ifFalse: [recoveredBlock60PC := 74].
        ].
        recoveredBlock60Step = 74 ifTrue: [
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60Stack1 := recoveredArg1.
            recoveredBlock60PC := 78.
        ].
        recoveredBlock60Step = 78 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) owner.
            recoveredBlock60PC := 79.
        ].
        recoveredBlock60Step = 79 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) dataElement.
            recoveredBlock60PC := 81.
        ].
        recoveredBlock60Step = 81 ifTrue: [
            recoveredBlock60Stack2 := 'fileOutString'.
            recoveredBlock60PC := 83.
        ].
        recoveredBlock60Step = 83 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) respondsTo: (recoveredBlock60Stack2).
            recoveredBlock60PC := 85.
        ].
        recoveredBlock60Step = 85 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
    (recoveredValue4) add: ('menuFileOutData') label: ('File ~Out Data') enable: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x204fb0b4; bytecode file offset 0xdf79cc"
!SGCalibrationConfigManager methodsFor: 'recovered'!
openSpecificationView: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_82023'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Local1 recoveredBlock10Local2 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := CwWMShell.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) focusShell.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Local2 := recoveredBlock10Stack2.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            (recoveredBlock10Stack1 == nil) ifTrue: [recoveredBlock10PC := 28] ifFalse: [recoveredBlock10PC := 24].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local2.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) getUserInterface.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            (recoveredBlock10Stack1 ~~ nil) ifTrue: [recoveredBlock10PC := 40] ifFalse: [recoveredBlock10PC := 32].
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            (recoveredBlock10Stack1) openAtCurrentMousePosition.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            (recoveredBlock10Stack1) openAtCurrentMousePositionWithParent: (recoveredBlock10Stack2).
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack2 := true.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            (recoveredBlock10Stack1) makeAlwaysOnTop: (recoveredBlock10Stack2).
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 56.
        ].
        recoveredBlock10Step = 56 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) permission.
            recoveredBlock10PC := 58.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) not.
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            (recoveredBlock10Stack1) writeProtection: (recoveredBlock10Stack2).
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Stack2 := 'buttonOk'.
            recoveredBlock10PC := 66.
        ].
        recoveredBlock10Step = 66 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) widgetAt: (recoveredBlock10Stack2).
            recoveredBlock10PC := 68.
        ].
        recoveredBlock10Step = 68 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 72.
        ].
        recoveredBlock10Step = 72 ifTrue: [
            (recoveredBlock10Stack1 ~~ nil) ifTrue: [recoveredBlock10PC := 102] ifFalse: [recoveredBlock10PC := 76].
        ].
        recoveredBlock10Step = 76 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 79.
        ].
        recoveredBlock10Step = 79 ifTrue: [
            recoveredBlock10Stack2 := 'okButton'.
            recoveredBlock10PC := 81.
        ].
        recoveredBlock10Step = 81 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) widgetAt: (recoveredBlock10Stack2).
            recoveredBlock10PC := 83.
        ].
        recoveredBlock10Step = 83 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 84.
        ].
        recoveredBlock10Step = 84 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 87.
        ].
        recoveredBlock10Step = 87 ifTrue: [
            (recoveredBlock10Stack1 == nil) ifTrue: [recoveredBlock10PC := 98] ifFalse: [recoveredBlock10PC := 90].
        ].
        recoveredBlock10Step = 90 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 93.
        ].
        recoveredBlock10Step = 93 ifTrue: [
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 94.
        ].
        recoveredBlock10Step = 94 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) permission.
            recoveredBlock10PC := 96.
        ].
        recoveredBlock10Step = 96 ifTrue: [
            (recoveredBlock10Stack1) sensitive: (recoveredBlock10Stack2).
            recoveredBlock10PC := 98.
        ].
        recoveredBlock10Step = 98 ifTrue: [
            recoveredBlock10PC := 110.
        ].
        recoveredBlock10Step = 102 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 105.
        ].
        recoveredBlock10Step = 105 ifTrue: [
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 106.
        ].
        recoveredBlock10Step = 106 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) permission.
            recoveredBlock10PC := 108.
        ].
        recoveredBlock10Step = 108 ifTrue: [
            (recoveredBlock10Stack1) sensitive: (recoveredBlock10Stack2).
            recoveredBlock10PC := 110.
        ].
        recoveredBlock10Step = 110 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 113.
        ].
        recoveredBlock10Step = 113 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) shell.
            recoveredBlock10PC := 115.
        ].
        recoveredBlock10Step = 115 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) osWidget.
            recoveredBlock10PC := 117.
        ].
        recoveredBlock10Step = 117 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) setAppModal.
            recoveredBlock10PC := 119.
        ].
        recoveredBlock10Step = 119 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) OpenForUnitTest.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock140Stack0 recoveredBlock140Stack1 recoveredBlock140Stack2 recoveredBlock140Stack3 recoveredBlock140PC recoveredBlock140Step recoveredBlock140Done recoveredBlock140Result |
    recoveredBlock140Stack0 := self.
    recoveredBlock140PC := 146.
    recoveredBlock140Done := false.
    [recoveredBlock140Done not] whileTrue: [
        recoveredBlock140Step := recoveredBlock140PC.
        recoveredBlock140Step = 146 ifTrue: [
            recoveredBlock140Stack1 := false.
            recoveredBlock140PC := 147.
        ].
        recoveredBlock140Step = 147 ifTrue: [
            recoveredBlock140Stack2 := recoveredArg1.
            recoveredBlock140PC := 150.
        ].
        recoveredBlock140Step = 150 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) shell.
            recoveredBlock140PC := 152.
        ].
        recoveredBlock140Step = 152 ifTrue: [
            (recoveredBlock140Stack2 == nil) ifTrue: [recoveredBlock140PC := 165] ifFalse: [recoveredBlock140PC := 156].
        ].
        recoveredBlock140Step = 156 ifTrue: [
            recoveredBlock140PC := 157.
        ].
        recoveredBlock140Step = 157 ifTrue: [
            recoveredBlock140Stack1 := recoveredArg1.
            recoveredBlock140PC := 160.
        ].
        recoveredBlock140Step = 160 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) shell.
            recoveredBlock140PC := 162.
        ].
        recoveredBlock140Step = 162 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) isDestroyed.
            recoveredBlock140PC := 164.
        ].
        recoveredBlock140Step = 164 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) not.
            recoveredBlock140PC := 165.
        ].
        recoveredBlock140Step = 165 ifTrue: [
            recoveredBlock140Result := recoveredBlock140Stack1.
            recoveredBlock140Done := true.
        ].
    ].
    recoveredBlock140Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) readAndDispatchAndSleepWhile: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

