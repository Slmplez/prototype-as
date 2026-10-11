"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004ef0; bytecode file offset 0x90206c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
fractionComplete: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006534; bytecode file offset 0x902de8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
shellClose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20009260; bytecode file offset 0x908be4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
informationAmount
    | recoveredValue0 |
    recoveredValue0 := (self) getCurrentInformationCountFiltered.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200096a4; bytecode file offset 0x908be4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
warningAmount
    | recoveredValue0 |
    recoveredValue0 := (self) getCurrentWarningCountFiltered.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000adc0; bytecode file offset 0x908be4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
informationAmountComplete
    | recoveredValue0 |
    recoveredValue0 := (self) getCurrentInformations.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b390; bytecode file offset 0x908be4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
errorAmount
    | recoveredValue0 |
    recoveredValue0 := (self) getCurrentErrorCountFilterd.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b510; bytecode file offset 0x908be4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
warningAmountComplete
    | recoveredValue0 |
    recoveredValue0 := (self) getCurrentWarningCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c164; bytecode file offset 0x908be4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
errorAmountComplete
    | recoveredValue0 |
    recoveredValue0 := (self) getCurrentErrorCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200135e4; bytecode file offset 0x912098"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
shellBasicTitleText
    | recoveredValue0 |
    recoveredValue0 := EtMonitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f3ac; bytecode file offset 0x92209c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
defaultIcon
    ^'GeneralEdit32'
! !

"ASDBase.ic method 0x20028bf4; bytecode file offset 0x934580"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
completeMonitorFileNameDeveloperLanguage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) completeMonitorFileNameDeveloperLanguage.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029844; bytecode file offset 0x934580"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
monitorFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultMonitorFileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f2e4; bytecode file offset 0x934580"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getSelectedErrors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetErrorList.
    recoveredValue1 := (recoveredValue0) selectedItems.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dde8; bytecode file offset 0x93bf94"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isCanceled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGProgressReporter.
    recoveredValue1 := (recoveredValue0) isCanceled.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eb88; bytecode file offset 0x93bf94"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
hasHaltConditions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) hasHaltConditions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200426f4; bytecode file offset 0x93efa8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isVisible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := isHidden.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004290c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetStatusBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('statusBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004292c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetTranscript
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('text').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200433bc; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetPageBuild
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('build').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004348c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetCancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancelButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043d2c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetStatusIcon
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('statusIcon').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004446c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetScrolledText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200447ac; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetErrorList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('errorList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004537c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetProgressBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('progressBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045fbc; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetHideButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('hideButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004656c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetStatusLab
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('statusLab').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046bfc; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetCheckBoxError
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('radioError').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046d2c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetCheckBoxAll
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('radioAll').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046ffc; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetCheckBoxWarning
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('radioWarning').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004737c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetPageTabBuild
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buildTab').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200473cc; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
notebook
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('notebook').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a4c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetCheckBoxInformation
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('radioInformation').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047cec; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetProgressFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('progressFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004863c; bytecode file offset 0x9451f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
widgetProgressLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('progressLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200491e4; bytecode file offset 0x945a98"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
resetHiddenErrorWarningTypes
    hiddenErrorWarningTypes := nil.
    ^self
! !

"ASDBase.ic method 0x2004ab08; bytecode file offset 0x9473bc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
allowShutDown
    shutDownAllowed := true.
    ^self
! !

"ASDBase.ic method 0x2004e720; bytecode file offset 0x94d048"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createDefaultUISettings
    (self) storeUISettings.
    ^self
! !

"ASDBase.ic method 0x2004f158; bytecode file offset 0x94d048"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
delete
    (self) cut.
    ^self
! !

"ASDBase.ic method 0x2004f890; bytecode file offset 0x94d048"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
showBuildTab
    (self) selectBuildPage.
    ^self
! !

"ASDBase.ic method 0x2004fdc4; bytecode file offset 0x94d048"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
cr
    (self) monitorCr.
    ^self
! !

"ASDBase.ic method 0x2005a47c; bytecode file offset 0x957a6c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
errorListDefaultAction: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuShowError.
    ^self
! !

"ASDBase.ic method 0x2005bd84; bytecode file offset 0x958ab0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuResetHaltConditions
    | recoveredValue0 |
    recoveredValue0 := SGCgErrorHandler.
    (recoveredValue0) resetHaltConditions.
    ^self
! !

"ASDBase.ic method 0x2005c49c; bytecode file offset 0x959680"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
helpServer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionExternalHelpUrl.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ef2c; bytecode file offset 0x95b7f0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
resetCurrentSettings
    (self) currentErrorHandler: (nil).
    ^self
! !

"ASDBase.ic method 0x2005fde8; bytecode file offset 0x95c79c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateErrors
    (self) updateErrorsCollapse: (true).
    ^self
! !

"ASDBase.ic method 0x200639f4; bytecode file offset 0x961970"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
cut
    | recoveredValue0 |
    recoveredValue0 := (self) widgetTranscript.
    (recoveredValue0) cutSelection.
    ^self
! !

"ASDBase.ic method 0x20063af4; bytecode file offset 0x961970"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
findReplace
    | recoveredValue0 |
    recoveredValue0 := (self) widgetTranscript.
    (recoveredValue0) findReplace.
    ^self
! !

"ASDBase.ic method 0x20063cd4; bytecode file offset 0x961970"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
paste
    | recoveredValue0 |
    recoveredValue0 := (self) widgetTranscript.
    (recoveredValue0) paste.
    ^self
! !

"ASDBase.ic method 0x20064dd4; bytecode file offset 0x961970"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
selectAll
    | recoveredValue0 |
    recoveredValue0 := (self) widgetTranscript.
    (recoveredValue0) selectAll.
    ^self
! !

"ASDBase.ic method 0x2006fd18; bytecode file offset 0x96c6ac"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
currentErrorHandler
    | recoveredValue0 |
    recoveredValue0 := currentErrorHandler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fe9c; bytecode file offset 0x96c850"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messageTypeSelection
    | recoveredValue0 |
    recoveredValue0 := messageTypeSelection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070078; bytecode file offset 0x96cb7c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
errorLists
    | recoveredValue0 |
    recoveredValue0 := errorLists.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007030c; bytecode file offset 0x96ce40"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
setFocusAtReactivate
    | recoveredValue0 |
    recoveredValue0 := setFocusAtReactivate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070760; bytecode file offset 0x96d06c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
lastFocusShell
    | recoveredValue0 |
    recoveredValue0 := lastFocusShell.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200707ec; bytecode file offset 0x96d218"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
iconName
    | recoveredValue0 |
    recoveredValue0 := iconName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089a6c; bytecode file offset 0x986328"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initializeErrorList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    errorLists := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200923dc; bytecode file offset 0x98ed78"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
fileOutErrorsAsXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGCodegenCompileLinkErrorDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) fileOutErrorsAsXML: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200983a4; bytecode file offset 0x995850"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetProgressLabel.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) labelString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009bde0; bytecode file offset 0x9986a4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
monitorShortName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsFileStream.
    recoveredValue1 := (self) monitorFileName.
    recoveredValue2 := (recoveredValue0) fileNameIn: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) trimBlanks.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009c840; bytecode file offset 0x999628"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
setToEnd
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    (self) lastFocusShell: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a08d0; bytecode file offset 0x99d3ac"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initializePages
    (self) initializeMonitorPage.
    (self) initializeBuildPage.
    ^self
! !

"ASDBase.ic method 0x200a166c; bytecode file offset 0x99dfb8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateWindowLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) shellBasicTitleText.
    (recoveredValue0) title: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a1f1c; bytecode file offset 0x99e870"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
showErrors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetCheckBoxAll.
    recoveredValue1 := (recoveredValue0) set.
    recoveredValue2 := (self) widgetCheckBoxError.
    recoveredValue3 := (recoveredValue2) set.
    recoveredValue4 := (recoveredValue1) | (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a1f7c; bytecode file offset 0x99e870"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
showWarnings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetCheckBoxAll.
    recoveredValue1 := (recoveredValue0) set.
    recoveredValue2 := (self) widgetCheckBoxWarning.
    recoveredValue3 := (recoveredValue2) set.
    recoveredValue4 := (recoveredValue1) | (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a1f94; bytecode file offset 0x99e870"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
showInformation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetCheckBoxAll.
    recoveredValue1 := (recoveredValue0) set.
    recoveredValue2 := (self) widgetCheckBoxInformation.
    recoveredValue3 := (recoveredValue2) set.
    recoveredValue4 := (recoveredValue1) | (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a9fc8; bytecode file offset 0x9a69f0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
saveToPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) defaultFileName.
    recoveredValue3 := (self) saveToPath: (recoveredValue0) fileName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aba70; bytecode file offset 0x9a832c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
setCurrentPage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) notebook.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) selectItem: (recoveredValue1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x200ba6d0; bytecode file offset 0x9b708c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
addText: recoveredArg1
    | recoveredValue0 |
    (self) selectMonitorPage.
    recoveredValue0 := recoveredArg1.
    (self) monitorAppendText: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba780; bytecode file offset 0x9b708c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
monitorShowSameLine: recoveredArg1
    | recoveredValue0 |
    (self) selectMonitorPage.
    recoveredValue0 := recoveredArg1.
    (self) monitorAppendText: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c6278; bytecode file offset 0x9c2bec"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
currentErrorHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentErrorHandler := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c63fc; bytecode file offset 0x9c2dd0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messageTypeSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messageTypeSelection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c69f4; bytecode file offset 0x9c3470"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
setFocusAtReactivate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    setFocusAtReactivate := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6d38; bytecode file offset 0x9c36ec"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
lastFocusShell: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastFocusShell := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6fbc; bytecode file offset 0x9c38d8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
iconName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iconName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9c08; bytecode file offset 0x9c65cc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
errorListchildren: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getChildrenForUnit: (recoveredValue2).
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200caa70; bytecode file offset 0x9c7330"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
selectMonitorPage
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetAt: ('monitorTab').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) selectPage: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb3d0; bytecode file offset 0x9c7c90"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
selectBuildPage
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetAt: ('buildTab').
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := (self) selectPage: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd074; bytecode file offset 0x9c99ac"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
errorFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getETASLogFilePath.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) defaultFileName.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d5be0; bytecode file offset 0x9d249c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
reactivateWindow
    super reactivateWindow.
    isHidden := false.
    ^self
! !

"ASDBase.ic method 0x200e0944; bytecode file offset 0x9dd260"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
emptyCodegenMessagesUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgUnit.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgErrorHandler.
    recoveredValue4 := (recoveredValue3) codegenMessagesTitle.
    (recoveredValue2) text: (recoveredValue4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e097c; bytecode file offset 0x9dd260"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
emptyHWCMessagesUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgUnit.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgErrorHandler.
    recoveredValue4 := (recoveredValue3) hwcMessagesTitle.
    (recoveredValue2) text: (recoveredValue4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e0998; bytecode file offset 0x9dd260"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
emptyCompileLinkErrorsUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgUnit.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgErrorHandler.
    recoveredValue4 := (recoveredValue3) compileLinkMessagesTitle.
    (recoveredValue2) text: (recoveredValue4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e14c4; bytecode file offset 0x9dddc0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentWarningCount
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3420Arg1 | 
    true
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentWarningCount: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e14e4; bytecode file offset 0x9dddc0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentInformations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3468Arg1 | 
    true
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentInformationCount: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e14f4; bytecode file offset 0x9dddc0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentErrorCount
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c348cArg1 | 
    true
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentErrorCount: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e34d4; bytecode file offset 0x9dfda8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
resetAll
    (self) initializeErrorList.
    (self) resetCurrentSettings.
    (self) updateStatusLabel.
    ^self
! !

"ASDBase.ic method 0x200e49a4; bytecode file offset 0x9e1264"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateHideButton
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetHideButton.
    recoveredValue1 := (self) getNumberOfHiddenMessages.
    recoveredValue2 := (recoveredValue1) ~= (0).
    (recoveredValue0) sensitive: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ff408; bytecode file offset 0x9fbd94"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
enableCancel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCancelButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCancelButton.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) setSensitive: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20102e30; bytecode file offset 0x9ff70c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
hasProgressBar
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20102f00; bytecode file offset 0x9ff8dc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
currentProject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentErrorHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201080e8; bytecode file offset 0xa049ac"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
resetHWCMessages
    | recoveredValue0 |
    recoveredValue0 := (self) emptyHWCMessagesUnit.
    (self) setErrors: (recoveredValue0).
    (self) resetCurrentSettings.
    (self) updateStatusLabel.
    ^self
! !

"ASDBase.ic method 0x20108444; bytecode file offset 0xa04d08"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
clear
    | recoveredValue0 |
    (self) fractionComplete: (0).
    recoveredValue0 := (self) widgetTranscript.
    (recoveredValue0) setString: ('').
    ^self
! !

"ASDBase.ic method 0x201095c8; bytecode file offset 0xa05eb0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuExpandErrorList
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) expandAll.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201095dc; bytecode file offset 0xa05eb0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuCollapseErrorList
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) collapseAll.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201099c4; bytecode file offset 0xa0628c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
monitorCr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetTranscript.
    (recoveredValue0) cr.
    recoveredValue1 := (self) widgetTranscript.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) lineDelimiter.
    (self) appendInFile: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20110f78; bytecode file offset 0xa0d838"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
showUnit: recoveredArg1 errorHandler: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentErrorHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) currentErrorHandler: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateUnit: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201135a0; bytecode file offset 0xa0ff2c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isMessagePromoted: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessagePromoted: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201135d0; bytecode file offset 0xa0ff2c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isMessagePromotedLocal: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessagePromotedLocal: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201135e0; bytecode file offset 0xa0ff2c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isMessagePromotedToWarning: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessagePromotedToWarning: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20113660; bytecode file offset 0xa0ff2c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isMessagePromotedGlobal: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessagePromotedGlobal: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20113670; bytecode file offset 0xa0ff2c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isMessagePromotedToError: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessagePromotedToError: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201176dc; bytecode file offset 0xa13fa0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
activateShowAllInBuildPage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('What_5377').
    recoveredValue1 := (self) widgetCheckBoxAll.
    (recoveredValue1) setState: (true) notify: (true).
    ^self
! !

"ASDBase.ic method 0x20118820; bytecode file offset 0xa150e8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
reposition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) createDefaultWindowConfiguration.
    (self) windowConfiguration: (recoveredValue1).
    (self) updateLayout.
    (self) updateWindowLabel.
    ^self
! !

"ASDBase.ic method 0x2011a1d4; bytecode file offset 0xa16b44"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
collectErrors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorLists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c87ccArg1 | 
    | block280c87ccValue0 block280c87ccValue1 block280c87ccValue2 |
    block280c87ccValue0 := block280c87ccArg1.
    block280c87ccValue1 := (block280c87ccValue0) subUnits.
    block280c87ccValue2 := (block280c87ccValue1) notEmpty.
    block280c87ccValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011ca04; bytecode file offset 0xa192e8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 |
    super preClosingActivities.
    (self) storeUISettings.
    recoveredValue0 := (self) userInterfaceManager.
    (recoveredValue0) writeSettingsFile.
    ^self
! !

"ASDBase.ic method 0x20120848; bytecode file offset 0xa1d110"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
makeAlwaysOnTop: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super makeAlwaysOnTop: (recoveredValue0).
    recoveredValue1 := ASDGeneralOptions.
    recoveredValue2 := (recoveredValue1) instance.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) optionMonitorWindowOnTop: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201221fc; bytecode file offset 0xa1eab8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
notify: recoveredArg1 runtimeSeconds: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionNotificationMinimum.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201249bc; bytecode file offset 0xa21280"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuAlwaysOnTop
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionMonitorWindowOnTop.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) not.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) makeAlwaysOnTop: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2012b544; bytecode file offset 0xa27e0c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
nextProgressCharacter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_74393').
    (self) selectMonitorPage.
    recoveredValue1 := (self) widgetTranscript.
    (recoveredValue1) nextProgressCharacter.
    ^self
! !

"ASDBase.ic method 0x20136220; bytecode file offset 0xa32ae0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
hideButtonValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIndexForCurrentSelectedTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) updateErrors.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) updateStatusLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201370dc; bytecode file offset 0xa339b8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuHaltOnError
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGCgErrorHandler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicId.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addHaltCondition: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201389f0; bytecode file offset 0xa352cc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
ignoreGlobalPromotedMessage: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ignoreGlobalPromotedMessage: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20138a00; bytecode file offset 0xa352cc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
revokeMessage: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) revokeMessage: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013a7fc; bytecode file offset 0xa370c0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateDisplay
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cb5a4Arg1 | 
    | block280cb5a4Value0 block280cb5a4Value1 block280cb5a4Value2 |
    block280cb5a4Value0 := block280cb5a4Arg1.
    block280cb5a4Value1 := (block280cb5a4Value0) value.
    block280cb5a4Value2 := (block280cb5a4Value1) updateDisplay.
    block280cb5a4Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c13c; bytecode file offset 0xa389f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
userInterfaceManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userInterfaceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDUserInterfaceManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            userInterfaceManager := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := userInterfaceManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20149dd4; bytecode file offset 0xa46694"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getSelectedNode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014ae14; bytecode file offset 0xa476d4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
addHiddenErrorWarningTypes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) addHiddenCodeGenMessages: (recoveredStack1).
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

"ASDBase.ic method 0x2014b418; bytecode file offset 0xa47cd4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
promoteMessage: recoveredArg1 toType: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) promoteMessage: (recoveredStack1) toType: (recoveredStack2).
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

"ASDBase.ic method 0x201578f0; bytecode file offset 0xa541bc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGProgressReporter.
    (recoveredValue0) cancel: (true).
    (self) enableCancel: (false).
    recoveredValue1 := (self) widgetProgressLabel.
    (recoveredValue1) labelString: ('Operation aborted. Waiting for processes to finish').
    ^self
! !

"ASDBase.ic method 0x2015a938; bytecode file offset 0xa571f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
singleSelectionTabStrip: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super singleSelectionTabStrip: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIndexForCurrentSelectedTab.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015efd8; bytecode file offset 0xa5b8a0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
resetCGenMessages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) emptyCodegenMessagesUnit.
    (self) setErrors: (recoveredValue0).
    recoveredValue1 := (self) emptyCompileLinkErrorsUnit.
    (self) setErrors: (recoveredValue1).
    (self) resetCurrentSettings.
    (self) updateStatusLabel.
    ^self
! !

"ASDBase.ic method 0x2015f7a0; bytecode file offset 0xa5c06c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateErrorList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) resetHiddenErrorWarningTypes.
    recoveredValue0 := (self) widgetErrorList.
    recoveredValue1 := (self) widgetErrorList.
    recoveredValue2 := (recoveredValue1) items.
    (recoveredValue0) items: (recoveredValue2).
    (self) updateHideButton.
    (self) updateStatusLabel.
    ^self
! !

"ASDBase.ic method 0x2016efb8; bytecode file offset 0xa6b884"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
readMonitorContentsFromLogFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) readMonitorContentsFromLogFile.
    recoveredValue3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := (self) widgetTranscript.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) setString: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201816e4; bytecode file offset 0xa7dfac"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
save
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorFileName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) fileOutErrors: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
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
            recoveredStack1 := (recoveredStack1) monitorFileName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) saveQueryIn: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20198cdc; bytecode file offset 0xa955a4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
optionNotificationActive
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'NotificationActive'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20198fb8; bytecode file offset 0xa95884"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuVerbose
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionMonitorWindowVerbose.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) not.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := SGMonitorManager.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) verbose: (recoveredValue6).
    recoveredValue7 := ASDGeneralOptions.
    recoveredValue8 := (recoveredValue7) instance.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) optionMonitorWindowVerbose: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201a01dc; bytecode file offset 0xa9ca98"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
switchVisibility
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isHidden.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) show.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) hide.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := isHidden.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            isHidden := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a43c8; bytecode file offset 0xaa0c94"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
appendInFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Should not be called. Please refactor code and use method in class SGMonitorStreamDummy'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) appendInFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad2a4; bytecode file offset 0xaa9b88"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
monitorPageSelected
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'monitorTab'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) notebook.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad2c0; bytecode file offset 0xaa9b88"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
buildPageSelected
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'buildTab'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) notebook.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cf2d4; bytecode file offset 0xacbbb0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
showCodegenMessagesUnit: recoveredArg1 errorHandler: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentErrorHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) currentErrorHandler: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyCodegenMessagesUnit.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateUnit: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cf2ec; bytecode file offset 0xacbbb0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
showCompileLinkErrorsUnit: recoveredArg1 errorHandler: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentErrorHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) currentErrorHandler: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyCompileLinkErrorsUnit.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateUnit: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5ca8; bytecode file offset 0xad256c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
permissionForClosing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shutDownAllowed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetProgressFrame.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isManaged.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) switchVisibility.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := shutDownAllowed.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e14b4; bytecode file offset 0xaddd88"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuShowErrorWarningType
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDCodeGenMessageConfigurationDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentProject.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) project: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) updateErrorList.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) expandAll.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ef17c; bytecode file offset 0xaeba90"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuOpenCgenDirectory
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ASDPathOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionRedirectedCodeGenerationPath.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := ('explorer.exe /e,') , (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := OSCall.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := PlatformConstants.
    recoveredValue9 := (recoveredValue8) at: ('SwShow').
    (recoveredValue6) winExec: (recoveredValue7) fuCmdShow: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201f8678; bytecode file offset 0xaf4f44"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
optionNotificationMinimum
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'NotificationMinimum'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fc1ec; bytecode file offset 0xaf8ab0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getSelectedError
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgUnit.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202096bc; bytecode file offset 0xb05f84"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messagesDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) errorLists.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (self) messages: (recoveredBlock11Value0) do: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20219564; bytecode file offset 0xb15e7c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentWarningCountFiltered
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHideButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentWarningCount.
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
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := (self) hiddenErrorWarningTypes.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) basicId.
    recoveredBlock14Value3 := (recoveredBlock14Value0) includes: (recoveredBlock14Value2).
    recoveredBlock14Value4 := (recoveredBlock14Value3) not.
    recoveredBlock14Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentWarningCount: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20219588; bytecode file offset 0xb15e7c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentInformationCountFiltered
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHideButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentInformations.
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
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := (self) hiddenErrorWarningTypes.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) basicId.
    recoveredBlock14Value3 := (recoveredBlock14Value0) includes: (recoveredBlock14Value2).
    recoveredBlock14Value4 := (recoveredBlock14Value3) not.
    recoveredBlock14Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentInformationCount: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202195ac; bytecode file offset 0xb15e7c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentErrorCountFilterd
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHideButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentErrorCount.
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
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := (self) hiddenErrorWarningTypes.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) basicId.
    recoveredBlock14Value3 := (recoveredBlock14Value0) includes: (recoveredBlock14Value2).
    recoveredBlock14Value4 := (recoveredBlock14Value3) not.
    recoveredBlock14Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentErrorCount: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022e4a8; bytecode file offset 0xb2ad74"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
