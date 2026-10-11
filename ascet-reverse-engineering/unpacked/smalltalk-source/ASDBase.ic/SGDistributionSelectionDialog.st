"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20010848; bytecode file offset 0x90d208"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200108a8; bytecode file offset 0x90d208"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042688; bytecode file offset 0x93ef40"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
charTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := charTableVariable.
    recoveredValue1 := (recoveredValue0) sgClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004297c; bytecode file offset 0x9451f8"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
yDis
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('yDis').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004350c; bytecode file offset 0x9451f8"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
okButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ok').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004538c; bytecode file offset 0x9451f8"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
yDisLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('yDisLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200455cc; bytecode file offset 0x9451f8"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
xDis
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('xDis').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a998; bytecode file offset 0x957a6c"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
disSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateOkButtonSensitive.
    ^self
! !

"ASDBase.ic method 0x200a0644; bytecode file offset 0x99cf14"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
cancel
    (self) close.
    result := nil.
    ^nil
! !

"ASDBase.ic method 0x200a1608; bytecode file offset 0x99dfb8"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
updateOkButtonSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) okButton.
    recoveredValue1 := (self) isOkAllowed.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011cc58; bytecode file offset 0xa19514"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
isOkAllowed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := charTableVariable.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    ^true
].
    recoveredValue2 := (recoveredValue0) ownerIfUndefined: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) modifiable.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019723c; bytecode file offset 0xa93afc"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
