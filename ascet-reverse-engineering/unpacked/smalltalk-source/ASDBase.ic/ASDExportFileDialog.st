"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003f1c8; bytecode file offset 0x93bf94"
!ASDExportFileDialog methodsFor: 'recovered'!
optionGroupName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDImportExportOptions.
    recoveredValue1 := (recoveredValue0) groupStringExport.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042e0c; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetSettingsFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('settingsFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004318c; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetCancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancelButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044a8c; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetFormatComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('formatComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044eec; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetOkButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044fdc; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetFileField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('fileField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045d2c; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetWarningLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('warningLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004652c; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetFileButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('fileButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a3c; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetOptionButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004864c; bytecode file offset 0x9451f8"
!ASDExportFileDialog methodsFor: 'recovered'!
widgetFileFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('fileFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a488; bytecode file offset 0x957a6c"
!ASDExportFileDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005a8d8; bytecode file offset 0x957a6c"
!ASDExportFileDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005c53c; bytecode file offset 0x959680"
!ASDExportFileDialog methodsFor: 'recovered'!
defaultExportFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) asdImportExportOptions.
    recoveredValue2 := (recoveredValue1) optionDefaultExportFormat.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c6dc8; bytecode file offset 0x9c36ec"
!ASDExportFileDialog methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6fdc; bytecode file offset 0x9c38d8"
!ASDExportFileDialog methodsFor: 'recovered'!
fileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileExtension := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3484; bytecode file offset 0x9dfda8"
!ASDExportFileDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) installActionKeys.
    (self) updateFonts.
    (self) expandCollapseSettingsFrame.
    ^self
! !

"ASDBase.ic method 0x200e4914; bytecode file offset 0x9e11d4"
!ASDExportFileDialog methodsFor: 'recovered'!
showOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetOptionButton.
    recoveredValue1 := (self) widgetOptionButton.
    recoveredValue2 := (recoveredValue1) set.
    recoveredValue3 := (recoveredValue2) not.
    (recoveredValue0) setState: (recoveredValue3) notify: (true).
    ^self
! !

"ASDBase.ic method 0x200edc44; bytecode file offset 0x9ea508"
!ASDExportFileDialog methodsFor: 'recovered'!
optionsActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) set.
    (recoveredValue0) optionsExpanded: (recoveredValue2).
    (self) expandCollapseSettingsFrame.
    ^self
! !

"ASDBase.ic method 0x20116bf8; bytecode file offset 0xa134b0"
!ASDExportFileDialog methodsFor: 'recovered'!
fileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116c24; bytecode file offset 0xa134dc"
!ASDExportFileDialog methodsFor: 'recovered'!
fileExtension
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileExtension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := '*.exp'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            fileExtension := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := fileExtension.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201796e4; bytecode file offset 0xa75fa8"
!ASDExportFileDialog methodsFor: 'recovered'!
buttonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) promptForFolder.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) promptForFile.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201797a0; bytecode file offset 0xa76064"
!ASDExportFileDialog methodsFor: 'recovered'!
valueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fe0bc; bytecode file offset 0xafa98c"
!ASDExportFileDialog methodsFor: 'recovered'!
isFolderSelection
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
            recoveredStack2 := MainController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asdImportExportOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionExportOneFileForEachItem.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'exp'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'amd'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20258714; bytecode file offset 0xb54fe4"
!ASDExportFileDialog methodsFor: 'recovered'!
formatValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileFormats.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getString.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg2.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 27].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) fileExtension.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) fileExtension: (recoveredBlock5Stack2).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    (self) updateFileName.
    (self) update.
    ^self
! !