selectPage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'monitorTab'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x2022fa50; bytecode file offset 0xb2c320"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createMenuBar
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    windowMenuBar := recoveredValue1.
    recoveredValue2 := windowMenuBar.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createFileMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createEditMenu.
    (recoveredValue5) addMenu: (recoveredValue6).
    recoveredValue7 := (self) createViewMenu.
    (recoveredValue2) addMenu: (recoveredValue7).
    recoveredValue8 := windowMenuBar.
    (recoveredValue8) addToolboxMenuItemsFor: (self).
    recoveredValue9 := windowMenuBar.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20235adc; bytecode file offset 0xb323ac"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messageTypeSingleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIndexForCurrentSelectedTab.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) messageTypeSelection: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateErrors.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023c22c; bytecode file offset 0xb38b0c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
copy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) copySelection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OSClipboard.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetErrorList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) text.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023c2d0; bytecode file offset 0xb38b9c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
openInEditor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorFileName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) fileOutErrors: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorFileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) viewFile: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 34.
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
            recoveredStack1 := (recoveredStack1) monitorFileName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) saveQueryIn: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) monitorFileName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) viewFile: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d554; bytecode file offset 0xb39e58"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
saveQueryIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Overwrite file '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) okCancel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) saveIn: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20245830; bytecode file offset 0xb42100"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
deactivateProgressBar
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (self) widgetStatusBar.
    recoveredBlock17Value2 := (recoveredBlock17Value0) bottomWidget: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressBar.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264e64; bytecode file offset 0xb61734"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentErrors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) errorLists.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) collectErrors: (true) warnings: (false) infos: (false) categories: (#('All')).
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20274830; bytecode file offset 0xb710f4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
activateShowAllInBuildPageWhile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) widgetCheckBoxAll.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) getState.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) widgetCheckBoxAll.
    (recoveredValue3) setState: (true) notify: (true).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := (self) widgetCheckBoxAll.
    recoveredBlock24Value1 := recoveredLocal2.
    recoveredBlock24Value2 := (recoveredBlock24Value0) setState: (recoveredBlock24Value1) notify: (true).
    recoveredBlock24Value2
].
    recoveredValue6 := (recoveredValue4) ensure: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20286904; bytecode file offset 0xb831dc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuShowError
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisplayable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) displayErrorInSource.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'This error can not be displayed.\Either the item does not exist or it is read-protected'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029f918; bytecode file offset 0xb9c1f4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
bringToFront
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isHidden.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) switchVisibility.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconic.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) deIconify.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            super bringToFront.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setForegroundWindow.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a6120; bytecode file offset 0xba2a20"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messages: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildrenForUnit: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg2.
    recoveredBlock27Value2 := (self) messages: (recoveredBlock27Value0) do: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a613c; bytecode file offset 0xba2a20"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messagesSortedDo: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildrenForUnitSorted: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg2.
    recoveredBlock27Value2 := (self) messagesSortedDo: (recoveredBlock27Value0) do: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b8c9c; bytecode file offset 0xbb5580"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
collectSortedErrorsForItem: recoveredArg1 inCollection: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildrenForUnitSorted: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg2.
    recoveredBlock27Value2 := (self) collectSortedErrorsForItem: (recoveredBlock27Value0) inCollection: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b8cb8; bytecode file offset 0xbb5580"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
collectErrorForItem: recoveredArg1 inCollection: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildrenForUnit: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg2.
    recoveredBlock27Value2 := (self) collectErrorForItem: (recoveredBlock27Value0) inCollection: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cbe0c; bytecode file offset 0xbc86d8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getIndexForCurrentSelectedTab
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cea9c; bytecode file offset 0xbcb380"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) initializeErrorList.
    recoveredValue0 := (self) class.
    recoveredValue1 := (100) @ (100).
    (recoveredValue0) minSize: (recoveredValue1).
    (self) setFocusAtReactivate: (false).
    (self) messageTypeSelection: ('all').
    (self) resetCurrentSettings.
    (self) iconName: ('GeneralTransparent').
    isHidden := false.
    shutDownAllowed := false.
    ^self
! !

"ASDBase.ic method 0x202d7934; bytecode file offset 0xbd420c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isHideErrorWarningPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280e6418Arg1 | 
    | block280e6418Stack0 block280e6418Stack1 block280e6418Stack2 block280e6418Stack3 block280e6418PC block280e6418Step block280e6418Done block280e6418Result |
    block280e6418Stack0 := self.
    block280e6418PC := 4.
    block280e6418Done := false.
    [block280e6418Done not] whileTrue: [
        block280e6418Step := block280e6418PC.
        block280e6418Step = 4 ifTrue: [
            block280e6418Stack1 := false.
            block280e6418PC := 5.
        ].
        block280e6418Step = 5 ifTrue: [
            block280e6418Stack2 := block280e6418Arg1.
            block280e6418PC := 6.
        ].
        block280e6418Step = 6 ifTrue: [
            block280e6418Stack2 := (block280e6418Stack2) isCgUnit.
            block280e6418PC := 8.
        ].
        block280e6418Step = 8 ifTrue: [
            (block280e6418Stack2) ifTrue: [block280e6418PC := 26] ifFalse: [block280e6418PC := 12].
        ].
        block280e6418Step = 12 ifTrue: [
            block280e6418PC := 13.
        ].
        block280e6418Step = 13 ifTrue: [
            block280e6418Stack1 := false.
            block280e6418PC := 14.
        ].
        block280e6418Step = 14 ifTrue: [
            block280e6418Stack2 := block280e6418Arg1.
            block280e6418PC := 15.
        ].
        block280e6418Step = 15 ifTrue: [
            block280e6418Stack2 := (block280e6418Stack2) isErrorMessage.
            block280e6418PC := 17.
        ].
        block280e6418Step = 17 ifTrue: [
            (block280e6418Stack2) ifTrue: [block280e6418PC := 26] ifFalse: [block280e6418PC := 20].
        ].
        block280e6418Step = 20 ifTrue: [
            block280e6418PC := 21.
        ].
        block280e6418Step = 21 ifTrue: [
            block280e6418Stack1 := block280e6418Arg1.
            block280e6418PC := 22.
        ].
        block280e6418Step = 22 ifTrue: [
            block280e6418Stack1 := (block280e6418Stack1) basicId.
            block280e6418PC := 24.
        ].
        block280e6418Step = 24 ifTrue: [
            block280e6418Stack1 := (block280e6418Stack1) notEmpty.
            block280e6418PC := 26.
        ].
        block280e6418Step = 26 ifTrue: [
            block280e6418Result := block280e6418Stack1.
            block280e6418Done := true.
        ].
    ].
    block280e6418Result
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dc314; bytecode file offset 0xbd8be0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getNumberOfHiddenMessages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) errorLists.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Value0 recoveredBlock10Block23Value1 recoveredBlock10Block23Value2 recoveredBlock10Block23Value3 |
    recoveredBlock10Block23Value0 := (self) hiddenErrorWarningTypes.
    recoveredBlock10Block23Value1 := recoveredBlock10Block23Arg1.
    recoveredBlock10Block23Value2 := (recoveredBlock10Block23Value1) basicId.
    recoveredBlock10Block23Value3 := (recoveredBlock10Block23Value0) includes: (recoveredBlock10Block23Value2).
    recoveredBlock10Block23Value3
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) countMessageErrors: (true) warnings: (true) infos: (true) predicate: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value0) + (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202f41f8; bytecode file offset 0xbf0af4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isIgnoreGlobalPromotionPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isCgUnit.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 49] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) basicId.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) notEmpty.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 42] ifFalse: [recoveredBlock19PC := 49].
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) basicId.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isMessagePromotedGlobal: (recoveredBlock19Stack2).
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f4220; bytecode file offset 0xbf0af4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isRevokePromotionPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isCgUnit.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 49] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) basicId.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) notEmpty.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 42] ifFalse: [recoveredBlock19PC := 49].
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) basicId.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isMessagePromotedLocal: (recoveredBlock19Stack2).
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f8510; bytecode file offset 0xbf4de4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
saveIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := (self) widgetTranscript.
    recoveredBlock22Value2 := (recoveredBlock22Value1) value.
    recoveredBlock22Value3 := (recoveredBlock22Value0) nextPutAll: (recoveredBlock22Value2).
    recoveredBlock22Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 |
    recoveredBlock38Value0 := recoveredLocal1.
    recoveredBlock38Value1 := (recoveredBlock38Value0) close.
    recoveredBlock38Value1
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ff064; bytecode file offset 0xbfb994"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuIgnoreGlobalPromotion
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e9550Arg1 | 
    | block280e9550Stack0 block280e9550Stack1 block280e9550Stack2 block280e9550Stack3 block280e9550PC block280e9550Step block280e9550Done block280e9550Result |
    block280e9550Stack0 := self.
    block280e9550PC := 4.
    block280e9550Done := false.
    [block280e9550Done not] whileTrue: [
        block280e9550Step := block280e9550PC.
        block280e9550Step = 4 ifTrue: [
            block280e9550Stack1 := false.
            block280e9550PC := 5.
        ].
        block280e9550Step = 5 ifTrue: [
            block280e9550Stack2 := block280e9550Arg1.
            block280e9550PC := 6.
        ].
        block280e9550Step = 6 ifTrue: [
            block280e9550Stack2 := (block280e9550Stack2) isCgUnit.
            block280e9550PC := 7.
        ].
        block280e9550Step = 7 ifTrue: [
            (block280e9550Stack2) ifTrue: [block280e9550PC := 16] ifFalse: [block280e9550PC := 10].
        ].
        block280e9550Step = 10 ifTrue: [
            block280e9550PC := 11.
        ].
        block280e9550Step = 11 ifTrue: [
            block280e9550Stack1 := block280e9550Arg1.
            block280e9550PC := 12.
        ].
        block280e9550Step = 12 ifTrue: [
            block280e9550Stack1 := (block280e9550Stack1) basicId.
            block280e9550PC := 13.
        ].
        block280e9550Step = 13 ifTrue: [
            block280e9550Stack1 := (block280e9550Stack1) isEmpty.
            block280e9550PC := 15.
        ].
        block280e9550Step = 15 ifTrue: [
            block280e9550Stack1 := (block280e9550Stack1) not.
            block280e9550PC := 16.
        ].
        block280e9550Step = 16 ifTrue: [
            block280e9550Result := block280e9550Stack1.
            block280e9550Done := true.
        ].
    ].
    block280e9550Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) basicId.
    recoveredBlock35Value2 := (self) ignoreGlobalPromotedMessage: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateErrorList.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ff090; bytecode file offset 0xbfb994"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuRevokePromotion
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e9574Arg1 | 
    | block280e9574Stack0 block280e9574Stack1 block280e9574Stack2 block280e9574Stack3 block280e9574PC block280e9574Step block280e9574Done block280e9574Result |
    block280e9574Stack0 := self.
    block280e9574PC := 4.
    block280e9574Done := false.
    [block280e9574Done not] whileTrue: [
        block280e9574Step := block280e9574PC.
        block280e9574Step = 4 ifTrue: [
            block280e9574Stack1 := false.
            block280e9574PC := 5.
        ].
        block280e9574Step = 5 ifTrue: [
            block280e9574Stack2 := block280e9574Arg1.
            block280e9574PC := 6.
        ].
        block280e9574Step = 6 ifTrue: [
            block280e9574Stack2 := (block280e9574Stack2) isCgUnit.
            block280e9574PC := 7.
        ].
        block280e9574Step = 7 ifTrue: [
            (block280e9574Stack2) ifTrue: [block280e9574PC := 16] ifFalse: [block280e9574PC := 10].
        ].
        block280e9574Step = 10 ifTrue: [
            block280e9574PC := 11.
        ].
        block280e9574Step = 11 ifTrue: [
            block280e9574Stack1 := block280e9574Arg1.
            block280e9574PC := 12.
        ].
        block280e9574Step = 12 ifTrue: [
            block280e9574Stack1 := (block280e9574Stack1) basicId.
            block280e9574PC := 13.
        ].
        block280e9574Step = 13 ifTrue: [
            block280e9574Stack1 := (block280e9574Stack1) isEmpty.
            block280e9574PC := 15.
        ].
        block280e9574Step = 15 ifTrue: [
            block280e9574Stack1 := (block280e9574Stack1) not.
            block280e9574PC := 16.
        ].
        block280e9574Step = 16 ifTrue: [
            block280e9574Result := block280e9574Stack1.
            block280e9574Done := true.
        ].
    ].
    block280e9574Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) basicId.
    recoveredBlock35Value2 := (self) revokeMessage: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateErrorList.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ff0bc; bytecode file offset 0xbfb994"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuHideErrorWarningType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e9598Arg1 | 
    | block280e9598Stack0 block280e9598Stack1 block280e9598Stack2 block280e9598Stack3 block280e9598PC block280e9598Step block280e9598Done block280e9598Result |
    block280e9598Stack0 := self.
    block280e9598PC := 4.
    block280e9598Done := false.
    [block280e9598Done not] whileTrue: [
        block280e9598Step := block280e9598PC.
        block280e9598Step = 4 ifTrue: [
            block280e9598Stack1 := false.
            block280e9598PC := 5.
        ].
        block280e9598Step = 5 ifTrue: [
            block280e9598Stack2 := block280e9598Arg1.
            block280e9598PC := 6.
        ].
        block280e9598Step = 6 ifTrue: [
            block280e9598Stack2 := (block280e9598Stack2) isCgUnit.
            block280e9598PC := 7.
        ].
        block280e9598Step = 7 ifTrue: [
            (block280e9598Stack2) ifTrue: [block280e9598PC := 16] ifFalse: [block280e9598PC := 10].
        ].
        block280e9598Step = 10 ifTrue: [
            block280e9598PC := 11.
        ].
        block280e9598Step = 11 ifTrue: [
            block280e9598Stack1 := block280e9598Arg1.
            block280e9598PC := 12.
        ].
        block280e9598Step = 12 ifTrue: [
            block280e9598Stack1 := (block280e9598Stack1) basicId.
            block280e9598PC := 13.
        ].
        block280e9598Step = 13 ifTrue: [
            block280e9598Stack1 := (block280e9598Stack1) isEmpty.
            block280e9598PC := 15.
        ].
        block280e9598Step = 15 ifTrue: [
            block280e9598Stack1 := (block280e9598Stack1) not.
            block280e9598PC := 16.
        ].
        block280e9598Step = 16 ifTrue: [
            block280e9598Result := block280e9598Stack1.
            block280e9598Done := true.
        ].
    ].
    block280e9598Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) basicId.
    recoveredBlock35Value2 := (self) addHiddenErrorWarningTypes: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateErrorList.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203086ec; bytecode file offset 0xc04fb0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
setErrors: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errorLists.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) text.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) text.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg2.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := errorLists.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) removeAtIndex: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := errorLists.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030a8c0; bytecode file offset 0xc071b0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuServerHelp
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpServer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathTokens.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'ID'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicId.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := OSHinstance.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultAction: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Error opening '.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030abf0; bytecode file offset 0xc074cc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
saveToPath: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := EtasAPIError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithErrorCode: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Call_1001804'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOutErrors: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := EtasAPIError.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 47.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030e70c; bytecode file offset 0xc0b018"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuPromoteToWarningType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ea558Arg1 | 
    | block280ea558Stack0 block280ea558Stack1 block280ea558Stack2 block280ea558Stack3 block280ea558PC block280ea558Step block280ea558Done block280ea558Result |
    block280ea558Stack0 := self.
    block280ea558PC := 4.
    block280ea558Done := false.
    [block280ea558Done not] whileTrue: [
        block280ea558Step := block280ea558PC.
        block280ea558Step = 4 ifTrue: [
            block280ea558Stack1 := false.
            block280ea558PC := 5.
        ].
        block280ea558Step = 5 ifTrue: [
            block280ea558Stack2 := block280ea558Arg1.
            block280ea558PC := 6.
        ].
        block280ea558Step = 6 ifTrue: [
            block280ea558Stack2 := (block280ea558Stack2) isCgUnit.
            block280ea558PC := 7.
        ].
        block280ea558Step = 7 ifTrue: [
            (block280ea558Stack2) ifTrue: [block280ea558PC := 16] ifFalse: [block280ea558PC := 10].
        ].
        block280ea558Step = 10 ifTrue: [
            block280ea558PC := 11.
        ].
        block280ea558Step = 11 ifTrue: [
            block280ea558Stack1 := block280ea558Arg1.
            block280ea558PC := 12.
        ].
        block280ea558Step = 12 ifTrue: [
            block280ea558Stack1 := (block280ea558Stack1) basicId.
            block280ea558PC := 13.
        ].
        block280ea558Step = 13 ifTrue: [
            block280ea558Stack1 := (block280ea558Stack1) isEmpty.
            block280ea558PC := 15.
        ].
        block280ea558Step = 15 ifTrue: [
            block280ea558Stack1 := (block280ea558Stack1) not.
            block280ea558PC := 16.
        ].
        block280ea558Step = 16 ifTrue: [
            block280ea558Result := block280ea558Stack1.
            block280ea558Done := true.
        ].
    ].
    block280ea558Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) basicId.
    recoveredBlock35Value2 := (self) promoteMessage: (recoveredBlock35Value1) toType: ('warning').
    recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) updateErrorList.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030e73c; bytecode file offset 0xc0b018"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuPromoteToErrorType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ea57cArg1 | 
    | block280ea57cStack0 block280ea57cStack1 block280ea57cStack2 block280ea57cStack3 block280ea57cPC block280ea57cStep block280ea57cDone block280ea57cResult |
    block280ea57cStack0 := self.
    block280ea57cPC := 4.
    block280ea57cDone := false.
    [block280ea57cDone not] whileTrue: [
        block280ea57cStep := block280ea57cPC.
        block280ea57cStep = 4 ifTrue: [
            block280ea57cStack1 := false.
            block280ea57cPC := 5.
        ].
        block280ea57cStep = 5 ifTrue: [
            block280ea57cStack2 := block280ea57cArg1.
            block280ea57cPC := 6.
        ].
        block280ea57cStep = 6 ifTrue: [
            block280ea57cStack2 := (block280ea57cStack2) isCgUnit.
            block280ea57cPC := 7.
        ].
        block280ea57cStep = 7 ifTrue: [
            (block280ea57cStack2) ifTrue: [block280ea57cPC := 16] ifFalse: [block280ea57cPC := 10].
        ].
        block280ea57cStep = 10 ifTrue: [
            block280ea57cPC := 11.
        ].
        block280ea57cStep = 11 ifTrue: [
            block280ea57cStack1 := block280ea57cArg1.
            block280ea57cPC := 12.
        ].
        block280ea57cStep = 12 ifTrue: [
            block280ea57cStack1 := (block280ea57cStack1) basicId.
            block280ea57cPC := 13.
        ].
        block280ea57cStep = 13 ifTrue: [
            block280ea57cStack1 := (block280ea57cStack1) isEmpty.
            block280ea57cPC := 15.
        ].
        block280ea57cStep = 15 ifTrue: [
            block280ea57cStack1 := (block280ea57cStack1) not.
            block280ea57cPC := 16.
        ].
        block280ea57cStep = 16 ifTrue: [
            block280ea57cResult := block280ea57cStack1.
            block280ea57cDone := true.
        ].
    ].
    block280ea57cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) basicId.
    recoveredBlock35Value2 := (self) promoteMessage: (recoveredBlock35Value1) toType: ('error').
    recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) updateErrorList.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031e600; bytecode file offset 0xc1aeec"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
