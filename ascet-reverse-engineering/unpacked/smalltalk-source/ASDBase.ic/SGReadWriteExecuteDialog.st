"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20010734; bytecode file offset 0x90d208"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200107dc; bytecode file offset 0x90d208"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200428ec; bytecode file offset 0x9451f8"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
writeCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('writeCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004354c; bytecode file offset 0x9451f8"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
executeCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('executeCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004357c; bytecode file offset 0x9451f8"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
generateCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('generateCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004536c; bytecode file offset 0x9451f8"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
readCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('readCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004667c; bytecode file offset 0x9451f8"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
calibrateCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('calibrateCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ed94; bytecode file offset 0x95b658"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
cancel
    | recoveredValue0 |
    result := nil.
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f9e8; bytecode file offset 0x96c42c"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := result.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6044; bytecode file offset 0x9c29e8"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    result := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e4e60; bytecode file offset 0x9e1720"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) updateResult.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20173108; bytecode file offset 0xa6f9f4"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) installActionKeys.
    (self) updateWidgets.
    (self) updateWindowLabel.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x20224e1c; bytecode file offset 0xb216f4"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Change Access Rights for: '.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) anyElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'selected items'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d5ea4; bytecode file offset 0xbd2840"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
shellResizeCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20320940; bytecode file offset 0xc1d304"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) at: ('Alt-o') put: ('ok').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) at: ('Alt-c') put: ('cancel').
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) shell.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue12) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x205818bc; bytecode file offset 0xe7e19c"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
updateResult
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) readCheckBox.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) readCheckBox.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeCheckBox.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeCheckBox.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrateCheckBox.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrateCheckBox.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeCheckBox.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeCheckBox.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateCheckBox.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateCheckBox.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := 31.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) readCheckBox.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 |
    recoveredBlock131Value0 := recoveredLocal2.
    recoveredBlock131Value1 := (recoveredBlock131Value0) bitAnd: (30).
    recoveredBlock131Value2 := recoveredBlock131Value1.
    recoveredLocal2 := recoveredBlock131Value2.
    recoveredBlock131Value1
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeCheckBox.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 |
    recoveredBlock155Value0 := recoveredLocal2.
    recoveredBlock155Value1 := (recoveredBlock155Value0) bitAnd: (29).
    recoveredBlock155Value2 := recoveredBlock155Value1.
    recoveredLocal2 := recoveredBlock155Value2.
    recoveredBlock155Value1
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrateCheckBox.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 |
    recoveredBlock180Value0 := recoveredLocal2.
    recoveredBlock180Value1 := (recoveredBlock180Value0) bitAnd: (27).
    recoveredBlock180Value2 := recoveredBlock180Value1.
    recoveredLocal2 := recoveredBlock180Value2.
    recoveredBlock180Value1
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeCheckBox.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock204Value0 recoveredBlock204Value1 recoveredBlock204Value2 |
    recoveredBlock204Value0 := recoveredLocal2.
    recoveredBlock204Value1 := (recoveredBlock204Value0) bitAnd: (23).
    recoveredBlock204Value2 := recoveredBlock204Value1.
    recoveredLocal2 := recoveredBlock204Value2.
    recoveredBlock204Value1
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateCheckBox.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock228Value0 recoveredBlock228Value1 recoveredBlock228Value2 |
    recoveredBlock228Value0 := recoveredLocal2.
    recoveredBlock228Value1 := (recoveredBlock228Value0) bitAnd: (15).
    recoveredBlock228Value2 := recoveredBlock228Value1.
    recoveredLocal2 := recoveredBlock228Value2.
    recoveredBlock228Value1
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20583378; bytecode file offset 0xe7fc74"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) anyElement.
    recoveredValue2 := (recoveredValue1) isRead.
    recoveredLocal5 := recoveredValue2.
    recoveredValue3 := (self) item.
    recoveredValue4 := (recoveredValue3) anyElement.
    recoveredValue5 := (recoveredValue4) isWrite.
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := (self) item.
    recoveredValue7 := (recoveredValue6) anyElement.
    recoveredValue8 := (recoveredValue7) isCalibrate.
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := (self) item.
    recoveredValue10 := (recoveredValue9) anyElement.
    recoveredValue11 := (recoveredValue10) isExecute.
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := (self) item.
    recoveredValue13 := (recoveredValue12) anyElement.
    recoveredValue14 := (recoveredValue13) isCodeGeneration.
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := (self) item.
    recoveredValue16 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 53.
        ].
        recoveredBlock43Step = 53 ifTrue: [
            (recoveredBlock43Stack1 == nil) ifTrue: [recoveredBlock43PC := 70] ifFalse: [recoveredBlock43PC := 56].
        ].
        recoveredBlock43Step = 56 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 59.
        ].
        recoveredBlock43Step = 59 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) isRead.
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) ~= (recoveredBlock43Stack2).
            recoveredBlock43PC := 62.
        ].
        recoveredBlock43Step = 62 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 66] ifFalse: [recoveredBlock43PC := 70].
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 67.
        ].
        recoveredBlock43Step = 67 ifTrue: [
            recoveredLocal5 := recoveredBlock43Stack1.
            recoveredBlock43PC := 70.
        ].
        recoveredBlock43Step = 70 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal4.
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            (recoveredBlock43Stack1 == nil) ifTrue: [recoveredBlock43PC := 90] ifFalse: [recoveredBlock43PC := 76].
        ].
        recoveredBlock43Step = 76 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal4.
            recoveredBlock43PC := 79.
        ].
        recoveredBlock43Step = 79 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 80.
        ].
        recoveredBlock43Step = 80 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) isWrite.
            recoveredBlock43PC := 81.
        ].
        recoveredBlock43Step = 81 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) ~= (recoveredBlock43Stack2).
            recoveredBlock43PC := 82.
        ].
        recoveredBlock43Step = 82 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 86] ifFalse: [recoveredBlock43PC := 90].
        ].
        recoveredBlock43Step = 86 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 87.
        ].
        recoveredBlock43Step = 87 ifTrue: [
            recoveredLocal4 := recoveredBlock43Stack1.
            recoveredBlock43PC := 90.
        ].
        recoveredBlock43Step = 90 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 93.
        ].
        recoveredBlock43Step = 93 ifTrue: [
            (recoveredBlock43Stack1 == nil) ifTrue: [recoveredBlock43PC := 110] ifFalse: [recoveredBlock43PC := 96].
        ].
        recoveredBlock43Step = 96 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 99.
        ].
        recoveredBlock43Step = 99 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 100.
        ].
        recoveredBlock43Step = 100 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) isCalibrate.
            recoveredBlock43PC := 102.
        ].
        recoveredBlock43Step = 102 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) ~= (recoveredBlock43Stack2).
            recoveredBlock43PC := 103.
        ].
        recoveredBlock43Step = 103 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 106] ifFalse: [recoveredBlock43PC := 110].
        ].
        recoveredBlock43Step = 106 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 107.
        ].
        recoveredBlock43Step = 107 ifTrue: [
            recoveredLocal3 := recoveredBlock43Stack1.
            recoveredBlock43PC := 110.
        ].
        recoveredBlock43Step = 110 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal2.
            recoveredBlock43PC := 113.
        ].
        recoveredBlock43Step = 113 ifTrue: [
            (recoveredBlock43Stack1 == nil) ifTrue: [recoveredBlock43PC := 130] ifFalse: [recoveredBlock43PC := 116].
        ].
        recoveredBlock43Step = 116 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal2.
            recoveredBlock43PC := 119.
        ].
        recoveredBlock43Step = 119 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 120.
        ].
        recoveredBlock43Step = 120 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) isExecute.
            recoveredBlock43PC := 122.
        ].
        recoveredBlock43Step = 122 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) ~= (recoveredBlock43Stack2).
            recoveredBlock43PC := 123.
        ].
        recoveredBlock43Step = 123 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 126] ifFalse: [recoveredBlock43PC := 130].
        ].
        recoveredBlock43Step = 126 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 127.
        ].
        recoveredBlock43Step = 127 ifTrue: [
            recoveredLocal2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 130.
        ].
        recoveredBlock43Step = 130 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 131.
        ].
        recoveredBlock43Step = 131 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal1.
            recoveredBlock43PC := 134.
        ].
        recoveredBlock43Step = 134 ifTrue: [
            (recoveredBlock43Stack2 == nil) ifTrue: [recoveredBlock43PC := 156] ifFalse: [recoveredBlock43PC := 138].
        ].
        recoveredBlock43Step = 138 ifTrue: [
            recoveredBlock43PC := 139.
        ].
        recoveredBlock43Step = 139 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 140.
        ].
        recoveredBlock43Step = 140 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal1.
            recoveredBlock43PC := 143.
        ].
        recoveredBlock43Step = 143 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Arg1.
            recoveredBlock43PC := 144.
        ].
        recoveredBlock43Step = 144 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) isCodeGeneration.
            recoveredBlock43PC := 146.
        ].
        recoveredBlock43Step = 146 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) ~= (recoveredBlock43Stack3).
            recoveredBlock43PC := 147.
        ].
        recoveredBlock43Step = 147 ifTrue: [
            (recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 150] ifFalse: [recoveredBlock43PC := 156].
        ].
        recoveredBlock43Step = 150 ifTrue: [
            recoveredBlock43PC := 151.
        ].
        recoveredBlock43Step = 151 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 152.
        ].
        recoveredBlock43Step = 152 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 153.
        ].
        recoveredBlock43Step = 153 ifTrue: [
            recoveredLocal1 := recoveredBlock43Stack2.
            recoveredBlock43PC := 156.
        ].
        recoveredBlock43Step = 156 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
    (recoveredValue15) do: (recoveredValue16).
    recoveredValue17 := (self) readCheckBox.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := recoveredLocal5.
    (recoveredValue18) set: (recoveredValue19).
    recoveredValue20 := recoveredLocal5.
    recoveredValue21 := (recoveredValue20) isNil.
    (recoveredValue17) thirdState: (recoveredValue21).
    recoveredValue22 := (self) writeCheckBox.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal4.
    (recoveredValue23) set: (recoveredValue24).
    recoveredValue25 := recoveredLocal4.
    recoveredValue26 := (recoveredValue25) isNil.
    (recoveredValue22) thirdState: (recoveredValue26).
    recoveredValue27 := (self) calibrateCheckBox.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := (self) library.
    recoveredValue30 := (recoveredValue29) isWorkspaceMode.
    recoveredValue31 := (recoveredValue30) not.
    (recoveredValue28) sensitive: (recoveredValue31).
    recoveredValue32 := recoveredValue27.
    recoveredValue33 := recoveredLocal3.
    (recoveredValue32) set: (recoveredValue33).
    recoveredValue34 := recoveredLocal3.
    recoveredValue35 := (recoveredValue34) isNil.
    (recoveredValue27) thirdState: (recoveredValue35).
    recoveredValue36 := (self) executeCheckBox.
    recoveredValue37 := recoveredValue36.
    recoveredValue38 := (self) library.
    recoveredValue39 := (recoveredValue38) isWorkspaceMode.
    recoveredValue40 := (recoveredValue39) not.
    (recoveredValue37) sensitive: (recoveredValue40).
    recoveredValue41 := recoveredValue36.
    recoveredValue42 := recoveredLocal2.
    (recoveredValue41) set: (recoveredValue42).
    recoveredValue43 := recoveredLocal2.
    recoveredValue44 := (recoveredValue43) isNil.
    (recoveredValue36) thirdState: (recoveredValue44).
    recoveredValue45 := (self) generateCheckBox.
    recoveredValue46 := recoveredValue45.
    recoveredValue47 := (self) library.
    recoveredValue48 := (recoveredValue47) isWorkspaceMode.
    recoveredValue49 := (recoveredValue48) not.
    (recoveredValue46) sensitive: (recoveredValue49).
    recoveredValue50 := recoveredValue45.
    recoveredValue51 := recoveredLocal1.
    (recoveredValue50) set: (recoveredValue51).
    recoveredValue52 := recoveredLocal1.
    recoveredValue53 := (recoveredValue52) isNil.
    (recoveredValue45) thirdState: (recoveredValue53).
    ^self