"ASDBase.ic method 0x202a893c; bytecode file offset 0xba5214"
!ASDExportFileDialog methodsFor: 'recovered'!
isOKPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80531'.
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
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := #('a2l' 'amd' 'axl' 'exp').
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d5f04; bytecode file offset 0xbd2840"
!ASDExportFileDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2033c790; bytecode file offset 0xc39080"
!ASDExportFileDialog methodsFor: 'recovered'!
fileFormatsWithoutExtension
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '*.exp'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := EtExpFile.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '*.a2l'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := EtA2LFile.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := '*.amd'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := EtAmdFile.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '*.axl'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := EtAxlFile.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036fc44; bytecode file offset 0xc6c528"
!ASDExportFileDialog methodsFor: 'recovered'!
options
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := options.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            super options.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := options.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := MainController.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) asdPathOptions.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) options.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := [:block280f1938Arg1 | 
    | block280f1938Value0 block280f1938Value1 block280f1938Value2 |
    block280f1938Value0 := block280f1938Arg1.
    block280f1938Value1 := (block280f1938Value0) attributeName.
    block280f1938Value2 := (block280f1938Value1) = ('ExportPath').
    block280f1938Value2
].
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) detect: (recoveredBlock6Stack2).
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            (recoveredBlock6Stack0) addFirst: (recoveredBlock6Stack1).
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack0 := copy.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack1 := MainController.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) asdPathOptions.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) options.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack2 := [:block280f195cArg1 | 
    | block280f195cValue0 block280f195cValue1 block280f195cValue2 |
    block280f195cValue0 := block280f195cArg1.
    block280f195cValue1 := (block280f195cValue0) attributeName.
    block280f195cValue2 := (block280f195cValue1) = ('ExportPath').
    block280f195cValue2
].
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) detect: (recoveredBlock6Stack2).
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) deepCopy.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) addFirst: (recoveredBlock6Stack1).
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := options.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203703b4; bytecode file offset 0xc6cca4"
!ASDExportFileDialog methodsFor: 'recovered'!
expandCollapseSettingsFrame
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsExpanded.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSettingsFrame.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionButton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionsButtonLabel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' <<'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSize.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSettingsFrame.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionButton.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionsButtonLabel.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := ' >>'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSize.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203aa648; bytecode file offset 0xca6f40"
!ASDExportFileDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SCOk.
    recoveredValue4 := (recoveredValue3) getHotkeyString.
    recoveredValue5 := ('Alt-') , (recoveredValue4).
    recoveredValue6 := DirectedMessageWithText.
    recoveredValue7 := SCOk.
    recoveredValue8 := (recoveredValue6) selector: ('ok') arguments: (#()) receiver: (self) text: (recoveredValue7).
    (recoveredValue2) at: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SCCancel.
    recoveredValue11 := (recoveredValue10) getHotkeyString.
    recoveredValue12 := ('Alt-') , (recoveredValue11).
    recoveredValue13 := DirectedMessageWithText.
    recoveredValue14 := SCCancel.
    recoveredValue15 := (recoveredValue13) selector: ('cancel') arguments: (#()) receiver: (self) text: (recoveredValue14).
    (recoveredValue9) at: (recoveredValue12) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := DirectedMessageWithText.
    recoveredValue18 := (recoveredValue17) selector: ('showOptions') arguments: (#()) receiver: (self) text: ('Show Options').
    (recoveredValue16) at: ('Alt-P') put: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (self) shell.
    (self) setActionDict: (recoveredValue19) forWidget: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x203ee6b8; bytecode file offset 0xceafbc"
!ASDExportFileDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultExportFormat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := EtExpExtension.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormatComboBox.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileFormats.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := EtAxlExtension.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := EtAxlExtension.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) fileExtension: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormatComboBox.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileFormats.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExportFormat.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExportFormat.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) fileExtension: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) updateFileName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:block280f9054Arg1 | 
    | block280f9054Value0 block280f9054Value1 block280f9054Value2 block280f9054Value3 block280f9054Value4 |
    block280f9054Value0 := block280f9054Arg1.
    block280f9054Value1 := block280f9054Arg1.
    block280f9054Value2 := (block280f9054Value1) getLastPosition.
    block280f9054Value3 := (0) @ (block280f9054Value2).
    block280f9054Value4 := (block280f9054Value0) setSelection: (block280f9054Value3).
    block280f9054Value4
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20442478; bytecode file offset 0xd3ed70"
!ASDExportFileDialog methodsFor: 'recovered'!
fileFormats
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := EtExpExtension.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asWildcardExtension.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := EtExpFile.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := ' ('.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := EtExpExtension.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) asWildcardExtension.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := EtA2lExtension.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := EtA2LFile.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := ' ('.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := EtA2lExtension.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) asWildcardExtension.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := ')'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := EtAmdExtension.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := EtAmdFile.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := ' ('.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := EtAmdExtension.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) asWildcardExtension.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := ')'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := EtAxlExtension.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := EtAxlFile.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := ' ('.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := EtAxlExtension.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) asWildcardExtension.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := ')'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045734c; bytecode file offset 0xd53c70"
!ASDExportFileDialog methodsFor: 'recovered'!
update
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileFrame.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Export Folder'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileButton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'GeneralFolderClosed'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) labelIcon: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdImportExportOptions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionExportOneFileForEachItem.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'exp'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningLabel.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'NOTE: Export destination is a folder because "One file for each item" is set!!'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningLabel.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'NOTE: Export destination is a folder because "AMD" format is selected!!'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileFrame.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Export File'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileButton.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'GeneralFile'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) labelIcon: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningLabel.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'call_80531'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOkButton.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOKPossible.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a6a1c; bytecode file offset 0xda3308"
!ASDExportFileDialog methodsFor: 'recovered'!
updateFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameOnly.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'items.'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameOnly.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameOnly.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e3810; bytecode file offset 0xde0118"
!ASDExportFileDialog methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28108a48Arg1 | 
    | block28108a48Value0 block28108a48Value1 |
    block28108a48Value0 := block28108a48Arg1.
    block28108a48Value1 := (block28108a48Value0) optionClass.
    block28108a48Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block28108a6cArg1 | 
    | block28108a6cValue0 block28108a6cValue1 block28108a6cValue2 |
    block28108a6cValue0 := block28108a6cArg1.
    block28108a6cValue1 := (block28108a6cValue0) optionClass.
    block28108a6cValue2 := (block28108a6cValue1) isContainerOption.
    block28108a6cValue2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal1.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) optionClass.
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) options.
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            recoveredBlock60Stack3 := [:block28108a90Arg1 | 
    | block28108a90Value0 block28108a90Value1 |
    block28108a90Value0 := block28108a90Arg1.
    block28108a90Value1 := (block28108a90Value0) optionClass.
    block28108a90Value1
].
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) collect: (recoveredBlock60Stack3).
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) addAll: (recoveredBlock60Stack2).
            recoveredBlock60PC := 86.
        ].
        recoveredBlock60Step = 86 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) options.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack1 := [:block28108ab4Arg1 | 
    | block28108ab4Stack0 block28108ab4Stack1 block28108ab4Stack2 block28108ab4Stack3 block28108ab4PC block28108ab4Step block28108ab4Done block28108ab4Result |
    block28108ab4Stack0 := self.
    block28108ab4PC := 4.
    block28108ab4Done := false.
    [block28108ab4Done not] whileTrue: [
        block28108ab4Step := block28108ab4PC.
        block28108ab4Step = 4 ifTrue: [
            block28108ab4Stack1 := block28108ab4Arg1.
            block28108ab4PC := 5.
        ].
        block28108ab4Step = 5 ifTrue: [
            block28108ab4Stack1 := (block28108ab4Stack1) optionClass.
            block28108ab4PC := 7.
        ].
        block28108ab4Step = 7 ifTrue: [
            (block28108ab4Stack1) updateOptionWidget.
            block28108ab4PC := 9.
        ].
        block28108ab4Step = 9 ifTrue: [
            block28108ab4Stack1 := nil.
            block28108ab4PC := 10.
        ].
        block28108ab4Step = 10 ifTrue: [
            block28108ab4Stack2 := block28108ab4Arg1.
            block28108ab4PC := 11.
        ].
        block28108ab4Step = 11 ifTrue: [
            block28108ab4Stack2 := (block28108ab4Stack2) optionClass.
            block28108ab4PC := 13.
        ].
        block28108ab4Step = 13 ifTrue: [
            block28108ab4Stack2 := (block28108ab4Stack2) isContainerOption.
            block28108ab4PC := 15.
        ].
        block28108ab4Step = 15 ifTrue: [
            (block28108ab4Stack2) ifTrue: [block28108ab4PC := 18] ifFalse: [block28108ab4PC := 36].
        ].
        block28108ab4Step = 18 ifTrue: [
            block28108ab4PC := 19.
        ].
        block28108ab4Step = 19 ifTrue: [
            block28108ab4Stack1 := block28108ab4Arg1.
            block28108ab4PC := 20.
        ].
        block28108ab4Step = 20 ifTrue: [
            block28108ab4Stack1 := (block28108ab4Stack1) optionClass.
            block28108ab4PC := 22.
        ].
        block28108ab4Step = 22 ifTrue: [
            block28108ab4Stack1 := (block28108ab4Stack1) options.
            block28108ab4PC := 23.
        ].
        block28108ab4Step = 23 ifTrue: [
            block28108ab4Stack2 := [:block28108ad8Arg1 | 
    | block28108ad8Value0 block28108ad8Value1 block28108ad8Value2 |
    block28108ad8Value0 := block28108ad8Arg1.
    block28108ad8Value1 := (block28108ad8Value0) optionClass.
    block28108ad8Value2 := (block28108ad8Value1) updateOptionWidget.
    block28108ad8Value2
].
            block28108ab4PC := 25.
        ].
        block28108ab4Step = 25 ifTrue: [
            block28108ab4PC := 34.
        ].
        block28108ab4Step = 34 ifTrue: [
            block28108ab4Stack1 := (block28108ab4Stack1) do: (block28108ab4Stack2).
            block28108ab4PC := 36.
        ].
        block28108ab4Step = 36 ifTrue: [
            block28108ab4Result := block28108ab4Stack1.
            block28108ab4Done := true.
        ].
    ].
    block28108ab4Result
].
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108PC := 153.
        ].
        recoveredBlock108Step = 153 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) do: (recoveredBlock108Stack1).
            recoveredBlock108PC := 155.
        ].
        recoveredBlock108Step = 155 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack0.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f8208; bytecode file offset 0xdf4b48"