menuCopyLink
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisplayable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAscetLinkSource.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := OSClipboard.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetLink.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'This ascet link  can not be copied.\Either the item does not exist or it is read-protected or can not reached via link'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20333810; bytecode file offset 0xc30100"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
readUISettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 recoveredBlock5Value22 |
    recoveredBlock5Value0 := (self) userInterfaceManager.
    recoveredBlock5Value1 := (recoveredBlock5Value0) readWindowSize.
    recoveredBlock5Local2 := recoveredBlock5Value1.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := recoveredBlock5Local2.
    recoveredBlock5Value4 := (recoveredBlock5Value3) x.
    (recoveredBlock5Value2) width: (recoveredBlock5Value4).
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    recoveredBlock5Value6 := recoveredBlock5Local2.
    recoveredBlock5Value7 := (recoveredBlock5Value6) y.
    (recoveredBlock5Value5) height: (recoveredBlock5Value7).
    recoveredBlock5Value8 := (self) userInterfaceManager.
    recoveredBlock5Value9 := (recoveredBlock5Value8) readWindowPosition.
    recoveredBlock5Local1 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Arg1.
    recoveredBlock5Value11 := recoveredBlock5Local1.
    recoveredBlock5Value12 := (recoveredBlock5Value11) x.
    (recoveredBlock5Value10) x: (recoveredBlock5Value12).
    recoveredBlock5Value13 := recoveredBlock5Arg1.
    recoveredBlock5Value14 := recoveredBlock5Local1.
    recoveredBlock5Value15 := (recoveredBlock5Value14) y.
    (recoveredBlock5Value13) y: (recoveredBlock5Value15).
    recoveredBlock5Value16 := recoveredBlock5Arg1.
    recoveredBlock5Value17 := (self) userInterfaceManager.
    recoveredBlock5Value18 := (recoveredBlock5Value17) readWindowMinimizedState.
    (recoveredBlock5Value16) iconic: (recoveredBlock5Value18).
    recoveredBlock5Value19 := recoveredBlock5Arg1.
    recoveredBlock5Value20 := (self) userInterfaceManager.
    recoveredBlock5Value21 := (recoveredBlock5Value20) readWindowMaximizedState.
    recoveredBlock5Value22 := (recoveredBlock5Value19) maximize: (recoveredBlock5Value21).
    recoveredBlock5Value22
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2033a5e4; bytecode file offset 0xc36ebc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isPromoteToWarningPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isCgUnit.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 58] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) basicId.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isMessagePromoted: (recoveredBlock19Stack3).
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 58] ifFalse: [recoveredBlock19PC := 44].
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) basicId.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) notEmpty.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 54] ifFalse: [recoveredBlock19PC := 58].
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isInfoMessage.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033efac; bytecode file offset 0xc3b8e0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initializeMonitorPage
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'monitorTab'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280edc54Arg1 | 
    | block280edc54Value0 block280edc54Value1 |
    block280edc54Value0 := block280edc54Arg1.
    block280edc54Value1 := (block280edc54Value0) labelString: ('Monitor').
    block280edc54Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTab: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'monitorTab'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'monitor'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:block280edc78Arg1 | 
    nil
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) userData: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'monitor'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) createWidgetHierarchyMonitorPageForForm: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033eff0; bytecode file offset 0xc3b8e0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initializeBuildPage
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'buildTab'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280edc9cArg1 | 
    | block280edc9cValue0 block280edc9cValue1 |
    block280edc9cValue0 := block280edc9cArg1.
    block280edc9cValue1 := (block280edc9cValue0) labelString: ('Build').
    block280edc9cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTab: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'buildTab'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'build'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:block280edcc0Arg1 | 
    nil
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) userData: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'build'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) createWidgetHierarchyBuildPageForForm: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203472f0; bytecode file offset 0xc43bc0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentInformationCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) errorLists.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Stack0 recoveredBlock10Block23Stack1 recoveredBlock10Block23Stack2 recoveredBlock10Block23Stack3 recoveredBlock10Block23Stack4 recoveredBlock10Block23PC recoveredBlock10Block23Step recoveredBlock10Block23Done recoveredBlock10Block23Result |
    recoveredBlock10Block23Stack0 := nil.
    recoveredBlock10Block23PC := 30.
    recoveredBlock10Block23Done := false.
    [recoveredBlock10Block23Done not] whileTrue: [
        recoveredBlock10Block23Step := recoveredBlock10Block23PC.
        recoveredBlock10Block23Step = 30 ifTrue: [
            recoveredBlock10Block23Stack1 := false.
            recoveredBlock10Block23PC := 31.
        ].
        recoveredBlock10Block23Step = 31 ifTrue: [
            recoveredBlock10Block23Stack2 := recoveredBlock10Block23Arg1.
            recoveredBlock10Block23PC := 32.
        ].
        recoveredBlock10Block23Step = 32 ifTrue: [
            recoveredBlock10Block23Stack2 := (recoveredBlock10Block23Stack2) categories.
            recoveredBlock10Block23PC := 33.
        ].
        recoveredBlock10Block23Step = 33 ifTrue: [
            recoveredBlock10Block23Stack3 := 'All'.
            recoveredBlock10Block23PC := 35.
        ].
        recoveredBlock10Block23Step = 35 ifTrue: [
            recoveredBlock10Block23Stack2 := (recoveredBlock10Block23Stack2) includes: (recoveredBlock10Block23Stack3).
            recoveredBlock10Block23PC := 36.
        ].
        recoveredBlock10Block23Step = 36 ifTrue: [
            (recoveredBlock10Block23Stack2) ifTrue: [recoveredBlock10Block23PC := 40] ifFalse: [recoveredBlock10Block23PC := 47].
        ].
        recoveredBlock10Block23Step = 40 ifTrue: [
            recoveredBlock10Block23PC := 41.
        ].
        recoveredBlock10Block23Step = 41 ifTrue: [
            recoveredBlock10Block23Stack1 := recoveredArg1.
            recoveredBlock10Block23PC := 44.
        ].
        recoveredBlock10Block23Step = 44 ifTrue: [
            recoveredBlock10Block23Stack2 := recoveredBlock10Block23Arg1.
            recoveredBlock10Block23PC := 45.
        ].
        recoveredBlock10Block23Step = 45 ifTrue: [
            recoveredBlock10Block23Stack1 := (recoveredBlock10Block23Stack1) value: (recoveredBlock10Block23Stack2).
            recoveredBlock10Block23PC := 47.
        ].
        recoveredBlock10Block23Step = 47 ifTrue: [
            recoveredBlock10Block23Result := recoveredBlock10Block23Stack1.
            recoveredBlock10Block23Done := true.
        ].
    ].
    recoveredBlock10Block23Result
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) countMessageErrors: (false) warnings: (false) infos: (true) predicate: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value0) + (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20347354; bytecode file offset 0xc43c24"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentWarningCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) errorLists.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Stack0 recoveredBlock10Block23Stack1 recoveredBlock10Block23Stack2 recoveredBlock10Block23Stack3 recoveredBlock10Block23Stack4 recoveredBlock10Block23PC recoveredBlock10Block23Step recoveredBlock10Block23Done recoveredBlock10Block23Result |
    recoveredBlock10Block23Stack0 := nil.
    recoveredBlock10Block23PC := 30.
    recoveredBlock10Block23Done := false.
    [recoveredBlock10Block23Done not] whileTrue: [
        recoveredBlock10Block23Step := recoveredBlock10Block23PC.
        recoveredBlock10Block23Step = 30 ifTrue: [
            recoveredBlock10Block23Stack1 := false.
            recoveredBlock10Block23PC := 31.
        ].
        recoveredBlock10Block23Step = 31 ifTrue: [
            recoveredBlock10Block23Stack2 := recoveredBlock10Block23Arg1.
            recoveredBlock10Block23PC := 32.
        ].
        recoveredBlock10Block23Step = 32 ifTrue: [
            recoveredBlock10Block23Stack2 := (recoveredBlock10Block23Stack2) categories.
            recoveredBlock10Block23PC := 33.
        ].
        recoveredBlock10Block23Step = 33 ifTrue: [
            recoveredBlock10Block23Stack3 := 'All'.
            recoveredBlock10Block23PC := 35.
        ].
        recoveredBlock10Block23Step = 35 ifTrue: [
            recoveredBlock10Block23Stack2 := (recoveredBlock10Block23Stack2) includes: (recoveredBlock10Block23Stack3).
            recoveredBlock10Block23PC := 36.
        ].
        recoveredBlock10Block23Step = 36 ifTrue: [
            (recoveredBlock10Block23Stack2) ifTrue: [recoveredBlock10Block23PC := 40] ifFalse: [recoveredBlock10Block23PC := 47].
        ].
        recoveredBlock10Block23Step = 40 ifTrue: [
            recoveredBlock10Block23PC := 41.
        ].
        recoveredBlock10Block23Step = 41 ifTrue: [
            recoveredBlock10Block23Stack1 := recoveredArg1.
            recoveredBlock10Block23PC := 44.
        ].
        recoveredBlock10Block23Step = 44 ifTrue: [
            recoveredBlock10Block23Stack2 := recoveredBlock10Block23Arg1.
            recoveredBlock10Block23PC := 45.
        ].
        recoveredBlock10Block23Step = 45 ifTrue: [
            recoveredBlock10Block23Stack1 := (recoveredBlock10Block23Stack1) value: (recoveredBlock10Block23Stack2).
            recoveredBlock10Block23PC := 47.
        ].
        recoveredBlock10Block23Step = 47 ifTrue: [
            recoveredBlock10Block23Result := recoveredBlock10Block23Stack1.
            recoveredBlock10Block23Done := true.
        ].
    ].
    recoveredBlock10Block23Result
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) countMessageErrors: (false) warnings: (true) infos: (false) predicate: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value0) + (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203473b8; bytecode file offset 0xc43c88"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getCurrentErrorCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) errorLists.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Stack0 recoveredBlock10Block23Stack1 recoveredBlock10Block23Stack2 recoveredBlock10Block23Stack3 recoveredBlock10Block23Stack4 recoveredBlock10Block23PC recoveredBlock10Block23Step recoveredBlock10Block23Done recoveredBlock10Block23Result |
    recoveredBlock10Block23Stack0 := nil.
    recoveredBlock10Block23PC := 30.
    recoveredBlock10Block23Done := false.
    [recoveredBlock10Block23Done not] whileTrue: [
        recoveredBlock10Block23Step := recoveredBlock10Block23PC.
        recoveredBlock10Block23Step = 30 ifTrue: [
            recoveredBlock10Block23Stack1 := false.
            recoveredBlock10Block23PC := 31.
        ].
        recoveredBlock10Block23Step = 31 ifTrue: [
            recoveredBlock10Block23Stack2 := recoveredBlock10Block23Arg1.
            recoveredBlock10Block23PC := 32.
        ].
        recoveredBlock10Block23Step = 32 ifTrue: [
            recoveredBlock10Block23Stack2 := (recoveredBlock10Block23Stack2) categories.
            recoveredBlock10Block23PC := 33.
        ].
        recoveredBlock10Block23Step = 33 ifTrue: [
            recoveredBlock10Block23Stack3 := 'All'.
            recoveredBlock10Block23PC := 35.
        ].
        recoveredBlock10Block23Step = 35 ifTrue: [
            recoveredBlock10Block23Stack2 := (recoveredBlock10Block23Stack2) includes: (recoveredBlock10Block23Stack3).
            recoveredBlock10Block23PC := 36.
        ].
        recoveredBlock10Block23Step = 36 ifTrue: [
            (recoveredBlock10Block23Stack2) ifTrue: [recoveredBlock10Block23PC := 40] ifFalse: [recoveredBlock10Block23PC := 47].
        ].
        recoveredBlock10Block23Step = 40 ifTrue: [
            recoveredBlock10Block23PC := 41.
        ].
        recoveredBlock10Block23Step = 41 ifTrue: [
            recoveredBlock10Block23Stack1 := recoveredArg1.
            recoveredBlock10Block23PC := 44.
        ].
        recoveredBlock10Block23Step = 44 ifTrue: [
            recoveredBlock10Block23Stack2 := recoveredBlock10Block23Arg1.
            recoveredBlock10Block23PC := 45.
        ].
        recoveredBlock10Block23Step = 45 ifTrue: [
            recoveredBlock10Block23Stack1 := (recoveredBlock10Block23Stack1) value: (recoveredBlock10Block23Stack2).
            recoveredBlock10Block23PC := 47.
        ].
        recoveredBlock10Block23Step = 47 ifTrue: [
            recoveredBlock10Block23Result := recoveredBlock10Block23Stack1.
            recoveredBlock10Block23Done := true.
        ].
    ].
    recoveredBlock10Block23Result
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) countMessageErrors: (true) warnings: (false) infos: (false) predicate: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value0) + (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2036d728; bytecode file offset 0xc6a004"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
hiddenErrorWarningTypes
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hiddenErrorWarningTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := hiddenErrorWarningTypes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGlobalHiddenMessages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := (recoveredBlock35Value0) ignoredCodeGenMessages.
    recoveredBlock35Value2 := recoveredBlock35Arg1.
    recoveredBlock35Value3 := (recoveredBlock35Value1) includes: (recoveredBlock35Value2).
    recoveredBlock35Value4 := (recoveredBlock35Value3) not.
    recoveredBlock35Value4
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) hiddenCodeGenMessages.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            hiddenErrorWarningTypes := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := hiddenErrorWarningTypes.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20375d00; bytecode file offset 0xc725dc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
isPromoteToErrorPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedErrors.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isCgUnit.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 66] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) basicId.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) notEmpty.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 42] ifFalse: [recoveredBlock19PC := 66].
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) basicId.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isMessagePromotedToError: (recoveredBlock19Stack3).
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 66] ifFalse: [recoveredBlock19PC := 54].
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack1 := true.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isWarningMessage.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 66] ifFalse: [recoveredBlock19PC := 62].
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isInfoMessage.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037d8d4; bytecode file offset 0xc7a1a8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
shellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70570'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) reason.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 18.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock46Local1 recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46Stack4 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := nil.
            recoveredBlock46PC := 53.
        ].
        recoveredBlock46Step = 53 ifTrue: [
            recoveredBlock46Stack2 := self.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) widgetTranscript.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            recoveredBlock46Stack3 := recoveredBlock46Stack2.
            recoveredBlock46PC := 57.
        ].
        recoveredBlock46Step = 57 ifTrue: [
            recoveredBlock46Local1 := recoveredBlock46Stack3.
            recoveredBlock46PC := 58.
        ].
        recoveredBlock46Step = 58 ifTrue: [
            (recoveredBlock46Stack2 == nil) ifTrue: [recoveredBlock46PC := 66] ifFalse: [recoveredBlock46PC := 62].
        ].
        recoveredBlock46Step = 62 ifTrue: [
            recoveredBlock46PC := 63.
        ].
        recoveredBlock46Step = 63 ifTrue: [
            recoveredBlock46Stack1 := recoveredBlock46Local1.
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) setInputFocus.
            recoveredBlock46PC := 66.
        ].
        recoveredBlock46Step = 66 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037eddc; bytecode file offset 0xc7b6f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
fileOutErrors: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'Could not open file '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 |
    recoveredBlock43Value0 := recoveredBlock43Arg1.
    recoveredBlock43Value1 := recoveredLocal1.
    (recoveredBlock43Value0) printMessageOn: (recoveredBlock43Value1).
    recoveredBlock43Value2 := recoveredLocal1.
    recoveredBlock43Value3 := (recoveredBlock43Value2) cr.
    recoveredBlock43Value3
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) messagesSortedDo: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203844fc; bytecode file offset 0xc80e0c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) readUISettings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) notebook.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) resizeTabStrip: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) addDateAndTime.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) updateWindowLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetScrolledText.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := #(6 24).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) setTabStops: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionMonitorWindowOnTop.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) makeAlwaysOnTop: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038b420; bytecode file offset 0xc87d00"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
detectMarkersIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('### WARNING').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('### ERROR').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('### INFORMATION').
    recoveredLocal1 := recoveredValue1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28Stack6 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg1.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack4 := 1.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack5 := [
    0
].
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) indexOfSubCollection: (recoveredBlock28Stack3) startingAt: (recoveredBlock28Stack4) ifAbsent: (recoveredBlock28Stack5).
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack3.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack3 := 0.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) > (recoveredBlock28Stack3).
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 60] ifFalse: [recoveredBlock28PC := 68].
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack1 := Array.
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local1.
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) with: (recoveredBlock28Stack2) with: (recoveredBlock28Stack3).
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^nil
! !

"ASDBase.ic method 0x203913f0; bytecode file offset 0xc8dcd0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
messagesSortedDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectErrors.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280f39fcArg1 :block280f39fcArg2 | 
    | block280f39fcValue0 block280f39fcValue1 block280f39fcValue2 block280f39fcValue3 block280f39fcValue4 |
    block280f39fcValue0 := block280f39fcArg1.
    block280f39fcValue1 := (block280f39fcValue0) text.
    block280f39fcValue2 := block280f39fcArg2.
    block280f39fcValue3 := (block280f39fcValue2) text.
    block280f39fcValue4 := (block280f39fcValue1) < (block280f39fcValue3).
    block280f39fcValue4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 recoveredBlock32Value6 recoveredBlock32Value7 |
    recoveredBlock32Value0 := recoveredArg1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    (recoveredBlock32Value0) value: (recoveredBlock32Value1).
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := (recoveredBlock32Value2) subUnits.
    recoveredBlock32Value4 := (recoveredBlock32Value3) asSortedCollection.
    recoveredBlock32Local1 := recoveredBlock32Value4.
    recoveredBlock32Value5 := recoveredBlock32Local1.
    recoveredBlock32Value6 := [:recoveredBlock32Block51Arg1 | 
    | recoveredBlock32Block51Value0 recoveredBlock32Block51Value1 recoveredBlock32Block51Value2 |
    recoveredBlock32Block51Value0 := recoveredBlock32Block51Arg1.
    recoveredBlock32Block51Value1 := recoveredArg1.
    recoveredBlock32Block51Value2 := (self) messagesSortedDo: (recoveredBlock32Block51Value0) do: (recoveredBlock32Block51Value1).
    recoveredBlock32Block51Value2
].
    recoveredBlock32Value7 := (recoveredBlock32Value5) do: (recoveredBlock32Value6).
    recoveredBlock32Value7
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20393794; bytecode file offset 0xc900a0"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initializeMenuBar
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := DirectedMessage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 'clear'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector: (recoveredStack3) arguments: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := EtClear.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'clear'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := SCCtrl.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 'R'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) bindWith: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) addMenuToPopupMenu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMenuBar.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'aMainWindow1'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMenuBarFor: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) menuBar: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a3250; bytecode file offset 0xc9fb3c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
activateProgressBar
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressBar.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressLabel.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 |
    recoveredBlock43Value0 := recoveredBlock43Arg1.
    recoveredBlock43Value1 := recoveredBlock43Value0.
    recoveredBlock43Value2 := recoveredLocal1.
    (recoveredBlock43Value1) bottomWidget: (recoveredBlock43Value2).
    recoveredBlock43Value3 := XmATTACHWIDGET.
    recoveredBlock43Value4 := (recoveredBlock43Value0) bottomAttachment: (recoveredBlock43Value3).
    recoveredBlock43Value4
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) updateWidget.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) updateWidget.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressBar.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a8154; bytecode file offset 0xca4a3c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
flush
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastFocusShell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastFocusShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) lastFocusShell.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) isDialogShell.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            (recoveredBlock32Stack0) ifTrue: [recoveredBlock32PC := 44] ifFalse: [recoveredBlock32PC := 62].
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack0 := self.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) lastFocusShell.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) parent.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            (recoveredBlock32Stack0 == nil) ifTrue: [recoveredBlock32PC := 62] ifFalse: [recoveredBlock32PC := 52].
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack0 := self.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) lastFocusShell.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) parent.
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) setInputFocus.
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack0 := self.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            (recoveredBlock32Stack0) reactivateWindow.
            recoveredBlock32PC := 65.
        ].
        recoveredBlock32Step = 65 ifTrue: [
            recoveredBlock32Stack0 := self.
            recoveredBlock32PC := 66.
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) lastFocusShell.
            recoveredBlock32PC := 67.
        ].
        recoveredBlock32Step = 67 ifTrue: [
            (recoveredBlock32Stack0) setInputFocus.
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            recoveredBlock32Stack0 := self.
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) lastFocusShell.
            recoveredBlock32PC := 71.
        ].
        recoveredBlock32Step = 71 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) bringToFront.
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack0.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) syncExecInUI: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bdf68; bytecode file offset 0xcba848"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
resizeUp
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) width.
    recoveredValue2 := (recoveredValue1) * (2).
    recoveredValue3 := CgScreen.
    recoveredValue4 := (recoveredValue3) default.
    recoveredValue5 := (recoveredValue4) width.
    recoveredValue6 := (recoveredValue5) - (50).
    recoveredValue7 := (recoveredValue2) min: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := (self) shell.
    recoveredValue9 := (recoveredValue8) height.
    recoveredValue10 := (recoveredValue9) * (2).
    recoveredValue11 := CgScreen.
    recoveredValue12 := (recoveredValue11) default.
    recoveredValue13 := (recoveredValue12) height.
    recoveredValue14 := (recoveredValue13) - (50).
    recoveredValue15 := (recoveredValue10) min: (recoveredValue14).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue16) @ (recoveredValue17).
    recoveredValue19 := (self) shell.
    recoveredValue20 := (recoveredValue19) width.
    recoveredValue21 := (self) shell.
    recoveredValue22 := (recoveredValue21) height.
    recoveredValue23 := (recoveredValue20) @ (recoveredValue22).
    recoveredValue24 := (recoveredValue18) - (recoveredValue23).
    recoveredLocal1 := recoveredValue24.
    recoveredValue25 := (self) shell.
    recoveredValue26 := (self) shell.
    recoveredValue27 := (recoveredValue26) x.
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := (recoveredValue28) x.
    recoveredValue30 := (recoveredValue27) - (recoveredValue29).
    recoveredValue31 := (self) shell.
    recoveredValue32 := (recoveredValue31) y.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := (recoveredValue33) y.
    recoveredValue35 := (recoveredValue32) - (recoveredValue34).
    recoveredValue36 := recoveredLocal3.
    recoveredValue37 := recoveredLocal2.
    recoveredValue38 := (self) shell.
    recoveredValue39 := (recoveredValue38) borderWidth.
    (recoveredValue25) configureWidget: (recoveredValue30) y: (recoveredValue35) width: (recoveredValue36) height: (recoveredValue37) borderWidth: (recoveredValue39).
    ^self
! !

"ASDBase.ic method 0x203c09f8; bytecode file offset 0xcbd30c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
saveAs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildPageSelected.
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
            (recoveredStack0) fileOutErrors.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := SCSave.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) monitorShortName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := XmSAVE.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := '*.log'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := ' '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) lastUsedLogFilePath.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := '*.*'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) LastUsedLogFilePath: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) saveQueryIn: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d5300; bytecode file offset 0xcd1bf8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
storeUISettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := (self) userInterfaceManager.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) width.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) height.
    recoveredBlock5Value5 := (recoveredBlock5Value2) @ (recoveredBlock5Value4).
    (recoveredBlock5Value0) writeWindowSize: (recoveredBlock5Value5).
    recoveredBlock5Value6 := (self) getEnvironmentConfiguration.
    recoveredBlock5Value7 := [:recoveredBlock5Block24Arg1 | 
    | recoveredBlock5Block24Value0 recoveredBlock5Block24Value1 recoveredBlock5Block24Value2 recoveredBlock5Block24Value3 |
    recoveredBlock5Block24Value0 := recoveredBlock5Block24Arg1.
    recoveredBlock5Block24Value1 := (recoveredBlock5Block24Value0) at: ('Layout').
    recoveredBlock5Block24Value2 := [:recoveredBlock5Block24Block35Arg1 | 
    | recoveredBlock5Block24Block35Value0 recoveredBlock5Block24Block35Value1 recoveredBlock5Block24Block35Value2 recoveredBlock5Block24Block35Value3 recoveredBlock5Block24Block35Value4 recoveredBlock5Block24Block35Value5 recoveredBlock5Block24Block35Value6 recoveredBlock5Block24Block35Value7 recoveredBlock5Block24Block35Value8 recoveredBlock5Block24Block35Value9 recoveredBlock5Block24Block35Value10 recoveredBlock5Block24Block35Value11 recoveredBlock5Block24Block35Value12 |
    recoveredBlock5Block24Block35Value0 := (self) userInterfaceManager.
    recoveredBlock5Block24Block35Value1 := recoveredBlock5Block24Block35Arg1.
    recoveredBlock5Block24Block35Value2 := (recoveredBlock5Block24Block35Value1) at: ('PositionX').
    recoveredBlock5Block24Block35Value3 := recoveredBlock5Block24Block35Arg1.
    recoveredBlock5Block24Block35Value4 := (recoveredBlock5Block24Block35Value3) at: ('PositionY').
    recoveredBlock5Block24Block35Value5 := (recoveredBlock5Block24Block35Value2) @ (recoveredBlock5Block24Block35Value4).
    (recoveredBlock5Block24Block35Value0) writeWindowPosition: (recoveredBlock5Block24Block35Value5).
    recoveredBlock5Block24Block35Value6 := (self) userInterfaceManager.
    recoveredBlock5Block24Block35Value7 := recoveredBlock5Block24Block35Arg1.
    recoveredBlock5Block24Block35Value8 := (recoveredBlock5Block24Block35Value7) at: ('Maximized').
    (recoveredBlock5Block24Block35Value6) writeWindowMaximizedState: (recoveredBlock5Block24Block35Value8).
    recoveredBlock5Block24Block35Value9 := (self) userInterfaceManager.
    recoveredBlock5Block24Block35Value10 := recoveredBlock5Block24Block35Arg1.
    recoveredBlock5Block24Block35Value11 := (recoveredBlock5Block24Block35Value10) at: ('Minimized').
    recoveredBlock5Block24Block35Value12 := (recoveredBlock5Block24Block35Value9) writeWindowMinimizedState: (recoveredBlock5Block24Block35Value11).
    recoveredBlock5Block24Block35Value12
].
    recoveredBlock5Block24Value3 := (recoveredBlock5Block24Value1) ifNotNil: (recoveredBlock5Block24Value2).
    recoveredBlock5Block24Value3
].
    recoveredBlock5Value8 := (recoveredBlock5Value6) ifNotNil: (recoveredBlock5Value7).
    recoveredBlock5Value8
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203ea424; bytecode file offset 0xce6d1c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateStatusLabelErrors: recoveredArg1 warnings: recoveredArg2 infos: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'GeneralError'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) iconName: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'GeneralWarning'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) iconName: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStatusIcon.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := RBUserInterface.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) iconName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStatusLab.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'Errors: '.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := '   Warnings: '.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := '   Infos: '.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20404860; bytecode file offset 0xd01158"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
notify: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionNotificationActive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAppProgramPath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'notify.bat'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '\tools\notification\notifu.exe'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := ETASWinExec.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := ' /m "'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := '" /p ASCET /i "'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := '\ASCET.ico"'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) startOnWindows: (recoveredStack1) showWindow: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := ETASWinExec.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := ' "'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) startOnWindows: (recoveredStack1) showWindow: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041a34c; bytecode file offset 0xd16c3c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createFileOutMenu
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) getSelectedNode.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack3.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 42] ifFalse: [recoveredBlock18PC := 36].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isDisplayable.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) add: ('menuShowError') label: ('Open...') enable: (recoveredValue5).
    recoveredValue6 := [
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := false.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := self.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) getSelectedNode.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Stack2.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredLocal2 := recoveredBlock50Stack3.
            recoveredBlock50PC := 64.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            (recoveredBlock50Stack2 == nil) ifTrue: [recoveredBlock50PC := 84] ifFalse: [recoveredBlock50PC := 68].
        ].
        recoveredBlock50Step = 68 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal2.
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) isDisplayable.
            recoveredBlock50PC := 73.
        ].
        recoveredBlock50Step = 73 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 76] ifFalse: [recoveredBlock50PC := 84].
        ].
        recoveredBlock50Step = 76 ifTrue: [
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal2.
            recoveredBlock50PC := 80.
        ].
        recoveredBlock50Step = 80 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) source.
            recoveredBlock50PC := 82.
        ].
        recoveredBlock50Step = 82 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) isAscetLinkSource.
            recoveredBlock50PC := 84.
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    recoveredValue7 := (recoveredValue2) add: ('menuCopyLink') label: ('Copy Ascet Link to Clipboard') enable: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    (self) addPromotionMenuItems: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2041fb64; bytecode file offset 0xd1c488"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
openFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
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
            recoveredStack3 := SCOpen.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) monitorShortName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) lastUsedLogFilePath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) searchPath: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := '*.log'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := '*.txt'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) fileMustExist.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) LastUsedLogFilePath: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := CfsReadFileStream.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20434300; bytecode file offset 0xd30bf4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
collectFileOutErrors
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorLists.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280fd9e0Arg1 | 
    | block280fd9e0Value0 block280fd9e0Value1 block280fd9e0Value2 |
    block280fd9e0Value0 := block280fd9e0Arg1.
    block280fd9e0Value1 := (block280fd9e0Value0) subUnits.
    block280fd9e0Value2 := (block280fd9e0Value1) notEmpty.
    block280fd9e0Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block280fda04Arg1 :block280fda04Arg2 | 
    | block280fda04Value0 block280fda04Value1 block280fda04Value2 block280fda04Value3 block280fda04Value4 |
    block280fda04Value0 := block280fda04Arg1.
    block280fda04Value1 := (block280fda04Value0) text.
    block280fda04Value2 := block280fda04Arg2.
    block280fda04Value3 := (block280fda04Value2) text.
    block280fda04Value4 := (block280fda04Value1) < (block280fda04Value3).
    block280fda04Value4
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Local1 recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal2.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) subUnits.
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack2 := [:block280fda28Arg1 :block280fda28Arg2 | 
    | block280fda28Value0 block280fda28Value1 block280fda28Value2 block280fda28Value3 block280fda28Value4 |
    block280fda28Value0 := block280fda28Arg1.
    block280fda28Value1 := (block280fda28Value0) id.
    block280fda28Value2 := block280fda28Arg2.
    block280fda28Value3 := (block280fda28Value2) id.
    block280fda28Value4 := (block280fda28Value1) < (block280fda28Value3).
    block280fda28Value4
].
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52PC := 80.
        ].
        recoveredBlock52Step = 80 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) asSortedCollection: (recoveredBlock52Stack2).
            recoveredBlock52PC := 82.
        ].
        recoveredBlock52Step = 82 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local1.
            recoveredBlock52PC := 84.
        ].
        recoveredBlock52Step = 84 ifTrue: [
            recoveredBlock52Stack2 := [:recoveredBlock52Block84Arg1 | 
    | recoveredBlock52Block84Value0 recoveredBlock52Block84Value1 recoveredBlock52Block84Value2 |
    recoveredBlock52Block84Value0 := recoveredBlock52Block84Arg1.
    recoveredBlock52Block84Value1 := recoveredLocal2.
    recoveredBlock52Block84Value2 := (self) collectSortedErrorsForItem: (recoveredBlock52Block84Value0) inCollection: (recoveredBlock52Block84Value1).
    recoveredBlock52Block84Value2
].
            recoveredBlock52PC := 97.
        ].
        recoveredBlock52Step = 97 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) do: (recoveredBlock52Stack2).
            recoveredBlock52PC := 99.
        ].
        recoveredBlock52Step = 99 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20438634; bytecode file offset 0xd34f14"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
resizeDown
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := (recoveredStack5) shell.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := (recoveredStack5) borderWidth.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) configureWidget: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4) borderWidth: (recoveredStack5).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044c2dc; bytecode file offset 0xd48be4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateUnit: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) setErrors: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) updateErrors.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPageBuild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCheckBoxAll.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCheckBoxError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCheckBoxWarning.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHideButton.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNumberOfHiddenMessages.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorAmount.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningAmount.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) informationAmount.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) ReactivationDisabled.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetPageTabBuild.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) setCurrentPage: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) updateStatusLabel.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) updateHideButton.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204550a8; bytecode file offset 0xd519e4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
fileOutErrors
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_72594'.
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
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'File Out messages...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'CodeGeneration'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) lastUsedLogFilePath.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) searchPath: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := '*.log'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := '*.log'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := 'ASCII Log file'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := '*.xml'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := 'XML log file'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := '*.*'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := 'All files'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := XmSAVE.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) appendDefaultExtension.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) shell.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) LastUsedLogFilePath: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 'xml'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOutErrorsAsXML: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) fileOutErrors: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20459fa0; bytecode file offset 0xd568bc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
errorListvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDisplayable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBRenderableBitmapString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) text.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBRenderableBitmapString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) text.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := CgRGBColor.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := OS.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := ColorGraytext.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) getSysColor: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) fromOSRGB: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3) rgbColor: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHideButton.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) hiddenErrorWarningTypes.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconNameHiddenErrorWarningTypes: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconName.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPromoted.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'CodeGenMessageOverlayPromoted'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIcon: (recoveredStack1) overlayedWith: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIcon16WithName: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) getChildrenForUnit: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) hasChildren: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
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

"ASDBase.ic method 0x204600c4; bytecode file offset 0xd5c9e8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createViewMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MT_View.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'menuCollapseErrorList'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := '~Collapse all'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock20Value0 |
    recoveredBlock20Value0 := (self) buildPageSelected.
    recoveredBlock20Value0
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuExpandErrorList'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := '~Expand all'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock36Value0 |
    recoveredBlock36Value0 := (self) buildPageSelected.
    recoveredBlock36Value0
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 'menuAlwaysOnTop'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := '~Always on top'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := [
    | block28100738Value0 block28100738Value1 block28100738Value2 |
    block28100738Value0 := ASDGeneralOptions.
    block28100738Value1 := (block28100738Value0) instance.
    block28100738Value2 := (block28100738Value1) optionMonitorWindowOnTop.
    block28100738Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'menuVerbose'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := '~Verbose'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock74Value0 |
    recoveredBlock74Value0 := (self) monitorPageSelected.
    recoveredBlock74Value0
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack6 := [
    | block2810075cValue0 block2810075cValue1 block2810075cValue2 |
    block2810075cValue0 := ASDGeneralOptions.
    block2810075cValue1 := (block2810075cValue0) instance.
    block2810075cValue2 := (block2810075cValue1) optionMonitorWindowVerbose.
    block2810075cValue2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := 'reposition'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := '~Restore Default Layout'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2046d92c; bytecode file offset 0xd6a244"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) widgetKeyActions: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | block28101350Value0 block28101350Value1 |
    block28101350Value0 := Dictionary.
    block28101350Value1 := (block28101350Value0) new.
    block28101350Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Ctrl-+'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 'resizeUp'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack7 := MPIncreaseWindowSize.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'Ctrl--'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := 'resizeDown'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack7 := MPDecreaseWindowSize.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'Ctrl-o'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := 'openFile'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack7 := MIOpen.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'Ctrl-s'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := 'save'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack7 := MISave.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'Ctrl-r'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := 'clear'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack7 := EtClear.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20478b58; bytecode file offset 0xd7544c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getChildrenForUnitSorted: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hiddenErrorWarningTypes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetHideButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := #('All').
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectMessageIDs: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := #('All').
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectMessageIDs: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := (self) hiddenErrorWarningTypes.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) includes: (recoveredBlock39Value1).
    recoveredBlock39Value3 := (recoveredBlock39Value2) not.
    recoveredBlock39Value3
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) showErrors.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) showWarnings.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := (recoveredStack4) showInformation.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSubUnitsForViewErrors: (recoveredStack2) warnings: (recoveredStack3) infos: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) hiddenErrorWarningTypes.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHideButton.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 |
    recoveredBlock105Value0 := (self) hiddenErrorWarningTypes.
    recoveredBlock105Value1 := recoveredBlock105Arg1.
    recoveredBlock105Value2 := (recoveredBlock105Value1) basicId.
    recoveredBlock105Value3 := (recoveredBlock105Value0) includes: (recoveredBlock105Value2).
    recoveredBlock105Value4 := (recoveredBlock105Value3) not.
    recoveredBlock105Value4
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20487b70; bytecode file offset 0xd844b8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) setFocusAtReactivate.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) noActivateAtOpen: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'GeneralEdit'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'GeneralEdit32'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) initializePages.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := CwSmalltalkTextSelectionManager.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTranscript.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) connect.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := XmTRAVERSECURRENT.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) processTraversal: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) updateWindowLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) initializeErrorList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFileOutMenu.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) initializeMenuBar.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) readMonitorContentsFromLogFile.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) notebook.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Local1 recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75Stack5 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            recoveredBlock75Stack2 := self.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) notebook.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) selectedItems.
            recoveredBlock75PC := 88.
        ].
        recoveredBlock75Step = 88 ifTrue: [
            recoveredBlock75Stack3 := 1.
            recoveredBlock75PC := 90.
        ].
        recoveredBlock75Step = 90 ifTrue: [
            recoveredBlock75Stack4 := [].
            recoveredBlock75PC := 92.
        ].
        recoveredBlock75Step = 92 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) at: (recoveredBlock75Stack3) ifAbsent: (recoveredBlock75Stack4).
            recoveredBlock75PC := 94.
        ].
        recoveredBlock75Step = 94 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Stack2.
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack3.
            recoveredBlock75PC := 96.
        ].
        recoveredBlock75Step = 96 ifTrue: [
            (recoveredBlock75Stack2 == nil) ifTrue: [recoveredBlock75PC := 112] ifFalse: [recoveredBlock75PC := 100].
        ].
        recoveredBlock75Step = 100 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local1.
            recoveredBlock75PC := 101.
        ].
        recoveredBlock75Step = 101 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Arg1.
            recoveredBlock75PC := 102.
        ].
        recoveredBlock75Step = 102 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) ~= (recoveredBlock75Stack3).
            recoveredBlock75PC := 103.
        ].
        recoveredBlock75Step = 103 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 106] ifFalse: [recoveredBlock75PC := 112].
        ].
        recoveredBlock75Step = 106 ifTrue: [
            recoveredBlock75PC := 107.
        ].
        recoveredBlock75Step = 107 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 108.
        ].
        recoveredBlock75Step = 108 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) userData.
            recoveredBlock75PC := 110.
        ].
        recoveredBlock75Step = 110 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) unmanageChild.
            recoveredBlock75PC := 112.
        ].
        recoveredBlock75Step = 112 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) deactivateProgressBar.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := SGMonitorManager.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionMonitorWindowVerbose.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) verbose: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a1cd4; bytecode file offset 0xd9e5c8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
getChildrenForUnit: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgUnit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hiddenErrorWarningTypes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetHideButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := #('All').
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectMessageIDs: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := #('All').
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectMessageIDs: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := (self) hiddenErrorWarningTypes.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) includes: (recoveredBlock39Value1).
    recoveredBlock39Value3 := (recoveredBlock39Value2) not.
    recoveredBlock39Value3
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) showErrors.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) showWarnings.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := (recoveredStack4) showInformation.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSubUnitsForViewErrors: (recoveredStack2) warnings: (recoveredStack3) infos: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) hiddenErrorWarningTypes.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHideButton.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 109.
        ].
        recoveredBlock101Step = 109 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) isCgUnit.
            recoveredBlock101PC := 110.
        ].
        recoveredBlock101Step = 110 ifTrue: [
            (recoveredBlock101Stack1) ifTrue: [recoveredBlock101PC := 114] ifFalse: [recoveredBlock101PC := 124].
        ].
        recoveredBlock101Step = 114 ifTrue: [
            recoveredBlock101Stack1 := self.
            recoveredBlock101PC := 115.
        ].
        recoveredBlock101Step = 115 ifTrue: [
            recoveredBlock101Stack2 := recoveredBlock101Arg1.
            recoveredBlock101PC := 116.
        ].
        recoveredBlock101Step = 116 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) getChildrenForUnit: (recoveredBlock101Stack2).
            recoveredBlock101PC := 118.
        ].
        recoveredBlock101Step = 118 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) isEmpty.
            recoveredBlock101PC := 119.
        ].
        recoveredBlock101Step = 119 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) not.
            recoveredBlock101PC := 120.
        ].
        recoveredBlock101Step = 120 ifTrue: [
            recoveredBlock101PC := 132.
        ].
        recoveredBlock101Step = 124 ifTrue: [
            recoveredBlock101Stack1 := self.
            recoveredBlock101PC := 125.
        ].
        recoveredBlock101Step = 125 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) hiddenErrorWarningTypes.
            recoveredBlock101PC := 126.
        ].
        recoveredBlock101Step = 126 ifTrue: [
            recoveredBlock101Stack2 := recoveredBlock101Arg1.
            recoveredBlock101PC := 127.
        ].
        recoveredBlock101Step = 127 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) basicId.
            recoveredBlock101PC := 129.
        ].
        recoveredBlock101Step = 129 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) includes: (recoveredBlock101Stack2).
            recoveredBlock101PC := 131.
        ].
        recoveredBlock101Step = 131 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) not.
            recoveredBlock101PC := 132.
        ].
        recoveredBlock101Step = 132 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack1.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a9074; bytecode file offset 0xda597c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
detectHyperlinksIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: (' ').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('''').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('(').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: (')').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('[').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: (']').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: ('<').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) add: ('>').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) add: ('{').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) add: ('}').
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := ('\') withCrs.
    (recoveredValue12) add: (recoveredValue13).
    recoveredLocal4 := recoveredValue1.
    recoveredLocal3 := #('http://' 'https://' 'ftp://' 'file:///' 'asd://' 'ascet://').
    recoveredValue14 := OrderedCollection.
    recoveredValue15 := (recoveredValue14) new.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := (recoveredValue16) subStringsWithPosition: (recoveredValue17).
    recoveredValue19 := recoveredValue18.
    recoveredLocal2 := recoveredValue19.
    recoveredValue20 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 |
    recoveredBlock90Value0 := recoveredLocal3.
    recoveredBlock90Value1 := [:recoveredBlock90Block99Arg1 | 
    | recoveredBlock90Block99Stack0 recoveredBlock90Block99Stack1 recoveredBlock90Block99Stack2 recoveredBlock90Block99Stack3 recoveredBlock90Block99Stack4 recoveredBlock90Block99PC recoveredBlock90Block99Step recoveredBlock90Block99Done recoveredBlock90Block99Result |
    recoveredBlock90Block99Stack0 := nil.
    recoveredBlock90Block99PC := 106.
    recoveredBlock90Block99Done := false.
    [recoveredBlock90Block99Done not] whileTrue: [
        recoveredBlock90Block99Step := recoveredBlock90Block99PC.
        recoveredBlock90Block99Step = 106 ifTrue: [
            recoveredBlock90Block99Stack1 := nil.
            recoveredBlock90Block99PC := 107.
        ].
        recoveredBlock90Block99Step = 107 ifTrue: [
            recoveredBlock90Block99Stack2 := recoveredBlock90Arg1.
            recoveredBlock90Block99PC := 110.
        ].
        recoveredBlock90Block99Step = 110 ifTrue: [
            recoveredBlock90Block99Stack3 := 1.
            recoveredBlock90Block99PC := 112.
        ].
        recoveredBlock90Block99Step = 112 ifTrue: [
            recoveredBlock90Block99Stack2 := (recoveredBlock90Block99Stack2) at: (recoveredBlock90Block99Stack3).
            recoveredBlock90Block99PC := 114.
        ].
        recoveredBlock90Block99Step = 114 ifTrue: [
            recoveredBlock90Block99Stack2 := (recoveredBlock90Block99Stack2) asLowercase.
            recoveredBlock90Block99PC := 116.
        ].
        recoveredBlock90Block99Step = 116 ifTrue: [
            recoveredBlock90Block99Stack3 := recoveredBlock90Block99Arg1.
            recoveredBlock90Block99PC := 117.
        ].
        recoveredBlock90Block99Step = 117 ifTrue: [
            recoveredBlock90Block99Stack2 := (recoveredBlock90Block99Stack2) startsWith: (recoveredBlock90Block99Stack3).
            recoveredBlock90Block99PC := 119.
        ].
        recoveredBlock90Block99Step = 119 ifTrue: [
            (recoveredBlock90Block99Stack2) ifTrue: [recoveredBlock90Block99PC := 122] ifFalse: [recoveredBlock90Block99PC := 130].
        ].
        recoveredBlock90Block99Step = 122 ifTrue: [
            recoveredBlock90Block99PC := 123.
        ].
        recoveredBlock90Block99Step = 123 ifTrue: [
            recoveredBlock90Block99Stack1 := recoveredLocal1.
            recoveredBlock90Block99PC := 126.
        ].
        recoveredBlock90Block99Step = 126 ifTrue: [
            recoveredBlock90Block99Stack2 := recoveredBlock90Arg1.
            recoveredBlock90Block99PC := 129.
        ].
        recoveredBlock90Block99Step = 129 ifTrue: [
            recoveredBlock90Block99Stack1 := (recoveredBlock90Block99Stack1) add: (recoveredBlock90Block99Stack2).
            recoveredBlock90Block99PC := 130.
        ].
        recoveredBlock90Block99Step = 130 ifTrue: [
            recoveredBlock90Block99Result := recoveredBlock90Block99Stack1.
            recoveredBlock90Block99Done := true.
        ].
    ].
    recoveredBlock90Block99Result
].
    recoveredBlock90Value2 := (recoveredBlock90Value0) do: (recoveredBlock90Value1).
    recoveredBlock90Value2
].
    (recoveredValue18) do: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    ^recoveredValue21
! !

"ASDBase.ic method 0x204b7010; bytecode file offset 0xdb3944"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createFileMenu
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MTFile.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'openFile'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := MIOpen.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) monitorPageSelected.
    recoveredBlock18Value0
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'openFile'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := 'O'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'save'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := MISave.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 'save'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := SCCtrl.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := 'S'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'saveAs'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := MISaveAs.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'openInEditor'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := 'Show in ~Editor'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := 'menuOpenCgenDirectory'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := 'Open ~Code Generation Directory'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := 'close'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := MPExit.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 'close'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := SCAlt.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := 'F4'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := (recoveredStack5) bindWith: (recoveredStack6).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c2a18; bytecode file offset 0xdbf34c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createWidgetHierarchyMonitorPageForForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMonitorWindowUseScintilla.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'text'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block2810693cArg1 | 
    | block2810693cValue0 block2810693cValue1 block2810693cValue2 block2810693cValue3 block2810693cValue4 block2810693cValue5 block2810693cValue6 block2810693cValue7 block2810693cValue8 block2810693cValue9 block2810693cValue10 |
    block2810693cValue0 := block2810693cArg1.
    block2810693cValue1 := block2810693cValue0.
    (block2810693cValue1) wordWrap: (true).
    block2810693cValue2 := block2810693cValue0.
    (block2810693cValue2) setEditable: (false).
    block2810693cValue3 := block2810693cValue0.
    block2810693cValue4 := CgRGBColor.
    block2810693cValue5 := OS.
    block2810693cValue6 := ColorWindow.
    block2810693cValue7 := (block2810693cValue5) getSysColor: (block2810693cValue6).
    block2810693cValue8 := (block2810693cValue4) fromOSRGB: (block2810693cValue7).
    (block2810693cValue3) backgroundColor: (block2810693cValue8).
    block2810693cValue9 := XmMULTILINEEDIT.
    block2810693cValue10 := (block2810693cValue0) editMode: (block2810693cValue9).
    block2810693cValue10
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledScintillaMonitorText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'text'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:block28106960Arg1 | 
    | block28106960Value0 block28106960Value1 block28106960Value2 block28106960Value3 block28106960Value4 block28106960Value5 block28106960Value6 block28106960Value7 block28106960Value8 block28106960Value9 block28106960Value10 |
    block28106960Value0 := block28106960Arg1.
    block28106960Value1 := block28106960Value0.
    (block28106960Value1) wordWrap: (true).
    block28106960Value2 := block28106960Value0.
    (block28106960Value2) setEditable: (false).
    block28106960Value3 := block28106960Value0.
    block28106960Value4 := CgRGBColor.
    block28106960Value5 := OS.
    block28106960Value6 := ColorWindow.
    block28106960Value7 := (block28106960Value5) getSysColor: (block28106960Value6).
    block28106960Value8 := (block28106960Value4) fromOSRGB: (block28106960Value7).
    (block28106960Value3) backgroundColor: (block28106960Value8).
    block28106960Value9 := XmMULTILINEEDIT.
    block28106960Value10 := (block28106960Value0) editMode: (block28106960Value9).
    block28106960Value10
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'scrolledText'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'text'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:block28106984Arg1 | 
    | block28106984Value0 block28106984Value1 block28106984Value2 block28106984Value3 block28106984Value4 block28106984Value5 block28106984Value6 block28106984Value7 block28106984Value8 |
    block28106984Value0 := block28106984Arg1.
    block28106984Value1 := block28106984Value0.
    block28106984Value2 := XmATTACHFORM.
    (block28106984Value1) rightAttachment: (block28106984Value2).
    block28106984Value3 := block28106984Value0.
    block28106984Value4 := XmATTACHFORM.
    (block28106984Value3) topAttachment: (block28106984Value4).
    block28106984Value5 := block28106984Value0.
    block28106984Value6 := XmATTACHFORM.
    (block28106984Value5) leftAttachment: (block28106984Value6).
    block28106984Value7 := XmATTACHFORM.
    block28106984Value8 := (block28106984Value0) bottomAttachment: (block28106984Value7).
    block28106984Value8
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d9948; bytecode file offset 0xdd6250"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
viewFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseASCIIEditor.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorPath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorArguments.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := $%.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) occurrencesOf: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := recoveredArg1.
    recoveredBlock52Value2 := (recoveredBlock52Value0) bindWith: (recoveredBlock52Value1) with: ('1').
    recoveredBlock52Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := ExCLDTInvalidArgument.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:recoveredBlock71Arg1 | 
    recoveredLocal1 := ''.
    ''
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := OSHinstance.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 'open'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) shellExecuteFile: (recoveredStack2) operation: (recoveredStack3) parameters: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := OSHinstance.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultAction: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := OSHinstance.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'notepad'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := 'open'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := '"'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := '"'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) shellExecuteFile: (recoveredStack2) operation: (recoveredStack3) parameters: (recoveredStack4).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20513150; bytecode file offset 0xe0fa74"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateStatusLabel
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorLists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2810b598Arg1 | 
    | block2810b598Value0 block2810b598Value1 block2810b598Value2 |
    block2810b598Value0 := block2810b598Arg1.
    block2810b598Value1 := (block2810b598Value0) subUnits.
    block2810b598Value2 := (block2810b598Value1) notEmpty.
    block2810b598Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'GeneralTransparent'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) iconName: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'GeneralCheck'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) iconName: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorAmount.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) warningAmount.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) informationAmount.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'GeneralError'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) iconName: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'GeneralWarning'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) iconName: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStatusIcon.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := RBUserInterface.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) iconName.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStatusLab.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'Errors: '.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := '   Warnings: '.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := '   Infos: '.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055cdb4; bytecode file offset 0xe596f8"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
addPromotionMenuItems: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'menuHideErrorWarningType'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 'Hide'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := (self) isHideErrorWarningPossible.
    recoveredBlock13Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'menuPromoteToWarningType'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 'Promote to warning'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock29Value0 |
    recoveredBlock29Value0 := (self) isPromoteToWarningPossible.
    recoveredBlock29Value0
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'menuPromoteToErrorType'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := 'Promote to error'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock46Value0 |
    recoveredBlock46Value0 := (self) isPromoteToErrorPossible.
    recoveredBlock46Value0
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'menuRevokePromotion'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 'Revoke Promotion'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock62Value0 |
    recoveredBlock62Value0 := (self) isRevokePromotionPossible.
    recoveredBlock62Value0
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'menuIgnoreGlobalPromotion'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := 'Ignore Global Promotion'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock78Value0 |
    recoveredBlock78Value0 := (self) isIgnoreGlobalPromotionPossible.
    recoveredBlock78Value0
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 'menuShowErrorWarningType'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := 'Settings ...'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock94Value0 recoveredBlock94Value1 |
    recoveredBlock94Value0 := (self) currentProject.
    recoveredBlock94Value1 := (recoveredBlock94Value0) notNil.
    recoveredBlock94Value1
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := 'menuHaltOnError'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) etasInternalMenuLabelPrefix.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack5 := 'Halt on next occurance'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock130Stack0 recoveredBlock130Stack1 recoveredBlock130Stack2 recoveredBlock130Stack3 recoveredBlock130PC recoveredBlock130Step recoveredBlock130Done recoveredBlock130Result |
    recoveredBlock130Stack0 := self.
    recoveredBlock130PC := 136.
    recoveredBlock130Done := false.
    [recoveredBlock130Done not] whileTrue: [
        recoveredBlock130Step := recoveredBlock130PC.
        recoveredBlock130Step = 136 ifTrue: [
            recoveredBlock130Stack1 := false.
            recoveredBlock130PC := 137.
        ].
        recoveredBlock130Step = 137 ifTrue: [
            recoveredBlock130Stack2 := self.
            recoveredBlock130PC := 138.
        ].
        recoveredBlock130Step = 138 ifTrue: [
            recoveredBlock130Stack2 := (recoveredBlock130Stack2) getSelectedError.
            recoveredBlock130PC := 140.
        ].
        recoveredBlock130Step = 140 ifTrue: [
            (recoveredBlock130Stack2 == nil) ifTrue: [recoveredBlock130PC := 152] ifFalse: [recoveredBlock130PC := 144].
        ].
        recoveredBlock130Step = 144 ifTrue: [
            recoveredBlock130PC := 145.
        ].
        recoveredBlock130Step = 145 ifTrue: [
            recoveredBlock130Stack1 := self.
            recoveredBlock130PC := 146.
        ].
        recoveredBlock130Step = 146 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) getSelectedError.
            recoveredBlock130PC := 148.
        ].
        recoveredBlock130Step = 148 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) basicId.
            recoveredBlock130PC := 150.
        ].
        recoveredBlock130Step = 150 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) notEmpty.
            recoveredBlock130PC := 152.
        ].
        recoveredBlock130Step = 152 ifTrue: [
            recoveredBlock130Result := recoveredBlock130Stack1.
            recoveredBlock130Done := true.
        ].
    ].
    recoveredBlock130Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'menuResetHaltConditions'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasInternalMenuLabelPrefix.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := 'Reset halt conditions'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock165Value0 |
    recoveredBlock165Value0 := (self) hasHaltConditions.
    recoveredBlock165Value0
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 'menuServerHelp'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := 'Show external help'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186Stack3 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack1 := false.
            recoveredBlock186PC := 193.
        ].
        recoveredBlock186Step = 193 ifTrue: [
            recoveredBlock186Stack2 := self.
            recoveredBlock186PC := 194.
        ].
        recoveredBlock186Step = 194 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) helpServer.
            recoveredBlock186PC := 196.
        ].
        recoveredBlock186Step = 196 ifTrue: [
            (recoveredBlock186Stack2 == nil) ifTrue: [recoveredBlock186PC := 226] ifFalse: [recoveredBlock186PC := 200].
        ].
        recoveredBlock186Step = 200 ifTrue: [
            recoveredBlock186PC := 201.
        ].
        recoveredBlock186Step = 201 ifTrue: [
            recoveredBlock186Stack1 := false.
            recoveredBlock186PC := 202.
        ].
        recoveredBlock186Step = 202 ifTrue: [
            recoveredBlock186Stack2 := self.
            recoveredBlock186PC := 203.
        ].
        recoveredBlock186Step = 203 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) helpServer.
            recoveredBlock186PC := 205.
        ].
        recoveredBlock186Step = 205 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) notEmpty.
            recoveredBlock186PC := 207.
        ].
        recoveredBlock186Step = 207 ifTrue: [
            (recoveredBlock186Stack2) ifTrue: [recoveredBlock186PC := 210] ifFalse: [recoveredBlock186PC := 226].
        ].
        recoveredBlock186Step = 210 ifTrue: [
            recoveredBlock186PC := 211.
        ].
        recoveredBlock186Step = 211 ifTrue: [
            recoveredBlock186Stack1 := false.
            recoveredBlock186PC := 212.
        ].
        recoveredBlock186Step = 212 ifTrue: [
            recoveredBlock186Stack2 := self.
            recoveredBlock186PC := 213.
        ].
        recoveredBlock186Step = 213 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) getSelectedError.
            recoveredBlock186PC := 215.
        ].
        recoveredBlock186Step = 215 ifTrue: [
            (recoveredBlock186Stack2 == nil) ifTrue: [recoveredBlock186PC := 226] ifFalse: [recoveredBlock186PC := 218].
        ].
        recoveredBlock186Step = 218 ifTrue: [
            recoveredBlock186PC := 219.
        ].
        recoveredBlock186Step = 219 ifTrue: [
            recoveredBlock186Stack1 := self.
            recoveredBlock186PC := 220.
        ].
        recoveredBlock186Step = 220 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) getSelectedError.
            recoveredBlock186PC := 222.
        ].
        recoveredBlock186Step = 222 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) basicId.
            recoveredBlock186PC := 224.
        ].
        recoveredBlock186Step = 224 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) notEmpty.
            recoveredBlock186PC := 226.
        ].
        recoveredBlock186Step = 226 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack1.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20579940; bytecode file offset 0xe7624c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
monitorAppendText: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScintillaWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) sciGetLength.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTranscript.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciGetLength.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) insertAndShow: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectMarkersIn: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40Stack6 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := 2.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2).
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            recoveredBlock40Stack2 := '### ERROR'.
            recoveredBlock40PC := 53.
        ].
        recoveredBlock40Step = 53 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 54.
        ].
        recoveredBlock40Step = 54 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 58] ifFalse: [recoveredBlock40PC := 96].
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) widgetTranscript.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack2 := self.
            recoveredBlock40PC := 61.
        ].
        recoveredBlock40Step = 61 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) widgetTranscript.
            recoveredBlock40PC := 62.
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal1.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg1.
            recoveredBlock40PC := 66.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            recoveredBlock40Stack5 := 1.
            recoveredBlock40PC := 68.
        ].
        recoveredBlock40Step = 68 ifTrue: [
            recoveredBlock40Stack4 := (recoveredBlock40Stack4) at: (recoveredBlock40Stack5).
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) + (recoveredBlock40Stack4).
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) sciLineFromPosition: (recoveredBlock40Stack3).
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            (recoveredBlock40Stack1) markError: (recoveredBlock40Stack2).
            recoveredBlock40PC := 75.
        ].
        recoveredBlock40Step = 75 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) widgetTranscript.
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal1.
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 80 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 81 ifTrue: [
            recoveredBlock40Stack4 := 1.
            recoveredBlock40PC := 83.
        ].
        recoveredBlock40Step = 83 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 85.
        ].
        recoveredBlock40Step = 85 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) + (recoveredBlock40Stack3).
            recoveredBlock40PC := 86.
        ].
        recoveredBlock40Step = 86 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) + (-1).
            recoveredBlock40PC := 87.
        ].
        recoveredBlock40Step = 87 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 88.
        ].
        recoveredBlock40Step = 88 ifTrue: [
            recoveredBlock40Stack4 := 2.
            recoveredBlock40PC := 90.
        ].
        recoveredBlock40Step = 90 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 92.
        ].
        recoveredBlock40Step = 92 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) size.
            recoveredBlock40PC := 94.
        ].
        recoveredBlock40Step = 94 ifTrue: [
            (recoveredBlock40Stack1) sciSetStyleErrorMarkerFrom: (recoveredBlock40Stack2) to: (recoveredBlock40Stack3).
            recoveredBlock40PC := 96.
        ].
        recoveredBlock40Step = 96 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 97.
        ].
        recoveredBlock40Step = 97 ifTrue: [
            recoveredBlock40Stack2 := 2.
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2).
            recoveredBlock40PC := 101.
        ].
        recoveredBlock40Step = 101 ifTrue: [
            recoveredBlock40Stack2 := '### WARNING'.
            recoveredBlock40PC := 103.
        ].
        recoveredBlock40Step = 103 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 104.
        ].
        recoveredBlock40Step = 104 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 108] ifFalse: [recoveredBlock40PC := 146].
        ].
        recoveredBlock40Step = 108 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 109.
        ].
        recoveredBlock40Step = 109 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) widgetTranscript.
            recoveredBlock40PC := 110.
        ].
        recoveredBlock40Step = 110 ifTrue: [
            recoveredBlock40Stack2 := self.
            recoveredBlock40PC := 111.
        ].
        recoveredBlock40Step = 111 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) widgetTranscript.
            recoveredBlock40PC := 112.
        ].
        recoveredBlock40Step = 112 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal1.
            recoveredBlock40PC := 115.
        ].
        recoveredBlock40Step = 115 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg1.
            recoveredBlock40PC := 116.
        ].
        recoveredBlock40Step = 116 ifTrue: [
            recoveredBlock40Stack5 := 1.
            recoveredBlock40PC := 118.
        ].
        recoveredBlock40Step = 118 ifTrue: [
            recoveredBlock40Stack4 := (recoveredBlock40Stack4) at: (recoveredBlock40Stack5).
            recoveredBlock40PC := 120.
        ].
        recoveredBlock40Step = 120 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) + (recoveredBlock40Stack4).
            recoveredBlock40PC := 121.
        ].
        recoveredBlock40Step = 121 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) sciLineFromPosition: (recoveredBlock40Stack3).
            recoveredBlock40PC := 123.
        ].
        recoveredBlock40Step = 123 ifTrue: [
            (recoveredBlock40Stack1) markWarning: (recoveredBlock40Stack2).
            recoveredBlock40PC := 125.
        ].
        recoveredBlock40Step = 125 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 126.
        ].
        recoveredBlock40Step = 126 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) widgetTranscript.
            recoveredBlock40PC := 127.
        ].
        recoveredBlock40Step = 127 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal1.
            recoveredBlock40PC := 130.
        ].
        recoveredBlock40Step = 130 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 131.
        ].
        recoveredBlock40Step = 131 ifTrue: [
            recoveredBlock40Stack4 := 1.
            recoveredBlock40PC := 133.
        ].
        recoveredBlock40Step = 133 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 135.
        ].
        recoveredBlock40Step = 135 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) + (recoveredBlock40Stack3).
            recoveredBlock40PC := 136.
        ].
        recoveredBlock40Step = 136 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) + (-1).
            recoveredBlock40PC := 137.
        ].
        recoveredBlock40Step = 137 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 138.
        ].
        recoveredBlock40Step = 138 ifTrue: [
            recoveredBlock40Stack4 := 2.
            recoveredBlock40PC := 140.
        ].
        recoveredBlock40Step = 140 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 142.
        ].
        recoveredBlock40Step = 142 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) size.
            recoveredBlock40PC := 144.
        ].
        recoveredBlock40Step = 144 ifTrue: [
            (recoveredBlock40Stack1) sciSetStyleWarningMarkerFrom: (recoveredBlock40Stack2) to: (recoveredBlock40Stack3).
            recoveredBlock40PC := 146.
        ].
        recoveredBlock40Step = 146 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 147.
        ].
        recoveredBlock40Step = 147 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 148.
        ].
        recoveredBlock40Step = 148 ifTrue: [
            recoveredBlock40Stack3 := 2.
            recoveredBlock40PC := 150.
        ].
        recoveredBlock40Step = 150 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) at: (recoveredBlock40Stack3).
            recoveredBlock40PC := 152.
        ].
        recoveredBlock40Step = 152 ifTrue: [
            recoveredBlock40Stack3 := '### INFORMATION'.
            recoveredBlock40PC := 154.
        ].
        recoveredBlock40Step = 154 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) = (recoveredBlock40Stack3).
            recoveredBlock40PC := 155.
        ].
        recoveredBlock40Step = 155 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 158] ifFalse: [recoveredBlock40PC := 197].
        ].
        recoveredBlock40Step = 158 ifTrue: [
            recoveredBlock40PC := 159.
        ].
        recoveredBlock40Step = 159 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 160.
        ].
        recoveredBlock40Step = 160 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) widgetTranscript.
            recoveredBlock40PC := 161.
        ].
        recoveredBlock40Step = 161 ifTrue: [
            recoveredBlock40Stack2 := self.
            recoveredBlock40PC := 162.
        ].
        recoveredBlock40Step = 162 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) widgetTranscript.
            recoveredBlock40PC := 163.
        ].
        recoveredBlock40Step = 163 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal1.
            recoveredBlock40PC := 166.
        ].
        recoveredBlock40Step = 166 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg1.
            recoveredBlock40PC := 167.
        ].
        recoveredBlock40Step = 167 ifTrue: [
            recoveredBlock40Stack5 := 1.
            recoveredBlock40PC := 169.
        ].
        recoveredBlock40Step = 169 ifTrue: [
            recoveredBlock40Stack4 := (recoveredBlock40Stack4) at: (recoveredBlock40Stack5).
            recoveredBlock40PC := 171.
        ].
        recoveredBlock40Step = 171 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) + (recoveredBlock40Stack4).
            recoveredBlock40PC := 172.
        ].
        recoveredBlock40Step = 172 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) sciLineFromPosition: (recoveredBlock40Stack3).
            recoveredBlock40PC := 174.
        ].
        recoveredBlock40Step = 174 ifTrue: [
            (recoveredBlock40Stack1) markInformation: (recoveredBlock40Stack2).
            recoveredBlock40PC := 176.
        ].
        recoveredBlock40Step = 176 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 177.
        ].
        recoveredBlock40Step = 177 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) widgetTranscript.
            recoveredBlock40PC := 178.
        ].
        recoveredBlock40Step = 178 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal1.
            recoveredBlock40PC := 181.
        ].
        recoveredBlock40Step = 181 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 182.
        ].
        recoveredBlock40Step = 182 ifTrue: [
            recoveredBlock40Stack4 := 1.
            recoveredBlock40PC := 184.
        ].
        recoveredBlock40Step = 184 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 186.
        ].
        recoveredBlock40Step = 186 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) + (recoveredBlock40Stack3).
            recoveredBlock40PC := 187.
        ].
        recoveredBlock40Step = 187 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) + (-1).
            recoveredBlock40PC := 188.
        ].
        recoveredBlock40Step = 188 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 189.
        ].
        recoveredBlock40Step = 189 ifTrue: [
            recoveredBlock40Stack4 := 2.
            recoveredBlock40PC := 191.
        ].
        recoveredBlock40Step = 191 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 193.
        ].
        recoveredBlock40Step = 193 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) size.
            recoveredBlock40PC := 195.
        ].
        recoveredBlock40Step = 195 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) sciSetStyleInformationMarkerFrom: (recoveredBlock40Stack2) to: (recoveredBlock40Stack3).
            recoveredBlock40PC := 197.
        ].
        recoveredBlock40Step = 197 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectHyperlinksIn: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := [:recoveredBlock206Arg1 | 
    | recoveredBlock206Value0 recoveredBlock206Value1 recoveredBlock206Value2 recoveredBlock206Value3 recoveredBlock206Value4 recoveredBlock206Value5 recoveredBlock206Value6 recoveredBlock206Value7 recoveredBlock206Value8 recoveredBlock206Value9 |
    recoveredBlock206Value0 := (self) widgetTranscript.
    recoveredBlock206Value1 := recoveredLocal1.
    recoveredBlock206Value2 := recoveredBlock206Arg1.
    recoveredBlock206Value3 := (recoveredBlock206Value2) at: (2).
    recoveredBlock206Value4 := (recoveredBlock206Value1) + (recoveredBlock206Value3).
    recoveredBlock206Value5 := (recoveredBlock206Value4) + (-1).
    recoveredBlock206Value6 := recoveredBlock206Arg1.
    recoveredBlock206Value7 := (recoveredBlock206Value6) at: (1).
    recoveredBlock206Value8 := (recoveredBlock206Value7) size.
    recoveredBlock206Value9 := (recoveredBlock206Value0) sciSetStyleHyperlikFrom: (recoveredBlock206Value5) to: (recoveredBlock206Value8).
    recoveredBlock206Value9
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTranscript.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastPosition.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) insertAndShow: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059b1f4; bytecode file offset 0xe97b24"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
updateErrorsCollapse: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetHiddenErrorWarningTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCheckBoxAll.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageTypeSelection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'all'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCheckBoxError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageTypeSelection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'error'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCheckBoxWarning.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageTypeSelection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'warning'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCheckBoxInformation.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageTypeSelection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'information'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectErrors.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Local1 recoveredBlock77Local2 recoveredBlock77Stack0 recoveredBlock77Stack1 recoveredBlock77Stack2 recoveredBlock77Stack3 recoveredBlock77Stack4 recoveredBlock77PC recoveredBlock77Step recoveredBlock77Done recoveredBlock77Result |
    recoveredBlock77Stack0 := self.
    recoveredBlock77PC := 84.
    recoveredBlock77Done := false.
    [recoveredBlock77Done not] whileTrue: [
        recoveredBlock77Step := recoveredBlock77PC.
        recoveredBlock77Step = 84 ifTrue: [
            recoveredBlock77Stack1 := recoveredLocal4.
            recoveredBlock77PC := 87.
        ].
        recoveredBlock77Step = 87 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) size.
            recoveredBlock77PC := 89.
        ].
        recoveredBlock77Step = 89 ifTrue: [
            recoveredBlock77Stack2 := 1.
            recoveredBlock77PC := 91.
        ].
        recoveredBlock77Step = 91 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) >= (recoveredBlock77Stack2).
            recoveredBlock77PC := 92.
        ].
        recoveredBlock77Step = 92 ifTrue: [
            (recoveredBlock77Stack1) ifTrue: [recoveredBlock77PC := 96] ifFalse: [recoveredBlock77PC := 138].
        ].
        recoveredBlock77Step = 96 ifTrue: [
            recoveredBlock77Stack1 := self.
            recoveredBlock77PC := 97.
        ].
        recoveredBlock77Step = 97 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) widgetErrorList.
            recoveredBlock77PC := 99.
        ].
        recoveredBlock77Step = 99 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Arg1.
            recoveredBlock77PC := 102.
        ].
        recoveredBlock77Step = 102 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) indexOf: (recoveredBlock77Stack2).
            recoveredBlock77PC := 104.
        ].
        recoveredBlock77Step = 104 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Stack1.
            recoveredBlock77PC := 105.
        ].
        recoveredBlock77Step = 105 ifTrue: [
            recoveredBlock77Local2 := recoveredBlock77Stack2.
            recoveredBlock77PC := 108.
        ].
        recoveredBlock77Step = 108 ifTrue: [
            recoveredBlock77Stack2 := 0.
            recoveredBlock77PC := 110.
        ].
        recoveredBlock77Step = 110 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) ~= (recoveredBlock77Stack2).
            recoveredBlock77PC := 111.
        ].
        recoveredBlock77Step = 111 ifTrue: [
            (recoveredBlock77Stack1) ifTrue: [recoveredBlock77PC := 114] ifFalse: [recoveredBlock77PC := 138].
        ].
        recoveredBlock77Step = 114 ifTrue: [
            recoveredBlock77Stack1 := recoveredBlock77Local2.
            recoveredBlock77PC := 117.
        ].
        recoveredBlock77Step = 117 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal4.
            recoveredBlock77PC := 120.
        ].
        recoveredBlock77Step = 120 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) size.
            recoveredBlock77PC := 122.
        ].
        recoveredBlock77Step = 122 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) ~= (recoveredBlock77Stack2).
            recoveredBlock77PC := 123.
        ].
        recoveredBlock77Step = 123 ifTrue: [
            (recoveredBlock77Stack1) ifTrue: [recoveredBlock77PC := 126] ifFalse: [recoveredBlock77PC := 138].
        ].
        recoveredBlock77Step = 126 ifTrue: [
            recoveredBlock77Stack1 := self.
            recoveredBlock77PC := 127.
        ].
        recoveredBlock77Step = 127 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) widgetErrorList.
            recoveredBlock77PC := 129.
        ].
        recoveredBlock77Step = 129 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Local2.
            recoveredBlock77PC := 132.
        ].
        recoveredBlock77Step = 132 ifTrue: [
            recoveredBlock77Stack3 := true.
            recoveredBlock77PC := 133.
        ].
        recoveredBlock77Step = 133 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) collapsePos: (recoveredBlock77Stack2) notify: (recoveredBlock77Stack3).
            recoveredBlock77PC := 135.
        ].
        recoveredBlock77Step = 135 ifTrue: [
            recoveredBlock77PC := 269.
        ].
        recoveredBlock77Step = 138 ifTrue: [
            recoveredBlock77Stack1 := self.
            recoveredBlock77PC := 139.
        ].
        recoveredBlock77Step = 139 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) widgetErrorList.
            recoveredBlock77PC := 141.
        ].
        recoveredBlock77Step = 141 ifTrue: [
            recoveredBlock77Stack2 := [
    | recoveredBlock77Block141Stack0 recoveredBlock77Block141Stack1 recoveredBlock77Block141Stack2 recoveredBlock77Block141Stack3 recoveredBlock77Block141Stack4 recoveredBlock77Block141PC recoveredBlock77Block141Step recoveredBlock77Block141Done recoveredBlock77Block141Result |
    recoveredBlock77Block141Stack0 := self.
    recoveredBlock77Block141PC := 148.
    recoveredBlock77Block141Done := false.
    [recoveredBlock77Block141Done not] whileTrue: [
        recoveredBlock77Block141Step := recoveredBlock77Block141PC.
        recoveredBlock77Block141Step = 148 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) widgetErrorList.
            recoveredBlock77Block141PC := 150.
        ].
        recoveredBlock77Block141Step = 150 ifTrue: [
            recoveredBlock77Block141Stack1 := 1.
            recoveredBlock77Block141PC := 152.
        ].
        recoveredBlock77Block141Step = 152 ifTrue: [
            recoveredBlock77Block141Stack2 := false.
            recoveredBlock77Block141PC := 153.
        ].
        recoveredBlock77Block141Step = 153 ifTrue: [
            (recoveredBlock77Block141Stack0) collapsePos: (recoveredBlock77Block141Stack1) notify: (recoveredBlock77Block141Stack2).
            recoveredBlock77Block141PC := 155.
        ].
        recoveredBlock77Block141Step = 155 ifTrue: [
            recoveredBlock77Block141Stack0 := self.
            recoveredBlock77Block141PC := 156.
        ].
        recoveredBlock77Block141Step = 156 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) widgetErrorList.
            recoveredBlock77Block141PC := 158.
        ].
        recoveredBlock77Block141Step = 158 ifTrue: [
            recoveredBlock77Block141Stack1 := 1.
            recoveredBlock77Block141PC := 160.
        ].
        recoveredBlock77Block141Step = 160 ifTrue: [
            recoveredBlock77Block141Stack2 := false.
            recoveredBlock77Block141PC := 161.
        ].
        recoveredBlock77Block141Step = 161 ifTrue: [
            (recoveredBlock77Block141Stack0) expandPos: (recoveredBlock77Block141Stack1) notify: (recoveredBlock77Block141Stack2).
            recoveredBlock77Block141PC := 163.
        ].
        recoveredBlock77Block141Step = 163 ifTrue: [
            recoveredBlock77Block141Stack0 := self.
            recoveredBlock77Block141PC := 164.
        ].
        recoveredBlock77Block141Step = 164 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) widgetErrorList.
            recoveredBlock77Block141PC := 166.
        ].
        recoveredBlock77Block141Step = 166 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) itemCount.
            recoveredBlock77Block141PC := 168.
        ].
        recoveredBlock77Block141Step = 168 ifTrue: [
            recoveredLocal1 := recoveredBlock77Block141Stack0.
            recoveredBlock77Block141PC := 171.
        ].
        recoveredBlock77Block141Step = 171 ifTrue: [
            recoveredBlock77Block141Stack0 := 2.
            recoveredBlock77Block141PC := 173.
        ].
        recoveredBlock77Block141Step = 173 ifTrue: [
            recoveredLocal2 := recoveredBlock77Block141Stack0.
            recoveredBlock77Block141PC := 176.
        ].
        recoveredBlock77Block141Step = 176 ifTrue: [
            recoveredBlock77Block141PC := 238.
        ].
        recoveredBlock77Block141Step = 180 ifTrue: [
            recoveredBlock77Block141Stack0 := 'Rnz'.
            recoveredBlock77Block141PC := 182.
        ].
        recoveredBlock77Block141Step = 182 ifTrue: [
            recoveredBlock77Block141Stack1 := 'Call_64831'.
            recoveredBlock77Block141PC := 184.
        ].
        recoveredBlock77Block141Step = 184 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) == (recoveredBlock77Block141Stack1).
            recoveredBlock77Block141PC := 185.
        ].
        recoveredBlock77Block141Step = 185 ifTrue: [
            recoveredBlock77Block141PC := 186.
        ].
        recoveredBlock77Block141Step = 186 ifTrue: [
            recoveredBlock77Block141Stack0 := self.
            recoveredBlock77Block141PC := 187.
        ].
        recoveredBlock77Block141Step = 187 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) widgetErrorList.
            recoveredBlock77Block141PC := 189.
        ].
        recoveredBlock77Block141Step = 189 ifTrue: [
            recoveredBlock77Block141Stack1 := recoveredLocal2.
            recoveredBlock77Block141PC := 192.
        ].
        recoveredBlock77Block141Step = 192 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) getItemPos: (recoveredBlock77Block141Stack1).
            recoveredBlock77Block141PC := 194.
        ].
        recoveredBlock77Block141Step = 194 ifTrue: [
            recoveredBlock77Local1 := recoveredBlock77Block141Stack0.
            recoveredBlock77Block141PC := 197.
        ].
        recoveredBlock77Block141Step = 197 ifTrue: [
            recoveredBlock77Block141Stack0 := recoveredBlock77Local1.
            recoveredBlock77Block141PC := 200.
        ].
        recoveredBlock77Block141Step = 200 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) source.
            recoveredBlock77Block141PC := 202.
        ].
        recoveredBlock77Block141Step = 202 ifTrue: [
            (recoveredBlock77Block141Stack0 == nil) ifTrue: [recoveredBlock77Block141PC := 216] ifFalse: [recoveredBlock77Block141PC := 206].
        ].
        recoveredBlock77Block141Step = 206 ifTrue: [
            recoveredBlock77Block141Stack0 := recoveredBlock77Local1.
            recoveredBlock77Block141PC := 209.
        ].
        recoveredBlock77Block141Step = 209 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) source.
            recoveredBlock77Block141PC := 211.
        ].
        recoveredBlock77Block141Step = 211 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) isMultiSource.
            recoveredBlock77Block141PC := 213.
        ].
        recoveredBlock77Block141Step = 213 ifTrue: [
            (recoveredBlock77Block141Stack0) ifTrue: [recoveredBlock77Block141PC := 231] ifFalse: [recoveredBlock77Block141PC := 216].
        ].
        recoveredBlock77Block141Step = 216 ifTrue: [
            recoveredBlock77Block141Stack0 := self.
            recoveredBlock77Block141PC := 217.
        ].
        recoveredBlock77Block141Step = 217 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) widgetErrorList.
            recoveredBlock77Block141PC := 219.
        ].
        recoveredBlock77Block141Step = 219 ifTrue: [
            recoveredBlock77Block141Stack1 := recoveredLocal2.
            recoveredBlock77Block141PC := 222.
        ].
        recoveredBlock77Block141Step = 222 ifTrue: [
            recoveredBlock77Block141Stack2 := 100.
            recoveredBlock77Block141PC := 226.
        ].
        recoveredBlock77Block141Step = 226 ifTrue: [
            recoveredBlock77Block141Stack3 := 0.
            recoveredBlock77Block141PC := 228.
        ].
        recoveredBlock77Block141Step = 228 ifTrue: [
            (recoveredBlock77Block141Stack0) expandPos: (recoveredBlock77Block141Stack1) maxChildrenNumber: (recoveredBlock77Block141Stack2) levels: (recoveredBlock77Block141Stack3).
            recoveredBlock77Block141PC := 231.
        ].
        recoveredBlock77Block141Step = 231 ifTrue: [
            recoveredBlock77Block141Stack0 := recoveredLocal2.
            recoveredBlock77Block141PC := 234.
        ].
        recoveredBlock77Block141Step = 234 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) + (1).
            recoveredBlock77Block141PC := 235.
        ].
        recoveredBlock77Block141Step = 235 ifTrue: [
            recoveredLocal2 := recoveredBlock77Block141Stack0.
            recoveredBlock77Block141PC := 238.
        ].
        recoveredBlock77Block141Step = 238 ifTrue: [
            recoveredBlock77Block141Stack0 := self.
            recoveredBlock77Block141PC := 239.
        ].
        recoveredBlock77Block141Step = 239 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) widgetErrorList.
            recoveredBlock77Block141PC := 241.
        ].
        recoveredBlock77Block141Step = 241 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) itemCount.
            recoveredBlock77Block141PC := 243.
        ].
        recoveredBlock77Block141Step = 243 ifTrue: [
            recoveredBlock77Block141Stack1 := recoveredLocal1.
            recoveredBlock77Block141PC := 246.
        ].
        recoveredBlock77Block141Step = 246 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) - (recoveredBlock77Block141Stack1).
            recoveredBlock77Block141PC := 247.
        ].
        recoveredBlock77Block141Step = 247 ifTrue: [
            recoveredBlock77Block141Stack1 := 200.
            recoveredBlock77Block141PC := 250.
        ].
        recoveredBlock77Block141Step = 250 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) < (recoveredBlock77Block141Stack1).
            recoveredBlock77Block141PC := 251.
        ].
        recoveredBlock77Block141Step = 251 ifTrue: [
            (recoveredBlock77Block141Stack0) ifTrue: [recoveredBlock77Block141PC := 254] ifFalse: [recoveredBlock77Block141PC := 265].
        ].
        recoveredBlock77Block141Step = 254 ifTrue: [
            recoveredBlock77Block141Stack0 := recoveredLocal2.
            recoveredBlock77Block141PC := 257.
        ].
        recoveredBlock77Block141Step = 257 ifTrue: [
            recoveredBlock77Block141Stack1 := self.
            recoveredBlock77Block141PC := 258.
        ].
        recoveredBlock77Block141Step = 258 ifTrue: [
            recoveredBlock77Block141Stack1 := (recoveredBlock77Block141Stack1) widgetErrorList.
            recoveredBlock77Block141PC := 260.
        ].
        recoveredBlock77Block141Step = 260 ifTrue: [
            recoveredBlock77Block141Stack1 := (recoveredBlock77Block141Stack1) itemCount.
            recoveredBlock77Block141PC := 262.
        ].
        recoveredBlock77Block141Step = 262 ifTrue: [
            recoveredBlock77Block141Stack0 := (recoveredBlock77Block141Stack0) <= (recoveredBlock77Block141Stack1).
            recoveredBlock77Block141PC := 263.
        ].
        recoveredBlock77Block141Step = 263 ifTrue: [
            (recoveredBlock77Block141Stack0) ifTrue: [recoveredBlock77Block141PC := 180] ifFalse: [recoveredBlock77Block141PC := 265].
        ].
        recoveredBlock77Block141Step = 265 ifTrue: [
            recoveredBlock77Block141Stack0 := nil.
            recoveredBlock77Block141PC := 266.
        ].
        recoveredBlock77Block141Step = 266 ifTrue: [
            recoveredBlock77Block141Result := recoveredBlock77Block141Stack0.
            recoveredBlock77Block141Done := true.
        ].
    ].
    recoveredBlock77Block141Result
].
            recoveredBlock77PC := 267.
        ].
        recoveredBlock77Step = 267 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) deferRedraw: (recoveredBlock77Stack2).
            recoveredBlock77PC := 269.
        ].
        recoveredBlock77Step = 269 ifTrue: [
            recoveredBlock77Result := recoveredBlock77Stack1.
            recoveredBlock77Done := true.
        ].
    ].
    recoveredBlock77Result
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) ReactivationDisabled.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 285] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorList.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c1110; bytecode file offset 0xebda94"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createEditMenu
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBEnhancedText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := MTEdit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'cut'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) cutMenuLabel.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := false.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) monitorPageSelected.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 36] ifFalse: [recoveredBlock21PC := 52].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := false.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) widgetTranscript.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) getSelection.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            (recoveredBlock21Stack2 == nil) ifTrue: [recoveredBlock21PC := 52] ifFalse: [recoveredBlock21PC := 46].
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) widgetTranscript.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) editable.
            recoveredBlock21PC := 52.
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 'cut'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := XKX.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := (recoveredStack5) cutKeyText.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 'copy'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) copyMenuLabel.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := true.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := self.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) monitorPageSelected.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 92] ifFalse: [recoveredBlock78PC := 100].
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78Stack2 := self.
            recoveredBlock78PC := 93.
        ].
        recoveredBlock78Step = 93 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) widgetTranscript.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) getSelection.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            (recoveredBlock78Stack2 ~~ nil) ifTrue: [recoveredBlock78PC := 117] ifFalse: [recoveredBlock78PC := 100].
        ].
        recoveredBlock78Step = 100 ifTrue: [
            recoveredBlock78PC := 101.
        ].
        recoveredBlock78Step = 101 ifTrue: [
            recoveredBlock78Stack1 := false.
            recoveredBlock78PC := 102.
        ].
        recoveredBlock78Step = 102 ifTrue: [
            recoveredBlock78Stack2 := self.
            recoveredBlock78PC := 103.
        ].
        recoveredBlock78Step = 103 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) buildPageSelected.
            recoveredBlock78PC := 105.
        ].
        recoveredBlock78Step = 105 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 108] ifFalse: [recoveredBlock78PC := 117].
        ].
        recoveredBlock78Step = 108 ifTrue: [
            recoveredBlock78PC := 109.
        ].
        recoveredBlock78Step = 109 ifTrue: [
            recoveredBlock78Stack1 := self.
            recoveredBlock78PC := 110.
        ].
        recoveredBlock78Step = 110 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) widgetErrorList.
            recoveredBlock78PC := 112.
        ].
        recoveredBlock78Step = 112 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) selectedItemCount.
            recoveredBlock78PC := 114.
        ].
        recoveredBlock78Step = 114 ifTrue: [
            recoveredBlock78Stack2 := 1.
            recoveredBlock78PC := 116.
        ].
        recoveredBlock78Step = 116 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) = (recoveredBlock78Stack2).
            recoveredBlock78PC := 117.
        ].
        recoveredBlock78Step = 117 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := 'copy'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := XKC.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := (recoveredStack5) copyKeyText.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := 'paste'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := (recoveredStack4) pasteMenuLabel.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock143Stack0 recoveredBlock143Stack1 recoveredBlock143Stack2 recoveredBlock143Stack3 recoveredBlock143PC recoveredBlock143Step recoveredBlock143Done recoveredBlock143Result |
    recoveredBlock143Stack0 := self.
    recoveredBlock143PC := 150.
    recoveredBlock143Done := false.
    [recoveredBlock143Done not] whileTrue: [
        recoveredBlock143Step := recoveredBlock143PC.
        recoveredBlock143Step = 150 ifTrue: [
            recoveredBlock143Stack1 := false.
            recoveredBlock143PC := 151.
        ].
        recoveredBlock143Step = 151 ifTrue: [
            recoveredBlock143Stack2 := self.
            recoveredBlock143PC := 152.
        ].
        recoveredBlock143Step = 152 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) monitorPageSelected.
            recoveredBlock143PC := 154.
        ].
        recoveredBlock143Step = 154 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 158] ifFalse: [recoveredBlock143PC := 174].
        ].
        recoveredBlock143Step = 158 ifTrue: [
            recoveredBlock143PC := 159.
        ].
        recoveredBlock143Step = 159 ifTrue: [
            recoveredBlock143Stack1 := false.
            recoveredBlock143PC := 160.
        ].
        recoveredBlock143Step = 160 ifTrue: [
            recoveredBlock143Stack2 := self.
            recoveredBlock143PC := 161.
        ].
        recoveredBlock143Step = 161 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) widgetTranscript.
            recoveredBlock143PC := 163.
        ].
        recoveredBlock143Step = 163 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) editable.
            recoveredBlock143PC := 165.
        ].
        recoveredBlock143Step = 165 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 168] ifFalse: [recoveredBlock143PC := 174].
        ].
        recoveredBlock143Step = 168 ifTrue: [
            recoveredBlock143PC := 169.
        ].
        recoveredBlock143Step = 169 ifTrue: [
            recoveredBlock143Stack1 := OSClipboard.
            recoveredBlock143PC := 171.
        ].
        recoveredBlock143Step = 171 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) getString.
            recoveredBlock143PC := 173.
        ].
        recoveredBlock143Step = 173 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) notNil.
            recoveredBlock143PC := 174.
        ].
        recoveredBlock143Step = 174 ifTrue: [
            recoveredBlock143Result := recoveredBlock143Stack1.
            recoveredBlock143Done := true.
        ].
    ].
    recoveredBlock143Result
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := 'paste'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack6 := XKV.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack5 := (recoveredStack5) pasteKeyText.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := 'selectAll'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := (recoveredStack4) selectAllMenuLabel.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock203Value0 |
    recoveredBlock203Value0 := (self) monitorPageSelected.
    recoveredBlock203Value0
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'selectAll'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack5 := (recoveredStack5) selectAllKeySym.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := (recoveredStack4) selectAllKeyText.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTranscript.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) editMode.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := XmMULTILINEEDIT.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := 'findReplace'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) findReplaceMenuLabel.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock253Value0 |
    recoveredBlock253Value0 := (self) monitorPageSelected.
    recoveredBlock253Value0
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) for: (recoveredStack5).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := 'findReplace'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := CwAccelerator.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := ControlMask.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := (recoveredStack4) findReplaceKeySym.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := (recoveredStack2) mask: (recoveredStack3) keysym: (recoveredStack4).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := (recoveredStack3) findReplaceKeyText.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) setAcceleratorAt: (recoveredStack1) to: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := DirectedMessage.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := 'clear'.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector: (recoveredStack3) arguments: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := EtClear.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock298Value0 |
    recoveredBlock298Value0 := (self) monitorPageSelected.
    recoveredBlock298Value0
].
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := 'clear'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := SCCtrl.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := 'R'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) setAcceleratorAt: (recoveredStack1) to: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) addPromotionMenuItems: (recoveredStack1).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c1a78; bytecode file offset 0xebe3e4"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createWidgetHierarchyProgressFrame: recoveredArg1 dictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'progressFrame'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block28117d90Arg1 | 
    | block28117d90Value0 block28117d90Value1 block28117d90Value2 |
    block28117d90Value0 := block28117d90Arg1.
    block28117d90Value1 := block28117d90Value0.
    (block28117d90Value1) height: (80).
    block28117d90Value2 := block28117d90Value0.
    (block28117d90Value2) labelString: ('Progress').
    block28117d90Value0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'progressFrame'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'progressForm'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:block28117db4Arg1 | 
    | block28117db4Value0 block28117db4Value1 |
    block28117db4Value0 := block28117db4Arg1.
    block28117db4Value1 := (block28117db4Value0) height: (80).
    block28117db4Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'progressForm'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'progressBar'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := [:block28117dd8Arg1 | 
    | block28117dd8Value0 block28117dd8Value1 |
    block28117dd8Value0 := block28117dd8Arg1.
    block28117dd8Value1 := block28117dd8Value0.
    (block28117dd8Value1) height: (24).
    block28117dd8Value0
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCwProgressBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'progressBar'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:block28117dfcArg1 | 
    | block28117dfcValue0 block28117dfcValue1 block28117dfcValue2 block28117dfcValue3 |
    block28117dfcValue0 := block28117dfcArg1.
    block28117dfcValue1 := block28117dfcValue0.
    (block28117dfcValue1) height: (24).
    block28117dfcValue2 := block28117dfcValue0.
    (block28117dfcValue2) width: (80).
    block28117dfcValue3 := block28117dfcValue0.
    (block28117dfcValue3) labelString: ('Cancel').
    block28117dfcValue0
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'progressLabel'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := [:block28117e20Arg1 | 
    | block28117e20Value0 block28117e20Value1 block28117e20Value2 block28117e20Value3 |
    block28117e20Value0 := block28117e20Arg1.
    block28117e20Value1 := block28117e20Value0.
    (block28117e20Value1) labelString: ('Progress').
    block28117e20Value2 := block28117e20Value0.
    block28117e20Value3 := XmALIGNMENTBEGINNING.
    (block28117e20Value2) alignment: (block28117e20Value3).
    block28117e20Value0
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'progressLabel'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := [:block28117e44Arg1 | 
    | block28117e44Value0 block28117e44Value1 block28117e44Value2 block28117e44Value3 block28117e44Value4 block28117e44Value5 block28117e44Value6 block28117e44Value7 block28117e44Value8 |
    block28117e44Value0 := block28117e44Arg1.
    block28117e44Value1 := block28117e44Value0.
    block28117e44Value2 := XmATTACHNONE.
    (block28117e44Value1) topAttachment: (block28117e44Value2).
    block28117e44Value3 := block28117e44Value0.
    block28117e44Value4 := XmATTACHFORM.
    (block28117e44Value3) bottomAttachment: (block28117e44Value4).
    block28117e44Value5 := block28117e44Value0.
    block28117e44Value6 := XmATTACHFORM.
    (block28117e44Value5) leftAttachment: (block28117e44Value6).
    block28117e44Value7 := XmATTACHFORM.
    block28117e44Value8 := (block28117e44Value0) rightAttachment: (block28117e44Value7).
    block28117e44Value8
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [:block28117e68Arg1 | 
    | block28117e68Value0 block28117e68Value1 block28117e68Value2 block28117e68Value3 block28117e68Value4 block28117e68Value5 block28117e68Value6 block28117e68Value7 block28117e68Value8 block28117e68Value9 |
    block28117e68Value0 := block28117e68Arg1.
    block28117e68Value1 := block28117e68Value0.
    block28117e68Value2 := XmATTACHFORM.
    (block28117e68Value1) topAttachment: (block28117e68Value2).
    block28117e68Value3 := block28117e68Value0.
    (block28117e68Value3) topOffset: (4).
    block28117e68Value4 := block28117e68Value0.
    block28117e68Value5 := XmATTACHFORM.
    (block28117e68Value4) leftAttachment: (block28117e68Value5).
    block28117e68Value6 := block28117e68Value0.
    (block28117e68Value6) leftOffset: (8).
    block28117e68Value7 := block28117e68Value0.
    block28117e68Value8 := XmATTACHFORM.
    (block28117e68Value7) rightAttachment: (block28117e68Value8).
    block28117e68Value9 := (block28117e68Value0) rightOffset: (100).
    block28117e68Value9
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := [:block28117e8cArg1 | 
    | block28117e8cValue0 block28117e8cValue1 block28117e8cValue2 block28117e8cValue3 block28117e8cValue4 block28117e8cValue5 block28117e8cValue6 block28117e8cValue7 block28117e8cValue8 block28117e8cValue9 |
    block28117e8cValue0 := block28117e8cArg1.
    block28117e8cValue1 := block28117e8cValue0.
    block28117e8cValue2 := XmATTACHFORM.
    (block28117e8cValue1) topAttachment: (block28117e8cValue2).
    block28117e8cValue3 := block28117e8cValue0.
    (block28117e8cValue3) topOffset: (32).
    block28117e8cValue4 := block28117e8cValue0.
    block28117e8cValue5 := XmATTACHFORM.
    (block28117e8cValue4) leftAttachment: (block28117e8cValue5).
    block28117e8cValue6 := block28117e8cValue0.
    (block28117e8cValue6) leftOffset: (8).
    block28117e8cValue7 := block28117e8cValue0.
    block28117e8cValue8 := XmATTACHFORM.
    (block28117e8cValue7) rightAttachment: (block28117e8cValue8).
    block28117e8cValue9 := (block28117e8cValue0) rightOffset: (100).
    block28117e8cValue9
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := [:block28117eb0Arg1 | 
    | block28117eb0Value0 block28117eb0Value1 block28117eb0Value2 block28117eb0Value3 block28117eb0Value4 block28117eb0Value5 block28117eb0Value6 |
    block28117eb0Value0 := block28117eb0Arg1.
    block28117eb0Value1 := block28117eb0Value0.
    block28117eb0Value2 := XmATTACHFORM.
    (block28117eb0Value1) topAttachment: (block28117eb0Value2).
    block28117eb0Value3 := block28117eb0Value0.
    (block28117eb0Value3) topOffset: (4).
    block28117eb0Value4 := block28117eb0Value0.
    block28117eb0Value5 := XmATTACHFORM.
    (block28117eb0Value4) rightAttachment: (block28117eb0Value5).
    block28117eb0Value6 := (block28117eb0Value0) rightOffset: (8).
    block28117eb0Value6
].
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f3558; bytecode file offset 0xeefebc"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
execLongCodegenOperation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := InLongOperation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncIOActive.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) argumentCount.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := RBDummyProgressReporter.
    recoveredBlock30Value2 := (recoveredBlock30Value1) new.
    recoveredBlock30Value3 := (recoveredBlock30Value0) value: (recoveredBlock30Value2).
    recoveredBlock30Value3
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) execShortOperation: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67Stack4 recoveredBlock67Stack5 recoveredBlock67Stack6 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := false.
            recoveredBlock67PC := 75.
        ].
        recoveredBlock67Step = 75 ifTrue: [
            recoveredLocal3 := recoveredBlock67Stack1.
            recoveredBlock67PC := 78.
        ].
        recoveredBlock67Step = 78 ifTrue: [
            recoveredBlock67Stack1 := System.
            recoveredBlock67PC := 80.
        ].
        recoveredBlock67Step = 80 ifTrue: [
            recoveredBlock67Stack2 := DirectedMessage.
            recoveredBlock67PC := 82.
        ].
        recoveredBlock67Step = 82 ifTrue: [
            recoveredBlock67Stack3 := 'breakInLongOperation:'.
            recoveredBlock67PC := 84.
        ].
        recoveredBlock67Step = 84 ifTrue: [
            recoveredBlock67Stack4 := Array.
            recoveredBlock67PC := 86.
        ].
        recoveredBlock67Step = 86 ifTrue: [
            recoveredBlock67Stack5 := [:recoveredBlock67Block86Arg1 | 
    | recoveredBlock67Block86Value0 recoveredBlock67Block86Value1 |
    recoveredBlock67Block86Value0 := recoveredBlock67Block86Arg1.
    recoveredBlock67Block86Value1 := recoveredBlock67Block86Value0.
    recoveredLocal3 := recoveredBlock67Block86Value1.
    recoveredBlock67Block86Value0
].
            recoveredBlock67PC := 98.
        ].
        recoveredBlock67Step = 98 ifTrue: [
            recoveredBlock67Stack4 := (recoveredBlock67Stack4) with: (recoveredBlock67Stack5).
            recoveredBlock67PC := 100.
        ].
        recoveredBlock67Step = 100 ifTrue: [
            recoveredBlock67Stack5 := self.
            recoveredBlock67PC := 101.
        ].
        recoveredBlock67Step = 101 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) selector: (recoveredBlock67Stack3) arguments: (recoveredBlock67Stack4) receiver: (recoveredBlock67Stack5).
            recoveredBlock67PC := 104.
        ].
        recoveredBlock67Step = 104 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) breakMessage: (recoveredBlock67Stack2).
            recoveredBlock67PC := 106.
        ].
        recoveredBlock67Step = 106 ifTrue: [
            recoveredLocal5 := recoveredBlock67Stack1.
            recoveredBlock67PC := 109.
        ].
        recoveredBlock67Step = 109 ifTrue: [
            recoveredBlock67Stack1 := true.
            recoveredBlock67PC := 110.
        ].
        recoveredBlock67Step = 110 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Stack1.
            recoveredBlock67PC := 111.
        ].
        recoveredBlock67Step = 111 ifTrue: [
            InLongOperation := recoveredBlock67Stack2.
            recoveredBlock67PC := 113.
        ].
        recoveredBlock67Step = 113 ifTrue: [
            recoveredLocal6 := recoveredBlock67Stack1.
            recoveredBlock67PC := 116.
        ].
        recoveredBlock67Step = 116 ifTrue: [
            recoveredBlock67Stack1 := CwAppContext.
            recoveredBlock67PC := 118.
        ].
        recoveredBlock67Step = 118 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) default.
            recoveredBlock67PC := 120.
        ].
        recoveredBlock67Step = 120 ifTrue: [
            recoveredBlock67Stack2 := false.
            recoveredBlock67PC := 121.
        ].
        recoveredBlock67Step = 121 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) enableProcs: (recoveredBlock67Stack2).
            recoveredBlock67PC := 123.
        ].
        recoveredBlock67Step = 123 ifTrue: [
            recoveredLocal7 := recoveredBlock67Stack1.
            recoveredBlock67PC := 126.
        ].
        recoveredBlock67Step = 126 ifTrue: [
            recoveredBlock67Stack1 := SGCodegenCompileLinkView.
            recoveredBlock67PC := 128.
        ].
        recoveredBlock67Step = 128 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) hasView.
            recoveredBlock67PC := 130.
        ].
        recoveredBlock67Step = 130 ifTrue: [
            (recoveredBlock67Stack1) ifTrue: [recoveredBlock67PC := 134] ifFalse: [recoveredBlock67PC := 160].
        ].
        recoveredBlock67Step = 134 ifTrue: [
            recoveredBlock67Stack1 := SGCodegenCompileLinkView.
            recoveredBlock67PC := 136.
        ].
        recoveredBlock67Step = 136 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) instance.
            recoveredBlock67PC := 138.
        ].
        recoveredBlock67Step = 138 ifTrue: [
            inProgressDialog := recoveredBlock67Stack1.
            recoveredBlock67PC := 140.
        ].
        recoveredBlock67Step = 140 ifTrue: [
            recoveredBlock67Stack1 := [
    | recoveredBlock67Block140Value0 recoveredBlock67Block140Value1 recoveredBlock67Block140Value2 recoveredBlock67Block140Value3 |
    recoveredBlock67Block140Value0 := inProgressDialog.
    recoveredBlock67Block140Value1 := (recoveredBlock67Block140Value0) shell.
    recoveredBlock67Block140Value2 := (recoveredBlock67Block140Value1) osWidget.
    recoveredBlock67Block140Value3 := (recoveredBlock67Block140Value2) setAppModal.
    recoveredBlock67Block140Value3
].
            recoveredBlock67PC := 155.
        ].
        recoveredBlock67Step = 155 ifTrue: [
            (recoveredBlock67Stack1) lockProcess.
            recoveredBlock67PC := 157.
        ].
        recoveredBlock67Step = 157 ifTrue: [
            recoveredBlock67PC := 166.
        ].
        recoveredBlock67Step = 160 ifTrue: [
            recoveredBlock67Stack1 := RBDummyProgressReporter.
            recoveredBlock67PC := 162.
        ].
        recoveredBlock67Step = 162 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) new.
            recoveredBlock67PC := 164.
        ].
        recoveredBlock67Step = 164 ifTrue: [
            inProgressDialog := recoveredBlock67Stack1.
            recoveredBlock67PC := 166.
        ].
        recoveredBlock67Step = 166 ifTrue: [
            recoveredBlock67Stack1 := recoveredArg1.
            recoveredBlock67PC := 169.
        ].
        recoveredBlock67Step = 169 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) argumentCount.
            recoveredBlock67PC := 170.
        ].
        recoveredBlock67Step = 170 ifTrue: [
            recoveredBlock67Stack2 := 1.
            recoveredBlock67PC := 172.
        ].
        recoveredBlock67Step = 172 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) = (recoveredBlock67Stack2).
            recoveredBlock67PC := 173.
        ].
        recoveredBlock67Step = 173 ifTrue: [
            (recoveredBlock67Stack1) ifTrue: [recoveredBlock67PC := 176] ifFalse: [recoveredBlock67PC := 196].
        ].
        recoveredBlock67Step = 176 ifTrue: [
            recoveredBlock67Stack1 := [
    | recoveredBlock67Block176Value0 recoveredBlock67Block176Value1 recoveredBlock67Block176Value2 |
    recoveredBlock67Block176Value0 := recoveredArg1.
    recoveredBlock67Block176Value1 := inProgressDialog.
    recoveredBlock67Block176Value2 := (recoveredBlock67Block176Value0) value: (recoveredBlock67Block176Value1).
    recoveredBlock67Block176Value2
].
            recoveredBlock67PC := 190.
        ].
        recoveredBlock67Step = 190 ifTrue: [
            recoveredLocal2 := recoveredBlock67Stack1.
            recoveredBlock67PC := 193.
        ].
        recoveredBlock67Step = 193 ifTrue: [
            recoveredBlock67PC := 202.
        ].
        recoveredBlock67Step = 196 ifTrue: [
            recoveredBlock67Stack1 := recoveredArg1.
            recoveredBlock67PC := 199.
        ].
        recoveredBlock67Step = 199 ifTrue: [
            recoveredLocal2 := recoveredBlock67Stack1.
            recoveredBlock67PC := 202.
        ].
        recoveredBlock67Step = 202 ifTrue: [
            recoveredBlock67Stack1 := [
    | recoveredBlock67Block202Value0 recoveredBlock67Block202Value1 recoveredBlock67Block202Value2 recoveredBlock67Block202Value3 |
    recoveredBlock67Block202Value0 := recoveredLocal2.
    recoveredBlock67Block202Value1 := [
    | recoveredBlock67Block202Block211Value0 recoveredBlock67Block202Block211Value1 recoveredBlock67Block202Block211Value2 recoveredBlock67Block202Block211Value3 recoveredBlock67Block202Block211Value4 recoveredBlock67Block202Block211Value5 recoveredBlock67Block202Block211Value6 |
    recoveredBlock67Block202Block211Value0 := CwAppContext.
    recoveredBlock67Block202Block211Value1 := (recoveredBlock67Block202Block211Value0) default.
    recoveredBlock67Block202Block211Value2 := [
    | recoveredBlock67Block202Block211Block222Stack0 recoveredBlock67Block202Block211Block222Stack1 recoveredBlock67Block202Block211Block222Stack2 recoveredBlock67Block202Block211Block222Stack3 recoveredBlock67Block202Block211Block222PC recoveredBlock67Block202Block211Block222Step recoveredBlock67Block202Block211Block222Done recoveredBlock67Block202Block211Block222Result |
    recoveredBlock67Block202Block211Block222Stack0 := self.
    recoveredBlock67Block202Block211Block222PC := 228.
    recoveredBlock67Block202Block211Block222Done := false.
    [recoveredBlock67Block202Block211Block222Done not] whileTrue: [
        recoveredBlock67Block202Block211Block222Step := recoveredBlock67Block202Block211Block222PC.
        recoveredBlock67Block202Block211Block222Step = 228 ifTrue: [
            recoveredBlock67Block202Block211Block222Stack1 := nil.
            recoveredBlock67Block202Block211Block222PC := 229.
        ].
        recoveredBlock67Block202Block211Block222Step = 229 ifTrue: [
            recoveredBlock67Block202Block211Block222Stack2 := inProgressDialog.
            recoveredBlock67Block202Block211Block222PC := 231.
        ].
        recoveredBlock67Block202Block211Block222Step = 231 ifTrue: [
            (recoveredBlock67Block202Block211Block222Stack2 == nil) ifTrue: [recoveredBlock67Block202Block211Block222PC := 247] ifFalse: [recoveredBlock67Block202Block211Block222PC := 234].
        ].
        recoveredBlock67Block202Block211Block222Step = 234 ifTrue: [
            recoveredBlock67Block202Block211Block222PC := 235.
        ].
        recoveredBlock67Block202Block211Block222Step = 235 ifTrue: [
            recoveredBlock67Block202Block211Block222Stack1 := inProgressDialog.
            recoveredBlock67Block202Block211Block222PC := 237.
        ].
        recoveredBlock67Block202Block211Block222Step = 237 ifTrue: [
            recoveredBlock67Block202Block211Block222Stack1 := (recoveredBlock67Block202Block211Block222Stack1) shell.
            recoveredBlock67Block202Block211Block222PC := 239.
        ].
        recoveredBlock67Block202Block211Block222Step = 239 ifTrue: [
            recoveredBlock67Block202Block211Block222Stack1 := (recoveredBlock67Block202Block211Block222Stack1) osWidget.
            recoveredBlock67Block202Block211Block222PC := 241.
        ].
        recoveredBlock67Block202Block211Block222Step = 241 ifTrue: [
            (recoveredBlock67Block202Block211Block222Stack1) clearAppModal.
            recoveredBlock67Block202Block211Block222PC := 243.
        ].
        recoveredBlock67Block202Block211Block222Step = 243 ifTrue: [
            recoveredBlock67Block202Block211Block222Stack1 := nil.
            recoveredBlock67Block202Block211Block222PC := 244.
        ].
        recoveredBlock67Block202Block211Block222Step = 244 ifTrue: [
            recoveredBlock67Block202Block211Block222Stack2 := recoveredBlock67Block202Block211Block222Stack1.
            recoveredBlock67Block202Block211Block222PC := 245.
        ].
        recoveredBlock67Block202Block211Block222Step = 245 ifTrue: [
            inProgressDialog := recoveredBlock67Block202Block211Block222Stack2.
            recoveredBlock67Block202Block211Block222PC := 247.
        ].
        recoveredBlock67Block202Block211Block222Step = 247 ifTrue: [
            recoveredBlock67Block202Block211Block222Result := recoveredBlock67Block202Block211Block222Stack1.
            recoveredBlock67Block202Block211Block222Done := true.
        ].
    ].
    recoveredBlock67Block202Block211Block222Result
].
    (recoveredBlock67Block202Block211Value1) syncExecInUI: (recoveredBlock67Block202Block211Value2).
    recoveredLocal6 := false.
    InLongOperation := false.
    recoveredBlock67Block202Block211Value3 := CwAppContext.
    recoveredBlock67Block202Block211Value4 := (recoveredBlock67Block202Block211Value3) default.
    recoveredBlock67Block202Block211Value5 := [].
    recoveredBlock67Block202Block211Value6 := (recoveredBlock67Block202Block211Value4) asyncExecInUI: (recoveredBlock67Block202Block211Value5).
    recoveredBlock67Block202Block211Value6
].
    recoveredBlock67Block202Value2 := (recoveredBlock67Block202Value0) atEndOrWhenExceptionDo: (recoveredBlock67Block202Value1).
    recoveredBlock67Block202Value3 := recoveredBlock67Block202Value2.
    recoveredLocal8 := recoveredBlock67Block202Value3.
    recoveredBlock67Block202Value2
].
            recoveredBlock67PC := 273.
        ].
        recoveredBlock67Step = 273 ifTrue: [
            recoveredBlock67Stack2 := self.
            recoveredBlock67PC := 274.
        ].
        recoveredBlock67Step = 274 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) defaultExecLongOperationPriority.
            recoveredBlock67PC := 276.
        ].
        recoveredBlock67Step = 276 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) forkAt: (recoveredBlock67Stack2).
            recoveredBlock67PC := 278.
        ].
        recoveredBlock67Step = 278 ifTrue: [
            recoveredLocal4 := recoveredBlock67Stack1.
            recoveredBlock67PC := 281.
        ].
        recoveredBlock67Step = 281 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal4.
            recoveredBlock67PC := 284.
        ].
        recoveredBlock67Step = 284 ifTrue: [
            recoveredBlock67Stack2 := 'LongOperation (Code generation)'.
            recoveredBlock67PC := 286.
        ].
        recoveredBlock67Step = 286 ifTrue: [
            (recoveredBlock67Stack1) processName: (recoveredBlock67Stack2).
            recoveredBlock67PC := 288.
        ].
        recoveredBlock67Step = 288 ifTrue: [
            recoveredBlock67PC := 308.
        ].
        recoveredBlock67Step = 292 ifTrue: [
            recoveredBlock67Stack1 := CwAppContext.
            recoveredBlock67PC := 294.
        ].
        recoveredBlock67Step = 294 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) default.
            recoveredBlock67PC := 296.
        ].
        recoveredBlock67Step = 296 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) readAndDispatch.
            recoveredBlock67PC := 298.
        ].
        recoveredBlock67Step = 298 ifTrue: [
            (recoveredBlock67Stack1) ifTrue: [recoveredBlock67PC := 308] ifFalse: [recoveredBlock67PC := 302].
        ].
        recoveredBlock67Step = 302 ifTrue: [
            recoveredBlock67Stack1 := CwAppContext.
            recoveredBlock67PC := 304.
        ].
        recoveredBlock67Step = 304 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) default.
            recoveredBlock67PC := 306.
        ].
        recoveredBlock67Step = 306 ifTrue: [
            (recoveredBlock67Stack1) sleep.
            recoveredBlock67PC := 308.
        ].
        recoveredBlock67Step = 308 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal6.
            recoveredBlock67PC := 311.
        ].
        recoveredBlock67Step = 311 ifTrue: [
            (recoveredBlock67Stack1) ifTrue: [recoveredBlock67PC := 314] ifFalse: [recoveredBlock67PC := 319].
        ].
        recoveredBlock67Step = 314 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal3.
            recoveredBlock67PC := 317.
        ].
        recoveredBlock67Step = 317 ifTrue: [
            (recoveredBlock67Stack1) ifTrue: [recoveredBlock67PC := 319] ifFalse: [recoveredBlock67PC := 292].
        ].
        recoveredBlock67Step = 319 ifTrue: [
            recoveredBlock67Stack1 := false.
            recoveredBlock67PC := 320.
        ].
        recoveredBlock67Step = 320 ifTrue: [
            InLongOperation := recoveredBlock67Stack1.
            recoveredBlock67PC := 322.
        ].
        recoveredBlock67Step = 322 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal6.
            recoveredBlock67PC := 325.
        ].
        recoveredBlock67Step = 325 ifTrue: [
            (recoveredBlock67Stack1) ifTrue: [recoveredBlock67PC := 328] ifFalse: [recoveredBlock67PC := 375].
        ].
        recoveredBlock67Step = 328 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal4.
            recoveredBlock67PC := 331.
        ].
        recoveredBlock67Step = 331 ifTrue: [
            (recoveredBlock67Stack1) suspend.
            recoveredBlock67PC := 333.
        ].
        recoveredBlock67Step = 333 ifTrue: [
            recoveredBlock67Stack1 := inProgressDialog.
            recoveredBlock67PC := 335.
        ].
        recoveredBlock67Step = 335 ifTrue: [
            (recoveredBlock67Stack1 == nil) ifTrue: [recoveredBlock67PC := 349] ifFalse: [recoveredBlock67PC := 338].
        ].
        recoveredBlock67Step = 338 ifTrue: [
            recoveredBlock67Stack1 := inProgressDialog.
            recoveredBlock67PC := 340.
        ].
        recoveredBlock67Step = 340 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) shell.
            recoveredBlock67PC := 342.
        ].
        recoveredBlock67Step = 342 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) osWidget.
            recoveredBlock67PC := 344.
        ].
        recoveredBlock67Step = 344 ifTrue: [
            (recoveredBlock67Stack1) clearAppModal.
            recoveredBlock67PC := 346.
        ].
        recoveredBlock67Step = 346 ifTrue: [
            recoveredBlock67Stack1 := nil.
            recoveredBlock67PC := 347.
        ].
        recoveredBlock67Step = 347 ifTrue: [
            inProgressDialog := recoveredBlock67Stack1.
            recoveredBlock67PC := 349.
        ].
        recoveredBlock67Step = 349 ifTrue: [
            recoveredBlock67Stack1 := System.
            recoveredBlock67PC := 351.
        ].
        recoveredBlock67Step = 351 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) startUpClass.
            recoveredBlock67PC := 353.
        ].
        recoveredBlock67Step = 353 ifTrue: [
            (recoveredBlock67Stack1) cleanUpBeforeWalkback.
            recoveredBlock67PC := 355.
        ].
        recoveredBlock67Step = 355 ifTrue: [
            recoveredBlock67Stack1 := self.
            recoveredBlock67PC := 356.
        ].
        recoveredBlock67Step = 356 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal4.
            recoveredBlock67PC := 359.
        ].
        recoveredBlock67Step = 359 ifTrue: [
            recoveredBlock67Stack3 := 'Operation terminated by user.'.
            recoveredBlock67PC := 361.
        ].
        recoveredBlock67Step = 361 ifTrue: [
            recoveredBlock67Stack4 := recoveredLocal4.
            recoveredBlock67PC := 364.
        ].
        recoveredBlock67Step = 364 ifTrue: [
            recoveredBlock67Stack5 := recoveredLocal4.
            recoveredBlock67PC := 367.
        ].
        recoveredBlock67Step = 367 ifTrue: [
            recoveredBlock67Stack5 := (recoveredBlock67Stack5) activeProcessFixup.
            recoveredBlock67PC := 369.
        ].
        recoveredBlock67Step = 369 ifTrue: [
            recoveredBlock67Stack4 := (recoveredBlock67Stack4) bpAtFrame: (recoveredBlock67Stack5).
            recoveredBlock67PC := 371.
        ].
        recoveredBlock67Step = 371 ifTrue: [
            recoveredBlock67Stack5 := false.
            recoveredBlock67PC := 372.
        ].
        recoveredBlock67Step = 372 ifTrue: [
            (recoveredBlock67Stack1) addDebugProcess: (recoveredBlock67Stack2) errorString: (recoveredBlock67Stack3) startBP: (recoveredBlock67Stack4) resumable: (recoveredBlock67Stack5).
            recoveredBlock67PC := 375.
        ].
        recoveredBlock67Step = 375 ifTrue: [
            recoveredBlock67Stack1 := CwAppContext.
            recoveredBlock67PC := 377.
        ].
        recoveredBlock67Step = 377 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) default.
            recoveredBlock67PC := 379.
        ].
        recoveredBlock67Step = 379 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal7.
            recoveredBlock67PC := 382.
        ].
        recoveredBlock67Step = 382 ifTrue: [
            (recoveredBlock67Stack1) enableProcs: (recoveredBlock67Stack2).
            recoveredBlock67PC := 384.
        ].
        recoveredBlock67Step = 384 ifTrue: [
            recoveredBlock67Stack1 := System.
            recoveredBlock67PC := 386.
        ].
        recoveredBlock67Step = 386 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal5.
            recoveredBlock67PC := 389.
        ].
        recoveredBlock67Step = 389 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) breakMessage: (recoveredBlock67Stack2).
            recoveredBlock67PC := 391.
        ].
        recoveredBlock67Step = 391 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack1.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack0) showBusyCursorInAllWindowsWhile: (recoveredStack1).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := inProgressDialog.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 411] ifFalse: [recoveredPC := 400].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := inProgressDialog.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack0) clearAppModal.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            inProgressDialog := recoveredStack0.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20628270; bytecode file offset 0xf24c4c"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block2811f614Arg1 | 
    | block2811f614Value0 block2811f614Value1 block2811f614Value2 block2811f614Value3 |
    block2811f614Value0 := block2811f614Arg1.
    block2811f614Value1 := block2811f614Value0.
    (block2811f614Value1) title: ('Codegeneration Errors').
    block2811f614Value2 := block2811f614Value0.
    (block2811f614Value2) height: (350).
    block2811f614Value3 := (block2811f614Value0) width: (650).
    block2811f614Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 'notebook'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := [:block2811f638Arg1 | 
    | block2811f638Value0 |
    block2811f638Value0 := block2811f638Arg1.
    block2811f638Value0
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'notebook'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWidgetHierarchyProgressFrame: (recoveredStack1) dictionary: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'statusBar'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := [:recoveredBlock169Arg1 | 
    | recoveredBlock169Value0 recoveredBlock169Value1 recoveredBlock169Value2 recoveredBlock169Value3 recoveredBlock169Value4 recoveredBlock169Value5 recoveredBlock169Value6 |
    recoveredBlock169Value0 := recoveredBlock169Arg1.
    recoveredBlock169Value1 := recoveredBlock169Value0.
    recoveredBlock169Value2 := SGUserInterfaceSettings.
    recoveredBlock169Value3 := (recoveredBlock169Value2) labelFontWidgetHeight.
    (recoveredBlock169Value1) height: (recoveredBlock169Value3).
    recoveredBlock169Value4 := recoveredBlock169Value0.
    recoveredBlock169Value5 := recoveredLocal6.
    recoveredBlock169Value6 := (recoveredBlock169Value5) width.
    (recoveredBlock169Value4) width: (recoveredBlock169Value6).
    recoveredBlock169Value0
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasStatusBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := 'statusBar'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := 'statusIcon'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := [:block2811f65cArg1 | 
    | block2811f65cValue0 block2811f65cValue1 block2811f65cValue2 block2811f65cValue3 block2811f65cValue4 block2811f65cValue5 block2811f65cValue6 block2811f65cValue7 block2811f65cValue8 |
    block2811f65cValue0 := block2811f65cArg1.
    block2811f65cValue1 := block2811f65cValue0.
    block2811f65cValue2 := XmSHADOWIN.
    (block2811f65cValue1) shadowType: (block2811f65cValue2).
    block2811f65cValue3 := block2811f65cValue0.
    (block2811f65cValue3) recomputeSize: (true).
    block2811f65cValue4 := block2811f65cValue0.
    block2811f65cValue5 := RBUserInterface.
    block2811f65cValue6 := (block2811f65cValue5) resourceManager.
    block2811f65cValue7 := (block2811f65cValue6) returnIconWithName: ('GeneralLEDGrayOn').
    (block2811f65cValue4) image: (block2811f65cValue7).
    block2811f65cValue8 := (block2811f65cValue0) labelString: ('').
    block2811f65cValue8
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasPanel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := 'statusIcon'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := 'statusLab'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := [:recoveredBlock266Arg1 | 
    | recoveredBlock266Value0 recoveredBlock266Value1 recoveredBlock266Value2 recoveredBlock266Value3 recoveredBlock266Value4 recoveredBlock266Value5 recoveredBlock266Value6 recoveredBlock266Value7 recoveredBlock266Value8 |
    recoveredBlock266Value0 := recoveredBlock266Arg1.
    recoveredBlock266Value1 := recoveredBlock266Value0.
    recoveredBlock266Value2 := XmSHADOWIN.
    (recoveredBlock266Value1) shadowType: (recoveredBlock266Value2).
    recoveredBlock266Value3 := recoveredBlock266Value0.
    (recoveredBlock266Value3) recomputeSize: (true).
    recoveredBlock266Value4 := recoveredBlock266Value0.
    (recoveredBlock266Value4) labelString: ('').
    recoveredBlock266Value5 := recoveredLocal2.
    recoveredBlock266Value6 := (recoveredBlock266Value5) width.
    recoveredBlock266Value7 := (recoveredBlock266Value6) - (32).
    recoveredBlock266Value8 := (recoveredBlock266Value0) width: (recoveredBlock266Value7).
    recoveredBlock266Value8
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasPanel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := 'statusLab'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := [:recoveredBlock321Arg1 | 
    | recoveredBlock321Value0 recoveredBlock321Value1 recoveredBlock321Value2 |
    recoveredBlock321Value0 := recoveredBlock321Arg1.
    recoveredBlock321Value1 := recoveredLocal7.
    recoveredBlock321Value2 := (recoveredBlock321Value0) workWindow: (recoveredBlock321Value1).
    recoveredBlock321Value2
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := [:block2811f680Arg1 | 
    | block2811f680Value0 block2811f680Value1 block2811f680Value2 block2811f680Value3 block2811f680Value4 block2811f680Value5 block2811f680Value6 block2811f680Value7 block2811f680Value8 |
    block2811f680Value0 := block2811f680Arg1.
    block2811f680Value1 := block2811f680Value0.
    block2811f680Value2 := XmATTACHFORM.
    (block2811f680Value1) topAttachment: (block2811f680Value2).
    block2811f680Value3 := block2811f680Value0.
    block2811f680Value4 := XmATTACHFORM.
    (block2811f680Value3) bottomAttachment: (block2811f680Value4).
    block2811f680Value5 := block2811f680Value0.
    block2811f680Value6 := XmATTACHFORM.
    (block2811f680Value5) leftAttachment: (block2811f680Value6).
    block2811f680Value7 := XmATTACHFORM.
    block2811f680Value8 := (block2811f680Value0) rightAttachment: (block2811f680Value7).
    block2811f680Value8
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := [:recoveredBlock372Arg1 | 
    | recoveredBlock372Value0 recoveredBlock372Value1 recoveredBlock372Value2 recoveredBlock372Value3 recoveredBlock372Value4 recoveredBlock372Value5 recoveredBlock372Value6 recoveredBlock372Value7 recoveredBlock372Value8 recoveredBlock372Value9 recoveredBlock372Value10 recoveredBlock372Value11 |
    recoveredBlock372Value0 := recoveredBlock372Arg1.
    recoveredBlock372Value1 := recoveredBlock372Value0.
    recoveredBlock372Value2 := XmATTACHFORM.
    (recoveredBlock372Value1) topAttachment: (recoveredBlock372Value2).
    recoveredBlock372Value3 := recoveredBlock372Value0.
    recoveredBlock372Value4 := XmATTACHWIDGET.
    (recoveredBlock372Value3) bottomAttachment: (recoveredBlock372Value4).
    recoveredBlock372Value5 := recoveredBlock372Value0.
    recoveredBlock372Value6 := recoveredLocal2.
    (recoveredBlock372Value5) bottomWidget: (recoveredBlock372Value6).
    recoveredBlock372Value7 := recoveredBlock372Value0.
    (recoveredBlock372Value7) bottomOffset: (1).
    recoveredBlock372Value8 := recoveredBlock372Value0.
    recoveredBlock372Value9 := XmATTACHFORM.
    (recoveredBlock372Value8) leftAttachment: (recoveredBlock372Value9).
    recoveredBlock372Value10 := XmATTACHFORM.
    recoveredBlock372Value11 := (recoveredBlock372Value0) rightAttachment: (recoveredBlock372Value10).
    recoveredBlock372Value11
].
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := [:recoveredBlock419Arg1 | 
    | recoveredBlock419Value0 recoveredBlock419Value1 recoveredBlock419Value2 recoveredBlock419Value3 recoveredBlock419Value4 recoveredBlock419Value5 recoveredBlock419Value6 recoveredBlock419Value7 recoveredBlock419Value8 recoveredBlock419Value9 |
    recoveredBlock419Value0 := recoveredBlock419Arg1.
    recoveredBlock419Value1 := recoveredBlock419Value0.
    recoveredBlock419Value2 := XmATTACHWIDGET.
    (recoveredBlock419Value1) bottomAttachment: (recoveredBlock419Value2).
    recoveredBlock419Value3 := recoveredBlock419Value0.
    recoveredBlock419Value4 := recoveredLocal2.
    (recoveredBlock419Value3) bottomWidget: (recoveredBlock419Value4).
    recoveredBlock419Value5 := recoveredBlock419Value0.
    (recoveredBlock419Value5) bottomOffset: (1).
    recoveredBlock419Value6 := recoveredBlock419Value0.
    recoveredBlock419Value7 := XmATTACHFORM.
    (recoveredBlock419Value6) leftAttachment: (recoveredBlock419Value7).
    recoveredBlock419Value8 := XmATTACHFORM.
    recoveredBlock419Value9 := (recoveredBlock419Value0) rightAttachment: (recoveredBlock419Value8).
    recoveredBlock419Value9
].
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := [:block2811f6a4Arg1 | 
    | block2811f6a4Value0 block2811f6a4Value1 block2811f6a4Value2 block2811f6a4Value3 block2811f6a4Value4 block2811f6a4Value5 block2811f6a4Value6 |
    block2811f6a4Value0 := block2811f6a4Arg1.
    block2811f6a4Value1 := block2811f6a4Value0.
    block2811f6a4Value2 := XmATTACHFORM.
    (block2811f6a4Value1) bottomAttachment: (block2811f6a4Value2).
    block2811f6a4Value3 := block2811f6a4Value0.
    block2811f6a4Value4 := XmATTACHFORM.
    (block2811f6a4Value3) rightAttachment: (block2811f6a4Value4).
    block2811f6a4Value5 := XmATTACHFORM.
    block2811f6a4Value6 := (block2811f6a4Value0) leftAttachment: (block2811f6a4Value5).
    block2811f6a4Value6
].
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := XmNfocusCallback.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack3 := 'shellFocus:clientData:callData:'.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := XmNwindowCloseCallback.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack3 := 'shellClose:clientData:callData:'.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := XmNmodifyVerifyCallback.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack3 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack3 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206449a0; bytecode file offset 0xf41398"
!SGCodegenCompileLinkView methodsFor: 'recovered'!
createWidgetHierarchyBuildPageForForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'radioColumn'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block28122140Arg1 | 
    | block28122140Value0 block28122140Value1 block28122140Value2 block28122140Value3 block28122140Value4 block28122140Value5 block28122140Value6 block28122140Value7 |
    block28122140Value0 := block28122140Arg1.
    block28122140Value1 := block28122140Value0.
    (block28122140Value1) radioBehavior: (true).
    block28122140Value2 := block28122140Value0.
    (block28122140Value2) height: (22).
    block28122140Value3 := block28122140Value0.
    (block28122140Value3) setStaticEdge.
    block28122140Value4 := block28122140Value0.
    block28122140Value5 := XmHORIZONTAL.
    (block28122140Value4) orientation: (block28122140Value5).
    block28122140Value6 := XmPACKTIGHT.
    block28122140Value7 := (block28122140Value0) packing: (block28122140Value6).
    block28122140Value7
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'radioColumn'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'radioAll'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:block28122164Arg1 | 
    | block28122164Value0 block28122164Value1 block28122164Value2 block28122164Value3 |
    block28122164Value0 := block28122164Arg1.
    block28122164Value1 := block28122164Value0.
    (block28122164Value1) setStaticEdge.
    block28122164Value2 := block28122164Value0.
    (block28122164Value2) set: (true).
    block28122164Value3 := block28122164Value0.
    (block28122164Value3) labelString: ('All').
    block28122164Value0
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'radioAll'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'radioError'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := [:block28122188Arg1 | 
    | block28122188Value0 block28122188Value1 block28122188Value2 |
    block28122188Value0 := block28122188Arg1.
    block28122188Value1 := block28122188Value0.
    (block28122188Value1) setStaticEdge.
    block28122188Value2 := block28122188Value0.
    (block28122188Value2) labelString: ('Errors').
    block28122188Value0
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'radioError'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 'radioWarning'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := [:block281221acArg1 | 
    | block281221acValue0 block281221acValue1 block281221acValue2 |
    block281221acValue0 := block281221acArg1.
    block281221acValue1 := block281221acValue0.
    (block281221acValue1) setStaticEdge.
    block281221acValue2 := block281221acValue0.
    (block281221acValue2) labelString: ('Warnings').
    block281221acValue0
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := 'radioWarning'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'radioInformation'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := [:block281221d0Arg1 | 
    | block281221d0Value0 block281221d0Value1 block281221d0Value2 |
    block281221d0Value0 := block281221d0Arg1.
    block281221d0Value1 := block281221d0Value0.
    (block281221d0Value1) setStaticEdge.
    block281221d0Value2 := block281221d0Value0.
    (block281221d0Value2) labelString: ('Information').
    block281221d0Value0
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := 'radioInformation'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := 'hideButton'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := [:block281221f4Arg1 | 
    | block281221f4Value0 block281221f4Value1 |
    block281221f4Value0 := block281221f4Arg1.
    block281221f4Value1 := block281221f4Value0.
    (block281221f4Value1) labelString: ('Show hidden messages').
    block281221f4Value0
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := 'hideButton'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := 'errorList'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := [:recoveredBlock253Arg1 | 
    | recoveredBlock253Value0 recoveredBlock253Value1 recoveredBlock253Value2 recoveredBlock253Value3 recoveredBlock253Value4 recoveredBlock253Value5 |
    recoveredBlock253Value0 := recoveredBlock253Arg1.
    recoveredBlock253Value1 := recoveredBlock253Value0.
    recoveredBlock253Value2 := XmTOGETHER.
    (recoveredBlock253Value1) emphasisPolicy: (recoveredBlock253Value2).
    recoveredBlock253Value3 := recoveredBlock253Value0.
    recoveredBlock253Value4 := (self) iconHierarchyPolicy.
    (recoveredBlock253Value3) hierarchyPolicy: (recoveredBlock253Value4).
    recoveredBlock253Value5 := (recoveredBlock253Value0) itemHeight: (0).
    recoveredBlock253Value5
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := 'scrolledErrorList'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := 'errorList'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := [:recoveredBlock315Arg1 | 
    | recoveredBlock315Value0 recoveredBlock315Value1 recoveredBlock315Value2 recoveredBlock315Value3 recoveredBlock315Value4 recoveredBlock315Value5 recoveredBlock315Value6 recoveredBlock315Value7 recoveredBlock315Value8 recoveredBlock315Value9 recoveredBlock315Value10 recoveredBlock315Value11 |
    recoveredBlock315Value0 := recoveredBlock315Arg1.
    recoveredBlock315Value1 := recoveredBlock315Value0.
    recoveredBlock315Value2 := XmATTACHWIDGET.
    (recoveredBlock315Value1) bottomAttachment: (recoveredBlock315Value2).
    recoveredBlock315Value3 := recoveredBlock315Value0.
    recoveredBlock315Value4 := recoveredLocal2.
    (recoveredBlock315Value3) bottomWidget: (recoveredBlock315Value4).
    recoveredBlock315Value5 := recoveredBlock315Value0.
    (recoveredBlock315Value5) bottomOffset: (5).
    recoveredBlock315Value6 := recoveredBlock315Value0.
    recoveredBlock315Value7 := XmATTACHFORM.
    (recoveredBlock315Value6) topAttachment: (recoveredBlock315Value7).
    recoveredBlock315Value8 := recoveredBlock315Value0.
    recoveredBlock315Value9 := XmATTACHFORM.
    (recoveredBlock315Value8) leftAttachment: (recoveredBlock315Value9).
    recoveredBlock315Value10 := XmATTACHFORM.
    recoveredBlock315Value11 := (recoveredBlock315Value0) rightAttachment: (recoveredBlock315Value10).
    recoveredBlock315Value11
].
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := [:recoveredBlock359Arg1 | 
    | recoveredBlock359Value0 recoveredBlock359Value1 recoveredBlock359Value2 recoveredBlock359Value3 recoveredBlock359Value4 recoveredBlock359Value5 recoveredBlock359Value6 recoveredBlock359Value7 recoveredBlock359Value8 recoveredBlock359Value9 recoveredBlock359Value10 recoveredBlock359Value11 |
    recoveredBlock359Value0 := recoveredBlock359Arg1.
    recoveredBlock359Value1 := recoveredBlock359Value0.
    recoveredBlock359Value2 := XmATTACHFORM.
    (recoveredBlock359Value1) bottomAttachment: (recoveredBlock359Value2).
    recoveredBlock359Value3 := recoveredBlock359Value0.
    (recoveredBlock359Value3) bottomOffset: (0).
    recoveredBlock359Value4 := recoveredBlock359Value0.
    recoveredBlock359Value5 := XmATTACHFORM.
    (recoveredBlock359Value4) leftAttachment: (recoveredBlock359Value5).
    recoveredBlock359Value6 := recoveredBlock359Value0.
    (recoveredBlock359Value6) leftOffset: (0).
    recoveredBlock359Value7 := recoveredBlock359Value0.
    recoveredBlock359Value8 := XmATTACHWIDGET.
    (recoveredBlock359Value7) rightAttachment: (recoveredBlock359Value8).
    recoveredBlock359Value9 := recoveredBlock359Value0.
    recoveredBlock359Value10 := recoveredLocal2.
    (recoveredBlock359Value9) rightWidget: (recoveredBlock359Value10).
    recoveredBlock359Value11 := (recoveredBlock359Value0) rightOffset: (0).
    recoveredBlock359Value11
].
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := [:block28122218Arg1 | 
    | block28122218Value0 block28122218Value1 block28122218Value2 block28122218Value3 block28122218Value4 block28122218Value5 block28122218Value6 |
    block28122218Value0 := block28122218Arg1.
    block28122218Value1 := block28122218Value0.
    block28122218Value2 := XmATTACHFORM.
    (block28122218Value1) bottomAttachment: (block28122218Value2).
    block28122218Value3 := block28122218Value0.
    (block28122218Value3) bottomOffset: (0).
    block28122218Value4 := block28122218Value0.
    block28122218Value5 := XmATTACHFORM.
    (block28122218Value4) rightAttachment: (block28122218Value5).
    block28122218Value6 := (block28122218Value0) rightOffset: (0).
    block28122218Value6
].
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack4 := 'errorListDefaultAction:clientData:callData:'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack4 := 'errorListchildren:clientData:callData:'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := XmNvisualInfoCallback.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := 'errorListvisualInfoCallback:clientData:callData:'.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack3 := 'messageTypeSingleSelect:clientData:callData:'.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack4 := 'all'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack3 := 'messageTypeSingleSelect:clientData:callData:'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack4 := 'error'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := 'messageTypeSingleSelect:clientData:callData:'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack4 := 'warning'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack3 := 'messageTypeSingleSelect:clientData:callData:'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack4 := 'information'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack3 := 'hideButtonValueChanged:clientData:callData:'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := 'If activated, all hidden messages will be shown.\ This will not change the hide state of a message!!'.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := 'Specify, which type of messages shall be displayed!!'.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := 'Specify, which type of messages shall be displayed!!'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := 'Specify, which type of messages shall be displayed!!'.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := 'Specify, which type of messages shall be displayed!!'.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