! !

"ASDBase.ic method 0x20674408; bytecode file offset 0xf70e38"
!SGReadWriteExecuteDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28127708Arg1 | 
    | block28127708Value0 block28127708Value1 block28127708Value2 block28127708Value3 block28127708Value4 block28127708Value5 block28127708Value6 block28127708Value7 block28127708Value8 block28127708Value9 block28127708Value10 block28127708Value11 |
    block28127708Value0 := block28127708Arg1.
    block28127708Value1 := block28127708Value0.
    block28127708Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28127708Value1) mwmInputMode: (block28127708Value2).
    block28127708Value3 := block28127708Value0.
    (block28127708Value3) title: ('Change Access Rights for:').
    block28127708Value4 := block28127708Value0.
    block28127708Value5 := MWMDECORALL.
    block28127708Value6 := MWMDECORMINIMIZE.
    block28127708Value7 := (block28127708Value5) | (block28127708Value6).
    block28127708Value8 := MWMDECORMAXIMIZE.
    block28127708Value9 := (block28127708Value7) | (block28127708Value8).
    (block28127708Value4) mwmDecorations: (block28127708Value9).
    block28127708Value10 := block28127708Value0.
    (block28127708Value10) height: (245).
    block28127708Value11 := (block28127708Value0) width: (300).
    block28127708Value11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'checkBoxFrame'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block2812772cArg1 | 
    | block2812772cValue0 block2812772cValue1 |
    block2812772cValue0 := block2812772cArg1.
    block2812772cValue1 := (block2812772cValue0) labelString: ('Access Rights').
    block2812772cValue1
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'checkBoxFrame'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := 'checkBoxForm'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'checkBoxForm'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'readCheckBoxForm'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := 'readCheckBox'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := [:block28127750Arg1 | 
    | block28127750Value0 block28127750Value1 block28127750Value2 block28127750Value3 |
    block28127750Value0 := block28127750Arg1.
    block28127750Value1 := block28127750Value0.
    (block28127750Value1) labelString: ('Read').
    block28127750Value2 := block28127750Value0.
    (block28127750Value2) height: (24).
    block28127750Value3 := (block28127750Value0) width: (100).
    block28127750Value3
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasCheckBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'readCheckBox'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := 'writeCheckBoxForm'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := 'writeCheckBox'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := [:block28127774Arg1 | 
    | block28127774Value0 block28127774Value1 block28127774Value2 block28127774Value3 |
    block28127774Value0 := block28127774Arg1.
    block28127774Value1 := block28127774Value0.
    (block28127774Value1) labelString: ('Write').
    block28127774Value2 := block28127774Value0.
    (block28127774Value2) height: (24).
    block28127774Value3 := (block28127774Value0) width: (100).
    block28127774Value3
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasCheckBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := 'writeCheckBox'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := 'calibrateCheckBoxForm'.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := 'calibrateCheckBox'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := [:block28127798Arg1 | 
    | block28127798Value0 block28127798Value1 block28127798Value2 block28127798Value3 |
    block28127798Value0 := block28127798Arg1.
    block28127798Value1 := block28127798Value0.
    (block28127798Value1) labelString: ('Calibrate').
    block28127798Value2 := block28127798Value0.
    (block28127798Value2) height: (24).
    block28127798Value3 := (block28127798Value0) width: (100).
    block28127798Value3
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasCheckBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := 'calibrateCheckBox'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 'executeCheckBoxForm'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := 'executeCheckBox'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := [:block281277bcArg1 | 
    | block281277bcValue0 block281277bcValue1 block281277bcValue2 block281277bcValue3 |
    block281277bcValue0 := block281277bcArg1.
    block281277bcValue1 := block281277bcValue0.
    (block281277bcValue1) labelString: ('Execute').
    block281277bcValue2 := block281277bcValue0.
    (block281277bcValue2) height: (24).
    block281277bcValue3 := (block281277bcValue0) width: (100).
    block281277bcValue3
].
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasCheckBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := 'executeCheckBox'.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := 'generateCheckBoxForm'.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := 'generateCheckBox'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := [:block281277e0Arg1 | 
    | block281277e0Value0 block281277e0Value1 block281277e0Value2 block281277e0Value3 |
    block281277e0Value0 := block281277e0Arg1.
    block281277e0Value1 := block281277e0Value0.
    (block281277e0Value1) labelString: ('Generate Code').
    block281277e0Value2 := block281277e0Value0.
    (block281277e0Value2) height: (24).
    block281277e0Value3 := (block281277e0Value0) width: (100).
    block281277e0Value3
].
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasCheckBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := 'generateCheckBox'.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack3 := [:block28127804Arg1 | 
    | block28127804Value0 block28127804Value1 block28127804Value2 block28127804Value3 |
    block28127804Value0 := block28127804Arg1.
    block28127804Value1 := block28127804Value0.
    (block28127804Value1) labelString: ('&Cancel').
    block28127804Value2 := block28127804Value0.
    (block28127804Value2) height: (25).
    block28127804Value3 := (block28127804Value0) width: (100).
    block28127804Value3
].
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack3 := [:block28127828Arg1 | 
    | block28127828Value0 block28127828Value1 block28127828Value2 block28127828Value3 |
    block28127828Value0 := block28127828Arg1.
    block28127828Value1 := block28127828Value0.
    (block28127828Value1) labelString: ('&OK').
    block28127828Value2 := block28127828Value0.
    (block28127828Value2) height: (25).
    block28127828Value3 := (block28127828Value0) width: (100).
    block28127828Value3
].
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := [:recoveredBlock576Arg1 | 
    | recoveredBlock576Value0 recoveredBlock576Value1 recoveredBlock576Value2 |
    recoveredBlock576Value0 := recoveredBlock576Arg1.
    recoveredBlock576Value1 := recoveredLocal15.
    recoveredBlock576Value2 := (recoveredBlock576Value0) workWindow: (recoveredBlock576Value1).
    recoveredBlock576Value2
].
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := [:block2812784cArg1 | 
    | block2812784cValue0 block2812784cValue1 block2812784cValue2 block2812784cValue3 block2812784cValue4 block2812784cValue5 block2812784cValue6 block2812784cValue7 block2812784cValue8 block2812784cValue9 |
    block2812784cValue0 := block2812784cArg1.
    block2812784cValue1 := block2812784cValue0.
    block2812784cValue2 := XmATTACHFORM.
    (block2812784cValue1) topAttachment: (block2812784cValue2).
    block2812784cValue3 := block2812784cValue0.
    (block2812784cValue3) topOffset: (5).
    block2812784cValue4 := block2812784cValue0.
    block2812784cValue5 := XmATTACHFORM.
    (block2812784cValue4) leftAttachment: (block2812784cValue5).
    block2812784cValue6 := block2812784cValue0.
    (block2812784cValue6) leftOffset: (5).
    block2812784cValue7 := block2812784cValue0.
    block2812784cValue8 := XmATTACHFORM.
    (block2812784cValue7) rightAttachment: (block2812784cValue8).
    block2812784cValue9 := (block2812784cValue0) rightOffset: (5).
    block2812784cValue9
].
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := [:block28127870Arg1 | 
    | block28127870Value0 block28127870Value1 block28127870Value2 block28127870Value3 block28127870Value4 block28127870Value5 block28127870Value6 block28127870Value7 block28127870Value8 block28127870Value9 block28127870Value10 block28127870Value11 |
    block28127870Value0 := block28127870Arg1.
    block28127870Value1 := block28127870Value0.
    block28127870Value2 := XmATTACHFORM.
    (block28127870Value1) topAttachment: (block28127870Value2).
    block28127870Value3 := block28127870Value0.
    (block28127870Value3) topOffset: (5).
    block28127870Value4 := block28127870Value0.
    block28127870Value5 := XmATTACHFORM.
    (block28127870Value4) leftAttachment: (block28127870Value5).
    block28127870Value6 := block28127870Value0.
    (block28127870Value6) leftOffset: (5).
    block28127870Value7 := block28127870Value0.
    block28127870Value8 := XmATTACHFORM.
    (block28127870Value7) rightAttachment: (block28127870Value8).
    block28127870Value9 := block28127870Value0.
    (block28127870Value9) rightOffset: (5).
    block28127870Value10 := XmATTACHNONE.
    block28127870Value11 := (block28127870Value0) bottomAttachment: (block28127870Value10).
    block28127870Value11
].
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack2 := [:recoveredBlock732Arg1 | 
    | recoveredBlock732Value0 recoveredBlock732Value1 recoveredBlock732Value2 recoveredBlock732Value3 recoveredBlock732Value4 recoveredBlock732Value5 recoveredBlock732Value6 recoveredBlock732Value7 recoveredBlock732Value8 recoveredBlock732Value9 recoveredBlock732Value10 recoveredBlock732Value11 recoveredBlock732Value12 recoveredBlock732Value13 |
    recoveredBlock732Value0 := recoveredBlock732Arg1.
    recoveredBlock732Value1 := recoveredBlock732Value0.
    recoveredBlock732Value2 := XmATTACHWIDGET.
    (recoveredBlock732Value1) topAttachment: (recoveredBlock732Value2).
    recoveredBlock732Value3 := recoveredBlock732Value0.
    recoveredBlock732Value4 := recoveredLocal7.
    (recoveredBlock732Value3) topWidget: (recoveredBlock732Value4).
    recoveredBlock732Value5 := recoveredBlock732Value0.
    (recoveredBlock732Value5) topOffset: (5).
    recoveredBlock732Value6 := recoveredBlock732Value0.
    recoveredBlock732Value7 := XmATTACHNONE.
    (recoveredBlock732Value6) bottomAttachment: (recoveredBlock732Value7).
    recoveredBlock732Value8 := recoveredBlock732Value0.
    recoveredBlock732Value9 := XmATTACHFORM.
    (recoveredBlock732Value8) leftAttachment: (recoveredBlock732Value9).
    recoveredBlock732Value10 := recoveredBlock732Value0.
    (recoveredBlock732Value10) leftOffset: (5).
    recoveredBlock732Value11 := recoveredBlock732Value0.
    recoveredBlock732Value12 := XmATTACHFORM.
    (recoveredBlock732Value11) rightAttachment: (recoveredBlock732Value12).
    recoveredBlock732Value13 := (recoveredBlock732Value0) rightOffset: (5).
    recoveredBlock732Value13
].
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack2 := [:recoveredBlock808Arg1 | 
    | recoveredBlock808Value0 recoveredBlock808Value1 recoveredBlock808Value2 recoveredBlock808Value3 recoveredBlock808Value4 recoveredBlock808Value5 recoveredBlock808Value6 recoveredBlock808Value7 recoveredBlock808Value8 recoveredBlock808Value9 recoveredBlock808Value10 recoveredBlock808Value11 |
    recoveredBlock808Value0 := recoveredBlock808Arg1.
    recoveredBlock808Value1 := recoveredBlock808Value0.
    recoveredBlock808Value2 := XmATTACHWIDGET.
    (recoveredBlock808Value1) topAttachment: (recoveredBlock808Value2).
    recoveredBlock808Value3 := recoveredBlock808Value0.
    recoveredBlock808Value4 := recoveredLocal6.
    (recoveredBlock808Value3) topWidget: (recoveredBlock808Value4).
    recoveredBlock808Value5 := recoveredBlock808Value0.
    (recoveredBlock808Value5) topOffset: (5).
    recoveredBlock808Value6 := recoveredBlock808Value0.
    recoveredBlock808Value7 := XmATTACHFORM.
    (recoveredBlock808Value6) leftAttachment: (recoveredBlock808Value7).
    recoveredBlock808Value8 := recoveredBlock808Value0.
    (recoveredBlock808Value8) leftOffset: (5).
    recoveredBlock808Value9 := recoveredBlock808Value0.
    recoveredBlock808Value10 := XmATTACHFORM.
    (recoveredBlock808Value9) rightAttachment: (recoveredBlock808Value10).
    recoveredBlock808Value11 := (recoveredBlock808Value0) rightOffset: (5).
    recoveredBlock808Value11
].
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack2 := [:recoveredBlock876Arg1 | 
    | recoveredBlock876Value0 recoveredBlock876Value1 recoveredBlock876Value2 recoveredBlock876Value3 recoveredBlock876Value4 recoveredBlock876Value5 recoveredBlock876Value6 recoveredBlock876Value7 recoveredBlock876Value8 recoveredBlock876Value9 recoveredBlock876Value10 recoveredBlock876Value11 recoveredBlock876Value12 recoveredBlock876Value13 |
    recoveredBlock876Value0 := recoveredBlock876Arg1.
    recoveredBlock876Value1 := recoveredBlock876Value0.
    recoveredBlock876Value2 := XmATTACHWIDGET.
    (recoveredBlock876Value1) topAttachment: (recoveredBlock876Value2).
    recoveredBlock876Value3 := recoveredBlock876Value0.
    recoveredBlock876Value4 := recoveredLocal5.
    (recoveredBlock876Value3) topWidget: (recoveredBlock876Value4).
    recoveredBlock876Value5 := recoveredBlock876Value0.
    (recoveredBlock876Value5) topOffset: (5).
    recoveredBlock876Value6 := recoveredBlock876Value0.
    recoveredBlock876Value7 := XmATTACHFORM.
    (recoveredBlock876Value6) leftAttachment: (recoveredBlock876Value7).
    recoveredBlock876Value8 := recoveredBlock876Value0.
    (recoveredBlock876Value8) leftOffset: (5).
    recoveredBlock876Value9 := recoveredBlock876Value0.
    recoveredBlock876Value10 := XmATTACHFORM.
    (recoveredBlock876Value9) rightAttachment: (recoveredBlock876Value10).
    recoveredBlock876Value11 := recoveredBlock876Value0.
    (recoveredBlock876Value11) rightOffset: (5).
    recoveredBlock876Value12 := XmATTACHNONE.
    recoveredBlock876Value13 := (recoveredBlock876Value0) bottomAttachment: (recoveredBlock876Value12).
    recoveredBlock876Value13
].
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := [:recoveredBlock952Arg1 | 
    | recoveredBlock952Value0 recoveredBlock952Value1 recoveredBlock952Value2 recoveredBlock952Value3 recoveredBlock952Value4 recoveredBlock952Value5 recoveredBlock952Value6 recoveredBlock952Value7 recoveredBlock952Value8 recoveredBlock952Value9 recoveredBlock952Value10 recoveredBlock952Value11 recoveredBlock952Value12 recoveredBlock952Value13 recoveredBlock952Value14 |
    recoveredBlock952Value0 := recoveredBlock952Arg1.
    recoveredBlock952Value1 := recoveredBlock952Value0.
    recoveredBlock952Value2 := XmATTACHWIDGET.
    (recoveredBlock952Value1) topAttachment: (recoveredBlock952Value2).
    recoveredBlock952Value3 := recoveredBlock952Value0.
    recoveredBlock952Value4 := recoveredLocal4.
    (recoveredBlock952Value3) topWidget: (recoveredBlock952Value4).
    recoveredBlock952Value5 := recoveredBlock952Value0.
    (recoveredBlock952Value5) topOffset: (5).
    recoveredBlock952Value6 := recoveredBlock952Value0.
    recoveredBlock952Value7 := XmATTACHFORM.
    (recoveredBlock952Value6) bottomAttachment: (recoveredBlock952Value7).
    recoveredBlock952Value8 := recoveredBlock952Value0.
    (recoveredBlock952Value8) bottomOffset: (5).
    recoveredBlock952Value9 := recoveredBlock952Value0.
    recoveredBlock952Value10 := XmATTACHFORM.
    (recoveredBlock952Value9) leftAttachment: (recoveredBlock952Value10).
    recoveredBlock952Value11 := recoveredBlock952Value0.
    (recoveredBlock952Value11) leftOffset: (5).
    recoveredBlock952Value12 := recoveredBlock952Value0.
    recoveredBlock952Value13 := XmATTACHFORM.
    (recoveredBlock952Value12) rightAttachment: (recoveredBlock952Value13).
    recoveredBlock952Value14 := (recoveredBlock952Value0) rightOffset: (5).
    recoveredBlock952Value14
].
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack2 := [:block28127894Arg1 | 
    | block28127894Value0 block28127894Value1 block28127894Value2 block28127894Value3 block28127894Value4 block28127894Value5 block28127894Value6 block28127894Value7 block28127894Value8 |
    block28127894Value0 := block28127894Arg1.
    block28127894Value1 := block28127894Value0.
    block28127894Value2 := XmATTACHNONE.
    (block28127894Value1) topAttachment: (block28127894Value2).
    block28127894Value3 := block28127894Value0.
    block28127894Value4 := XmATTACHFORM.
    (block28127894Value3) bottomAttachment: (block28127894Value4).
    block28127894Value5 := block28127894Value0.
    (block28127894Value5) bottomOffset: (5).
    block28127894Value6 := block28127894Value0.
    block28127894Value7 := XmATTACHFORM.
    (block28127894Value6) rightAttachment: (block28127894Value7).
    block28127894Value8 := (block28127894Value0) rightOffset: (5).
    block28127894Value8
].
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack2 := [:recoveredBlock1090Arg1 | 
    | recoveredBlock1090Value0 recoveredBlock1090Value1 recoveredBlock1090Value2 recoveredBlock1090Value3 recoveredBlock1090Value4 recoveredBlock1090Value5 recoveredBlock1090Value6 recoveredBlock1090Value7 recoveredBlock1090Value8 recoveredBlock1090Value9 recoveredBlock1090Value10 |
    recoveredBlock1090Value0 := recoveredBlock1090Arg1.
    recoveredBlock1090Value1 := recoveredBlock1090Value0.
    recoveredBlock1090Value2 := XmATTACHNONE.
    (recoveredBlock1090Value1) topAttachment: (recoveredBlock1090Value2).
    recoveredBlock1090Value3 := recoveredBlock1090Value0.
    recoveredBlock1090Value4 := XmATTACHFORM.
    (recoveredBlock1090Value3) bottomAttachment: (recoveredBlock1090Value4).
    recoveredBlock1090Value5 := recoveredBlock1090Value0.
    (recoveredBlock1090Value5) bottomOffset: (5).
    recoveredBlock1090Value6 := recoveredBlock1090Value0.
    recoveredBlock1090Value7 := XmATTACHWIDGET.
    (recoveredBlock1090Value6) rightAttachment: (recoveredBlock1090Value7).
    recoveredBlock1090Value8 := recoveredBlock1090Value0.
    recoveredBlock1090Value9 := recoveredLocal1.
    (recoveredBlock1090Value8) rightWidget: (recoveredBlock1090Value9).
    recoveredBlock1090Value10 := (recoveredBlock1090Value0) rightOffset: (5).
    recoveredBlock1090Value10
].
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1188.
        ].
        recoveredStep = 1188 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1193.
        ].
        recoveredStep = 1193 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1227.
        ].
        recoveredStep = 1227 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