!ASDExportFileDialog methodsFor: 'recovered'!
promptForFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := '*.'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) fileExtension.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) fileFormatsWithoutExtension.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := '*.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := (recoveredStack6) fileExtension.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := [
    ' '
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'All files'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Call_69585'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateImportPath.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'items.'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) searchPath: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'Select Export File'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := '*.'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileExtension.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := XmSAVE.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) accessType: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20539da4; bytecode file offset 0xe366dc"
!ASDExportFileDialog methodsFor: 'recovered'!
promptForFolder
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := '*.'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) fileExtension.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) fileFormatsWithoutExtension.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := '*.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := (recoveredStack6) fileExtension.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := [
    ' '
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'All files'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ASDImportExportPathDialog.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'Call_69585'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateImportPath.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) firstSelection: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'Call_69585'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateImportPath.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) firstSelection: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) firstSelection: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := 'Select Export Folder'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) formatDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := '*.'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileExtension.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) activeFormat: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) setNewDir.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAtCurrentMousePositionWithParent: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d609c; bytecode file offset 0xed2a28"
!ASDExportFileDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80531'.
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
            recoveredStack0 := (recoveredStack0) isOKPossible.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Windows7'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetFileField.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLongPathName: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := ASDPathOptions.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExportPath.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedToWriteIn: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 179] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'The folder "'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := '" already exists and is read-only.'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 'The folder "'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := '" already exists!!\Overwrite all existing files?'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'ASDOverwriteFile'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 251].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := 'The file "'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := '" already exists and is read-only.'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := 'The file "'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := '" already exists!!\Overwrite existing file?'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := 'ASDOverwriteFile'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 290 ifTrue: [
            recoveredPC := 341.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensurePath: (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 339] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := 'Failed to create folder '.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileExtension.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20693464; bytecode file offset 0xf8ff10"
!ASDExportFileDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal17 := recoveredStack1.
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
            recoveredStack3 := [:block2812bb60Arg1 | 
    | block2812bb60Value0 block2812bb60Value1 block2812bb60Value2 block2812bb60Value3 block2812bb60Value4 block2812bb60Value5 block2812bb60Value6 block2812bb60Value7 block2812bb60Value8 block2812bb60Value9 block2812bb60Value10 block2812bb60Value11 block2812bb60Value12 |
    block2812bb60Value0 := block2812bb60Arg1.
    block2812bb60Value1 := block2812bb60Value0.
    block2812bb60Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812bb60Value1) mwmInputMode: (block2812bb60Value2).
    block2812bb60Value3 := block2812bb60Value0.
    (block2812bb60Value3) title: ('Select Export File').
    block2812bb60Value4 := block2812bb60Value0.
    block2812bb60Value5 := MWMDECORALL.
    block2812bb60Value6 := MWMDECORMINIMIZE.
    block2812bb60Value7 := (block2812bb60Value5) | (block2812bb60Value6).
    block2812bb60Value8 := MWMDECORMAXIMIZE.
    block2812bb60Value9 := (block2812bb60Value7) | (block2812bb60Value8).
    (block2812bb60Value4) mwmDecorations: (block2812bb60Value9).
    block2812bb60Value10 := block2812bb60Value0.
    (block2812bb60Value10) height: (130).
    block2812bb60Value11 := block2812bb60Value0.
    (block2812bb60Value11) width: (400).
    block2812bb60Value12 := (block2812bb60Value0) defaultPosition: (true).
    block2812bb60Value12
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'aForm'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'fileFrame'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := [:block2812bb84Arg1 | 
    | block2812bb84Value0 block2812bb84Value1 |
    block2812bb84Value0 := block2812bb84Arg1.
    block2812bb84Value1 := (block2812bb84Value0) labelString: ('Export File').
    block2812bb84Value1
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'fileFrame'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'fileForm'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'fileForm'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'settingsFrame'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := [:block2812bba8Arg1 | 
    | block2812bba8Value0 block2812bba8Value1 |
    block2812bba8Value0 := block2812bba8Arg1.
    block2812bba8Value1 := (block2812bba8Value0) labelString: ('Options').
    block2812bba8Value1
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := 'settingsFrame'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := 'settingsForm'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'settingsForm'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) createOptionWidgetsInForm: (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := 'formatLabel'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := [:block2812bbccArg1 | 
    | block2812bbccValue0 block2812bbccValue1 block2812bbccValue2 block2812bbccValue3 block2812bbccValue4 block2812bbccValue5 |
    block2812bbccValue0 := block2812bbccArg1.
    block2812bbccValue1 := block2812bbccValue0.
    block2812bbccValue2 := XmALIGNMENTBEGINNING.
    (block2812bbccValue1) alignment: (block2812bbccValue2).
    block2812bbccValue3 := block2812bbccValue0.
    (block2812bbccValue3) labelString: ('Export Format:').
    block2812bbccValue4 := block2812bbccValue0.
    (block2812bbccValue4) height: (22).
    block2812bbccValue5 := (block2812bbccValue0) width: (100).
    block2812bbccValue5
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := 'formatLabel'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := 'formatComboBox'.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := [:recoveredBlock293Arg1 | 
    | recoveredBlock293Value0 recoveredBlock293Value1 recoveredBlock293Value2 recoveredBlock293Value3 recoveredBlock293Value4 |
    recoveredBlock293Value0 := recoveredBlock293Arg1.
    recoveredBlock293Value1 := recoveredBlock293Value0.
    recoveredBlock293Value2 := (self) fileFormats.
    recoveredBlock293Value3 := (recoveredBlock293Value2) values.
    (recoveredBlock293Value1) items: (recoveredBlock293Value3).
    recoveredBlock293Value4 := (recoveredBlock293Value0) height: (22).
    recoveredBlock293Value4
].
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := 'formatComboBox'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := 'warningLabel'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := [:block2812bbf0Arg1 | 
    | block2812bbf0Value0 block2812bbf0Value1 block2812bbf0Value2 block2812bbf0Value3 block2812bbf0Value4 block2812bbf0Value5 |
    block2812bbf0Value0 := block2812bbf0Arg1.
    block2812bbf0Value1 := block2812bbf0Value0.
    block2812bbf0Value2 := XmALIGNMENTBEGINNING.
    (block2812bbf0Value1) alignment: (block2812bbf0Value2).
    block2812bbf0Value3 := block2812bbf0Value0.
    block2812bbf0Value4 := ('NOTE: Export destination is a folder because "One file for each item" is set!!') withCrs.
    (block2812bbf0Value3) labelString: (block2812bbf0Value4).
    block2812bbf0Value5 := (block2812bbf0Value0) height: (22).
    block2812bbf0Value5
].
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := 'warningLabel'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := 'fileButton'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := [:block2812bc14Arg1 | 
    | block2812bc14Value0 block2812bc14Value1 block2812bc14Value2 block2812bc14Value3 block2812bc14Value4 block2812bc14Value5 block2812bc14Value6 block2812bc14Value7 block2812bc14Value8 block2812bc14Value9 |
    block2812bc14Value0 := block2812bc14Arg1.
    block2812bc14Value1 := block2812bc14Value0.
    (block2812bc14Value1) height: (22).
    block2812bc14Value2 := block2812bc14Value0.
    (block2812bc14Value2) width: (22).
    block2812bc14Value3 := block2812bc14Value0.
    (block2812bc14Value3) recomputeSize: (false).
    block2812bc14Value4 := block2812bc14Value0.
    block2812bc14Value5 := XmICON.
    (block2812bc14Value4) labelType: (block2812bc14Value5).
    block2812bc14Value6 := RBUserInterface.
    block2812bc14Value7 := (block2812bc14Value6) resourceManager.
    block2812bc14Value8 := (block2812bc14Value7) returnIconWithName: ('GeneralFile').
    block2812bc14Value9 := (block2812bc14Value0) labelIcon: (block2812bc14Value8).
    block2812bc14Value9
].
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := 'fileButton'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := 'fileField'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := [:recoveredBlock470Arg1 | 
    | recoveredBlock470Value0 recoveredBlock470Value1 recoveredBlock470Value2 recoveredBlock470Value3 recoveredBlock470Value4 recoveredBlock470Value5 |
    recoveredBlock470Value0 := recoveredBlock470Arg1.
    recoveredBlock470Value1 := recoveredBlock470Value0.
    recoveredBlock470Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock470Value1) alignment: (recoveredBlock470Value2).
    recoveredBlock470Value3 := recoveredBlock470Value0.
    (recoveredBlock470Value3) height: (22).
    recoveredBlock470Value4 := (self) fileName.
    recoveredBlock470Value5 := (recoveredBlock470Value0) value: (recoveredBlock470Value4).
    recoveredBlock470Value5
].
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) createText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := 'fileField'.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := 'optionsButton'.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := [:recoveredBlock526Arg1 | 
    | recoveredBlock526Value0 recoveredBlock526Value1 recoveredBlock526Value2 recoveredBlock526Value3 recoveredBlock526Value4 recoveredBlock526Value5 recoveredBlock526Value6 recoveredBlock526Value7 recoveredBlock526Value8 recoveredBlock526Value9 |
    recoveredBlock526Value0 := recoveredBlock526Arg1.
    recoveredBlock526Value1 := recoveredBlock526Value0.
    (recoveredBlock526Value1) indicatorOn: (false).
    recoveredBlock526Value2 := recoveredBlock526Value0.
    (recoveredBlock526Value2) recomputeSize: (false).
    recoveredBlock526Value3 := recoveredBlock526Value0.
    recoveredBlock526Value4 := (self) class.
    recoveredBlock526Value5 := (recoveredBlock526Value4) optionsExpanded.
    (recoveredBlock526Value3) set: (recoveredBlock526Value5).
    recoveredBlock526Value6 := recoveredBlock526Value0.
    recoveredBlock526Value7 := (self) optionsButtonLabel.
    (recoveredBlock526Value6) labelString: (recoveredBlock526Value7).
    recoveredBlock526Value8 := recoveredBlock526Value0.
    (recoveredBlock526Value8) height: (25).
    recoveredBlock526Value9 := (recoveredBlock526Value0) width: (80).
    recoveredBlock526Value9
].
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := 'optionsButton'.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := [:block2812bc38Arg1 | 
    | block2812bc38Value0 block2812bc38Value1 block2812bc38Value2 block2812bc38Value3 |
    block2812bc38Value0 := block2812bc38Arg1.
    block2812bc38Value1 := block2812bc38Value0.
    (block2812bc38Value1) labelString: ('&Cancel').
    block2812bc38Value2 := block2812bc38Value0.
    (block2812bc38Value2) height: (25).
    block2812bc38Value3 := (block2812bc38Value0) width: (80).
    block2812bc38Value3
].
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := [:block2812bc5cArg1 | 
    | block2812bc5cValue0 block2812bc5cValue1 block2812bc5cValue2 block2812bc5cValue3 |
    block2812bc5cValue0 := block2812bc5cArg1.
    block2812bc5cValue1 := block2812bc5cValue0.
    (block2812bc5cValue1) labelString: ('&OK').
    block2812bc5cValue2 := block2812bc5cValue0.
    (block2812bc5cValue2) height: (25).
    block2812bc5cValue3 := (block2812bc5cValue0) width: (80).
    block2812bc5cValue3
].
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack1 := [:recoveredBlock710Arg1 | 
    | recoveredBlock710Value0 recoveredBlock710Value1 recoveredBlock710Value2 recoveredBlock710Value3 recoveredBlock710Value4 recoveredBlock710Value5 recoveredBlock710Value6 recoveredBlock710Value7 recoveredBlock710Value8 recoveredBlock710Value9 recoveredBlock710Value10 |
    recoveredBlock710Value0 := recoveredBlock710Arg1.
    recoveredBlock710Value1 := recoveredBlock710Value0.
    recoveredBlock710Value2 := XmATTACHWIDGET.
    (recoveredBlock710Value1) topAttachment: (recoveredBlock710Value2).
    recoveredBlock710Value3 := recoveredBlock710Value0.
    recoveredBlock710Value4 := recoveredLocal13.
    (recoveredBlock710Value3) topWidget: (recoveredBlock710Value4).
    recoveredBlock710Value5 := recoveredBlock710Value0.
    (recoveredBlock710Value5) topOffset: (5).
    recoveredBlock710Value6 := recoveredBlock710Value0.
    recoveredBlock710Value7 := XmATTACHNONE.
    (recoveredBlock710Value6) bottomAttachment: (recoveredBlock710Value7).
    recoveredBlock710Value8 := recoveredBlock710Value0.
    recoveredBlock710Value9 := XmATTACHFORM.
    (recoveredBlock710Value8) leftAttachment: (recoveredBlock710Value9).
    recoveredBlock710Value10 := (recoveredBlock710Value0) leftOffset: (5).
    recoveredBlock710Value10
].
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack1 := [:recoveredBlock772Arg1 | 
    | recoveredBlock772Value0 recoveredBlock772Value1 recoveredBlock772Value2 recoveredBlock772Value3 recoveredBlock772Value4 recoveredBlock772Value5 recoveredBlock772Value6 recoveredBlock772Value7 recoveredBlock772Value8 recoveredBlock772Value9 recoveredBlock772Value10 |
    recoveredBlock772Value0 := recoveredBlock772Arg1.
    recoveredBlock772Value1 := recoveredBlock772Value0.
    recoveredBlock772Value2 := XmATTACHWIDGET.
    (recoveredBlock772Value1) topAttachment: (recoveredBlock772Value2).
    recoveredBlock772Value3 := recoveredBlock772Value0.
    recoveredBlock772Value4 := recoveredLocal13.
    (recoveredBlock772Value3) topWidget: (recoveredBlock772Value4).
    recoveredBlock772Value5 := recoveredBlock772Value0.
    (recoveredBlock772Value5) topOffset: (5).
    recoveredBlock772Value6 := recoveredBlock772Value0.
    recoveredBlock772Value7 := XmATTACHNONE.
    (recoveredBlock772Value6) bottomAttachment: (recoveredBlock772Value7).
    recoveredBlock772Value8 := recoveredBlock772Value0.
    recoveredBlock772Value9 := XmATTACHFORM.
    (recoveredBlock772Value8) rightAttachment: (recoveredBlock772Value9).
    recoveredBlock772Value10 := (recoveredBlock772Value0) rightOffset: (5).
    recoveredBlock772Value10
].
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack1 := [:recoveredBlock834Arg1 | 
    | recoveredBlock834Value0 recoveredBlock834Value1 recoveredBlock834Value2 recoveredBlock834Value3 recoveredBlock834Value4 recoveredBlock834Value5 recoveredBlock834Value6 recoveredBlock834Value7 recoveredBlock834Value8 recoveredBlock834Value9 recoveredBlock834Value10 recoveredBlock834Value11 recoveredBlock834Value12 |
    recoveredBlock834Value0 := recoveredBlock834Arg1.
    recoveredBlock834Value1 := recoveredBlock834Value0.
    recoveredBlock834Value2 := XmATTACHWIDGET.
    (recoveredBlock834Value1) topAttachment: (recoveredBlock834Value2).
    recoveredBlock834Value3 := recoveredBlock834Value0.
    recoveredBlock834Value4 := recoveredLocal13.
    (recoveredBlock834Value3) topWidget: (recoveredBlock834Value4).
    recoveredBlock834Value5 := recoveredBlock834Value0.
    (recoveredBlock834Value5) topOffset: (5).
    recoveredBlock834Value6 := recoveredBlock834Value0.
    recoveredBlock834Value7 := XmATTACHNONE.
    (recoveredBlock834Value6) bottomAttachment: (recoveredBlock834Value7).
    recoveredBlock834Value8 := recoveredBlock834Value0.
    recoveredBlock834Value9 := XmATTACHWIDGET.
    (recoveredBlock834Value8) rightAttachment: (recoveredBlock834Value9).
    recoveredBlock834Value10 := recoveredBlock834Value0.
    recoveredBlock834Value11 := recoveredLocal2.
    (recoveredBlock834Value10) rightWidget: (recoveredBlock834Value11).
    recoveredBlock834Value12 := (recoveredBlock834Value0) rightOffset: (5).
    recoveredBlock834Value12
].
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack1 := [:block2812bc80Arg1 | 
    | block2812bc80Value0 block2812bc80Value1 block2812bc80Value2 block2812bc80Value3 block2812bc80Value4 block2812bc80Value5 block2812bc80Value6 block2812bc80Value7 block2812bc80Value8 block2812bc80Value9 block2812bc80Value10 block2812bc80Value11 |
    block2812bc80Value0 := block2812bc80Arg1.
    block2812bc80Value1 := block2812bc80Value0.
    block2812bc80Value2 := XmATTACHFORM.
    (block2812bc80Value1) topAttachment: (block2812bc80Value2).
    block2812bc80Value3 := block2812bc80Value0.
    (block2812bc80Value3) topOffset: (5).
    block2812bc80Value4 := block2812bc80Value0.
    block2812bc80Value5 := XmATTACHNONE.
    (block2812bc80Value4) bottomAttachment: (block2812bc80Value5).
    block2812bc80Value6 := block2812bc80Value0.
    block2812bc80Value7 := XmATTACHFORM.
    (block2812bc80Value6) leftAttachment: (block2812bc80Value7).
    block2812bc80Value8 := block2812bc80Value0.
    (block2812bc80Value8) leftOffset: (5).
    block2812bc80Value9 := block2812bc80Value0.
    block2812bc80Value10 := XmATTACHFORM.
    (block2812bc80Value9) rightAttachment: (block2812bc80Value10).
    block2812bc80Value11 := block2812bc80Value0.
    (block2812bc80Value11) rightOffset: (5).
    block2812bc80Value0
].
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack1 := [:recoveredBlock974Arg1 | 
    | recoveredBlock974Value0 recoveredBlock974Value1 recoveredBlock974Value2 recoveredBlock974Value3 recoveredBlock974Value4 recoveredBlock974Value5 recoveredBlock974Value6 recoveredBlock974Value7 recoveredBlock974Value8 recoveredBlock974Value9 recoveredBlock974Value10 recoveredBlock974Value11 recoveredBlock974Value12 recoveredBlock974Value13 recoveredBlock974Value14 |
    recoveredBlock974Value0 := recoveredBlock974Arg1.
    recoveredBlock974Value1 := recoveredBlock974Value0.
    recoveredBlock974Value2 := XmATTACHWIDGET.
    (recoveredBlock974Value1) topAttachment: (recoveredBlock974Value2).
    recoveredBlock974Value3 := recoveredBlock974Value0.
    recoveredBlock974Value4 := recoveredLocal3.
    (recoveredBlock974Value3) topWidget: (recoveredBlock974Value4).
    recoveredBlock974Value5 := recoveredBlock974Value0.
    (recoveredBlock974Value5) topOffset: (5).
    recoveredBlock974Value6 := recoveredBlock974Value0.
    recoveredBlock974Value7 := XmATTACHFORM.
    (recoveredBlock974Value6) bottomAttachment: (recoveredBlock974Value7).
    recoveredBlock974Value8 := recoveredBlock974Value0.
    (recoveredBlock974Value8) bottomOffset: (5).
    recoveredBlock974Value9 := recoveredBlock974Value0.
    recoveredBlock974Value10 := XmATTACHFORM.
    (recoveredBlock974Value9) leftAttachment: (recoveredBlock974Value10).
    recoveredBlock974Value11 := recoveredBlock974Value0.
    (recoveredBlock974Value11) leftOffset: (5).
    recoveredBlock974Value12 := recoveredBlock974Value0.
    recoveredBlock974Value13 := XmATTACHFORM.
    (recoveredBlock974Value12) rightAttachment: (recoveredBlock974Value13).
    recoveredBlock974Value14 := recoveredBlock974Value0.
    (recoveredBlock974Value14) rightOffset: (5).
    recoveredBlock974Value0
].
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack1 := [:recoveredBlock1056Arg1 | 
    | recoveredBlock1056Value0 recoveredBlock1056Value1 recoveredBlock1056Value2 recoveredBlock1056Value3 recoveredBlock1056Value4 recoveredBlock1056Value5 recoveredBlock1056Value6 recoveredBlock1056Value7 recoveredBlock1056Value8 recoveredBlock1056Value9 recoveredBlock1056Value10 recoveredBlock1056Value11 recoveredBlock1056Value12 |
    recoveredBlock1056Value0 := recoveredBlock1056Arg1.
    recoveredBlock1056Value1 := recoveredBlock1056Value0.
    recoveredBlock1056Value2 := XmATTACHWIDGET.
    (recoveredBlock1056Value1) topAttachment: (recoveredBlock1056Value2).
    recoveredBlock1056Value3 := recoveredBlock1056Value0.
    recoveredBlock1056Value4 := recoveredLocal9.
    (recoveredBlock1056Value3) topWidget: (recoveredBlock1056Value4).
    recoveredBlock1056Value5 := recoveredBlock1056Value0.
    (recoveredBlock1056Value5) topOffset: (5).
    recoveredBlock1056Value6 := recoveredBlock1056Value0.
    recoveredBlock1056Value7 := XmATTACHNONE.
    (recoveredBlock1056Value6) bottomAttachment: (recoveredBlock1056Value7).
    recoveredBlock1056Value8 := recoveredBlock1056Value0.
    recoveredBlock1056Value9 := XmATTACHFORM.
    (recoveredBlock1056Value8) leftAttachment: (recoveredBlock1056Value9).
    recoveredBlock1056Value10 := recoveredBlock1056Value0.
    (recoveredBlock1056Value10) leftOffset: (5).
    recoveredBlock1056Value11 := recoveredBlock1056Value0.
    recoveredBlock1056Value12 := XmATTACHNONE.
    (recoveredBlock1056Value11) rightAttachment: (recoveredBlock1056Value12).
    recoveredBlock1056Value0
].
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack1 := [:recoveredBlock1126Arg1 | 
    | recoveredBlock1126Value0 recoveredBlock1126Value1 recoveredBlock1126Value2 recoveredBlock1126Value3 recoveredBlock1126Value4 recoveredBlock1126Value5 recoveredBlock1126Value6 recoveredBlock1126Value7 recoveredBlock1126Value8 recoveredBlock1126Value9 recoveredBlock1126Value10 recoveredBlock1126Value11 recoveredBlock1126Value12 recoveredBlock1126Value13 recoveredBlock1126Value14 recoveredBlock1126Value15 recoveredBlock1126Value16 recoveredBlock1126Value17 |
    recoveredBlock1126Value0 := recoveredBlock1126Arg1.
    recoveredBlock1126Value1 := recoveredBlock1126Value0.
    recoveredBlock1126Value2 := XmATTACHWIDGET.
    (recoveredBlock1126Value1) topAttachment: (recoveredBlock1126Value2).
    recoveredBlock1126Value3 := recoveredBlock1126Value0.
    recoveredBlock1126Value4 := recoveredLocal9.
    (recoveredBlock1126Value3) topWidget: (recoveredBlock1126Value4).
    recoveredBlock1126Value5 := recoveredBlock1126Value0.
    (recoveredBlock1126Value5) topOffset: (5).
    recoveredBlock1126Value6 := recoveredBlock1126Value0.
    recoveredBlock1126Value7 := XmATTACHNONE.
    (recoveredBlock1126Value6) bottomAttachment: (recoveredBlock1126Value7).
    recoveredBlock1126Value8 := recoveredBlock1126Value0.
    recoveredBlock1126Value9 := XmATTACHWIDGET.
    (recoveredBlock1126Value8) leftAttachment: (recoveredBlock1126Value9).
    recoveredBlock1126Value10 := recoveredBlock1126Value0.
    recoveredBlock1126Value11 := recoveredLocal5.
    (recoveredBlock1126Value10) leftWidget: (recoveredBlock1126Value11).
    recoveredBlock1126Value12 := recoveredBlock1126Value0.
    (recoveredBlock1126Value12) leftOffset: (5).
    recoveredBlock1126Value13 := recoveredBlock1126Value0.
    recoveredBlock1126Value14 := XmATTACHWIDGET.
    (recoveredBlock1126Value13) rightAttachment: (recoveredBlock1126Value14).
    recoveredBlock1126Value15 := recoveredBlock1126Value0.
    recoveredBlock1126Value16 := recoveredLocal7.
    (recoveredBlock1126Value15) rightWidget: (recoveredBlock1126Value16).
    recoveredBlock1126Value17 := recoveredBlock1126Value0.
    (recoveredBlock1126Value17) rightOffset: (10).
    recoveredBlock1126Value0
].
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack1 := [:recoveredBlock1218Arg1 | 
    | recoveredBlock1218Value0 recoveredBlock1218Value1 recoveredBlock1218Value2 recoveredBlock1218Value3 recoveredBlock1218Value4 recoveredBlock1218Value5 recoveredBlock1218Value6 recoveredBlock1218Value7 recoveredBlock1218Value8 recoveredBlock1218Value9 recoveredBlock1218Value10 recoveredBlock1218Value11 recoveredBlock1218Value12 recoveredBlock1218Value13 |
    recoveredBlock1218Value0 := recoveredBlock1218Arg1.
    recoveredBlock1218Value1 := recoveredBlock1218Value0.
    recoveredBlock1218Value2 := XmATTACHWIDGET.
    (recoveredBlock1218Value1) topAttachment: (recoveredBlock1218Value2).
    recoveredBlock1218Value3 := recoveredBlock1218Value0.
    recoveredBlock1218Value4 := recoveredLocal4.
    (recoveredBlock1218Value3) topWidget: (recoveredBlock1218Value4).
    recoveredBlock1218Value5 := recoveredBlock1218Value0.
    (recoveredBlock1218Value5) topOffset: (5).
    recoveredBlock1218Value6 := recoveredBlock1218Value0.
    recoveredBlock1218Value7 := XmATTACHNONE.
    (recoveredBlock1218Value6) bottomAttachment: (recoveredBlock1218Value7).
    recoveredBlock1218Value8 := recoveredBlock1218Value0.
    recoveredBlock1218Value9 := XmATTACHFORM.
    (recoveredBlock1218Value8) leftAttachment: (recoveredBlock1218Value9).
    recoveredBlock1218Value10 := recoveredBlock1218Value0.
    (recoveredBlock1218Value10) leftOffset: (5).
    recoveredBlock1218Value11 := recoveredBlock1218Value0.
    recoveredBlock1218Value12 := XmATTACHFORM.
    (recoveredBlock1218Value11) rightAttachment: (recoveredBlock1218Value12).
    recoveredBlock1218Value13 := recoveredBlock1218Value0.
    (recoveredBlock1218Value13) rightOffset: (5).
    recoveredBlock1218Value0
].
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1294.
        ].
        recoveredStep = 1294 ifTrue: [
            recoveredStack1 := [:recoveredBlock1294Arg1 | 
    | recoveredBlock1294Value0 recoveredBlock1294Value1 recoveredBlock1294Value2 recoveredBlock1294Value3 recoveredBlock1294Value4 recoveredBlock1294Value5 recoveredBlock1294Value6 recoveredBlock1294Value7 recoveredBlock1294Value8 recoveredBlock1294Value9 recoveredBlock1294Value10 recoveredBlock1294Value11 recoveredBlock1294Value12 |
    recoveredBlock1294Value0 := recoveredBlock1294Arg1.
    recoveredBlock1294Value1 := recoveredBlock1294Value0.
    recoveredBlock1294Value2 := XmATTACHFORM.
    (recoveredBlock1294Value1) topAttachment: (recoveredBlock1294Value2).
    recoveredBlock1294Value3 := recoveredBlock1294Value0.
    recoveredBlock1294Value4 := XmATTACHNONE.
    (recoveredBlock1294Value3) bottomAttachment: (recoveredBlock1294Value4).
    recoveredBlock1294Value5 := recoveredBlock1294Value0.
    recoveredBlock1294Value6 := XmATTACHFORM.
    (recoveredBlock1294Value5) leftAttachment: (recoveredBlock1294Value6).
    recoveredBlock1294Value7 := recoveredBlock1294Value0.
    (recoveredBlock1294Value7) leftOffset: (5).
    recoveredBlock1294Value8 := recoveredBlock1294Value0.
    recoveredBlock1294Value9 := XmATTACHWIDGET.
    (recoveredBlock1294Value8) rightAttachment: (recoveredBlock1294Value9).
    recoveredBlock1294Value10 := recoveredBlock1294Value0.
    recoveredBlock1294Value11 := recoveredLocal7.
    (recoveredBlock1294Value10) rightWidget: (recoveredBlock1294Value11).
    recoveredBlock1294Value12 := recoveredBlock1294Value0.
    (recoveredBlock1294Value12) rightOffset: (10).
    recoveredBlock1294Value0
].
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1361.
        ].
        recoveredStep = 1361 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            recoveredStack1 := [:block2812bca4Arg1 | 
    | block2812bca4Value0 block2812bca4Value1 block2812bca4Value2 block2812bca4Value3 block2812bca4Value4 block2812bca4Value5 block2812bca4Value6 block2812bca4Value7 block2812bca4Value8 block2812bca4Value9 |
    block2812bca4Value0 := block2812bca4Arg1.
    block2812bca4Value1 := block2812bca4Value0.
    block2812bca4Value2 := XmATTACHFORM.
    (block2812bca4Value1) topAttachment: (block2812bca4Value2).
    block2812bca4Value3 := block2812bca4Value0.
    block2812bca4Value4 := XmATTACHNONE.
    (block2812bca4Value3) bottomAttachment: (block2812bca4Value4).
    block2812bca4Value5 := block2812bca4Value0.
    block2812bca4Value6 := XmATTACHNONE.
    (block2812bca4Value5) leftAttachment: (block2812bca4Value6).
    block2812bca4Value7 := block2812bca4Value0.
    block2812bca4Value8 := XmATTACHFORM.
    (block2812bca4Value7) rightAttachment: (block2812bca4Value8).
    block2812bca4Value9 := block2812bca4Value0.
    (block2812bca4Value9) rightOffset: (5).
    block2812bca4Value0
].
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1427.
        ].
        recoveredStep = 1427 ifTrue: [
            recoveredStack3 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1431.
        ].
        recoveredStep = 1431 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1435.
        ].
        recoveredStep = 1435 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1438.
        ].
        recoveredStep = 1438 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1442.
        ].
        recoveredStep = 1442 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack3 := 'valueChanged:clientData:callData:'.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1457.
        ].
        recoveredStep = 1457 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1461.
        ].
        recoveredStep = 1461 ifTrue: [
            recoveredStack4 := 'formatValueChanged:clientData:callData:'.
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack3 := 'formatValueChanged:clientData:callData:'.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            recoveredStack3 := 'buttonActivate:clientData:callData:'.
            recoveredPC := 1492.
        ].
        recoveredStep = 1492 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1499.
        ].
        recoveredStep = 1499 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1502.
        ].
        recoveredStep = 1502 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1507.
        ].
        recoveredStep = 1507 ifTrue: [
            recoveredStack3 := 'optionsActivate:clientData:callData:'.
            recoveredPC := 1510.
        ].
        recoveredStep = 1510 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1511.
        ].
        recoveredStep = 1511 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1515.
        ].
        recoveredStep = 1515 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1518.
        ].
        recoveredStep = 1518 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1522.
        ].
        recoveredStep = 1522 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1523.
        ].
        recoveredStep = 1523 ifTrue: [
            recoveredStack3 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1526.
        ].
        recoveredStep = 1526 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1527.
        ].
        recoveredStep = 1527 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1531.
        ].
        recoveredStep = 1531 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1534.
        ].
        recoveredStep = 1534 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1538.
        ].
        recoveredStep = 1538 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1539.
        ].
        recoveredStep = 1539 ifTrue: [
            recoveredStack3 := 'okActivate:clientData:callData:'.
            recoveredPC := 1542.
        ].
        recoveredStep = 1542 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1547.
        ].
        recoveredStep = 1547 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1555.
        ].
        recoveredStep = 1555 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1558.
        ].
        recoveredStep = 1558 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1571.
        ].
        recoveredStep = 1571 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1587.
        ].
        recoveredStep = 1587 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1595.
        ].
        recoveredStep = 1595 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1598.
        ].
        recoveredStep = 1598 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1601.
        ].
        recoveredStep = 1601 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 1605.
        ].
        recoveredStep = 1605 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1608.
        ].
        recoveredStep = 1608 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1614.
        ].
        recoveredStep = 1614 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1619.
        ].
        recoveredStep = 1619 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

