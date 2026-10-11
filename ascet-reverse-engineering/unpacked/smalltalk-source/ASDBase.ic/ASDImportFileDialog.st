"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009f68; bytecode file offset 0x908be4"
!ASDImportFileDialog methodsFor: 'recovered'!
isFolderSelection
    | recoveredValue0 |
    recoveredValue0 := (self) pathMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017ed0; bytecode file offset 0x92209c"
!ASDImportFileDialog methodsFor: 'recovered'!
fileNameSeparator
    ^';'
! !

"ASDBase.ic method 0x2003eaa8; bytecode file offset 0x93bf94"
!ASDImportFileDialog methodsFor: 'recovered'!
optionGroupName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDImportExportOptions.
    recoveredValue1 := (recoveredValue0) groupStringImport.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004495c; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetCancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancelButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044f6c; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetFileButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('fileButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045adc; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetOkButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045c1c; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetFileField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('fileField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045c5c; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetFileFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('fileFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004683c; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetFormatComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('formatComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200472dc; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetSettingsFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('settingsFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047efc; bytecode file offset 0x9451f8"
!ASDImportFileDialog methodsFor: 'recovered'!
widgetOptionButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20050ee0; bytecode file offset 0x94d84c"
!ASDImportFileDialog methodsFor: 'recovered'!
isOKPossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) isEmpty.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a674; bytecode file offset 0x957a6c"
!ASDImportFileDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005ab18; bytecode file offset 0x957a6c"
!ASDImportFileDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005ad7c; bytecode file offset 0x957a6c"
!ASDImportFileDialog methodsFor: 'recovered'!
shellResizeCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) adjustToMinSize.
    ^self
! !

"ASDBase.ic method 0x2005cd84; bytecode file offset 0x959680"
!ASDImportFileDialog methodsFor: 'recovered'!
defaultImportFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) asdImportExportOptions.
    recoveredValue2 := (recoveredValue1) optionDefaultImportFormat.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c6e8c; bytecode file offset 0x9c38d8"
!ASDImportFileDialog methodsFor: 'recovered'!
fileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileExtension := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7100; bytecode file offset 0x9c3a8c"
!ASDImportFileDialog methodsFor: 'recovered'!
pathMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pathMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3470; bytecode file offset 0x9dfda8"
!ASDImportFileDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) installActionKeys.
    (self) updateFonts.
    (self) expandCollapseSettingsFrame.
    ^self
! !

"ASDBase.ic method 0x200e4900; bytecode file offset 0x9e11d4"
!ASDImportFileDialog methodsFor: 'recovered'!
showOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetOptionButton.
    recoveredValue1 := (self) widgetOptionButton.
    recoveredValue2 := (recoveredValue1) set.
    recoveredValue3 := (recoveredValue2) not.
    (recoveredValue0) setState: (recoveredValue3) notify: (true).
    ^self
! !

"ASDBase.ic method 0x200edc2c; bytecode file offset 0x9ea508"
!ASDImportFileDialog methodsFor: 'recovered'!
optionsActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) set.
    (recoveredValue0) optionsExpanded: (recoveredValue2).
    (self) expandCollapseSettingsFrame.
    ^self
! !

"ASDBase.ic method 0x20106ba4; bytecode file offset 0xa03458"
!ASDImportFileDialog methodsFor: 'recovered'!
pathMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pathMode.
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
            pathMode := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := pathMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116c18; bytecode file offset 0xa134dc"
!ASDImportFileDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20148880; bytecode file offset 0xa45140"
!ASDImportFileDialog methodsFor: 'recovered'!
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20198198; bytecode file offset 0xa94a60"
!ASDImportFileDialog methodsFor: 'recovered'!
valueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayStringFromFileName.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileNameFromDisplayString: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f4f04; bytecode file offset 0xaf17c8"
!ASDImportFileDialog methodsFor: 'recovered'!
fileName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232ef4; bytecode file offset 0xb2f7cc"
!ASDImportFileDialog methodsFor: 'recovered'!
fileNameFromDisplayString: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameSeparator.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280dd4ccArg1 | 
    | block280dd4ccValue0 block280dd4ccValue1 block280dd4ccValue2 |
    block280dd4ccValue0 := block280dd4ccArg1.
    block280dd4ccValue1 := (block280dd4ccValue0) isEmpty.
    block280dd4ccValue2 := (block280dd4ccValue1) not.
    block280dd4ccValue2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280dd4f0Arg1 | 
    | block280dd4f0Value0 block280dd4f0Value1 block280dd4f0Value2 |
    block280dd4f0Value0 := block280dd4f0Arg1.
    block280dd4f0Value1 := (block280dd4f0Value0) trimBlanks.
    block280dd4f0Value2 := (block280dd4f0Value1) removeSurroundingQuotations.
    block280dd4f0Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20235d78; bytecode file offset 0xb32644"
!ASDImportFileDialog methodsFor: 'recovered'!
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
    (self) update.
    ^self
! !