initFor: recoveredArg1 distributionVariables: recoveredArg2
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
            charTableVariable := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d1e44Arg1 :block280d1e44Arg2 | 
    | block280d1e44Value0 block280d1e44Value1 block280d1e44Value2 block280d1e44Value3 block280d1e44Value4 |
    block280d1e44Value0 := block280d1e44Arg1.
    block280d1e44Value1 := (block280d1e44Value0) elementName.
    block280d1e44Value2 := block280d1e44Arg2.
    block280d1e44Value3 := (block280d1e44Value2) elementName.
    block280d1e44Value4 := (block280d1e44Value1) <= (block280d1e44Value3).
    block280d1e44Value4
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            distributions := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bfd84; bytecode file offset 0xabc654"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) widgetAt: ('mainForm').
    (recoveredValue0) updateLabelsForForm: (recoveredValue1).
    recoveredValue2 := SGUserInterfaceSettings.
    recoveredValue3 := (self) xDis.
    (recoveredValue2) updateLabelFont: (recoveredValue3).
    recoveredValue4 := SGUserInterfaceSettings.
    recoveredValue5 := (self) yDis.
    (recoveredValue4) updateLabelFont: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20320978; bytecode file offset 0xc1d304"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x203b4224; bytecode file offset 0xcb0b14"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOkAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancel.
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
            recoveredStack0 := (recoveredStack0) xDis.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'You must specifie a valid x-distribution!!'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) charTable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDis.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateXDistributionFor: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) charTable.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGTwoDCharTable.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDis.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'You must specifie a valid y-distribution!!'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) charTable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDis.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) updateYDistributionFor: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) charTable.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205085b8; bytecode file offset 0xe04ecc"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Distributions for: '.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := charTableVariable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDis.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block2810adb8Arg1 | 
    | block2810adb8Value0 block2810adb8Value1 |
    block2810adb8Value0 := block2810adb8Arg1.
    block2810adb8Value1 := (block2810adb8Value0) elementName.
    block2810adb8Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := distributions.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDis.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block2810addcArg1 | 
    | block2810addcValue0 block2810addcValue1 |
    block2810addcValue0 := block2810addcArg1.
    block2810addcValue1 := (block2810addcValue0) elementName.
    block2810addcValue1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := distributions.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) charTable.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistributionAlias.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := distributions.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := (recoveredBlock64Value0) aliasName.
    recoveredBlock64Value2 := recoveredLocal2.
    recoveredBlock64Value3 := (recoveredBlock64Value1) = (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDis.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) charTable.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGTwoDCharTable.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) charTable.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistributionAlias.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := distributions.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Value0 recoveredBlock120Value1 recoveredBlock120Value2 recoveredBlock120Value3 |
    recoveredBlock120Value0 := recoveredBlock120Arg1.
    recoveredBlock120Value1 := (recoveredBlock120Value0) aliasName.
    recoveredBlock120Value2 := recoveredLocal2.
    recoveredBlock120Value3 := (recoveredBlock120Value1) = (recoveredBlock120Value2).
    recoveredBlock120Value3
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDis.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDisLabel.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDis.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) updateOkButtonSensitive.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) initFonts.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20678348; bytecode file offset 0xf74d64"
!SGDistributionSelectionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Sequence Dialog').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := MWMDECORALL.
    recoveredBlock25Value6 := MWMDECORMINIMIZE.
    recoveredBlock25Value7 := (recoveredBlock25Value5) | (recoveredBlock25Value6).
    recoveredBlock25Value8 := MWMDECORMAXIMIZE.
    recoveredBlock25Value9 := (recoveredBlock25Value7) | (recoveredBlock25Value8).
    (recoveredBlock25Value4) mwmDecorations: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredBlock25Value0.
    recoveredBlock25Value11 := recoveredLocal11.
    recoveredBlock25Value12 := (107) * (recoveredBlock25Value11).
    recoveredBlock25Value13 := (recoveredBlock25Value12) rounded.
    (recoveredBlock25Value10) height: (recoveredBlock25Value13).
    recoveredBlock25Value14 := recoveredLocal12.
    recoveredBlock25Value15 := (256) * (recoveredBlock25Value14).
    recoveredBlock25Value16 := (recoveredBlock25Value15) rounded.
    recoveredBlock25Value17 := (recoveredBlock25Value0) width: (recoveredBlock25Value16).
    recoveredBlock25Value17
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 recoveredBlock145Value6 recoveredBlock145Value7 recoveredBlock145Value8 recoveredBlock145Value9 recoveredBlock145Value10 recoveredBlock145Value11 recoveredBlock145Value12 recoveredBlock145Value13 recoveredBlock145Value14 recoveredBlock145Value15 recoveredBlock145Value16 recoveredBlock145Value17 recoveredBlock145Value18 recoveredBlock145Value19 recoveredBlock145Value20 recoveredBlock145Value21 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := recoveredBlock145Value0.
    recoveredBlock145Value2 := recoveredLocal12.
    recoveredBlock145Value3 := (147) * (recoveredBlock145Value2).
    recoveredBlock145Value4 := (recoveredBlock145Value3) rounded.
    (recoveredBlock145Value1) x: (recoveredBlock145Value4).
    recoveredBlock145Value5 := recoveredBlock145Value0.
    (recoveredBlock145Value5) marginRight: (10).
    recoveredBlock145Value6 := recoveredBlock145Value0.
    (recoveredBlock145Value6) labelString: ('&Cancel').
    recoveredBlock145Value7 := recoveredBlock145Value0.
    (recoveredBlock145Value7) marginWidth: (0).
    recoveredBlock145Value8 := recoveredBlock145Value0.
    (recoveredBlock145Value8) marginHeight: (0).
    recoveredBlock145Value9 := recoveredBlock145Value0.
    recoveredBlock145Value10 := recoveredLocal11.
    recoveredBlock145Value11 := (45) * (recoveredBlock145Value10).
    recoveredBlock145Value12 := (recoveredBlock145Value11) rounded.
    (recoveredBlock145Value9) y: (recoveredBlock145Value12).
    recoveredBlock145Value13 := recoveredBlock145Value0.
    recoveredBlock145Value14 := recoveredLocal11.
    recoveredBlock145Value15 := (30) * (recoveredBlock145Value14).
    recoveredBlock145Value16 := (recoveredBlock145Value15) rounded.
    (recoveredBlock145Value13) height: (recoveredBlock145Value16).
    recoveredBlock145Value17 := recoveredBlock145Value0.
    (recoveredBlock145Value17) marginBottom: (10).
    recoveredBlock145Value18 := recoveredLocal12.
    recoveredBlock145Value19 := (110) * (recoveredBlock145Value18).
    recoveredBlock145Value20 := (recoveredBlock145Value19) rounded.
    recoveredBlock145Value21 := (recoveredBlock145Value0) width: (recoveredBlock145Value20).
    recoveredBlock145Value21
].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 recoveredBlock247Value4 recoveredBlock247Value5 recoveredBlock247Value6 recoveredBlock247Value7 recoveredBlock247Value8 recoveredBlock247Value9 recoveredBlock247Value10 recoveredBlock247Value11 recoveredBlock247Value12 recoveredBlock247Value13 recoveredBlock247Value14 recoveredBlock247Value15 recoveredBlock247Value16 recoveredBlock247Value17 recoveredBlock247Value18 recoveredBlock247Value19 recoveredBlock247Value20 |
    recoveredBlock247Value0 := recoveredBlock247Arg1.
    recoveredBlock247Value1 := recoveredBlock247Value0.
    recoveredBlock247Value2 := recoveredLocal12.
    recoveredBlock247Value3 := (482) * (recoveredBlock247Value2).
    recoveredBlock247Value4 := (recoveredBlock247Value3) rounded.
    (recoveredBlock247Value1) x: (recoveredBlock247Value4).
    recoveredBlock247Value5 := recoveredBlock247Value0.
    recoveredBlock247Value6 := XmSINGLELINE.
    (recoveredBlock247Value5) separatorType: (recoveredBlock247Value6).
    recoveredBlock247Value7 := recoveredBlock247Value0.
    recoveredBlock247Value8 := XmVERTICAL.
    (recoveredBlock247Value7) orientation: (recoveredBlock247Value8).
    recoveredBlock247Value9 := recoveredBlock247Value0.
    recoveredBlock247Value10 := recoveredLocal11.
    recoveredBlock247Value11 := (35) * (recoveredBlock247Value10).
    recoveredBlock247Value12 := (recoveredBlock247Value11) rounded.
    (recoveredBlock247Value9) y: (recoveredBlock247Value12).
    recoveredBlock247Value13 := recoveredBlock247Value0.
    recoveredBlock247Value14 := recoveredLocal11.
    recoveredBlock247Value15 := (370) * (recoveredBlock247Value14).
    recoveredBlock247Value16 := (recoveredBlock247Value15) rounded.
    (recoveredBlock247Value13) height: (recoveredBlock247Value16).
    recoveredBlock247Value17 := recoveredLocal12.
    recoveredBlock247Value18 := (1) * (recoveredBlock247Value17).
    recoveredBlock247Value19 := (recoveredBlock247Value18) rounded.
    recoveredBlock247Value20 := (recoveredBlock247Value0) width: (recoveredBlock247Value19).
    recoveredBlock247Value20
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 recoveredBlock335Value5 recoveredBlock335Value6 recoveredBlock335Value7 recoveredBlock335Value8 recoveredBlock335Value9 recoveredBlock335Value10 recoveredBlock335Value11 recoveredBlock335Value12 recoveredBlock335Value13 recoveredBlock335Value14 recoveredBlock335Value15 recoveredBlock335Value16 recoveredBlock335Value17 recoveredBlock335Value18 recoveredBlock335Value19 recoveredBlock335Value20 recoveredBlock335Value21 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    recoveredBlock335Value1 := recoveredBlock335Value0.
    recoveredBlock335Value2 := recoveredLocal12.
    recoveredBlock335Value3 := (147) * (recoveredBlock335Value2).
    recoveredBlock335Value4 := (recoveredBlock335Value3) rounded.
    (recoveredBlock335Value1) x: (recoveredBlock335Value4).
    recoveredBlock335Value5 := recoveredBlock335Value0.
    (recoveredBlock335Value5) marginRight: (10).
    recoveredBlock335Value6 := recoveredBlock335Value0.
    (recoveredBlock335Value6) labelString: ('&OK').
    recoveredBlock335Value7 := recoveredBlock335Value0.
    (recoveredBlock335Value7) marginWidth: (0).
    recoveredBlock335Value8 := recoveredBlock335Value0.
    (recoveredBlock335Value8) marginHeight: (0).
    recoveredBlock335Value9 := recoveredBlock335Value0.
    recoveredBlock335Value10 := recoveredLocal11.
    recoveredBlock335Value11 := (5) * (recoveredBlock335Value10).
    recoveredBlock335Value12 := (recoveredBlock335Value11) rounded.
    (recoveredBlock335Value9) y: (recoveredBlock335Value12).
    recoveredBlock335Value13 := recoveredBlock335Value0.
    recoveredBlock335Value14 := recoveredLocal11.
    recoveredBlock335Value15 := (30) * (recoveredBlock335Value14).
    recoveredBlock335Value16 := (recoveredBlock335Value15) rounded.
    (recoveredBlock335Value13) height: (recoveredBlock335Value16).
    recoveredBlock335Value17 := recoveredBlock335Value0.
    (recoveredBlock335Value17) marginBottom: (10).
    recoveredBlock335Value18 := recoveredLocal12.
    recoveredBlock335Value19 := (110) * (recoveredBlock335Value18).
    recoveredBlock335Value20 := (recoveredBlock335Value19) rounded.
    recoveredBlock335Value21 := (recoveredBlock335Value0) width: (recoveredBlock335Value20).
    recoveredBlock335Value21
].
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 'yDisLabel'.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := [:recoveredBlock437Arg1 | 
    | recoveredBlock437Value0 recoveredBlock437Value1 recoveredBlock437Value2 recoveredBlock437Value3 recoveredBlock437Value4 recoveredBlock437Value5 recoveredBlock437Value6 recoveredBlock437Value7 recoveredBlock437Value8 recoveredBlock437Value9 recoveredBlock437Value10 recoveredBlock437Value11 recoveredBlock437Value12 recoveredBlock437Value13 |
    recoveredBlock437Value0 := recoveredBlock437Arg1.
    recoveredBlock437Value1 := recoveredBlock437Value0.
    recoveredBlock437Value2 := recoveredLocal12.
    recoveredBlock437Value3 := (5) * (recoveredBlock437Value2).
    recoveredBlock437Value4 := (recoveredBlock437Value3) rounded.
    (recoveredBlock437Value1) x: (recoveredBlock437Value4).
    recoveredBlock437Value5 := recoveredBlock437Value0.
    recoveredBlock437Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock437Value5) alignment: (recoveredBlock437Value6).
    recoveredBlock437Value7 := recoveredBlock437Value0.
    (recoveredBlock437Value7) labelString: ('Y-Distribution').
    recoveredBlock437Value8 := recoveredBlock437Value0.
    recoveredBlock437Value9 := recoveredLocal11.
    recoveredBlock437Value10 := (66) * (recoveredBlock437Value9).
    recoveredBlock437Value11 := (recoveredBlock437Value10) rounded.
    (recoveredBlock437Value8) y: (recoveredBlock437Value11).
    recoveredBlock437Value12 := recoveredBlock437Value0.
    recoveredBlock437Value13 := (self) defaultLabelBlue.
    (recoveredBlock437Value12) foregroundColor: (recoveredBlock437Value13).
    recoveredBlock437Value0
].
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := 'yDisLabel'.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := 'xDisLabel'.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack3 := [:recoveredBlock507Arg1 | 
    | recoveredBlock507Value0 recoveredBlock507Value1 recoveredBlock507Value2 recoveredBlock507Value3 recoveredBlock507Value4 recoveredBlock507Value5 recoveredBlock507Value6 recoveredBlock507Value7 recoveredBlock507Value8 recoveredBlock507Value9 recoveredBlock507Value10 recoveredBlock507Value11 recoveredBlock507Value12 recoveredBlock507Value13 |
    recoveredBlock507Value0 := recoveredBlock507Arg1.
    recoveredBlock507Value1 := recoveredBlock507Value0.
    recoveredBlock507Value2 := recoveredLocal12.
    recoveredBlock507Value3 := (5) * (recoveredBlock507Value2).
    recoveredBlock507Value4 := (recoveredBlock507Value3) rounded.
    (recoveredBlock507Value1) x: (recoveredBlock507Value4).
    recoveredBlock507Value5 := recoveredBlock507Value0.
    recoveredBlock507Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock507Value5) alignment: (recoveredBlock507Value6).
    recoveredBlock507Value7 := recoveredBlock507Value0.
    (recoveredBlock507Value7) labelString: ('X-Distribution').
    recoveredBlock507Value8 := recoveredBlock507Value0.
    recoveredBlock507Value9 := recoveredLocal11.
    recoveredBlock507Value10 := (5) * (recoveredBlock507Value9).
    recoveredBlock507Value11 := (recoveredBlock507Value10) rounded.
    (recoveredBlock507Value8) y: (recoveredBlock507Value11).
    recoveredBlock507Value12 := recoveredBlock507Value0.
    recoveredBlock507Value13 := (self) defaultLabelBlue.
    (recoveredBlock507Value12) foregroundColor: (recoveredBlock507Value13).
    recoveredBlock507Value0
].
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := 'xDisLabel'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := 'xDis'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack3 := [:recoveredBlock578Arg1 | 
    | recoveredBlock578Value0 recoveredBlock578Value1 recoveredBlock578Value2 recoveredBlock578Value3 recoveredBlock578Value4 recoveredBlock578Value5 recoveredBlock578Value6 recoveredBlock578Value7 recoveredBlock578Value8 |
    recoveredBlock578Value0 := recoveredBlock578Arg1.
    recoveredBlock578Value1 := recoveredBlock578Value0.
    recoveredBlock578Value2 := recoveredLocal12.
    recoveredBlock578Value3 := (5) * (recoveredBlock578Value2).
    recoveredBlock578Value4 := (recoveredBlock578Value3) rounded.
    (recoveredBlock578Value1) x: (recoveredBlock578Value4).
    recoveredBlock578Value5 := recoveredLocal11.
    recoveredBlock578Value6 := (25) * (recoveredBlock578Value5).
    recoveredBlock578Value7 := (recoveredBlock578Value6) rounded.
    recoveredBlock578Value8 := (recoveredBlock578Value0) y: (recoveredBlock578Value7).
    recoveredBlock578Value8
].
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := 'xDis'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := 'yDis'.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack3 := [:recoveredBlock634Arg1 | 
    | recoveredBlock634Value0 recoveredBlock634Value1 recoveredBlock634Value2 recoveredBlock634Value3 recoveredBlock634Value4 recoveredBlock634Value5 recoveredBlock634Value6 recoveredBlock634Value7 recoveredBlock634Value8 |
    recoveredBlock634Value0 := recoveredBlock634Arg1.
    recoveredBlock634Value1 := recoveredBlock634Value0.
    recoveredBlock634Value2 := recoveredLocal12.
    recoveredBlock634Value3 := (5) * (recoveredBlock634Value2).
    recoveredBlock634Value4 := (recoveredBlock634Value3) rounded.
    (recoveredBlock634Value1) x: (recoveredBlock634Value4).
    recoveredBlock634Value5 := recoveredLocal11.
    recoveredBlock634Value6 := (73) * (recoveredBlock634Value5).
    recoveredBlock634Value7 := (recoveredBlock634Value6) rounded.
    recoveredBlock634Value8 := (recoveredBlock634Value0) y: (recoveredBlock634Value7).
    recoveredBlock634Value8
].
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack2 := 'yDis'.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack2 := [:recoveredBlock688Arg1 | 
    | recoveredBlock688Value0 recoveredBlock688Value1 recoveredBlock688Value2 |
    recoveredBlock688Value0 := recoveredBlock688Arg1.
    recoveredBlock688Value1 := recoveredLocal8.
    recoveredBlock688Value2 := (recoveredBlock688Value0) workWindow: (recoveredBlock688Value1).
    recoveredBlock688Value2
].
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := [:recoveredBlock712Arg1 | 
    | recoveredBlock712Value0 recoveredBlock712Value1 recoveredBlock712Value2 recoveredBlock712Value3 recoveredBlock712Value4 |
    recoveredBlock712Value0 := recoveredBlock712Arg1.
    recoveredBlock712Value1 := recoveredBlock712Value0.
    recoveredBlock712Value2 := recoveredLocal7.
    (recoveredBlock712Value1) cancelButton: (recoveredBlock712Value2).
    recoveredBlock712Value3 := recoveredLocal5.
    recoveredBlock712Value4 := (recoveredBlock712Value0) defaultButton: (recoveredBlock712Value3).
    recoveredBlock712Value4
].
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack2 := [:recoveredBlock744Arg1 | 
    | recoveredBlock744Value0 recoveredBlock744Value1 recoveredBlock744Value2 recoveredBlock744Value3 recoveredBlock744Value4 recoveredBlock744Value5 recoveredBlock744Value6 recoveredBlock744Value7 recoveredBlock744Value8 |
    recoveredBlock744Value0 := recoveredBlock744Arg1.
    recoveredBlock744Value1 := recoveredBlock744Value0.
    recoveredBlock744Value2 := XmATTACHWIDGET.
    (recoveredBlock744Value1) topAttachment: (recoveredBlock744Value2).
    recoveredBlock744Value3 := recoveredBlock744Value0.
    recoveredBlock744Value4 := recoveredLocal5.
    (recoveredBlock744Value3) topWidget: (recoveredBlock744Value4).
    recoveredBlock744Value5 := recoveredBlock744Value0.
    (recoveredBlock744Value5) topOffset: (10).
    recoveredBlock744Value6 := recoveredBlock744Value0.
    recoveredBlock744Value7 := XmATTACHFORM.
    (recoveredBlock744Value6) rightAttachment: (recoveredBlock744Value7).
    recoveredBlock744Value8 := (recoveredBlock744Value0) rightOffset: (5).
    recoveredBlock744Value8
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := [:recoveredBlock798Arg1 | 
    | recoveredBlock798Value0 recoveredBlock798Value1 recoveredBlock798Value2 recoveredBlock798Value3 recoveredBlock798Value4 recoveredBlock798Value5 recoveredBlock798Value6 recoveredBlock798Value7 recoveredBlock798Value8 recoveredBlock798Value9 recoveredBlock798Value10 recoveredBlock798Value11 |
    recoveredBlock798Value0 := recoveredBlock798Arg1.
    recoveredBlock798Value1 := recoveredBlock798Value0.
    recoveredBlock798Value2 := XmATTACHFORM.
    (recoveredBlock798Value1) bottomAttachment: (recoveredBlock798Value2).
    recoveredBlock798Value3 := recoveredBlock798Value0.
    (recoveredBlock798Value3) bottomOffset: (5).
    recoveredBlock798Value4 := recoveredBlock798Value0.
    recoveredBlock798Value5 := XmATTACHFORM.
    (recoveredBlock798Value4) topAttachment: (recoveredBlock798Value5).
    recoveredBlock798Value6 := recoveredBlock798Value0.
    (recoveredBlock798Value6) topOffset: (5).
    recoveredBlock798Value7 := recoveredBlock798Value0.
    recoveredBlock798Value8 := XmATTACHWIDGET.
    (recoveredBlock798Value7) rightAttachment: (recoveredBlock798Value8).
    recoveredBlock798Value9 := recoveredBlock798Value0.
    recoveredBlock798Value10 := recoveredLocal5.
    (recoveredBlock798Value9) rightWidget: (recoveredBlock798Value10).
    recoveredBlock798Value11 := (recoveredBlock798Value0) rightOffset: (10).
    recoveredBlock798Value11
].
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack2 := [:block28127e58Arg1 | 
    | block28127e58Value0 block28127e58Value1 block28127e58Value2 block28127e58Value3 block28127e58Value4 block28127e58Value5 block28127e58Value6 |
    block28127e58Value0 := block28127e58Arg1.
    block28127e58Value1 := block28127e58Value0.
    block28127e58Value2 := XmATTACHFORM.
    (block28127e58Value1) topAttachment: (block28127e58Value2).
    block28127e58Value3 := block28127e58Value0.
    (block28127e58Value3) topOffset: (5).
    block28127e58Value4 := block28127e58Value0.
    block28127e58Value5 := XmATTACHFORM.
    (block28127e58Value4) rightAttachment: (block28127e58Value5).
    block28127e58Value6 := (block28127e58Value0) rightOffset: (5).
    block28127e58Value6
].
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack2 := [:recoveredBlock914Arg1 | 
    | recoveredBlock914Value0 recoveredBlock914Value1 recoveredBlock914Value2 recoveredBlock914Value3 recoveredBlock914Value4 recoveredBlock914Value5 recoveredBlock914Value6 recoveredBlock914Value7 recoveredBlock914Value8 recoveredBlock914Value9 recoveredBlock914Value10 recoveredBlock914Value11 recoveredBlock914Value12 recoveredBlock914Value13 |
    recoveredBlock914Value0 := recoveredBlock914Arg1.
    recoveredBlock914Value1 := recoveredBlock914Value0.
    recoveredBlock914Value2 := XmATTACHWIDGET.
    (recoveredBlock914Value1) topAttachment: (recoveredBlock914Value2).
    recoveredBlock914Value3 := recoveredBlock914Value0.
    recoveredBlock914Value4 := recoveredLocal2.
    (recoveredBlock914Value3) topWidget: (recoveredBlock914Value4).
    recoveredBlock914Value5 := recoveredBlock914Value0.
    (recoveredBlock914Value5) topOffset: (10).
    recoveredBlock914Value6 := recoveredBlock914Value0.
    recoveredBlock914Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock914Value6) leftAttachment: (recoveredBlock914Value7).
    recoveredBlock914Value8 := recoveredBlock914Value0.
    recoveredBlock914Value9 := recoveredLocal2.
    (recoveredBlock914Value8) leftWidget: (recoveredBlock914Value9).
    recoveredBlock914Value10 := recoveredBlock914Value0.
    recoveredBlock914Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock914Value10) rightAttachment: (recoveredBlock914Value11).
    recoveredBlock914Value12 := recoveredLocal2.
    recoveredBlock914Value13 := (recoveredBlock914Value0) rightWidget: (recoveredBlock914Value12).
    recoveredBlock914Value13
].
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack2 := [:recoveredBlock986Arg1 | 
    | recoveredBlock986Value0 recoveredBlock986Value1 recoveredBlock986Value2 recoveredBlock986Value3 recoveredBlock986Value4 recoveredBlock986Value5 recoveredBlock986Value6 recoveredBlock986Value7 recoveredBlock986Value8 recoveredBlock986Value9 recoveredBlock986Value10 recoveredBlock986Value11 |
    recoveredBlock986Value0 := recoveredBlock986Arg1.
    recoveredBlock986Value1 := recoveredBlock986Value0.
    recoveredBlock986Value2 := XmATTACHFORM.
    (recoveredBlock986Value1) topAttachment: (recoveredBlock986Value2).
    recoveredBlock986Value3 := recoveredBlock986Value0.
    (recoveredBlock986Value3) topOffset: (5).
    recoveredBlock986Value4 := recoveredBlock986Value0.
    recoveredBlock986Value5 := XmATTACHFORM.
    (recoveredBlock986Value4) leftAttachment: (recoveredBlock986Value5).
    recoveredBlock986Value6 := recoveredBlock986Value0.
    (recoveredBlock986Value6) leftOffset: (5).
    recoveredBlock986Value7 := recoveredBlock986Value0.
    recoveredBlock986Value8 := XmATTACHWIDGET.
    (recoveredBlock986Value7) rightAttachment: (recoveredBlock986Value8).
    recoveredBlock986Value9 := recoveredBlock986Value0.
    recoveredBlock986Value10 := recoveredLocal6.
    (recoveredBlock986Value9) rightWidget: (recoveredBlock986Value10).
    recoveredBlock986Value11 := (recoveredBlock986Value0) rightOffset: (10).
    recoveredBlock986Value11
].
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack2 := [:recoveredBlock1054Arg1 | 
    | recoveredBlock1054Value0 recoveredBlock1054Value1 recoveredBlock1054Value2 recoveredBlock1054Value3 recoveredBlock1054Value4 recoveredBlock1054Value5 recoveredBlock1054Value6 recoveredBlock1054Value7 recoveredBlock1054Value8 recoveredBlock1054Value9 recoveredBlock1054Value10 recoveredBlock1054Value11 recoveredBlock1054Value12 |
    recoveredBlock1054Value0 := recoveredBlock1054Arg1.
    recoveredBlock1054Value1 := recoveredBlock1054Value0.
    recoveredBlock1054Value2 := XmATTACHWIDGET.
    (recoveredBlock1054Value1) topAttachment: (recoveredBlock1054Value2).
    recoveredBlock1054Value3 := recoveredBlock1054Value0.
    recoveredBlock1054Value4 := recoveredLocal3.
    (recoveredBlock1054Value3) topWidget: (recoveredBlock1054Value4).
    recoveredBlock1054Value5 := recoveredBlock1054Value0.
    recoveredBlock1054Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1054Value5) leftAttachment: (recoveredBlock1054Value6).
    recoveredBlock1054Value7 := recoveredBlock1054Value0.
    recoveredBlock1054Value8 := recoveredLocal3.
    (recoveredBlock1054Value7) leftWidget: (recoveredBlock1054Value8).
    recoveredBlock1054Value9 := recoveredBlock1054Value0.
    recoveredBlock1054Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1054Value9) rightAttachment: (recoveredBlock1054Value10).
    recoveredBlock1054Value11 := recoveredLocal3.
    recoveredBlock1054Value12 := (recoveredBlock1054Value0) rightWidget: (recoveredBlock1054Value11).
    recoveredBlock1054Value12
].
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack2 := [:recoveredBlock1120Arg1 | 
    | recoveredBlock1120Value0 recoveredBlock1120Value1 recoveredBlock1120Value2 recoveredBlock1120Value3 recoveredBlock1120Value4 recoveredBlock1120Value5 recoveredBlock1120Value6 recoveredBlock1120Value7 recoveredBlock1120Value8 recoveredBlock1120Value9 recoveredBlock1120Value10 recoveredBlock1120Value11 recoveredBlock1120Value12 |
    recoveredBlock1120Value0 := recoveredBlock1120Arg1.
    recoveredBlock1120Value1 := recoveredBlock1120Value0.
    recoveredBlock1120Value2 := XmATTACHWIDGET.
    (recoveredBlock1120Value1) topAttachment: (recoveredBlock1120Value2).
    recoveredBlock1120Value3 := recoveredBlock1120Value0.
    recoveredBlock1120Value4 := recoveredLocal4.
    (recoveredBlock1120Value3) topWidget: (recoveredBlock1120Value4).
    recoveredBlock1120Value5 := recoveredBlock1120Value0.
    recoveredBlock1120Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1120Value5) leftAttachment: (recoveredBlock1120Value6).
    recoveredBlock1120Value7 := recoveredBlock1120Value0.
    recoveredBlock1120Value8 := recoveredLocal4.
    (recoveredBlock1120Value7) leftWidget: (recoveredBlock1120Value8).
    recoveredBlock1120Value9 := recoveredBlock1120Value0.
    recoveredBlock1120Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1120Value9) rightAttachment: (recoveredBlock1120Value10).
    recoveredBlock1120Value11 := recoveredLocal4.
    recoveredBlock1120Value12 := (recoveredBlock1120Value0) rightWidget: (recoveredBlock1120Value11).
    recoveredBlock1120Value12
].
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1191.
        ].
        recoveredStep = 1191 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack4 := 'disSelection:clientData:callData:'.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1227.
        ].
        recoveredStep = 1227 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredStack4 := 'disSelection:clientData:callData:'.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1255.
        ].
        recoveredStep = 1255 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 1269.
        ].
        recoveredStep = 1269 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