"ASDBase.ic method 0x20237694; bytecode file offset 0xb33f5c"
!ASDImportFileDialog methodsFor: 'recovered'!
displayStringFromFileName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := ''.
    recoveredValue0 := (self) fileName.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) , (recoveredBlock10Value1).
    recoveredBlock10Value3 := (self) fileNameSeparator.
    recoveredBlock10Value4 := (recoveredBlock10Value2) , (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2036fc0c; bytecode file offset 0xc6c528"
!ASDImportFileDialog methodsFor: 'recovered'!
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
            recoveredBlock6Stack2 := [:block280f18f0Arg1 | 
    | block280f18f0Value0 block280f18f0Value1 block280f18f0Value2 |
    block280f18f0Value0 := block280f18f0Arg1.
    block280f18f0Value1 := (block280f18f0Value0) attributeName.
    block280f18f0Value2 := (block280f18f0Value1) = ('ImportPath').
    block280f18f0Value2
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
            recoveredBlock6Stack2 := [:block280f1914Arg1 | 
    | block280f1914Value0 block280f1914Value1 block280f1914Value2 |
    block280f1914Value0 := block280f1914Arg1.
    block280f1914Value1 := (block280f1914Value0) attributeName.
    block280f1914Value2 := (block280f1914Value1) = ('ImportPath').
    block280f1914Value2
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

"ASDBase.ic method 0x20370370; bytecode file offset 0xc6cca4"
!ASDImportFileDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20375e44; bytecode file offset 0xc72744"
!ASDImportFileDialog methodsFor: 'recovered'!
update
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOkButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOKPossible.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolderSelection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileFrame.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Import Folder'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileButton.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'GeneralFolderClosed'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) labelIcon: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileFrame.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'Import File'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileButton.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'GeneralFile'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) labelIcon: (recoveredStack1).
            recoveredPC := 58.
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
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) update: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039f088; bytecode file offset 0xc9b960"
!ASDImportFileDialog methodsFor: 'recovered'!
fileName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromClipboard.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := #('.a2l' '.main.amd' '.axl' '.exp' '.prj' '.main.xml' '.zip').
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := (recoveredBlock35Value0) asLowercase.
    recoveredBlock35Value2 := recoveredBlock35Arg1.
    recoveredBlock35Value3 := (recoveredBlock35Value1) endsWith: (recoveredBlock35Value2).
    recoveredBlock35Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203a280c; bytecode file offset 0xc9f110"
!ASDImportFileDialog methodsFor: 'recovered'!
fileFormatsWithoutExtension
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '*.a2l;*main.amd;*.axl;*main.xml;*.zip;*.arxml'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'All importable files'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := '*.a2l;*main.amd;*.axl;*.exp;*.prj;*main.xml;*.zip;*.arxml'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'All importable files'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := '*.exp;*.prj'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := EtExpFile.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := '*.a2l'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := EtA2LFile.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := '*.main.amd;*.main.xml'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := EtAmdFile.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := '*.axl;*.zip'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := EtAxlFile.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := '*.arxml'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := EtArXmlFile.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := '*.*'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'All files'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203aa5fc; bytecode file offset 0xca6f40"
!ASDImportFileDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x203f2928; bytecode file offset 0xcef22c"
!ASDImportFileDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultImportFormat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := EtExpExtension.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormatComboBox.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileFormats.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := EtAxlExtension.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := EtAxlExtension.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) fileExtension: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFormatComboBox.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileFormats.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultImportFormat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultImportFormat.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) fileExtension: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:block280f94f8Arg1 | 
    | block280f94f8Value0 block280f94f8Value1 block280f94f8Value2 block280f94f8Value3 block280f94f8Value4 |
    block280f94f8Value0 := block280f94f8Arg1.
    block280f94f8Value1 := block280f94f8Arg1.
    block280f94f8Value2 := (block280f94f8Value1) getLastPosition.
    block280f94f8Value3 := (0) @ (block280f94f8Value2).
    block280f94f8Value4 := (block280f94f8Value0) setSelection: (block280f94f8Value3).
    block280f94f8Value4
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204525a4; bytecode file offset 0xd4ee88"
!ASDImportFileDialog methodsFor: 'recovered'!
adjustToMinSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathMode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 25.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathMode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 25.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045fff8; bytecode file offset 0xd5c8f8"
!ASDImportFileDialog methodsFor: 'recovered'!
fileFormats
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack3 := ';*.prj)'.
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
            recoveredStack2 := 'main.'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := EtAmdExtension.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := EtAmdFile.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := ' ('.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := 'main.'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := EtAmdExtension.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) asWildcardExtension.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := ')'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := EtAxlExtension.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) asWildcardExtension.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := EtAxlFile.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := ' ('.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := EtAxlExtension.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) asWildcardExtension.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := ')'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204aeffc; bytecode file offset 0xdab92c"
!ASDImportFileDialog methodsFor: 'recovered'!
promptForFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileFormatsWithoutExtension.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := '*.a2l;*main.amd;*.axl;*main.xml;*.zip;*.arxml'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := ';*.exp;*.prj'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := EtasMultiFileSelectionPrompter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Call_69585'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateImportPath.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) searchPath: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := CfsFileStream.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathNameIn: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) searchPath: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'Select Import File'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayStringFromFileName.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOkButton.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) setTabItemFocus.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dc5ac; bytecode file offset 0xdd8fb8"
!ASDImportFileDialog methodsFor: 'recovered'!
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
            recoveredStack1 := [:block28107b84Arg1 | 
    | block28107b84Value0 block28107b84Value1 |
    block28107b84Value0 := block28107b84Arg1.
    block28107b84Value1 := (block28107b84Value0) optionClass.
    block28107b84Value1
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
            recoveredStack1 := [:block28107ba8Arg1 | 
    | block28107ba8Value0 block28107ba8Value1 block28107ba8Value2 |
    block28107ba8Value0 := block28107ba8Arg1.
    block28107ba8Value1 := (block28107ba8Value0) optionClass.
    block28107ba8Value2 := (block28107ba8Value1) isContainerOption.
    block28107ba8Value2
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
            recoveredBlock60Stack3 := [:block28107bccArg1 | 
    | block28107bccValue0 block28107bccValue1 |
    block28107bccValue0 := block28107bccArg1.
    block28107bccValue1 := (block28107bccValue0) optionClass.
    block28107bccValue1
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
            recoveredBlock108Stack1 := [:block28107bf0Arg1 | 
    | block28107bf0Stack0 block28107bf0Stack1 block28107bf0Stack2 block28107bf0Stack3 block28107bf0PC block28107bf0Step block28107bf0Done block28107bf0Result |
    block28107bf0Stack0 := self.
    block28107bf0PC := 4.
    block28107bf0Done := false.
    [block28107bf0Done not] whileTrue: [
        block28107bf0Step := block28107bf0PC.
        block28107bf0Step = 4 ifTrue: [
            block28107bf0Stack1 := block28107bf0Arg1.
            block28107bf0PC := 5.
        ].
        block28107bf0Step = 5 ifTrue: [
            block28107bf0Stack1 := (block28107bf0Stack1) optionClass.
            block28107bf0PC := 7.
        ].
        block28107bf0Step = 7 ifTrue: [
            (block28107bf0Stack1) updateOptionWidget.
            block28107bf0PC := 9.
        ].
        block28107bf0Step = 9 ifTrue: [
            block28107bf0Stack1 := nil.
            block28107bf0PC := 10.
        ].
        block28107bf0Step = 10 ifTrue: [
            block28107bf0Stack2 := block28107bf0Arg1.
            block28107bf0PC := 11.
        ].
        block28107bf0Step = 11 ifTrue: [
            block28107bf0Stack2 := (block28107bf0Stack2) optionClass.
            block28107bf0PC := 13.
        ].
        block28107bf0Step = 13 ifTrue: [
            block28107bf0Stack2 := (block28107bf0Stack2) isContainerOption.
            block28107bf0PC := 15.
        ].
        block28107bf0Step = 15 ifTrue: [
            (block28107bf0Stack2) ifTrue: [block28107bf0PC := 18] ifFalse: [block28107bf0PC := 36].
        ].
        block28107bf0Step = 18 ifTrue: [
            block28107bf0PC := 19.
        ].
        block28107bf0Step = 19 ifTrue: [
            block28107bf0Stack1 := block28107bf0Arg1.
            block28107bf0PC := 20.
        ].
        block28107bf0Step = 20 ifTrue: [
            block28107bf0Stack1 := (block28107bf0Stack1) optionClass.
            block28107bf0PC := 22.
        ].
        block28107bf0Step = 22 ifTrue: [
            block28107bf0Stack1 := (block28107bf0Stack1) options.
            block28107bf0PC := 23.
        ].
        block28107bf0Step = 23 ifTrue: [
            block28107bf0Stack2 := [:block28107c14Arg1 | 
    | block28107c14Value0 block28107c14Value1 block28107c14Value2 |
    block28107c14Value0 := block28107c14Arg1.
    block28107c14Value1 := (block28107c14Value0) optionClass.
    block28107c14Value2 := (block28107c14Value1) updateOptionWidget.
    block28107c14Value2
].
            block28107bf0PC := 25.
        ].
        block28107bf0Step = 25 ifTrue: [
            block28107bf0PC := 34.
        ].
        block28107bf0Step = 34 ifTrue: [
            block28107bf0Stack1 := (block28107bf0Stack1) do: (block28107bf0Stack2).
            block28107bf0PC := 36.
        ].
        block28107bf0Step = 36 ifTrue: [
            block28107bf0Result := block28107bf0Stack1.
            block28107bf0Done := true.
        ].
    ].
    block28107bf0Result
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f701c; bytecode file offset 0xdf395c"
!ASDImportFileDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOKPossible.
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
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameFromDisplayString: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := CfsStat.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) exists: (recoveredBlock29Stack2).
            recoveredBlock29PC := 41.
        ].
        recoveredBlock29Step = 41 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 44] ifFalse: [recoveredBlock29PC := 54].
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal2.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) add: (recoveredBlock29Stack2).
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 57.
        ].
        recoveredBlock29Step = 57 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) add: (recoveredBlock29Stack2).
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'call_86534'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'The import was aborted because the import files you specified could not be found.'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := EtasListConfirmationPrompter.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'The following files do not exist. Do you want to import the remaining files?'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := [:block28109cd8Arg1 | 
    | block28109cd8Value0 |
    block28109cd8Value0 := block28109cd8Arg1.
    block28109cd8Value0
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileExtension.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f9b98; bytecode file offset 0xdf64b0"
!ASDImportFileDialog methodsFor: 'recovered'!
promptForFolder
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBPathDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Call_69585'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateImportPath.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) firstSelection: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'Call_69585'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateImportPath.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) firstSelection: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) firstSelection: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'Select Import Folder'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) firstSelection: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAtCurrentMousePositionWithParent: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 163] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileField.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOkButton.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) setTabItemFocus.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2068cd54; bytecode file offset 0xf897f0"
!ASDImportFileDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal16 := recoveredStack1.
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
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            (recoveredBlock15Stack2) mwmInputMode: (recoveredBlock15Stack3).
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack3 := pathMode.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            (recoveredBlock15Stack3 == nil) ifTrue: [recoveredBlock15PC := 46] ifFalse: [recoveredBlock15PC := 34].
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack3 := pathMode.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            (recoveredBlock15Stack3) ifTrue: [recoveredBlock15PC := 40] ifFalse: [recoveredBlock15PC := 46].
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack3 := 'Select Import Directory'.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack3 := 'Select Import File'.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            (recoveredBlock15Stack2) title: (recoveredBlock15Stack3).
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack3 := MWMDECORALL.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack4 := MWMDECORMINIMIZE.
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) | (recoveredBlock15Stack4).
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Stack4 := MWMDECORMAXIMIZE.
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) | (recoveredBlock15Stack4).
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            (recoveredBlock15Stack2) mwmDecorations: (recoveredBlock15Stack3).
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 64.
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15Stack3 := 90.
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            (recoveredBlock15Stack2) height: (recoveredBlock15Stack3).
            recoveredBlock15Stack2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 71.
        ].
        recoveredBlock15Step = 71 ifTrue: [
            recoveredBlock15Stack3 := 400.
            recoveredBlock15PC := 74.
        ].
        recoveredBlock15Step = 74 ifTrue: [
            (recoveredBlock15Stack2) width: (recoveredBlock15Stack3).
            recoveredBlock15PC := 76.
        ].
        recoveredBlock15Step = 76 ifTrue: [
            recoveredBlock15Stack2 := true.
            recoveredBlock15PC := 77.
        ].
        recoveredBlock15Step = 77 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) defaultPosition: (recoveredBlock15Stack2).
            recoveredBlock15PC := 79.
        ].
        recoveredBlock15Step = 79 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'aForm'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'fileFrame'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := [:block2812ac78Arg1 | 
    | block2812ac78Value0 block2812ac78Value1 |
    block2812ac78Value0 := block2812ac78Arg1.
    block2812ac78Value1 := (block2812ac78Value0) labelString: ('Import File').
    block2812ac78Value1
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'fileFrame'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := 'fileForm'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'fileForm'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'settingsFrame'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := [:block2812ac9cArg1 | 
    | block2812ac9cValue0 block2812ac9cValue1 |
    block2812ac9cValue0 := block2812ac9cArg1.
    block2812ac9cValue1 := (block2812ac9cValue0) labelString: ('Options').
    block2812ac9cValue1
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 'settingsFrame'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := 'settingsForm'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := 'settingsForm'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) createOptionWidgetsInForm: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := 'fileButton'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := [:block2812acc0Arg1 | 
    | block2812acc0Value0 block2812acc0Value1 block2812acc0Value2 block2812acc0Value3 block2812acc0Value4 block2812acc0Value5 block2812acc0Value6 block2812acc0Value7 block2812acc0Value8 block2812acc0Value9 |
    block2812acc0Value0 := block2812acc0Arg1.
    block2812acc0Value1 := block2812acc0Value0.
    (block2812acc0Value1) height: (22).
    block2812acc0Value2 := block2812acc0Value0.
    (block2812acc0Value2) width: (22).
    block2812acc0Value3 := block2812acc0Value0.
    block2812acc0Value4 := XmICON.
    (block2812acc0Value3) labelType: (block2812acc0Value4).
    block2812acc0Value5 := block2812acc0Value0.
    (block2812acc0Value5) recomputeSize: (false).
    block2812acc0Value6 := RBUserInterface.
    block2812acc0Value7 := (block2812acc0Value6) resourceManager.
    block2812acc0Value8 := (block2812acc0Value7) returnIconWithName: ('GeneralFile').
    block2812acc0Value9 := (block2812acc0Value0) labelIcon: (block2812acc0Value8).
    block2812acc0Value9
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := 'fileButton'.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := 'fileField'.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := [:recoveredBlock321Arg1 | 
    | recoveredBlock321Value0 recoveredBlock321Value1 recoveredBlock321Value2 recoveredBlock321Value3 recoveredBlock321Value4 recoveredBlock321Value5 |
    recoveredBlock321Value0 := recoveredBlock321Arg1.
    recoveredBlock321Value1 := recoveredBlock321Value0.
    recoveredBlock321Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock321Value1) alignment: (recoveredBlock321Value2).
    recoveredBlock321Value3 := recoveredBlock321Value0.
    (recoveredBlock321Value3) height: (22).
    recoveredBlock321Value4 := (self) displayStringFromFileName.
    recoveredBlock321Value5 := (recoveredBlock321Value0) value: (recoveredBlock321Value4).
    recoveredBlock321Value5
].
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) createText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := 'fileField'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathMode.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 489].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := 'formatLabel'.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := [:block2812ace4Arg1 | 
    | block2812ace4Value0 block2812ace4Value1 block2812ace4Value2 block2812ace4Value3 block2812ace4Value4 block2812ace4Value5 |
    block2812ace4Value0 := block2812ace4Arg1.
    block2812ace4Value1 := block2812ace4Value0.
    block2812ace4Value2 := XmALIGNMENTBEGINNING.
    (block2812ace4Value1) alignment: (block2812ace4Value2).
    block2812ace4Value3 := block2812ace4Value0.
    (block2812ace4Value3) labelString: ('Import Format:').
    block2812ace4Value4 := block2812ace4Value0.
    (block2812ace4Value4) height: (22).
    block2812ace4Value5 := (block2812ace4Value0) width: (100).
    block2812ace4Value5
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := 'formatLabel'.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := 'formatComboBox'.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := [:recoveredBlock442Arg1 | 
    | recoveredBlock442Value0 recoveredBlock442Value1 recoveredBlock442Value2 recoveredBlock442Value3 recoveredBlock442Value4 |
    recoveredBlock442Value0 := recoveredBlock442Arg1.
    recoveredBlock442Value1 := recoveredBlock442Value0.
    recoveredBlock442Value2 := (self) fileFormats.
    recoveredBlock442Value3 := (recoveredBlock442Value2) values.
    (recoveredBlock442Value1) items: (recoveredBlock442Value3).
    recoveredBlock442Value4 := (recoveredBlock442Value0) height: (22).
    recoveredBlock442Value4
].
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := 'formatComboBox'.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := 'optionsButton'.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack2 := [:recoveredBlock496Arg1 | 
    | recoveredBlock496Value0 recoveredBlock496Value1 recoveredBlock496Value2 recoveredBlock496Value3 recoveredBlock496Value4 recoveredBlock496Value5 recoveredBlock496Value6 recoveredBlock496Value7 recoveredBlock496Value8 recoveredBlock496Value9 |
    recoveredBlock496Value0 := recoveredBlock496Arg1.
    recoveredBlock496Value1 := recoveredBlock496Value0.
    (recoveredBlock496Value1) indicatorOn: (false).
    recoveredBlock496Value2 := recoveredBlock496Value0.
    (recoveredBlock496Value2) recomputeSize: (false).
    recoveredBlock496Value3 := recoveredBlock496Value0.
    recoveredBlock496Value4 := (self) class.
    recoveredBlock496Value5 := (recoveredBlock496Value4) optionsExpanded.
    (recoveredBlock496Value3) set: (recoveredBlock496Value5).
    recoveredBlock496Value6 := recoveredBlock496Value0.
    recoveredBlock496Value7 := (self) optionsButtonLabel.
    (recoveredBlock496Value6) labelString: (recoveredBlock496Value7).
    recoveredBlock496Value8 := recoveredBlock496Value0.
    (recoveredBlock496Value8) height: (25).
    recoveredBlock496Value9 := (recoveredBlock496Value0) width: (80).
    recoveredBlock496Value9
].
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := 'optionsButton'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := [:block2812ad08Arg1 | 
    | block2812ad08Value0 block2812ad08Value1 block2812ad08Value2 block2812ad08Value3 |
    block2812ad08Value0 := block2812ad08Arg1.
    block2812ad08Value1 := block2812ad08Value0.
    (block2812ad08Value1) labelString: ('&Cancel').
    block2812ad08Value2 := block2812ad08Value0.
    (block2812ad08Value2) height: (25).
    block2812ad08Value3 := (block2812ad08Value0) width: (80).
    block2812ad08Value3
].
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack2 := [:block2812ad2cArg1 | 
    | block2812ad2cValue0 block2812ad2cValue1 block2812ad2cValue2 block2812ad2cValue3 |
    block2812ad2cValue0 := block2812ad2cArg1.
    block2812ad2cValue1 := block2812ad2cValue0.
    (block2812ad2cValue1) labelString: ('&OK').
    block2812ad2cValue2 := block2812ad2cValue0.
    (block2812ad2cValue2) height: (25).
    block2812ad2cValue3 := (block2812ad2cValue0) width: (80).
    block2812ad2cValue3
].
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := [:recoveredBlock674Arg1 | 
    | recoveredBlock674Value0 recoveredBlock674Value1 recoveredBlock674Value2 recoveredBlock674Value3 recoveredBlock674Value4 recoveredBlock674Value5 recoveredBlock674Value6 recoveredBlock674Value7 recoveredBlock674Value8 recoveredBlock674Value9 recoveredBlock674Value10 |
    recoveredBlock674Value0 := recoveredBlock674Arg1.
    recoveredBlock674Value1 := recoveredBlock674Value0.
    recoveredBlock674Value2 := XmATTACHWIDGET.
    (recoveredBlock674Value1) topAttachment: (recoveredBlock674Value2).
    recoveredBlock674Value3 := recoveredBlock674Value0.
    recoveredBlock674Value4 := recoveredLocal12.
    (recoveredBlock674Value3) topWidget: (recoveredBlock674Value4).
    recoveredBlock674Value5 := recoveredBlock674Value0.
    (recoveredBlock674Value5) topOffset: (5).
    recoveredBlock674Value6 := recoveredBlock674Value0.
    recoveredBlock674Value7 := XmATTACHNONE.
    (recoveredBlock674Value6) bottomAttachment: (recoveredBlock674Value7).
    recoveredBlock674Value8 := recoveredBlock674Value0.
    recoveredBlock674Value9 := XmATTACHFORM.
    (recoveredBlock674Value8) leftAttachment: (recoveredBlock674Value9).
    recoveredBlock674Value10 := (recoveredBlock674Value0) leftOffset: (5).
    recoveredBlock674Value10
].
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := [:recoveredBlock736Arg1 | 
    | recoveredBlock736Value0 recoveredBlock736Value1 recoveredBlock736Value2 recoveredBlock736Value3 recoveredBlock736Value4 recoveredBlock736Value5 recoveredBlock736Value6 recoveredBlock736Value7 recoveredBlock736Value8 recoveredBlock736Value9 recoveredBlock736Value10 |
    recoveredBlock736Value0 := recoveredBlock736Arg1.
    recoveredBlock736Value1 := recoveredBlock736Value0.
    recoveredBlock736Value2 := XmATTACHWIDGET.
    (recoveredBlock736Value1) topAttachment: (recoveredBlock736Value2).
    recoveredBlock736Value3 := recoveredBlock736Value0.
    recoveredBlock736Value4 := recoveredLocal12.
    (recoveredBlock736Value3) topWidget: (recoveredBlock736Value4).
    recoveredBlock736Value5 := recoveredBlock736Value0.
    (recoveredBlock736Value5) topOffset: (5).
    recoveredBlock736Value6 := recoveredBlock736Value0.
    recoveredBlock736Value7 := XmATTACHNONE.
    (recoveredBlock736Value6) bottomAttachment: (recoveredBlock736Value7).
    recoveredBlock736Value8 := recoveredBlock736Value0.
    recoveredBlock736Value9 := XmATTACHFORM.
    (recoveredBlock736Value8) rightAttachment: (recoveredBlock736Value9).
    recoveredBlock736Value10 := (recoveredBlock736Value0) rightOffset: (5).
    recoveredBlock736Value10
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := [:recoveredBlock798Arg1 | 
    | recoveredBlock798Value0 recoveredBlock798Value1 recoveredBlock798Value2 recoveredBlock798Value3 recoveredBlock798Value4 recoveredBlock798Value5 recoveredBlock798Value6 recoveredBlock798Value7 recoveredBlock798Value8 recoveredBlock798Value9 recoveredBlock798Value10 recoveredBlock798Value11 recoveredBlock798Value12 |
    recoveredBlock798Value0 := recoveredBlock798Arg1.
    recoveredBlock798Value1 := recoveredBlock798Value0.
    recoveredBlock798Value2 := XmATTACHWIDGET.
    (recoveredBlock798Value1) topAttachment: (recoveredBlock798Value2).
    recoveredBlock798Value3 := recoveredBlock798Value0.
    recoveredBlock798Value4 := recoveredLocal12.
    (recoveredBlock798Value3) topWidget: (recoveredBlock798Value4).
    recoveredBlock798Value5 := recoveredBlock798Value0.
    (recoveredBlock798Value5) topOffset: (5).
    recoveredBlock798Value6 := recoveredBlock798Value0.
    recoveredBlock798Value7 := XmATTACHNONE.
    (recoveredBlock798Value6) bottomAttachment: (recoveredBlock798Value7).
    recoveredBlock798Value8 := recoveredBlock798Value0.
    recoveredBlock798Value9 := XmATTACHWIDGET.
    (recoveredBlock798Value8) rightAttachment: (recoveredBlock798Value9).
    recoveredBlock798Value10 := recoveredBlock798Value0.
    recoveredBlock798Value11 := recoveredLocal2.
    (recoveredBlock798Value10) rightWidget: (recoveredBlock798Value11).
    recoveredBlock798Value12 := (recoveredBlock798Value0) rightOffset: (5).
    recoveredBlock798Value12
].
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack1 := [:block2812ad50Arg1 | 
    | block2812ad50Value0 block2812ad50Value1 block2812ad50Value2 block2812ad50Value3 block2812ad50Value4 block2812ad50Value5 block2812ad50Value6 block2812ad50Value7 block2812ad50Value8 block2812ad50Value9 block2812ad50Value10 block2812ad50Value11 |
    block2812ad50Value0 := block2812ad50Arg1.
    block2812ad50Value1 := block2812ad50Value0.
    block2812ad50Value2 := XmATTACHFORM.
    (block2812ad50Value1) topAttachment: (block2812ad50Value2).
    block2812ad50Value3 := block2812ad50Value0.
    (block2812ad50Value3) topOffset: (5).
    block2812ad50Value4 := block2812ad50Value0.
    block2812ad50Value5 := XmATTACHNONE.
    (block2812ad50Value4) bottomAttachment: (block2812ad50Value5).
    block2812ad50Value6 := block2812ad50Value0.
    block2812ad50Value7 := XmATTACHFORM.
    (block2812ad50Value6) leftAttachment: (block2812ad50Value7).
    block2812ad50Value8 := block2812ad50Value0.
    (block2812ad50Value8) leftOffset: (5).
    block2812ad50Value9 := block2812ad50Value0.
    block2812ad50Value10 := XmATTACHFORM.
    (block2812ad50Value9) rightAttachment: (block2812ad50Value10).
    block2812ad50Value11 := block2812ad50Value0.
    (block2812ad50Value11) rightOffset: (5).
    block2812ad50Value0
].
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack1 := [:recoveredBlock938Arg1 | 
    | recoveredBlock938Value0 recoveredBlock938Value1 recoveredBlock938Value2 recoveredBlock938Value3 recoveredBlock938Value4 recoveredBlock938Value5 recoveredBlock938Value6 recoveredBlock938Value7 recoveredBlock938Value8 recoveredBlock938Value9 recoveredBlock938Value10 recoveredBlock938Value11 recoveredBlock938Value12 recoveredBlock938Value13 recoveredBlock938Value14 |
    recoveredBlock938Value0 := recoveredBlock938Arg1.
    recoveredBlock938Value1 := recoveredBlock938Value0.
    recoveredBlock938Value2 := XmATTACHWIDGET.
    (recoveredBlock938Value1) topAttachment: (recoveredBlock938Value2).
    recoveredBlock938Value3 := recoveredBlock938Value0.
    recoveredBlock938Value4 := recoveredLocal3.
    (recoveredBlock938Value3) topWidget: (recoveredBlock938Value4).
    recoveredBlock938Value5 := recoveredBlock938Value0.
    (recoveredBlock938Value5) topOffset: (5).
    recoveredBlock938Value6 := recoveredBlock938Value0.
    recoveredBlock938Value7 := XmATTACHFORM.
    (recoveredBlock938Value6) bottomAttachment: (recoveredBlock938Value7).
    recoveredBlock938Value8 := recoveredBlock938Value0.
    (recoveredBlock938Value8) bottomOffset: (5).
    recoveredBlock938Value9 := recoveredBlock938Value0.
    recoveredBlock938Value10 := XmATTACHFORM.
    (recoveredBlock938Value9) leftAttachment: (recoveredBlock938Value10).
    recoveredBlock938Value11 := recoveredBlock938Value0.
    (recoveredBlock938Value11) leftOffset: (5).
    recoveredBlock938Value12 := recoveredBlock938Value0.
    recoveredBlock938Value13 := XmATTACHFORM.
    (recoveredBlock938Value12) rightAttachment: (recoveredBlock938Value13).
    recoveredBlock938Value14 := recoveredBlock938Value0.
    (recoveredBlock938Value14) rightOffset: (5).
    recoveredBlock938Value0
].
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack1 := [:recoveredBlock1020Arg1 | 
    | recoveredBlock1020Value0 recoveredBlock1020Value1 recoveredBlock1020Value2 recoveredBlock1020Value3 recoveredBlock1020Value4 recoveredBlock1020Value5 recoveredBlock1020Value6 recoveredBlock1020Value7 recoveredBlock1020Value8 recoveredBlock1020Value9 recoveredBlock1020Value10 recoveredBlock1020Value11 recoveredBlock1020Value12 |
    recoveredBlock1020Value0 := recoveredBlock1020Arg1.
    recoveredBlock1020Value1 := recoveredBlock1020Value0.
    recoveredBlock1020Value2 := XmATTACHFORM.
    (recoveredBlock1020Value1) topAttachment: (recoveredBlock1020Value2).
    recoveredBlock1020Value3 := recoveredBlock1020Value0.
    recoveredBlock1020Value4 := XmATTACHNONE.
    (recoveredBlock1020Value3) bottomAttachment: (recoveredBlock1020Value4).
    recoveredBlock1020Value5 := recoveredBlock1020Value0.
    recoveredBlock1020Value6 := XmATTACHFORM.
    (recoveredBlock1020Value5) leftAttachment: (recoveredBlock1020Value6).
    recoveredBlock1020Value7 := recoveredBlock1020Value0.
    (recoveredBlock1020Value7) leftOffset: (5).
    recoveredBlock1020Value8 := recoveredBlock1020Value0.
    recoveredBlock1020Value9 := XmATTACHWIDGET.
    (recoveredBlock1020Value8) rightAttachment: (recoveredBlock1020Value9).
    recoveredBlock1020Value10 := recoveredBlock1020Value0.
    recoveredBlock1020Value11 := recoveredLocal4.
    (recoveredBlock1020Value10) rightWidget: (recoveredBlock1020Value11).
    recoveredBlock1020Value12 := recoveredBlock1020Value0.
    (recoveredBlock1020Value12) rightOffset: (10).
    recoveredBlock1020Value0
].
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack1 := [:block2812ad74Arg1 | 
    | block2812ad74Value0 block2812ad74Value1 block2812ad74Value2 block2812ad74Value3 block2812ad74Value4 block2812ad74Value5 block2812ad74Value6 block2812ad74Value7 block2812ad74Value8 block2812ad74Value9 |
    block2812ad74Value0 := block2812ad74Arg1.
    block2812ad74Value1 := block2812ad74Value0.
    block2812ad74Value2 := XmATTACHFORM.
    (block2812ad74Value1) topAttachment: (block2812ad74Value2).
    block2812ad74Value3 := block2812ad74Value0.
    block2812ad74Value4 := XmATTACHNONE.
    (block2812ad74Value3) bottomAttachment: (block2812ad74Value4).
    block2812ad74Value5 := block2812ad74Value0.
    block2812ad74Value6 := XmATTACHNONE.
    (block2812ad74Value5) leftAttachment: (block2812ad74Value6).
    block2812ad74Value7 := block2812ad74Value0.
    block2812ad74Value8 := XmATTACHFORM.
    (block2812ad74Value7) rightAttachment: (block2812ad74Value8).
    block2812ad74Value9 := block2812ad74Value0.
    (block2812ad74Value9) rightOffset: (5).
    block2812ad74Value0
].
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathMode.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1154] ifFalse: [recoveredPC := 1317].
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            recoveredStack1 := [:recoveredBlock1157Arg1 | 
    | recoveredBlock1157Value0 recoveredBlock1157Value1 recoveredBlock1157Value2 recoveredBlock1157Value3 recoveredBlock1157Value4 recoveredBlock1157Value5 recoveredBlock1157Value6 recoveredBlock1157Value7 recoveredBlock1157Value8 recoveredBlock1157Value9 recoveredBlock1157Value10 recoveredBlock1157Value11 recoveredBlock1157Value12 |
    recoveredBlock1157Value0 := recoveredBlock1157Arg1.
    recoveredBlock1157Value1 := recoveredBlock1157Value0.
    recoveredBlock1157Value2 := XmATTACHWIDGET.
    (recoveredBlock1157Value1) topAttachment: (recoveredBlock1157Value2).
    recoveredBlock1157Value3 := recoveredBlock1157Value0.
    recoveredBlock1157Value4 := recoveredLocal6.
    (recoveredBlock1157Value3) topWidget: (recoveredBlock1157Value4).
    recoveredBlock1157Value5 := recoveredBlock1157Value0.
    (recoveredBlock1157Value5) topOffset: (5).
    recoveredBlock1157Value6 := recoveredBlock1157Value0.
    recoveredBlock1157Value7 := XmATTACHNONE.
    (recoveredBlock1157Value6) bottomAttachment: (recoveredBlock1157Value7).
    recoveredBlock1157Value8 := recoveredBlock1157Value0.
    recoveredBlock1157Value9 := XmATTACHFORM.
    (recoveredBlock1157Value8) leftAttachment: (recoveredBlock1157Value9).
    recoveredBlock1157Value10 := recoveredBlock1157Value0.
    (recoveredBlock1157Value10) leftOffset: (5).
    recoveredBlock1157Value11 := recoveredBlock1157Value0.
    recoveredBlock1157Value12 := XmATTACHNONE.
    (recoveredBlock1157Value11) rightAttachment: (recoveredBlock1157Value12).
    recoveredBlock1157Value0
].
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack1 := [:recoveredBlock1228Arg1 | 
    | recoveredBlock1228Value0 recoveredBlock1228Value1 recoveredBlock1228Value2 recoveredBlock1228Value3 recoveredBlock1228Value4 recoveredBlock1228Value5 recoveredBlock1228Value6 recoveredBlock1228Value7 recoveredBlock1228Value8 recoveredBlock1228Value9 recoveredBlock1228Value10 recoveredBlock1228Value11 recoveredBlock1228Value12 recoveredBlock1228Value13 recoveredBlock1228Value14 recoveredBlock1228Value15 recoveredBlock1228Value16 recoveredBlock1228Value17 |
    recoveredBlock1228Value0 := recoveredBlock1228Arg1.
    recoveredBlock1228Value1 := recoveredBlock1228Value0.
    recoveredBlock1228Value2 := XmATTACHWIDGET.
    (recoveredBlock1228Value1) topAttachment: (recoveredBlock1228Value2).
    recoveredBlock1228Value3 := recoveredBlock1228Value0.
    recoveredBlock1228Value4 := recoveredLocal6.
    (recoveredBlock1228Value3) topWidget: (recoveredBlock1228Value4).
    recoveredBlock1228Value5 := recoveredBlock1228Value0.
    (recoveredBlock1228Value5) topOffset: (5).
    recoveredBlock1228Value6 := recoveredBlock1228Value0.
    recoveredBlock1228Value7 := XmATTACHNONE.
    (recoveredBlock1228Value6) bottomAttachment: (recoveredBlock1228Value7).
    recoveredBlock1228Value8 := recoveredBlock1228Value0.
    recoveredBlock1228Value9 := XmATTACHWIDGET.
    (recoveredBlock1228Value8) leftAttachment: (recoveredBlock1228Value9).
    recoveredBlock1228Value10 := recoveredBlock1228Value0.
    recoveredBlock1228Value11 := recoveredLocal10.
    (recoveredBlock1228Value10) leftWidget: (recoveredBlock1228Value11).
    recoveredBlock1228Value12 := recoveredBlock1228Value0.
    (recoveredBlock1228Value12) leftOffset: (5).
    recoveredBlock1228Value13 := recoveredBlock1228Value0.
    recoveredBlock1228Value14 := XmATTACHWIDGET.
    (recoveredBlock1228Value13) rightAttachment: (recoveredBlock1228Value14).
    recoveredBlock1228Value15 := recoveredBlock1228Value0.
    recoveredBlock1228Value16 := recoveredLocal4.
    (recoveredBlock1228Value15) rightWidget: (recoveredBlock1228Value16).
    recoveredBlock1228Value17 := recoveredBlock1228Value0.
    (recoveredBlock1228Value17) rightOffset: (10).
    recoveredBlock1228Value0
].
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack3 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1329.
        ].
        recoveredStep = 1329 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1333.
        ].
        recoveredStep = 1333 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1336.
        ].
        recoveredStep = 1336 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1341.
        ].
        recoveredStep = 1341 ifTrue: [
            recoveredStack3 := 'valueChanged:clientData:callData:'.
            recoveredPC := 1344.
        ].
        recoveredStep = 1344 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 1347.
        ].
        recoveredStep = 1347 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1351.
        ].
        recoveredStep = 1351 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1358.
        ].
        recoveredStep = 1358 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1359.
        ].
        recoveredStep = 1359 ifTrue: [
            recoveredStack3 := 'buttonActivate:clientData:callData:'.
            recoveredPC := 1362.
        ].
        recoveredStep = 1362 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 1365.
        ].
        recoveredStep = 1365 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1369.
        ].
        recoveredStep = 1369 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathMode.
            recoveredPC := 1375.
        ].
        recoveredStep = 1375 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1378] ifFalse: [recoveredPC := 1407].
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1381.
        ].
        recoveredStep = 1381 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack4 := 'formatValueChanged:clientData:callData:'.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1391.
        ].
        recoveredStep = 1391 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack3 := 'formatValueChanged:clientData:callData:'.
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack3 := 'optionsActivate:clientData:callData:'.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1423.
        ].
        recoveredStep = 1423 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1431.
        ].
        recoveredStep = 1431 ifTrue: [
            recoveredStack3 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1434.
        ].
        recoveredStep = 1434 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1435.
        ].
        recoveredStep = 1435 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1439.
        ].
        recoveredStep = 1439 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1442.
        ].
        recoveredStep = 1442 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            recoveredStack3 := 'okActivate:clientData:callData:'.
            recoveredPC := 1450.
        ].
        recoveredStep = 1450 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1451.
        ].
        recoveredStep = 1451 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1455.
        ].
        recoveredStep = 1455 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1463.
        ].
        recoveredStep = 1463 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1474.
        ].
        recoveredStep = 1474 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1479.
        ].
        recoveredStep = 1479 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1487.
        ].
        recoveredStep = 1487 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1498.
        ].
        recoveredStep = 1498 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 1505.
        ].
        recoveredStep = 1505 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1508.
        ].
        recoveredStep = 1508 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1511.
        ].
        recoveredStep = 1511 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1519.
        ].
        recoveredStep = 1519 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

