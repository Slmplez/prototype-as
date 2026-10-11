"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000611c; bytecode file offset 0x902de8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
dataDragCancel: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000b09c; bytecode file offset 0x908be4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
isLoadDiagramPossible
    | recoveredValue0 |
    recoveredValue0 := (self) hasCurrentSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027114; bytecode file offset 0x923a44"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditRedo
    | recoveredValue0 |
    recoveredValue0 := (self) undoRedo: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027314; bytecode file offset 0x923d40"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditUndo
    | recoveredValue0 |
    recoveredValue0 := (self) undoRedo: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028d74; bytecode file offset 0x934580"
!SGGraphicSpecificationView methodsFor: 'recovered'!
formerComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) formerComponent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c004; bytecode file offset 0x934580"
!SGGraphicSpecificationView methodsFor: 'recovered'!
showHierarchyPathName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) showHierarchyPathName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ff34; bytecode file offset 0x934580"
!SGGraphicSpecificationView methodsFor: 'recovered'!
canSaveModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) isGraphicModified.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200328a4; bytecode file offset 0x934580"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addSelf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) addSelf.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034244; bytecode file offset 0x934580"
!SGGraphicSpecificationView methodsFor: 'recovered'!
formerHierarchyLevel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) formerHierarchyLevel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035694; bytecode file offset 0x934580"
!SGGraphicSpecificationView methodsFor: 'recovered'!
isInConnectMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) isInConnectMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041970; bytecode file offset 0x93e414"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addStatementBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := uiController.
    recoveredValue1 := (recoveredValue0) buildStatementBlock.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041ab4; bytecode file offset 0x93e414"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addHierarchy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := uiController.
    recoveredValue1 := (recoveredValue0) buildHierarchy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041b50; bytecode file offset 0x93e414"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := uiController.
    recoveredValue1 := (recoveredValue0) addCommentGO.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20046a8c; bytecode file offset 0x9451f8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
pane
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('graphicPane').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049cbc; bytecode file offset 0x947128"
!SGGraphicSpecificationView methodsFor: 'recovered'!
switchVisibilityAdditionalInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scrollingPane.
    recoveredValue1 := (self) switchVisibilityAdditionalInfoTopWidget: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049fdc; bytecode file offset 0x947128"
!SGGraphicSpecificationView methodsFor: 'recovered'!
promptForXmlOrCsvImportFilePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) filterForXmlOrCsvImportFilePath.
    recoveredValue1 := (self) promptForXmlOrCsvImportFilePath: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004df10; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallSequencingStart
    (self) sequencingStartingWith.
    ^self
! !

"ASDBase.ic method 0x2004e1a4; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuFileSaveAsBMP
    (self) menuPrintBitmap.
    ^self
! !

"ASDBase.ic method 0x2004e4ec; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuFileSaveAsRTF
    (self) menuPrintRTF.
    ^self
! !

"ASDBase.ic method 0x2004ecf0; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuFileSaveAsPS
    (self) menuPrintPostscript.
    ^self
! !

"ASDBase.ic method 0x2004ef48; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuExtrasShowOccurences
    (self) showOccurences.
    ^self
! !

"ASDBase.ic method 0x2004f4f4; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewPageLayoutPortrait
    (self) setA4Portrait.
    ^self
! !

"ASDBase.ic method 0x2004fd34; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallSequencingIgnore
    (self) sequencingIgnoreInfo.
    ^self
! !

"ASDBase.ic method 0x2005043c; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallSequencingAppend
    (self) sequencingAppending.
    ^self
! !

"ASDBase.ic method 0x20050580; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewPageLayoutLandscape
    (self) setA4Landscape.
    ^self
! !

"ASDBase.ic method 0x20050640; bytecode file offset 0x94d048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuFileSaveAsGIF
    (self) menuPrintGIF.
    ^self
! !

"ASDBase.ic method 0x20059768; bytecode file offset 0x956284"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addLiteral: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addLiteral: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005b058; bytecode file offset 0x957a6c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
scrollingPaneLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateToolbarSensitive.
    ^self
! !

"ASDBase.ic method 0x2005b1e8; bytecode file offset 0x957ac4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
viewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) switchToCategoryName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005da5c; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
reScaleSeqsConnector
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) reScaleSeqsConnector.
    ^self
! !

"ASDBase.ic method 0x2005da68; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
hideAllSeqsMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005da74; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditCut
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) cut.
    ^self
! !

"ASDBase.ic method 0x2005da80; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
scaleDownSeqsDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) scaleDownSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005da8c; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
zoomFitSize
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) zoomFitSize.
    ^self
! !

"ASDBase.ic method 0x2005da98; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
hideAllSeqsDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005daa4; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallHideUnused
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllUnusedSeqs.
    ^self
! !

"ASDBase.ic method 0x2005dabc; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
showAllSeqsMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dad4; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
deleteGraphic
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) del.
    ^self
! !

"ASDBase.ic method 0x2005dae0; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallShowDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005daec; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
resetAllSeqsSelectedBlocks
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) resetAllSeqsSelectedBlocks.
    ^self
! !

"ASDBase.ic method 0x2005daf8; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
redraw
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) redraw.
    ^self
! !

"ASDBase.ic method 0x2005db10; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
saveModel
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) saveModel.
    ^self
! !

"ASDBase.ic method 0x2005db1c; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallScaleDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) reScaleSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005db28; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallScaleMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) reScaleSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005db34; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
hideAllSeqsSelectedBlocks
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllSeqsSelectedBlocks.
    ^self
! !

"ASDBase.ic method 0x2005db40; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
resetAllSeqsDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) resetAllSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005db4c; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallHideSelected
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllSeqsSelectedBlocks.
    ^self
! !

"ASDBase.ic method 0x2005db58; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
hideAllUnusedSeqs
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllUnusedSeqs.
    ^self
! !

"ASDBase.ic method 0x2005db70; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
showAllSeqsSelectedBlocks
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllSeqsSelectedBlocks.
    ^self
! !

"ASDBase.ic method 0x2005db88; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallShowUnused
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllUnusedSeqs.
    ^self
! !

"ASDBase.ic method 0x2005db94; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
showAllSeqs
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllSeqs.
    ^self
! !

"ASDBase.ic method 0x2005dba0; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
resetAllSeqsMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) resetAllSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dbac; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
reScaleSeqsMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) reScaleSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dbb8; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallResetSelected
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) resetAllSeqsSelectedBlocks.
    ^self
! !

"ASDBase.ic method 0x2005dbc4; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
scaleDownSeqsMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) scaleDownSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dbd0; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
showAllUnusedSeqs
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllUnusedSeqs.
    ^self
! !

"ASDBase.ic method 0x2005dbdc; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallResetMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) resetAllSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dbf4; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
zoom100
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) zoom100.
    ^self
! !

"ASDBase.ic method 0x2005dc00; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
scaleUpSeqsDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) scaleUpSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005dc30; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
resetAllSeqs
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) resetAllSeqs.
    ^self
! !

"ASDBase.ic method 0x2005dc3c; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
showAllSeqsDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005dc60; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuWindowViews
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) editInvisibleCategories.
    ^self
! !

"ASDBase.ic method 0x2005dc6c; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallHideDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005dc78; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallShowMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dc84; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
connect
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) toggleConnect.
    ^self
! !

"ASDBase.ic method 0x2005dc90; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditPaste
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) paste.
    ^self
! !

"ASDBase.ic method 0x2005dc9c; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
scaleUpSeqsMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) scaleUpSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dca8; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditCopy
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) copy.
    ^self
! !

"ASDBase.ic method 0x2005dcb4; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
reScaleSeqsDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) reScaleSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x2005dcc0; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallHideMethod
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllSeqsMethod.
    ^self
! !

"ASDBase.ic method 0x2005dcd8; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallShowSelected
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) showAllSeqsSelectedBlocks.
    ^self
! !

"ASDBase.ic method 0x2005dcf0; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
hideAllSeqs
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) hideAllSeqs.
    ^self
! !

"ASDBase.ic method 0x2005dcfc; bytecode file offset 0x95a5c0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditSeqCallResetDiagram
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) resetAllSeqsDiagram.
    ^self
! !

"ASDBase.ic method 0x20063bc4; bytecode file offset 0x961970"
!SGGraphicSpecificationView methodsFor: 'recovered'!
informBuildingIsFinished
    | recoveredValue0 |
    recoveredValue0 := (self) outlineTree.
    (recoveredValue0) endEdit.
    ^self
! !

"ASDBase.ic method 0x20064154; bytecode file offset 0x961970"
!SGGraphicSpecificationView methodsFor: 'recovered'!
switchToNextSeqNo
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) switchToNextSeqNo.
    ^self
! !

"ASDBase.ic method 0x200641a4; bytecode file offset 0x961970"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallPrev
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) switchToLastSeqNo.
    ^self
! !

"ASDBase.ic method 0x200648e4; bytecode file offset 0x961970"
!SGGraphicSpecificationView methodsFor: 'recovered'!
switchToLastSeqNo
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) switchToLastSeqNo.
    ^self
! !

"ASDBase.ic method 0x20064964; bytecode file offset 0x961970"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewSeqCallNext
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) switchToNextSeqNo.
    ^self
! !

"ASDBase.ic method 0x20064cb4; bytecode file offset 0x961970"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuExtrasShowHierarchyPath
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) showHierarchyPathName.
    ^self
! !

"ASDBase.ic method 0x20071064; bytecode file offset 0x96d928"
!SGGraphicSpecificationView methodsFor: 'recovered'!
pointedGO
    | recoveredValue0 |
    recoveredValue0 := pointedGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007514c; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
isAnalyzeDiagramVisible
    ^true
! !

"ASDBase.ic method 0x200755c4; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
hasGrid
    ^true
! !

"ASDBase.ic method 0x2007666c; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
isPrintPossible
    ^true
! !

"ASDBase.ic method 0x20077d6c; bytecode file offset 0x9757c8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
supportsDoNotSaveOnClose
    ^true
! !

"ASDBase.ic method 0x200831c4; bytecode file offset 0x97fa78"
!SGGraphicSpecificationView methodsFor: 'recovered'!
doNotSaveOnClose: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    doNotSaveOnClose := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008647c; bytecode file offset 0x982e18"
!SGGraphicSpecificationView methodsFor: 'recovered'!
undoRedoPossible: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) graphPaneController.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) undoRedoPossible: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008b460; bytecode file offset 0x987d24"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuViewGrid
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) editRaster: (self).
    ^self
! !

"ASDBase.ic method 0x2008b4c0; bytecode file offset 0x987d84"
!SGGraphicSpecificationView methodsFor: 'recovered'!
setA4Landscape
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) setA4LandscapeRedisplay: (true).
    ^self
! !

"ASDBase.ic method 0x2008b4cc; bytecode file offset 0x987d84"
!SGGraphicSpecificationView methodsFor: 'recovered'!
setA4Portrait
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) setA4PortraitRedisplay: (true).
    ^self
! !

"ASDBase.ic method 0x200ab9f8; bytecode file offset 0x9a82cc"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addOperatorName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) argSize.
    recoveredValue3 := (recoveredValue0) addOperator: (recoveredValue1) arguments: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b1888; bytecode file offset 0x9ae140"
!SGGraphicSpecificationView methodsFor: 'recovered'!
sequencingIgnoreInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := uiController.
    recoveredValue1 := (recoveredValue0) sequencingUseInfo: (false) startingWith: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b3760; bytecode file offset 0x9b0070"
!SGGraphicSpecificationView methodsFor: 'recovered'!
revertSpecification
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) updateContentsDontRestoreHierarchy.
    (recoveredValue0) redraw.
    ^self
! !

"ASDBase.ic method 0x200c768c; bytecode file offset 0x9c3fa0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
pointedGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pointedGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d08fc; bytecode file offset 0x9cd3a0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
getLastSelectedPrinter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_84102').
    recoveredValue1 := (self) uiController.
    recoveredValue2 := (recoveredValue1) getLastSelectedPrinter.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d3a98; bytecode file offset 0x9d0380"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuFileSave
    (self) saveModel.
    super menuFileSave.
    ^self
! !

"ASDBase.ic method 0x200e2124; bytecode file offset 0x9de9d8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
doNotSaveOnClose
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := doNotSaveOnClose.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := doNotSaveOnClose.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e4da8; bytecode file offset 0x9e16fc"
!SGGraphicSpecificationView methodsFor: 'recovered'!
save
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) saveModel.
    super save.
    ^self
! !

"ASDBase.ic method 0x200e7c20; bytecode file offset 0x9e44fc"
!SGGraphicSpecificationView methodsFor: 'recovered'!
setLastSelectedPrinter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_84102').
    recoveredValue1 := (self) uiController.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) setLastSelectedPrinter: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e976c; bytecode file offset 0x9e602c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
createWidgetHierarchyPageSpecification: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) createWidgetHierarchyPageGraphics: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) widgetHorizontalSpecSplit.
    recoveredValue3 := (self) appendAdditionalWidgets: (recoveredValue1) attachToSplitBar: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200efb00; bytecode file offset 0x9ec3e4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
elementsForNavigation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) graphicBlockString.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) seqCallString.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fd1c8; bytecode file offset 0x9f9a84"
!SGGraphicSpecificationView methodsFor: 'recovered'!
executePrintingBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) execWithProgressDialog: (recoveredValue0) message: ('Printing...') showProgress: (false) title: ('Printing...').
    ^self
! !

"ASDBase.ic method 0x20102d70; bytecode file offset 0x9ff65c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
hideSpecifyWidget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrollingPane.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) unmanageChild.
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

"ASDBase.ic method 0x20117db0; bytecode file offset 0xa1474c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
canDeleteGraphic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemIsModifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectsSelected.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012bc68; bytecode file offset 0xa2852c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
isChangeViewsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemIsModifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) blocks.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012be88; bytecode file offset 0xa28798"
!SGGraphicSpecificationView methodsFor: 'recovered'!
needsToBeSaved
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super needsToBeSaved.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) modified.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201324c8; bytecode file offset 0xa2ed8c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
setGraphPaneControllerFor: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphPaneController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) graphPaneController: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137acc; bytecode file offset 0xa34388"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addCondition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super addCondition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013d534; bytecode file offset 0xa39df4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
modified
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super modified.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) modified.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20149b5c; bytecode file offset 0xa46418"
!SGGraphicSpecificationView methodsFor: 'recovered'!
sequencingStartingWith
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForStartingSeqNumber.
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
            recoveredStack0 := uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequencingUseInfo: (recoveredStack1) startingWith: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015aa70; bytecode file offset 0xa57334"
!SGGraphicSpecificationView methodsFor: 'recovered'!
updateConnectToolbar: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetToolbarGenerals.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'EditorConnect'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolNamed: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 18.
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

"ASDBase.ic method 0x2016acb0; bytecode file offset 0xa67574"
!SGGraphicSpecificationView methodsFor: 'recovered'!
showSpecifyWidget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrollingPane.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) initMenus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) showHideToolBars.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b434; bytecode file offset 0xa67cf4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
sequencingAppending
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStartingSeqNumber.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequencingUseInfo: (recoveredStack1) startingWith: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e998; bytecode file offset 0xa6b340"
!SGGraphicSpecificationView methodsFor: 'recovered'!
filterForXmlOrCsvImportFilePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('*.XML') put: ('XML').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('*.CSV') put: ('CSV').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201837a0; bytecode file offset 0xa80064"
!SGGraphicSpecificationView methodsFor: 'recovered'!
closeAndSave
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) uiController.
    (recoveredValue2) saveModel.
    recoveredValue3 := (self) closeWithoutAskingForPermission.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201911b0; bytecode file offset 0xa8da84"
!SGGraphicSpecificationView methodsFor: 'recovered'!
initSpecial
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initSpecial.
    recoveredValue0 := RBSymbolGO.
    recoveredValue1 := (self) resourceManager.
    (recoveredValue0) ResourceManagerAdapter: (recoveredValue1).
    recoveredValue2 := (self) uiController.
    recoveredValue3 := (self) pane.
    (recoveredValue2) initWithGraphPane: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20194ccc; bytecode file offset 0xa91594"
!SGGraphicSpecificationView methodsFor: 'recovered'!
renameSelectedMethodTo: recoveredArg1
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
            recoveredStack0 := super renameSelectedMethodTo: (recoveredStack1).
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
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) updateGOsForSelectedMethod.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) updateSequenceCallsForSelectedMethod.
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

"ASDBase.ic method 0x2019b5dc; bytecode file offset 0xa97ea4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
loadSpec: recoveredArg1
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
            recoveredStack0 := super loadSpec: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) updateTreePane: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019c1b0; bytecode file offset 0xa98a78"
!SGGraphicSpecificationView methodsFor: 'recovered'!
position: recoveredArg1 isInSequenceCallSection: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) allVisibleItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d1f64Arg1 | 
    | block280d1f64Value0 block280d1f64Value1 |
    block280d1f64Value0 := block280d1f64Arg1.
    block280d1f64Value1 := (block280d1f64Value0) equals: ('Sequence Calls').
    block280d1f64Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFirst: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a2f9c; bytecode file offset 0xa9f864"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuEditComponentData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super menuEditComponentData.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := 'hw'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'call_2010404330'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) menuWindowRedraw.
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

"ASDBase.ic method 0x201c8708; bytecode file offset 0xac4fd4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
editElements
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
            recoveredStack2 := 'call_84210'.
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
            recoveredStack0 := super editElements.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) consistentMakeConfig.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201de844; bytecode file offset 0xadb10c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuWindowRedraw
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super menuWindowRedraw.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGraphicPane.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) redraw.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e40ac; bytecode file offset 0xae0978"
!SGGraphicSpecificationView methodsFor: 'recovered'!
preClosingActivities
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) doFinalCleanUp.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            super preClosingActivities.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201edb44; bytecode file offset 0xaea410"
!SGGraphicSpecificationView methodsFor: 'recovered'!
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) updateTreePane: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'Hw'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Call_2007401127'.
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
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateOccurrencesWindow.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ff9bc; bytecode file offset 0xafc288"
!SGGraphicSpecificationView methodsFor: 'recovered'!
editData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super editData.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := (self) uiController.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) updateGOsForElement: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020a864; bytecode file offset 0xb07138"
!SGGraphicSpecificationView methodsFor: 'recovered'!
idleTimeShutdown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_74563'.
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
            recoveredStack1 := uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraphicModified.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) saveModel.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := super idleTimeShutdown.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210c64; bytecode file offset 0xb0d530"
!SGGraphicSpecificationView methodsFor: 'recovered'!
outlineMotion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super outlineMotion: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    recoveredValue3 := (self) pointedGO.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    (recoveredBlock13Value0) unHighlightGODisplay: (true).
    recoveredBlock13Value1 := (self) pointedGO: (nil).
    recoveredBlock13Value1
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20229698; bytecode file offset 0xb25f60"
!SGGraphicSpecificationView methodsFor: 'recovered'!
printAllRecursive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) isToSave.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := (self) uiController.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) printAllRecursive: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (self) executePrintingBlock: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20229c94; bytecode file offset 0xb26564"
!SGGraphicSpecificationView methodsFor: 'recovered'!
checkElements: recoveredArg1 fitForSpecification: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isMethodElement.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) uiController.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) specification.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) methods.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) owner.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) includes: (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) not.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) anySatisfy: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20234014; bytecode file offset 0xb308dc"
!SGGraphicSpecificationView methodsFor: 'recovered'!
undoRedo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) undoRedoPossible: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := (self) uiController.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) undoRedo: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateToolbarSensitive.
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

"ASDBase.ic method 0x202372f0; bytecode file offset 0xb33bd0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) zoomBox.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) zoomingFactor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '%'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
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

"ASDBase.ic method 0x2023d23c; bytecode file offset 0xb39b0c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
replaceComponent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isToSave.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := super replaceComponent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) readGraphics.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) redraw.
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

"ASDBase.ic method 0x20259118; bytecode file offset 0xb55a00"
!SGGraphicSpecificationView methodsFor: 'recovered'!
graphicObjectsFilter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := ASDOptionDialog.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := MainController.
    recoveredValue5 := (recoveredValue4) allToolOptions.
    (recoveredValue3) options: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) parent: (self).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) rootNodeName.
    recoveredValue9 := (recoveredValue8) , ('\').
    recoveredValue10 := ASDBlockDiagramEditorOptions.
    recoveredValue11 := (recoveredValue10) groupStringNavigationFilter.
    recoveredValue12 := (recoveredValue9) , (recoveredValue11).
    (recoveredValue2) firstSelection: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) prompt.
    ^self
! !

"ASDBase.ic method 0x2027be00; bytecode file offset 0xb786d4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
switchToCategoryName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) mainController.
    recoveredValue2 := (recoveredValue1) allCategories.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) name.
    recoveredBlock7Value2 := (recoveredBlock7Value1) asLowercase.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) asLowercase.
    recoveredBlock7Value5 := (recoveredBlock7Value2) = (recoveredBlock7Value4).
    recoveredBlock7Value5
].
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := uiController.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) selectedCategory: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2028b704; bytecode file offset 0xb88080"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuPrintPostscript
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('*.ps') put: ('PostScript Files').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('*.*') put: ('All files').
    recoveredValue4 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := (self) uiController.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) printPostscript: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
    (self) menuPrintTitle: ('Select PostScript file') filterDict: (recoveredValue1) searchMask: ('*.ps') printExecutionBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2028b738; bytecode file offset 0xb88080"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuPrintBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('*.bmp') put: ('Bitmap Files').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('*.*') put: ('All files').
    recoveredValue4 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := (self) uiController.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) printBitmap: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
    (self) menuPrintTitle: ('Select Bitmap file') filterDict: (recoveredValue1) searchMask: ('*.bmp') printExecutionBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2028b76c; bytecode file offset 0xb88080"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuPrintRTF
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('*.rtf') put: ('RTF Files').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('*.*') put: ('All files').
    recoveredValue4 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := (self) uiController.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) printRTF: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
    (self) menuPrintTitle: ('Select RTF file') filterDict: (recoveredValue1) searchMask: ('*.rtf') printExecutionBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2028b7a0; bytecode file offset 0xb88080"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuPrintGIF
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('*.gif') put: ('GIF Files').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('*.*') put: ('All files').
    recoveredValue4 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := (self) uiController.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) printGIF: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
    (self) menuPrintTitle: ('Select GIF file') filterDict: (recoveredValue1) searchMask: ('*.gif') printExecutionBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2029390c; bytecode file offset 0xb901d8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
editMethodSelectElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isToSave.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super editMethodSelectElement: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateGOsForSelectedMethod.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a4248; bytecode file offset 0xba0b14"
!SGGraphicSpecificationView methodsFor: 'recovered'!
argSize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) argumentBox.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGraphicsPalette.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) argumentBox.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e8084; bytecode file offset 0xbe4970"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuFilePrintSetup
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84102'.
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
            recoveredStack1 := CgDisplay.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allPrinterDisplayNames.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'There are no printers available.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := CwPrinterPrompter.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLastSelectedPrinter.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) displayName: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) setLastSelectedPrinter: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f7540; bytecode file offset 0xbf3e24"
!SGGraphicSpecificationView methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateContents.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimulationView.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) categories.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280e8bc0Arg1 | 
    | block280e8bc0Value0 block280e8bc0Value1 |
    block280e8bc0Value0 := block280e8bc0Arg1.
    block280e8bc0Value1 := (block280e8bc0Value0) default.
    block280e8bc0Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) switchToCategoryName: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fc160; bytecode file offset 0xbf8a48"
!SGGraphicSpecificationView methodsFor: 'recovered'!
windowLabelString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) editorName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ' for: '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ' [ '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := uiController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackString: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ' ] Project: '.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProject.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentEditorLabel.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f1f4; bytecode file offset 0xc3bac8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
promptForStartingSeqNumber
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStartingSeqNumber.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := CwTextPrompter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Starting Sequence Number'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt: (recoveredStack1) answer: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CwTextPrompter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Insert an Integer >= 1'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt: (recoveredStack1) answer: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203408a4; bytecode file offset 0xc3d19c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
promptForXmlOrCsvImportFilePath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastExportPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'File Name for Import Mapping File'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := '*.XML'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := XmOPEN.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setLastExportPathFromFile: (recoveredStack1).
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

"ASDBase.ic method 0x20345c60; bytecode file offset 0xc42574"
!SGGraphicSpecificationView methodsFor: 'recovered'!
elemOrTemplateDrop: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmSpecification.
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
            recoveredStack0 := #('class' 'record' 'atomicsoftwarecomponent').
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) templateDrop: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceModel.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'element'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) elementDrop: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceModel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'enum'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) enumDrop: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037f000; bytecode file offset 0xc7b8e0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
addControlName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGInitializeServer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) controlTypes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) argSize.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) argumentBox.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredLocal1.
    recoveredBlock41Value2 := (recoveredBlock41Value1) printString.
    recoveredBlock41Value3 := (recoveredBlock41Value0) setString: (recoveredBlock41Value2).
    recoveredBlock41Value3
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) addControl: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c50a8; bytecode file offset 0xcc19a8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
initDragAndDrop
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    super initDragAndDrop.
    recoveredValue0 := (self) outlineTree.
    recoveredValue1 := (recoveredValue0) createSourceAdapter.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmNdragStartCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('elementDragStart:clientData:callData:') clientData: (nil).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := XmNdragCancelCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('dataDragCancel:clientData:callData:') clientData: (nil).
    recoveredValue6 := (self) outlineTree.
    recoveredValue7 := (recoveredValue6) createTargetAdapter.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := XmNdragOverCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('classOver:clientData:callData:') clientData: (nil).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := XmNdropCallback.
    (recoveredValue10) addCallback: (recoveredValue11) receiver: (self) selector: ('classDrop:clientData:callData:') clientData: (nil).
    recoveredValue12 := EwTargetAdapter.
    recoveredValue13 := (self) pane.
    recoveredValue14 := (recoveredValue12) on: (recoveredValue13).
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := XmNdropCallback.
    (recoveredValue15) addCallback: (recoveredValue16) receiver: (self) selector: ('elemOrTemplateDrop:clientData:callData:') clientData: (nil).
    recoveredValue17 := XmNdragOverCallback.
    (recoveredValue14) addCallback: (recoveredValue17) receiver: (self) selector: ('elemOrTemplateOver:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x203cff24; bytecode file offset 0xccc804"
!SGGraphicSpecificationView methodsFor: 'recovered'!
isShowOccurencesPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) isBrowseWidgetActive.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) dummySelected.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelf.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBdSpecification.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isARBdSpecification.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmSpecification.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203da504; bytecode file offset 0xcd6df8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
templateDrop: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) classDrop: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) event.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) event.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := ReturnParameter.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal4 := recoveredStack5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := ReturnParameter.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack6.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := ReturnParameter.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := (recoveredStack6) null.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) translateCoordinates: (recoveredStack1) srcX: (recoveredStack2) srcY: (recoveredStack3) destXReturn: (recoveredStack4) destYReturn: (recoveredStack5) childReturn: (recoveredStack6).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) addElement: (recoveredStack1) atPosition: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203dfa1c; bytecode file offset 0xcdc314"
!SGGraphicSpecificationView methodsFor: 'recovered'!
enumDrop: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super classDrop: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) event.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) event.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := ReturnParameter.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := ReturnParameter.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack6.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := ReturnParameter.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := (recoveredStack6) null.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) translateCoordinates: (recoveredStack1) srcX: (recoveredStack2) srcY: (recoveredStack3) destXReturn: (recoveredStack4) destYReturn: (recoveredStack5) childReturn: (recoveredStack6).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) addElement: (recoveredStack1) atPosition: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ea4cc; bytecode file offset 0xce6de0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
topShellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super topShellFocus: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'wb_sifting'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'call_70184'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) reason.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := XmCRFOCUS.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isModifiedConsist.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'promptedCloseMessage'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'promptedCloseMessage'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'Component '.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := ' is no longer write protected. Editor has to be closed'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x203ff228; bytecode file offset 0xcfbb10"
!SGGraphicSpecificationView methodsFor: 'recovered'!
isToSave
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsToBeSaved.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) doNotSaveOnClose.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'This action requires to store all unsaved changes.\Do you want to store changes?'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeChangesPromptYesNoCancel: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectForItem.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock45Value0 |
    recoveredBlock45Value0 := (self) saveWithoutNotification.
    recoveredBlock45Value0
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := [
    | recoveredBlock55Block63Value0 |
    recoveredBlock55Block63Value0 := (self) saveWithoutNotification.
    recoveredBlock55Block63Value0
].
    recoveredBlock55Value2 := (recoveredBlock55Value0) suspendObserving: (recoveredBlock55Value1) notify: (false).
    recoveredBlock55Value2
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) revertSpecification.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) modified: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20428fa4; bytecode file offset 0xd258a8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
specListvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackHasChildren: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIconForSpecificationOrMethod: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) visualCallBackStringForOutline: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodDeclaration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSequencingAvailable.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentItemManager.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentItems.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := RBRenderableBitmapString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'BDECall'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOnString: (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSpecification.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoadedSpecification: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := RBRenderableBitmapString.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 'GeneralEdit'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOnString: (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20435014; bytecode file offset 0xd31914"
!SGGraphicSpecificationView methodsFor: 'recovered'!
zoomActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) resetZoomButtons.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'PageLayout'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) zoomFitSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'ShowAll'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) zoomFitWidget.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) zoom: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) updateScrollBars.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) zoomingFactor.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := '%'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046b4ac; bytecode file offset 0xd67d8c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
navigationElementsUnderMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCallsForMethod: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block281010c8Arg1 | 
    | block281010c8Value0 block281010c8Value1 block281010c8Value2 |
    block281010c8Value0 := block281010c8Arg1.
    block281010c8Value1 := (block281010c8Value0) editedNo.
    block281010c8Value2 := (block281010c8Value1) > (0).
    block281010c8Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isCallGO.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 44] ifFalse: [recoveredBlock31PC := 50].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) editedNo.
            recoveredBlock31PC := 47.
        ].
        recoveredBlock31Step = 47 ifTrue: [
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 51.
        ].
        recoveredBlock31Step = 51 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) label.
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 53 ifTrue: [
            recoveredLocal2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg2.
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isCallGO.
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 62] ifFalse: [recoveredBlock31PC := 68].
        ].
        recoveredBlock31Step = 62 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg2.
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) editedNo.
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg2.
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) label.
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 74.
        ].
        recoveredBlock31Step = 74 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 77 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isString.
            recoveredBlock31PC := 79.
        ].
        recoveredBlock31Step = 79 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 90] ifFalse: [recoveredBlock31PC := 82].
        ].
        recoveredBlock31Step = 82 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal1.
            recoveredBlock31PC := 85.
        ].
        recoveredBlock31Step = 85 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isString.
            recoveredBlock31PC := 87.
        ].
        recoveredBlock31Step = 87 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 90] ifFalse: [recoveredBlock31PC := 104].
        ].
        recoveredBlock31Step = 90 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 93.
        ].
        recoveredBlock31Step = 93 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) printString.
            recoveredBlock31PC := 95.
        ].
        recoveredBlock31Step = 95 ifTrue: [
            recoveredBlock31Stack2 := recoveredLocal1.
            recoveredBlock31PC := 98.
        ].
        recoveredBlock31Step = 98 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) printString.
            recoveredBlock31PC := 100.
        ].
        recoveredBlock31Step = 100 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) < (recoveredBlock31Stack2).
            recoveredBlock31PC := 101.
        ].
        recoveredBlock31Step = 101 ifTrue: [
            recoveredBlock31PC := 111.
        ].
        recoveredBlock31Step = 104 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 107.
        ].
        recoveredBlock31Step = 107 ifTrue: [
            recoveredBlock31Stack2 := recoveredLocal1.
            recoveredBlock31PC := 110.
        ].
        recoveredBlock31Step = 110 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) < (recoveredBlock31Stack2).
            recoveredBlock31PC := 111.
        ].
        recoveredBlock31Step = 111 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20485780; bytecode file offset 0xd8209c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
updateLocal
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70018'.
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
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBuildMode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) keepFormerInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'call_81665'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := (recoveredBlock58Value0) class.
    recoveredBlock58Value2 := (self) uiController.
    recoveredBlock58Value3 := (recoveredBlock58Value2) specification.
    recoveredBlock58Value4 := (recoveredBlock58Value3) class.
    recoveredBlock58Value5 := (recoveredBlock58Value1) = (recoveredBlock58Value4).
    recoveredBlock58Value5
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) hideSpecifyWidget.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrollingPane.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) showSpecifyWidget.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) loadSpec.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cab34; bytecode file offset 0xdc746c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuPrintTitle: recoveredArg1 filterDict: recoveredArg2 searchMask: recoveredArg3 printExecutionBlock: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) LastUseGraphicsExportPath.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) searchPath: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) appendDefaultExtension.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) LastUseGraphicsExportPath: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'File '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := ' is read only. Continue and overwrite this file anyway?'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) clearReadOnly: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'unable to clear readonly flag of file '.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 151] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'Failed to write in file '.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ce770; bytecode file offset 0xdcb078"
!SGGraphicSpecificationView methodsFor: 'recovered'!
elementDragStart: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block281071d0Arg1 | 
    | block281071d0Value0 block281071d0Value1 |
    block281071d0Value0 := block281071d0Arg1.
    block281071d0Value1 := (block281071d0Value0) isMethodDeclaration.
    block281071d0Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:block281071f4Arg1 | 
    | block281071f4Value0 block281071f4Value1 |
    block281071f4Value0 := block281071f4Arg1.
    block281071f4Value1 := (block281071f4Value0) isSpecification.
    block281071f4Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:block28107218Arg1 | 
    | block28107218Value0 block28107218Value1 |
    block28107218Value0 := block28107218Arg1.
    block28107218Value1 := (block28107218Value0) isElement.
    block28107218Value1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'mixed'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'element'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := XmCOPY.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := XmMOVE.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack5 := XmLINK.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := (recoveredStack4) asArray.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) dragStart: (recoveredStack1) callData: (recoveredStack2) sourceItems: (recoveredStack3) sourceModel: (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d48c8; bytecode file offset 0xdd11d0"
!SGGraphicSpecificationView methodsFor: 'recovered'!
navigationExtendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraphicObject.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraphicObjectWrapper.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCallGO.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNavigationNode.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerGO.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 recoveredBlock90Value7 recoveredBlock90Value8 recoveredBlock90Value9 recoveredBlock90Value10 |
    recoveredBlock90Value0 := (self) uiController.
    recoveredBlock90Value1 := (recoveredBlock90Value0) graphPaneController.
    recoveredBlock90Value2 := recoveredBlock90Value1.
    recoveredBlock90Value3 := Array.
    recoveredBlock90Value4 := recoveredLocal1.
    recoveredBlock90Value5 := (recoveredBlock90Value3) with: (recoveredBlock90Value4).
    (recoveredBlock90Value2) switchToHierarchyLevelFor: (recoveredBlock90Value5).
    recoveredBlock90Value6 := recoveredBlock90Value1.
    recoveredBlock90Value7 := recoveredLocal1.
    recoveredBlock90Value8 := (recoveredBlock90Value7) getPosition.
    (recoveredBlock90Value6) checkWidgetSCrollingForPosition: (recoveredBlock90Value8).
    recoveredBlock90Value9 := recoveredLocal1.
    recoveredBlock90Value10 := (recoveredBlock90Value1) setSelectStateWithGO: (recoveredBlock90Value9).
    recoveredBlock90Value10
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) suspendObserving: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'Call_80122'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) switchToNextSeqNoForMethod: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20519600; bytecode file offset 0xe15f28"
!SGGraphicSpecificationView methodsFor: 'recovered'!
navigationDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDUserActionObserver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := '->'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'DefaultAction'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) addUserAction: (recoveredStack2) type: (recoveredStack3) window: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraphicObject.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraphicObjectWrapper.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCallGO.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerGO.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 recoveredBlock99Value3 recoveredBlock99Value4 recoveredBlock99Value5 recoveredBlock99Value6 recoveredBlock99Value7 recoveredBlock99Value8 recoveredBlock99Value9 recoveredBlock99Value10 |
    recoveredBlock99Value0 := (self) uiController.
    recoveredBlock99Value1 := (recoveredBlock99Value0) graphPaneController.
    recoveredBlock99Value2 := recoveredBlock99Value1.
    recoveredBlock99Value3 := Array.
    recoveredBlock99Value4 := recoveredLocal1.
    recoveredBlock99Value5 := (recoveredBlock99Value3) with: (recoveredBlock99Value4).
    (recoveredBlock99Value2) switchToHierarchyLevelFor: (recoveredBlock99Value5).
    recoveredBlock99Value6 := recoveredBlock99Value1.
    recoveredBlock99Value7 := recoveredLocal1.
    recoveredBlock99Value8 := (recoveredBlock99Value7) getPosition.
    (recoveredBlock99Value6) checkWidgetSCrollingForPosition: (recoveredBlock99Value8).
    recoveredBlock99Value9 := recoveredLocal1.
    recoveredBlock99Value10 := (recoveredBlock99Value1) setSelectStateWithGO: (recoveredBlock99Value9).
    recoveredBlock99Value10
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) suspendObserving: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'Call_80122'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 169].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) switchToNextSeqNoForMethod: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpecification.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadSpec: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053b2dc; bytecode file offset 0xe37c20"
!SGGraphicSpecificationView methodsFor: 'recovered'!
elementDrop: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'element'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'call_83604'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:block2810de84Arg1 | 
    | block2810de84Value0 block2810de84Value1 |
    block2810de84Value0 := block2810de84Arg1.
    block2810de84Value1 := (block2810de84Value0) aliasName.
    block2810de84Value1
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelf.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'call_85076'.
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
            recoveredStack0 := ASCETSG.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAccessToContainedElementsInGraphics.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRecursiveOutlineParentItem: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceWidget.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) event.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := (recoveredStack3) event.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := ReturnParameter.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal6 := recoveredStack5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := ReturnParameter.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal5 := recoveredStack6.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack6 := ReturnParameter.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack6 := (recoveredStack6) null.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) translateCoordinates: (recoveredStack1) srcX: (recoveredStack2) srcY: (recoveredStack3) destXReturn: (recoveredStack4) destYReturn: (recoveredStack5) childReturn: (recoveredStack6).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) addElementForList: (recoveredStack1) atPosition: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20551d90; bytecode file offset 0xe4e698"
!SGGraphicSpecificationView methodsFor: 'recovered'!
menuFilePrint
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDPrintDiagramDialog.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) prompt.
    recoveredValue3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) uiController.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) graphPaneController.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack0) printSettings: (recoveredBlock8Stack1).
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := 'printAll'.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := [
    ^nil
].
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) ifAbsent: (recoveredBlock8Stack2).
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 90].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := 'currentComponent'.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack2 := [
    ^nil
].
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) ifAbsent: (recoveredBlock8Stack2).
            recoveredBlock8PC := 52.
        ].
        recoveredBlock8Step = 52 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 56] ifFalse: [recoveredBlock8PC := 61].
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack1 := false.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) printAllRecursive: (recoveredBlock8Stack1).
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            ^recoveredBlock8Stack0
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack2 := 'allComponents'.
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack3 := [
    ^nil
].
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) ifAbsent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 76.
        ].
        recoveredBlock8Step = 76 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 80] ifFalse: [recoveredBlock8PC := 86].
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8Stack1 := true.
            recoveredBlock8PC := 83.
        ].
        recoveredBlock8Step = 83 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) printAllRecursive: (recoveredBlock8Stack1).
            recoveredBlock8PC := 85.
        ].
        recoveredBlock8Step = 85 ifTrue: [
            ^recoveredBlock8Stack0
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8PC := 221.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 91.
        ].
        recoveredBlock8Step = 91 ifTrue: [
            recoveredBlock8Stack1 := 'all'.
            recoveredBlock8PC := 93.
        ].
        recoveredBlock8Step = 93 ifTrue: [
            recoveredBlock8Stack2 := [
    ^nil
].
            recoveredBlock8PC := 102.
        ].
        recoveredBlock8Step = 102 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) ifAbsent: (recoveredBlock8Stack2).
            recoveredBlock8PC := 104.
        ].
        recoveredBlock8Step = 104 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 108] ifFalse: [recoveredBlock8PC := 155].
        ].
        recoveredBlock8Step = 108 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 109.
        ].
        recoveredBlock8Step = 109 ifTrue: [
            recoveredBlock8Stack1 := 'scale'.
            recoveredBlock8PC := 111.
        ].
        recoveredBlock8Step = 111 ifTrue: [
            recoveredBlock8Stack2 := [
    ^nil
].
            recoveredBlock8PC := 120.
        ].
        recoveredBlock8Step = 120 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) ifAbsent: (recoveredBlock8Stack2).
            recoveredBlock8PC := 122.
        ].
        recoveredBlock8Step = 122 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 126] ifFalse: [recoveredBlock8PC := 141].
        ].
        recoveredBlock8Step = 126 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 127.
        ].
        recoveredBlock8Step = 127 ifTrue: [
            recoveredBlock8Stack1 := [
    | recoveredBlock8Block127Value0 recoveredBlock8Block127Value1 |
    recoveredBlock8Block127Value0 := (self) uiController.
    recoveredBlock8Block127Value1 := (recoveredBlock8Block127Value0) printScaled.
    recoveredBlock8Block127Value1
].
            recoveredBlock8PC := 138.
        ].
        recoveredBlock8Step = 138 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) executePrintingBlock: (recoveredBlock8Stack1).
            recoveredBlock8PC := 140.
        ].
        recoveredBlock8Step = 140 ifTrue: [
            ^recoveredBlock8Stack0
        ].
        recoveredBlock8Step = 141 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 142.
        ].
        recoveredBlock8Step = 142 ifTrue: [
            recoveredBlock8Stack1 := [
    | recoveredBlock8Block142Value0 recoveredBlock8Block142Value1 |
    recoveredBlock8Block142Value0 := (self) uiController.
    recoveredBlock8Block142Value1 := (recoveredBlock8Block142Value0) print.
    recoveredBlock8Block142Value1
].
            recoveredBlock8PC := 152.
        ].
        recoveredBlock8Step = 152 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) executePrintingBlock: (recoveredBlock8Stack1).
            recoveredBlock8PC := 154.
        ].
        recoveredBlock8Step = 154 ifTrue: [
            ^recoveredBlock8Stack0
        ].
        recoveredBlock8Step = 155 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 156.
        ].
        recoveredBlock8Step = 156 ifTrue: [
            recoveredBlock8Stack1 := 'visible'.
            recoveredBlock8PC := 158.
        ].
        recoveredBlock8Step = 158 ifTrue: [
            recoveredBlock8Stack2 := [
    ^nil
].
            recoveredBlock8PC := 166.
        ].
        recoveredBlock8Step = 166 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) ifAbsent: (recoveredBlock8Stack2).
            recoveredBlock8PC := 168.
        ].
        recoveredBlock8Step = 168 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 172] ifFalse: [recoveredBlock8PC := 187].
        ].
        recoveredBlock8Step = 172 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 173.
        ].
        recoveredBlock8Step = 173 ifTrue: [
            recoveredBlock8Stack1 := [
    | recoveredBlock8Block173Value0 recoveredBlock8Block173Value1 |
    recoveredBlock8Block173Value0 := (self) uiController.
    recoveredBlock8Block173Value1 := (recoveredBlock8Block173Value0) printVisible.
    recoveredBlock8Block173Value1
].
            recoveredBlock8PC := 184.
        ].
        recoveredBlock8Step = 184 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) executePrintingBlock: (recoveredBlock8Stack1).
            recoveredBlock8PC := 186.
        ].
        recoveredBlock8Step = 186 ifTrue: [
            ^recoveredBlock8Stack0
        ].
        recoveredBlock8Step = 187 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 188.
        ].
        recoveredBlock8Step = 188 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 189.
        ].
        recoveredBlock8Step = 189 ifTrue: [
            recoveredBlock8Stack2 := 'user'.
            recoveredBlock8PC := 191.
        ].
        recoveredBlock8Step = 191 ifTrue: [
            recoveredBlock8Stack3 := [
    ^nil
].
            recoveredBlock8PC := 200.
        ].
        recoveredBlock8Step = 200 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) ifAbsent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 202.
        ].
        recoveredBlock8Step = 202 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 206] ifFalse: [recoveredBlock8PC := 221].
        ].
        recoveredBlock8Step = 206 ifTrue: [
            recoveredBlock8PC := 207.
        ].
        recoveredBlock8Step = 207 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 208.
        ].
        recoveredBlock8Step = 208 ifTrue: [
            recoveredBlock8Stack1 := [
    | recoveredBlock8Block208Value0 recoveredBlock8Block208Value1 |
    recoveredBlock8Block208Value0 := (self) uiController.
    recoveredBlock8Block208Value1 := (recoveredBlock8Block208Value0) printPages.
    recoveredBlock8Block208Value1
].
            recoveredBlock8PC := 218.
        ].
        recoveredBlock8Step = 218 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) executePrintingBlock: (recoveredBlock8Stack1).
            recoveredBlock8PC := 220.
        ].
        recoveredBlock8Step = 220 ifTrue: [
            ^recoveredBlock8Stack0
        ].
        recoveredBlock8Step = 221 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2057a9a4; bytecode file offset 0xe772e4"
!SGGraphicSpecificationView methodsFor: 'recovered'!
navigationChildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphicBlockString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphPaneController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) topHierarchyGO.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualChildren.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [:block281128c4Arg1 :block281128c4Arg2 | 
    | block281128c4Value0 block281128c4Value1 block281128c4Value2 block281128c4Value3 block281128c4Value4 |
    block281128c4Value0 := block281128c4Arg1.
    block281128c4Value1 := (block281128c4Value0) visualCallBackStringForNavigation.
    block281128c4Value2 := block281128c4Arg2.
    block281128c4Value3 := (block281128c4Value2) visualCallBackStringForNavigation.
    block281128c4Value4 := (block281128c4Value1) < (block281128c4Value3).
    block281128c4Value4
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSortedCollection: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) children: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) seqCallString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) allSpecifications.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) children: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) position: (recoveredStack1) isInSequenceCallSection: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGraphicObject.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGraphicObjectWrapper.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGHierarchyWrapperGO.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForSequenceCallSection.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForGraphicBlockSection.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCallGO.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStatementBlockGO.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchyMGO.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForSequenceCallSection.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchyMGO.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForGraphicBlockSection.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNavigationNode.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerGO.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGControlGO.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerGO.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) createChildrenNodes.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSpecification.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackChildrenForNavigation: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodDeclaration.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationElementsUnderMethod: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205af070; bytecode file offset 0xeab9bc"
!SGGraphicSpecificationView methodsFor: 'recovered'!
elemOrTemplateOver: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmSpecification.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := #('class' 'record' 'element' 'atomicsoftwarecomponent').
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) classOver: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceModel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'element'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'call_83604'.
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
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemIsModifiable.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceItems.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrimitive.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAliasForSelf.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLibrary.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'call_85076'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := ASCETSG.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAccessToContainedElementsInGraphics.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRecursiveOutlineParentItem: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAliasForSelf.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := 'Call_2001296'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := 'Call_81589'.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := (recoveredStack2) specification.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkElements: (recoveredStack1) fitForSpecification: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := XmILLEGAL.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := XmCOPY.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := XmMOVE.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack4 := XmLINK.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b969c; bytecode file offset 0xeb6048"
!SGGraphicSpecificationView methodsFor: 'recovered'!
createWidgetHierarchyPageGraphics: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'scrollingPane'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block28117520Arg1 | 
    | block28117520Value0 block28117520Value1 block28117520Value2 block28117520Value3 block28117520Value4 block28117520Value5 |
    block28117520Value0 := block28117520Arg1.
    block28117520Value1 := block28117520Value0.
    (block28117520Value1) borderWidth: (1).
    block28117520Value2 := block28117520Value0.
    block28117520Value3 := XmAUTOMATIC.
    (block28117520Value2) scrollingPolicy: (block28117520Value3).
    block28117520Value4 := XmASNEEDED.
    block28117520Value5 := (block28117520Value0) scrollBarDisplayPolicy: (block28117520Value4).
    block28117520Value5
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledWindow: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'scrollingPane'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'graphicPane'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:block28117544Arg1 | 
    | block28117544Value0 block28117544Value1 block28117544Value2 block28117544Value3 block28117544Value4 block28117544Value5 block28117544Value6 block28117544Value7 block28117544Value8 block28117544Value9 block28117544Value10 |
    block28117544Value0 := block28117544Arg1.
    block28117544Value1 := block28117544Value0.
    block28117544Value2 := ASDBlockDiagramEditorOptions.
    block28117544Value3 := (block28117544Value2) instance.
    block28117544Value4 := (block28117544Value3) optionDrawingAreaSize.
    block28117544Value5 := (block28117544Value4) y.
    (block28117544Value1) height: (block28117544Value5).
    block28117544Value6 := ASDBlockDiagramEditorOptions.
    block28117544Value7 := (block28117544Value6) instance.
    block28117544Value8 := (block28117544Value7) optionDrawingAreaSize.
    block28117544Value9 := (block28117544Value8) x.
    block28117544Value10 := (block28117544Value0) width: (block28117544Value9).
    block28117544Value10
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBScrolledDrawingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'graphicPane'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'specHorSplit'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [:block28117568Arg1 | 
    | block28117568Value0 block28117568Value1 block28117568Value2 block28117568Value3 block28117568Value4 block28117568Value5 block28117568Value6 block28117568Value7 block28117568Value8 |
    block28117568Value0 := block28117568Arg1.
    block28117568Value1 := block28117568Value0.
    (block28117568Value1) thickness: (3).
    block28117568Value2 := block28117568Value0.
    block28117568Value3 := XmHORIZONTAL.
    (block28117568Value2) orientation: (block28117568Value3).
    block28117568Value4 := block28117568Value0.
    (block28117568Value4) minPosition: (100).
    block28117568Value5 := block28117568Value0.
    (block28117568Value5) minRightOrBottomOffset: (100).
    block28117568Value6 := block28117568Value0.
    (block28117568Value6) adjustRelPosAtResize: (true).
    block28117568Value7 := XmTABGROUP.
    block28117568Value8 := (block28117568Value0) navigationType: (block28117568Value7).
    block28117568Value8
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBSplitBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) windowBackground.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 'specHorSplit'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := [:block2811758cArg1 | 
    | block2811758cValue0 block2811758cValue1 block2811758cValue2 block2811758cValue3 block2811758cValue4 block2811758cValue5 block2811758cValue6 |
    block2811758cValue0 := block2811758cArg1.
    block2811758cValue1 := block2811758cValue0.
    block2811758cValue2 := XmATTACHFORM.
    (block2811758cValue1) leftAttachment: (block2811758cValue2).
    block2811758cValue3 := block2811758cValue0.
    (block2811758cValue3) leftOffset: (2).
    block2811758cValue4 := block2811758cValue0.
    block2811758cValue5 := XmATTACHFORM.
    (block2811758cValue4) rightAttachment: (block2811758cValue5).
    block2811758cValue6 := (block2811758cValue0) rightOffset: (2).
    block2811758cValue6
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := PointerMotionMask.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := 'motion:clientData:callData:'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := 'subwidgetFocus:clientData:callData:'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack5 := (recoveredStack5) lastFocusWidget.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := 'subwidgetLoosingFocus:clientData:callData:'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := (recoveredStack4) lastFocusWidget.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 recoveredBlock247Value4 recoveredBlock247Value5 recoveredBlock247Value6 recoveredBlock247Value7 recoveredBlock247Value8 recoveredBlock247Value9 recoveredBlock247Value10 recoveredBlock247Value11 recoveredBlock247Value12 |
    recoveredBlock247Value0 := recoveredBlock247Arg1.
    recoveredBlock247Value1 := recoveredBlock247Value0.
    recoveredBlock247Value2 := XmATTACHFORM.
    (recoveredBlock247Value1) leftAttachment: (recoveredBlock247Value2).
    recoveredBlock247Value3 := recoveredBlock247Value0.
    recoveredBlock247Value4 := XmATTACHFORM.
    (recoveredBlock247Value3) rightAttachment: (recoveredBlock247Value4).
    recoveredBlock247Value5 := recoveredBlock247Value0.
    recoveredBlock247Value6 := XmATTACHWIDGET.
    (recoveredBlock247Value5) bottomAttachment: (recoveredBlock247Value6).
    recoveredBlock247Value7 := recoveredBlock247Value0.
    recoveredBlock247Value8 := recoveredLocal2.
    (recoveredBlock247Value7) bottomWidget: (recoveredBlock247Value8).
    recoveredBlock247Value9 := recoveredBlock247Value0.
    (recoveredBlock247Value9) bottomOffset: (0).
    recoveredBlock247Value10 := recoveredBlock247Value0.
    recoveredBlock247Value11 := XmATTACHFORM.
    (recoveredBlock247Value10) topAttachment: (recoveredBlock247Value11).
    recoveredBlock247Value12 := (recoveredBlock247Value0) topOffset: (0).
    recoveredBlock247Value12
].
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := 75.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) setRelPosition: (recoveredStack1).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cd050; bytecode file offset 0xec99c8"
!SGGraphicSpecificationView methodsFor: 'recovered'!
createNavigationTree: recoveredArg1 forTreePane: recoveredArg2 inForm: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('GeneralNavigation') asString.
    recoveredValue2 := [
    | recoveredBlock12Value0 |
    recoveredBlock12Value0 := (self) elementsForNavigation.
    recoveredBlock12Value0
].
    recoveredValue3 := (recoveredValue0) createTreePage: ('Navigation') icon: (recoveredValue1) elements: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) at: ('navigationTree') put: (recoveredValue5).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) buttonIDs.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) at: (3200) put: ('NavigationFilter').
    recoveredValue9 := recoveredValue7.
    (recoveredValue9) at: (3201) put: ('NavigationExpandAll').
    (recoveredValue7) at: (3202) put: ('NavigationCollapseAll').
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := XmNvisualInfoCallback.
    (recoveredValue11) addCallback: (recoveredValue12) receiver: (self) selector: ('navigationVisualInfoCallback:clientData:callData:') clientData: (nil).
    recoveredValue13 := recoveredValue10.
    recoveredValue14 := XmNchildrenCallback.
    (recoveredValue13) addCallback: (recoveredValue14) receiver: (self) selector: ('navigationChildrenCallback:clientData:callData:') clientData: (nil).
    recoveredValue15 := recoveredValue10.
    recoveredValue16 := XmNdefaultActionCallback.
    (recoveredValue15) addCallback: (recoveredValue16) receiver: (self) selector: ('navigationDefaultActionCallback:clientData:callData:') clientData: (nil).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := XmNextendedSelectionCallback.
    (recoveredValue17) addCallback: (recoveredValue18) receiver: (self) selector: ('navigationExtendedSelectionCallback:clientData:callData:') clientData: (nil).
    recoveredValue19 := recoveredValue10.
    recoveredValue20 := XmNfocusCallback.
    recoveredValue21 := (self) lastFocusWidget.
    (recoveredValue19) addCallback: (recoveredValue20) receiver: (self) selector: ('subwidgetFocus:clientData:callData:') clientData: (recoveredValue21).
    recoveredValue22 := XmNlosingFocusCallback.
    recoveredValue23 := (self) lastFocusWidget.
    (recoveredValue10) addCallback: (recoveredValue22) receiver: (self) selector: ('subwidgetLoosingFocus:clientData:callData:') clientData: (recoveredValue23).
    recoveredValue24 := recoveredArg2.
    recoveredValue25 := (recoveredValue24) toolBarFor: ('Navigation').
    recoveredLocal1 := recoveredValue25.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := ('NavigationFilter') asString.
    recoveredValue28 := [:recoveredBlock142Arg1 | 
    | recoveredBlock142Value0 recoveredBlock142Value1 recoveredBlock142Value2 recoveredBlock142Value3 recoveredBlock142Value4 recoveredBlock142Value5 recoveredBlock142Value6 recoveredBlock142Value7 recoveredBlock142Value8 recoveredBlock142Value9 |
    recoveredBlock142Value0 := recoveredBlock142Arg1.
    recoveredBlock142Value1 := recoveredBlock142Value0.
    recoveredBlock142Value2 := ('GeneralFilter') asString.
    recoveredBlock142Value3 := (self) returnIcon16WithName: (recoveredBlock142Value2).
    (recoveredBlock142Value1) image: (recoveredBlock142Value3).
    recoveredBlock142Value4 := recoveredBlock142Value0.
    recoveredBlock142Value5 := [
    (self) graphicObjectsFilter.
    true
].
    (recoveredBlock142Value4) userData: (recoveredBlock142Value5).
    recoveredBlock142Value6 := recoveredBlock142Value0.
    (recoveredBlock142Value6) toolTipText: ('Change filter settings').
    recoveredBlock142Value7 := recoveredArg2.
    recoveredBlock142Value8 := recoveredArg2.
    recoveredBlock142Value9 := (recoveredBlock142Value0) addCallback: ('pressedCallback') receiver: (recoveredBlock142Value7) selector: ('toolbarSelection:clientData:callData:') clientData: (recoveredBlock142Value8).
    recoveredBlock142Value9
].
    recoveredValue29 := (recoveredValue26) createToolButton: (recoveredValue27) argBlock: (recoveredValue28).
    (recoveredValue29) manageChild.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := ('NavigationExpandAll') asString.
    recoveredValue32 := [:recoveredBlock201Arg1 | 
    | recoveredBlock201Value0 recoveredBlock201Value1 recoveredBlock201Value2 recoveredBlock201Value3 recoveredBlock201Value4 recoveredBlock201Value5 recoveredBlock201Value6 recoveredBlock201Value7 recoveredBlock201Value8 |
    recoveredBlock201Value0 := recoveredBlock201Arg1.
    recoveredBlock201Value1 := recoveredBlock201Value0.
    recoveredBlock201Value2 := (self) returnIconWithName: ('GeneralExpandAll').
    (recoveredBlock201Value1) image: (recoveredBlock201Value2).
    recoveredBlock201Value3 := recoveredBlock201Value0.
    recoveredBlock201Value4 := [
    | recoveredBlock201Block218Value0 |
    recoveredBlock201Block218Value0 := (self) navigationTree.
    (recoveredBlock201Block218Value0) expandAll.
    false
].
    (recoveredBlock201Value3) userData: (recoveredBlock201Value4).
    recoveredBlock201Value5 := recoveredBlock201Value0.
    (recoveredBlock201Value5) toolTipText: ('Expand All').
    recoveredBlock201Value6 := recoveredArg2.
    recoveredBlock201Value7 := recoveredArg2.
    recoveredBlock201Value8 := (recoveredBlock201Value0) addCallback: ('pressedCallback') receiver: (recoveredBlock201Value6) selector: ('toolbarSelection:clientData:callData:') clientData: (recoveredBlock201Value7).
    recoveredBlock201Value8
].
    recoveredValue33 := (recoveredValue30) createToolButton: (recoveredValue31) argBlock: (recoveredValue32).
    (recoveredValue33) manageChild.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := ('NavigationCollapseAll') asString.
    recoveredValue36 := [:recoveredBlock261Arg1 | 
    | recoveredBlock261Value0 recoveredBlock261Value1 recoveredBlock261Value2 recoveredBlock261Value3 recoveredBlock261Value4 recoveredBlock261Value5 recoveredBlock261Value6 recoveredBlock261Value7 recoveredBlock261Value8 |
    recoveredBlock261Value0 := recoveredBlock261Arg1.
    recoveredBlock261Value1 := recoveredBlock261Value0.
    recoveredBlock261Value2 := (self) returnIconWithName: ('GeneralCollapseAll').
    (recoveredBlock261Value1) image: (recoveredBlock261Value2).
    recoveredBlock261Value3 := recoveredBlock261Value0.
    recoveredBlock261Value4 := [
    | recoveredBlock261Block278Value0 |
    recoveredBlock261Block278Value0 := (self) navigationTree.
    (recoveredBlock261Block278Value0) collapseAll.
    false
].
    (recoveredBlock261Value3) userData: (recoveredBlock261Value4).
    recoveredBlock261Value5 := recoveredBlock261Value0.
    (recoveredBlock261Value5) toolTipText: ('Collapse All').
    recoveredBlock261Value6 := recoveredArg2.
    recoveredBlock261Value7 := recoveredArg2.
    recoveredBlock261Value8 := (recoveredBlock261Value0) addCallback: ('pressedCallback') receiver: (recoveredBlock261Value6) selector: ('toolbarSelection:clientData:callData:') clientData: (recoveredBlock261Value7).
    recoveredBlock261Value8
].
    recoveredValue37 := (recoveredValue34) createToolButton: (recoveredValue35) argBlock: (recoveredValue36).
    (recoveredValue37) manageChild.
    recoveredValue38 := recoveredArg2.
    recoveredValue39 := recoveredLocal2.
    recoveredValue40 := recoveredLocal1.
    (recoveredValue38) createSearchGroupFor: (recoveredValue39) in: (recoveredValue40).
    recoveredValue41 := (self) class.
    recoveredValue42 := (recoveredValue41) buttonIDs.
    (recoveredValue42) at: (3203) put: ('TreePaneSearch').
    recoveredValue43 := recoveredLocal1.
    (recoveredValue43) updateFonts.
    recoveredValue44 := recoveredArg2.
    ^recoveredValue44
! !

"ASDBase.ic method 0x205e191c; bytecode file offset 0xede270"
!SGGraphicSpecificationView methodsFor: 'recovered'!
updateTreePane: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updateToolbarSensitive.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationTree.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) navigationTree.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack3 := self.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) navigationTree.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack4 := recoveredBlock35Arg1.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) indexOfItem: (recoveredBlock35Stack4).
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isExpandedPos: (recoveredBlock35Stack3).
            recoveredBlock35PC := 52.
        ].
        recoveredBlock35Step = 52 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 78] ifFalse: [recoveredBlock35PC := 56].
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) navigationTree.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35Stack3 := self.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) navigationTree.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            recoveredBlock35Stack4 := self.
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) class.
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) graphicBlockString.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) indexOfItem: (recoveredBlock35Stack4).
            recoveredBlock35PC := 67.
        ].
        recoveredBlock35Step = 67 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isExpandedPos: (recoveredBlock35Stack3).
            recoveredBlock35PC := 69.
        ].
        recoveredBlock35Step = 69 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 72] ifFalse: [recoveredBlock35PC := 276].
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 73.
        ].
        recoveredBlock35Step = 73 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isTopHierarchyGO.
            recoveredBlock35PC := 75.
        ].
        recoveredBlock35Step = 75 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 78] ifFalse: [recoveredBlock35PC := 276].
        ].
        recoveredBlock35Step = 78 ifTrue: [
            recoveredBlock35PC := 79.
        ].
        recoveredBlock35Step = 79 ifTrue: [
            recoveredBlock35Stack1 := OrderedCollection.
            recoveredBlock35PC := 81.
        ].
        recoveredBlock35Step = 81 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) new.
            recoveredBlock35PC := 83.
        ].
        recoveredBlock35Step = 83 ifTrue: [
            recoveredLocal1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 86.
        ].
        recoveredBlock35Step = 86 ifTrue: [
            recoveredBlock35Stack1 := self.
            recoveredBlock35PC := 87.
        ].
        recoveredBlock35Step = 87 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) navigationTree.
            recoveredBlock35PC := 88.
        ].
        recoveredBlock35Step = 88 ifTrue: [
            recoveredBlock35Stack2 := [:recoveredBlock35Block88Arg1 | 
    | recoveredBlock35Block88Stack0 recoveredBlock35Block88Stack1 recoveredBlock35Block88Stack2 recoveredBlock35Block88Stack3 recoveredBlock35Block88Stack4 recoveredBlock35Block88PC recoveredBlock35Block88Step recoveredBlock35Block88Done recoveredBlock35Block88Result |
    recoveredBlock35Block88Stack0 := self.
    recoveredBlock35Block88PC := 94.
    recoveredBlock35Block88Done := false.
    [recoveredBlock35Block88Done not] whileTrue: [
        recoveredBlock35Block88Step := recoveredBlock35Block88PC.
        recoveredBlock35Block88Step = 94 ifTrue: [
            recoveredBlock35Block88Stack1 := nil.
            recoveredBlock35Block88PC := 95.
        ].
        recoveredBlock35Block88Step = 95 ifTrue: [
            recoveredBlock35Block88Stack2 := self.
            recoveredBlock35Block88PC := 96.
        ].
        recoveredBlock35Block88Step = 96 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) navigationTree.
            recoveredBlock35Block88PC := 97.
        ].
        recoveredBlock35Block88Step = 97 ifTrue: [
            recoveredBlock35Block88Stack3 := recoveredBlock35Block88Arg1.
            recoveredBlock35Block88PC := 98.
        ].
        recoveredBlock35Block88Step = 98 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) parentOfItem: (recoveredBlock35Block88Stack3).
            recoveredBlock35Block88PC := 100.
        ].
        recoveredBlock35Block88Step = 100 ifTrue: [
            recoveredBlock35Block88Stack3 := recoveredLocal3.
            recoveredBlock35Block88PC := 103.
        ].
        recoveredBlock35Block88Step = 103 ifTrue: [
            recoveredBlock35Block88Stack3 := (recoveredBlock35Block88Stack3) actualHierarchy.
            recoveredBlock35Block88PC := 105.
        ].
        recoveredBlock35Block88Step = 105 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) = (recoveredBlock35Block88Stack3).
            recoveredBlock35Block88PC := 106.
        ].
        recoveredBlock35Block88Step = 106 ifTrue: [
            (recoveredBlock35Block88Stack2) ifTrue: [recoveredBlock35Block88PC := 134] ifFalse: [recoveredBlock35Block88PC := 110].
        ].
        recoveredBlock35Block88Step = 110 ifTrue: [
            recoveredBlock35Block88Stack2 := self.
            recoveredBlock35Block88PC := 111.
        ].
        recoveredBlock35Block88Step = 111 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) navigationTree.
            recoveredBlock35Block88PC := 112.
        ].
        recoveredBlock35Block88Step = 112 ifTrue: [
            recoveredBlock35Block88Stack3 := recoveredBlock35Block88Arg1.
            recoveredBlock35Block88PC := 113.
        ].
        recoveredBlock35Block88Step = 113 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) parentOfItem: (recoveredBlock35Block88Stack3).
            recoveredBlock35Block88PC := 115.
        ].
        recoveredBlock35Block88Step = 115 ifTrue: [
            recoveredBlock35Block88Stack3 := self.
            recoveredBlock35Block88PC := 116.
        ].
        recoveredBlock35Block88Step = 116 ifTrue: [
            recoveredBlock35Block88Stack3 := (recoveredBlock35Block88Stack3) class.
            recoveredBlock35Block88PC := 118.
        ].
        recoveredBlock35Block88Step = 118 ifTrue: [
            recoveredBlock35Block88Stack3 := (recoveredBlock35Block88Stack3) graphicBlockString.
            recoveredBlock35Block88PC := 120.
        ].
        recoveredBlock35Block88Step = 120 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) = (recoveredBlock35Block88Stack3).
            recoveredBlock35Block88PC := 121.
        ].
        recoveredBlock35Block88Step = 121 ifTrue: [
            (recoveredBlock35Block88Stack2) ifTrue: [recoveredBlock35Block88PC := 124] ifFalse: [recoveredBlock35Block88PC := 141].
        ].
        recoveredBlock35Block88Step = 124 ifTrue: [
            recoveredBlock35Block88Stack2 := recoveredLocal3.
            recoveredBlock35Block88PC := 127.
        ].
        recoveredBlock35Block88Step = 127 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) actualHierarchy.
            recoveredBlock35Block88PC := 129.
        ].
        recoveredBlock35Block88Step = 129 ifTrue: [
            recoveredBlock35Block88Stack2 := (recoveredBlock35Block88Stack2) isTopHierarchyGO.
            recoveredBlock35Block88PC := 131.
        ].
        recoveredBlock35Block88Step = 131 ifTrue: [
            (recoveredBlock35Block88Stack2) ifTrue: [recoveredBlock35Block88PC := 134] ifFalse: [recoveredBlock35Block88PC := 141].
        ].
        recoveredBlock35Block88Step = 134 ifTrue: [
            recoveredBlock35Block88PC := 135.
        ].
        recoveredBlock35Block88Step = 135 ifTrue: [
            recoveredBlock35Block88Stack1 := recoveredLocal1.
            recoveredBlock35Block88PC := 138.
        ].
        recoveredBlock35Block88Step = 138 ifTrue: [
            recoveredBlock35Block88Stack2 := recoveredBlock35Block88Arg1.
            recoveredBlock35Block88PC := 139.
        ].
        recoveredBlock35Block88Step = 139 ifTrue: [
            recoveredBlock35Block88Stack1 := (recoveredBlock35Block88Stack1) add: (recoveredBlock35Block88Stack2).
            recoveredBlock35Block88PC := 141.
        ].
        recoveredBlock35Block88Step = 141 ifTrue: [
            recoveredBlock35Block88Result := recoveredBlock35Block88Stack1.
            recoveredBlock35Block88Done := true.
        ].
    ].
    recoveredBlock35Block88Result
].
            recoveredBlock35PC := 142.
        ].
        recoveredBlock35Step = 142 ifTrue: [
            (recoveredBlock35Stack1) itemsDo: (recoveredBlock35Stack2).
            recoveredBlock35PC := 144.
        ].
        recoveredBlock35Step = 144 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal3.
            recoveredBlock35PC := 147.
        ].
        recoveredBlock35Step = 147 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) graphicObjects.
            recoveredBlock35PC := 149.
        ].
        recoveredBlock35Step = 149 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) children.
            recoveredBlock35PC := 151.
        ].
        recoveredBlock35Step = 151 ifTrue: [
            recoveredBlock35Stack2 := [:block2811a6e8Arg1 | 
    | block2811a6e8Stack0 block2811a6e8Stack1 block2811a6e8Stack2 block2811a6e8PC block2811a6e8Step block2811a6e8Done block2811a6e8Result |
    block2811a6e8Stack0 := self.
    block2811a6e8PC := 4.
    block2811a6e8Done := false.
    [block2811a6e8Done not] whileTrue: [
        block2811a6e8Step := block2811a6e8PC.
        block2811a6e8Step = 4 ifTrue: [
            block2811a6e8Stack1 := block2811a6e8Arg1.
            block2811a6e8PC := 5.
        ].
        block2811a6e8Step = 5 ifTrue: [
            block2811a6e8Stack1 := (block2811a6e8Stack1) isSGHierarchyWrapperGO.
            block2811a6e8PC := 7.
        ].
        block2811a6e8Step = 7 ifTrue: [
            (block2811a6e8Stack1) ifTrue: [block2811a6e8PC := 10] ifFalse: [block2811a6e8PC := 14].
        ].
        block2811a6e8Step = 10 ifTrue: [
            block2811a6e8Stack1 := block2811a6e8Arg1.
            block2811a6e8PC := 11.
        ].
        block2811a6e8Step = 11 ifTrue: [
            block2811a6e8PC := 17.
        ].
        block2811a6e8Step = 14 ifTrue: [
            block2811a6e8Stack1 := block2811a6e8Arg1.
            block2811a6e8PC := 15.
        ].
        block2811a6e8Step = 15 ifTrue: [
            block2811a6e8Stack1 := (block2811a6e8Stack1) graphObject.
            block2811a6e8PC := 17.
        ].
        block2811a6e8Step = 17 ifTrue: [
            block2811a6e8Result := block2811a6e8Stack1.
            block2811a6e8Done := true.
        ].
    ].
    block2811a6e8Result
].
            recoveredBlock35PC := 153.
        ].
        recoveredBlock35Step = 153 ifTrue: [
            recoveredBlock35PC := 170.
        ].
        recoveredBlock35Step = 170 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) collect: (recoveredBlock35Stack2).
            recoveredBlock35PC := 172.
        ].
        recoveredBlock35Step = 172 ifTrue: [
            recoveredLocal2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 175.
        ].
        recoveredBlock35Step = 175 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal2.
            recoveredBlock35PC := 178.
        ].
        recoveredBlock35Step = 178 ifTrue: [
            recoveredBlock35Stack2 := [:recoveredBlock35Block178Arg1 | 
    | recoveredBlock35Block178Stack0 recoveredBlock35Block178Stack1 recoveredBlock35Block178Stack2 recoveredBlock35Block178Stack3 recoveredBlock35Block178Stack4 recoveredBlock35Block178Stack5 recoveredBlock35Block178Stack6 recoveredBlock35Block178PC recoveredBlock35Block178Step recoveredBlock35Block178Done recoveredBlock35Block178Result |
    recoveredBlock35Block178Stack0 := self.
    recoveredBlock35Block178PC := 184.
    recoveredBlock35Block178Done := false.
    [recoveredBlock35Block178Done not] whileTrue: [
        recoveredBlock35Block178Step := recoveredBlock35Block178PC.
        recoveredBlock35Block178Step = 184 ifTrue: [
            recoveredBlock35Block178Stack1 := nil.
            recoveredBlock35Block178PC := 185.
        ].
        recoveredBlock35Block178Step = 185 ifTrue: [
            recoveredBlock35Block178Stack2 := recoveredLocal1.
            recoveredBlock35Block178PC := 188.
        ].
        recoveredBlock35Block178Step = 188 ifTrue: [
            recoveredBlock35Block178Stack3 := Array.
            recoveredBlock35Block178PC := 190.
        ].
        recoveredBlock35Block178Step = 190 ifTrue: [
            recoveredBlock35Block178Stack4 := recoveredBlock35Block178Arg1.
            recoveredBlock35Block178PC := 191.
        ].
        recoveredBlock35Block178Step = 191 ifTrue: [
            recoveredBlock35Block178Stack5 := recoveredBlock35Block178Arg1.
            recoveredBlock35Block178PC := 192.
        ].
        recoveredBlock35Block178Step = 192 ifTrue: [
            recoveredBlock35Block178Stack5 := (recoveredBlock35Block178Stack5) graphObject.
            recoveredBlock35Block178PC := 194.
        ].
        recoveredBlock35Block178Step = 194 ifTrue: [
            recoveredBlock35Block178Stack3 := (recoveredBlock35Block178Stack3) with: (recoveredBlock35Block178Stack4) with: (recoveredBlock35Block178Stack5).
            recoveredBlock35Block178PC := 196.
        ].
        recoveredBlock35Block178Step = 196 ifTrue: [
            recoveredBlock35Block178Stack2 := (recoveredBlock35Block178Stack2) includesAny: (recoveredBlock35Block178Stack3).
            recoveredBlock35Block178PC := 198.
        ].
        recoveredBlock35Block178Step = 198 ifTrue: [
            (recoveredBlock35Block178Stack2) ifTrue: [recoveredBlock35Block178PC := 233] ifFalse: [recoveredBlock35Block178PC := 202].
        ].
        recoveredBlock35Block178Step = 202 ifTrue: [
            recoveredBlock35Block178Stack2 := recoveredLocal3.
            recoveredBlock35Block178PC := 205.
        ].
        recoveredBlock35Block178Step = 205 ifTrue: [
            recoveredBlock35Block178Stack3 := recoveredBlock35Block178Arg1.
            recoveredBlock35Block178PC := 206.
        ].
        recoveredBlock35Block178Step = 206 ifTrue: [
            recoveredBlock35Block178Stack2 := (recoveredBlock35Block178Stack2) filterGraphicObject: (recoveredBlock35Block178Stack3).
            recoveredBlock35Block178PC := 208.
        ].
        recoveredBlock35Block178Step = 208 ifTrue: [
            (recoveredBlock35Block178Stack2) ifTrue: [recoveredBlock35Block178PC := 212] ifFalse: [recoveredBlock35Block178PC := 224].
        ].
        recoveredBlock35Block178Step = 212 ifTrue: [
            recoveredBlock35Block178Stack2 := recoveredLocal3.
            recoveredBlock35Block178PC := 215.
        ].
        recoveredBlock35Block178Step = 215 ifTrue: [
            recoveredBlock35Block178Stack3 := recoveredBlock35Block178Arg1.
            recoveredBlock35Block178PC := 216.
        ].
        recoveredBlock35Block178Step = 216 ifTrue: [
            recoveredBlock35Block178Stack3 := (recoveredBlock35Block178Stack3) graphObject.
            recoveredBlock35Block178PC := 218.
        ].
        recoveredBlock35Block178Step = 218 ifTrue: [
            recoveredBlock35Block178Stack2 := (recoveredBlock35Block178Stack2) filterGraphicObject: (recoveredBlock35Block178Stack3).
            recoveredBlock35Block178PC := 220.
        ].
        recoveredBlock35Block178Step = 220 ifTrue: [
            (recoveredBlock35Block178Stack2) ifTrue: [recoveredBlock35Block178PC := 233] ifFalse: [recoveredBlock35Block178PC := 224].
        ].
        recoveredBlock35Block178Step = 224 ifTrue: [
            recoveredBlock35Block178PC := 225.
        ].
        recoveredBlock35Block178Step = 225 ifTrue: [
            recoveredBlock35Block178Stack1 := self.
            recoveredBlock35Block178PC := 226.
        ].
        recoveredBlock35Block178Step = 226 ifTrue: [
            recoveredBlock35Block178Stack1 := (recoveredBlock35Block178Stack1) treePane.
            recoveredBlock35Block178PC := 228.
        ].
        recoveredBlock35Block178Step = 228 ifTrue: [
            recoveredBlock35Block178Stack2 := self.
            recoveredBlock35Block178PC := 229.
        ].
        recoveredBlock35Block178Step = 229 ifTrue: [
            recoveredBlock35Block178Stack2 := (recoveredBlock35Block178Stack2) navigationTree.
            recoveredBlock35Block178PC := 230.
        ].
        recoveredBlock35Block178Step = 230 ifTrue: [
            recoveredBlock35Block178Stack1 := (recoveredBlock35Block178Stack1) updateTree: (recoveredBlock35Block178Stack2).
            recoveredBlock35Block178PC := 232.
        ].
        recoveredBlock35Block178Step = 232 ifTrue: [
            ^recoveredBlock35Block178Stack1
        ].
        recoveredBlock35Block178Step = 233 ifTrue: [
            recoveredBlock35Block178Result := recoveredBlock35Block178Stack1.
            recoveredBlock35Block178Done := true.
        ].
    ].
    recoveredBlock35Block178Result
].
            recoveredBlock35PC := 234.
        ].
        recoveredBlock35Step = 234 ifTrue: [
            (recoveredBlock35Stack1) do: (recoveredBlock35Stack2).
            recoveredBlock35PC := 236.
        ].
        recoveredBlock35Step = 236 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal1.
            recoveredBlock35PC := 239.
        ].
        recoveredBlock35Step = 239 ifTrue: [
            recoveredBlock35Stack2 := [:recoveredBlock35Block239Arg1 | 
    | recoveredBlock35Block239Stack0 recoveredBlock35Block239Stack1 recoveredBlock35Block239Stack2 recoveredBlock35Block239Stack3 recoveredBlock35Block239Stack4 recoveredBlock35Block239Stack5 recoveredBlock35Block239Stack6 recoveredBlock35Block239PC recoveredBlock35Block239Step recoveredBlock35Block239Done recoveredBlock35Block239Result |
    recoveredBlock35Block239Stack0 := self.
    recoveredBlock35Block239PC := 246.
    recoveredBlock35Block239Done := false.
    [recoveredBlock35Block239Done not] whileTrue: [
        recoveredBlock35Block239Step := recoveredBlock35Block239PC.
        recoveredBlock35Block239Step = 246 ifTrue: [
            recoveredBlock35Block239Stack1 := nil.
            recoveredBlock35Block239PC := 247.
        ].
        recoveredBlock35Block239Step = 247 ifTrue: [
            recoveredBlock35Block239Stack2 := recoveredLocal2.
            recoveredBlock35Block239PC := 250.
        ].
        recoveredBlock35Block239Step = 250 ifTrue: [
            recoveredBlock35Block239Stack3 := Array.
            recoveredBlock35Block239PC := 252.
        ].
        recoveredBlock35Block239Step = 252 ifTrue: [
            recoveredBlock35Block239Stack4 := recoveredBlock35Block239Arg1.
            recoveredBlock35Block239PC := 253.
        ].
        recoveredBlock35Block239Step = 253 ifTrue: [
            recoveredBlock35Block239Stack5 := recoveredBlock35Block239Arg1.
            recoveredBlock35Block239PC := 254.
        ].
        recoveredBlock35Block239Step = 254 ifTrue: [
            recoveredBlock35Block239Stack5 := (recoveredBlock35Block239Stack5) graphObject.
            recoveredBlock35Block239PC := 256.
        ].
        recoveredBlock35Block239Step = 256 ifTrue: [
            recoveredBlock35Block239Stack3 := (recoveredBlock35Block239Stack3) with: (recoveredBlock35Block239Stack4) with: (recoveredBlock35Block239Stack5).
            recoveredBlock35Block239PC := 258.
        ].
        recoveredBlock35Block239Step = 258 ifTrue: [
            recoveredBlock35Block239Stack2 := (recoveredBlock35Block239Stack2) includesAny: (recoveredBlock35Block239Stack3).
            recoveredBlock35Block239PC := 260.
        ].
        recoveredBlock35Block239Step = 260 ifTrue: [
            (recoveredBlock35Block239Stack2) ifTrue: [recoveredBlock35Block239PC := 273] ifFalse: [recoveredBlock35Block239PC := 264].
        ].
        recoveredBlock35Block239Step = 264 ifTrue: [
            recoveredBlock35Block239PC := 265.
        ].
        recoveredBlock35Block239Step = 265 ifTrue: [
            recoveredBlock35Block239Stack1 := self.
            recoveredBlock35Block239PC := 266.
        ].
        recoveredBlock35Block239Step = 266 ifTrue: [
            recoveredBlock35Block239Stack1 := (recoveredBlock35Block239Stack1) treePane.
            recoveredBlock35Block239PC := 268.
        ].
        recoveredBlock35Block239Step = 268 ifTrue: [
            recoveredBlock35Block239Stack2 := self.
            recoveredBlock35Block239PC := 269.
        ].
        recoveredBlock35Block239Step = 269 ifTrue: [
            recoveredBlock35Block239Stack2 := (recoveredBlock35Block239Stack2) navigationTree.
            recoveredBlock35Block239PC := 270.
        ].
        recoveredBlock35Block239Step = 270 ifTrue: [
            recoveredBlock35Block239Stack1 := (recoveredBlock35Block239Stack1) updateTree: (recoveredBlock35Block239Stack2).
            recoveredBlock35Block239PC := 272.
        ].
        recoveredBlock35Block239Step = 272 ifTrue: [
            ^recoveredBlock35Block239Stack1
        ].
        recoveredBlock35Block239Step = 273 ifTrue: [
            recoveredBlock35Block239Result := recoveredBlock35Block239Stack1.
            recoveredBlock35Block239Done := true.
        ].
    ].
    recoveredBlock35Block239Result
].
            recoveredBlock35PC := 274.
        ].
        recoveredBlock35Step = 274 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) do: (recoveredBlock35Stack2).
            recoveredBlock35PC := 276.
        ].
        recoveredBlock35Step = 276 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationTree.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleItemNodes.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := [:block2811a70cArg1 | 
    | block2811a70cValue0 block2811a70cValue1 block2811a70cValue2 |
    block2811a70cValue0 := block2811a70cArg1.
    block2811a70cValue1 := (block2811a70cValue0) item.
    block2811a70cValue2 := (block2811a70cValue1) isMethodDeclaration.
    block2811a70cValue2
].
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := [:recoveredBlock296Arg1 | 
    | recoveredBlock296Value0 recoveredBlock296Value1 recoveredBlock296Value2 recoveredBlock296Value3 |
    recoveredBlock296Value0 := recoveredBlock296Arg1.
    recoveredBlock296Value1 := (recoveredBlock296Value0) subhierarchy.
    recoveredBlock296Value2 := [:recoveredBlock296Block307Arg1 | 
    | recoveredBlock296Block307Stack0 recoveredBlock296Block307Stack1 recoveredBlock296Block307Stack2 recoveredBlock296Block307Stack3 recoveredBlock296Block307PC recoveredBlock296Block307Step recoveredBlock296Block307Done recoveredBlock296Block307Result |
    recoveredBlock296Block307Stack0 := self.
    recoveredBlock296Block307PC := 314.
    recoveredBlock296Block307Done := false.
    [recoveredBlock296Block307Done not] whileTrue: [
        recoveredBlock296Block307Step := recoveredBlock296Block307PC.
        recoveredBlock296Block307Step = 314 ifTrue: [
            recoveredBlock296Block307Stack1 := recoveredBlock296Block307Arg1.
            recoveredBlock296Block307PC := 315.
        ].
        recoveredBlock296Block307Step = 315 ifTrue: [
            recoveredBlock296Block307Stack1 := (recoveredBlock296Block307Stack1) items.
            recoveredBlock296Block307PC := 317.
        ].
        recoveredBlock296Block307Step = 317 ifTrue: [
            recoveredBlock296Block307Stack2 := [:block2811a730Arg1 | 
    | block2811a730Value0 block2811a730Value1 |
    block2811a730Value0 := block2811a730Arg1.
    block2811a730Value1 := (block2811a730Value0) isCallGO.
    block2811a730Value1
].
            recoveredBlock296Block307PC := 319.
        ].
        recoveredBlock296Block307Step = 319 ifTrue: [
            recoveredBlock296Block307PC := 326.
        ].
        recoveredBlock296Block307Step = 326 ifTrue: [
            recoveredBlock296Block307Stack1 := (recoveredBlock296Block307Stack1) select: (recoveredBlock296Block307Stack2).
            recoveredBlock296Block307PC := 328.
        ].
        recoveredBlock296Block307Step = 328 ifTrue: [
            recoveredBlock296Block307Stack2 := [:recoveredBlock296Block307Block328Arg1 | 
    | recoveredBlock296Block307Block328Stack0 recoveredBlock296Block307Block328Stack1 recoveredBlock296Block307Block328Stack2 recoveredBlock296Block307Block328Stack3 recoveredBlock296Block307Block328Stack4 recoveredBlock296Block307Block328PC recoveredBlock296Block307Block328Step recoveredBlock296Block307Block328Done recoveredBlock296Block307Block328Result |
    recoveredBlock296Block307Block328Stack0 := self.
    recoveredBlock296Block307Block328PC := 334.
    recoveredBlock296Block307Block328Done := false.
    [recoveredBlock296Block307Block328Done not] whileTrue: [
        recoveredBlock296Block307Block328Step := recoveredBlock296Block307Block328PC.
        recoveredBlock296Block307Block328Step = 334 ifTrue: [
            recoveredBlock296Block307Block328Stack1 := nil.
            recoveredBlock296Block307Block328PC := 335.
        ].
        recoveredBlock296Block307Block328Step = 335 ifTrue: [
            recoveredBlock296Block307Block328Stack2 := recoveredBlock296Block307Block328Arg1.
            recoveredBlock296Block307Block328PC := 336.
        ].
        recoveredBlock296Block307Block328Step = 336 ifTrue: [
            recoveredBlock296Block307Block328Stack2 := (recoveredBlock296Block307Block328Stack2) editedMethod.
            recoveredBlock296Block307Block328PC := 338.
        ].
        recoveredBlock296Block307Block328Step = 338 ifTrue: [
            recoveredBlock296Block307Block328Stack3 := recoveredBlock296Arg1.
            recoveredBlock296Block307Block328PC := 341.
        ].
        recoveredBlock296Block307Block328Step = 341 ifTrue: [
            recoveredBlock296Block307Block328Stack3 := (recoveredBlock296Block307Block328Stack3) item.
            recoveredBlock296Block307Block328PC := 343.
        ].
        recoveredBlock296Block307Block328Step = 343 ifTrue: [
            recoveredBlock296Block307Block328Stack2 := (recoveredBlock296Block307Block328Stack2) = (recoveredBlock296Block307Block328Stack3).
            recoveredBlock296Block307Block328PC := 344.
        ].
        recoveredBlock296Block307Block328Step = 344 ifTrue: [
            (recoveredBlock296Block307Block328Stack2) ifTrue: [recoveredBlock296Block307Block328PC := 357] ifFalse: [recoveredBlock296Block307Block328PC := 348].
        ].
        recoveredBlock296Block307Block328Step = 348 ifTrue: [
            recoveredBlock296Block307Block328PC := 349.
        ].
        recoveredBlock296Block307Block328Step = 349 ifTrue: [
            recoveredBlock296Block307Block328Stack1 := self.
            recoveredBlock296Block307Block328PC := 350.
        ].
        recoveredBlock296Block307Block328Step = 350 ifTrue: [
            recoveredBlock296Block307Block328Stack1 := (recoveredBlock296Block307Block328Stack1) treePane.
            recoveredBlock296Block307Block328PC := 352.
        ].
        recoveredBlock296Block307Block328Step = 352 ifTrue: [
            recoveredBlock296Block307Block328Stack2 := self.
            recoveredBlock296Block307Block328PC := 353.
        ].
        recoveredBlock296Block307Block328Step = 353 ifTrue: [
            recoveredBlock296Block307Block328Stack2 := (recoveredBlock296Block307Block328Stack2) navigationTree.
            recoveredBlock296Block307Block328PC := 354.
        ].
        recoveredBlock296Block307Block328Step = 354 ifTrue: [
            recoveredBlock296Block307Block328Stack1 := (recoveredBlock296Block307Block328Stack1) updateTree: (recoveredBlock296Block307Block328Stack2).
            recoveredBlock296Block307Block328PC := 356.
        ].
        recoveredBlock296Block307Block328Step = 356 ifTrue: [
            ^recoveredBlock296Block307Block328Stack1
        ].
        recoveredBlock296Block307Block328Step = 357 ifTrue: [
            recoveredBlock296Block307Block328Result := recoveredBlock296Block307Block328Stack1.
            recoveredBlock296Block307Block328Done := true.
        ].
    ].
    recoveredBlock296Block307Block328Result
].
            recoveredBlock296Block307PC := 358.
        ].
        recoveredBlock296Block307Step = 358 ifTrue: [
            recoveredBlock296Block307Stack1 := (recoveredBlock296Block307Stack1) do: (recoveredBlock296Block307Stack2).
            recoveredBlock296Block307PC := 360.
        ].
        recoveredBlock296Block307Step = 360 ifTrue: [
            recoveredBlock296Block307Result := recoveredBlock296Block307Stack1.
            recoveredBlock296Block307Done := true.
        ].
    ].
    recoveredBlock296Block307Result
].
    recoveredBlock296Value3 := (recoveredBlock296Value1) ifNotNil: (recoveredBlock296Value2).
    recoveredBlock296Value3
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := (recoveredStack0) treePane.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationTree.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := (recoveredStack0) refreshTree: (recoveredStack1).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f0738; bytecode file offset 0xeed084"
!SGGraphicSpecificationView methodsFor: 'recovered'!
navigationVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphicBlockString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'EditorGraphics'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphPaneController.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualChildren.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) seqCallString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'BDECall'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) allMethods.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraphicObject.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGraphicObjectWrapper.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComposingGO.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackStringForNavigation: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpecification.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) getIconForSpecificationOrMethod: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) allMethods.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) getIconForSpecificationOrMethod: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) navigationElementsUnderMethod: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) position: (recoveredStack1) isInSequenceCallSection: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCallGO.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerGO.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStatementBlockGO.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackStringForNavigation.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon16WithName: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchyMGO.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForSequenceCallSection.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasChildren: (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchyMGO.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForGraphicBlockSection.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasChildren: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGControlGO.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 323].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackStringForNavigation.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon16WithName: (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectedToCalls.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasChildren: (recoveredStack1).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackStringForNavigation.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerGO.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon16WithName: (recoveredStack2).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackHasChildren.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasChildren: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallBackStringForNavigation.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon16WithName: (recoveredStack2).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForSequenceCallSection.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack0) hasChildren: (recoveredStack1).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 407.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualChildrenForGraphicBlockSection.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) hasChildren: (recoveredStack1).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060af44; bytecode file offset 0xf07930"
!SGGraphicSpecificationView methodsFor: 'recovered'!
visiblePaletteButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'ElementsVariableLogic'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseSignedUnsignedDiscreteTypes.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'ElementsVariableSignedDiscrete'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'ElementsVariableUnsignedDiscrete'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'ElementsVariableLimitedInteger'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'ElementsVariableWrapAroundInteger'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'ElementsVariableContinuous'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'ElementsVariableEnumeration'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'ElementsParameterLogic'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseSignedUnsignedDiscreteTypes.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'ElementsParameterSignedDiscrete'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'ElementsParameterUnsignedDiscrete'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'ElementsParameterLimitedInteger'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 'ElementsParameterWrapAroundInteger'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'ElementsParameterContinuous'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'ElementsParameterEnumeration'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'ElementsImplementationCast'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'ElementsVariableDT'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'ElementsResource'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'ElementsMessageReceive'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 'ElementsMessageSendReceive'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'ElementsMessageSend'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'ElementsVariableArray'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'ElementsVariableMatrix'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 'ElementsDistribution'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'ElementsSelectionTableType'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'ElementsTableOneD'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'ElementsTableTwoD'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := 'OperationsSelectionArguments'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'OperationsAdd'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := 'OperationsSub'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'OperationsMul'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 'OperationsDiv'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'OperationsMod'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'OperationsAnd'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := 'OperationsOr'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := 'OperationsNot'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 'OperationsGreater'.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'OperationsSmaller'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'OperationsSmallerEqual'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'OperationsGreaterEqual'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := 'OperationsEqual'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := 'OperationsNotEqual'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := 'OperationsVerify'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := 'OperationsAbs'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'OperationsMax'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := 'OperationsMin'.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 'OperationsBetween'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := 'OperationsNeg'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 'OperationsLimit'.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := 'OperationsWrapAround'.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := 'OperationsAssert'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := 'ControlsMux'.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := 'ControlsCase'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := 'ControlsIfThen'.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 'ControlsIfThenElse'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := 'ControlsWhile'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := 'ControlsSwitch'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 'ControlsBreak'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := 'GraphicsLiteralString'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := 'GraphicsLiteralTrue'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := 'GraphicsLiteralFalse'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := 'GraphicsLiteralZero'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := 'GraphicsLiteralOne'.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := 'GraphicsHierarchy'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack2 := 'GraphicsStatementBlock'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := 'GraphicsComment'.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := 'GraphicsSelf'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := (recoveredStack2) paletteElementsName.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := (recoveredStack2) paletteBasicBlocksName.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20635120; bytecode file offset 0xf31b18"
!SGGraphicSpecificationView methodsFor: 'recovered'!
contextMenuGraphicElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
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
            recoveredStack3 := 'menuEditReplace'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'Replace Component...'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := (self) isReplacePossible.
    recoveredBlock10Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuEditOpen'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'Open Component...'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock36Value0 |
    recoveredBlock36Value0 := (self) isOpenPossible.
    recoveredBlock36Value0
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'menuEditElementNotes'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 'Notes...'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock62Value0 |
    recoveredBlock62Value0 := (self) isEditNotesPossible.
    recoveredBlock62Value0
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := 'createSettingsMenu'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := '~Settings'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := (self) outlineTree.
    recoveredBlock91Value1 := (recoveredBlock91Value0) isManaged.
    recoveredBlock91Value1
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := false.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack2 := self.
            recoveredBlock103PC := 112.
        ].
        recoveredBlock103Step = 112 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) selectedElement.
            recoveredBlock103PC := 114.
        ].
        recoveredBlock103Step = 114 ifTrue: [
            (recoveredBlock103Stack2 == nil) ifTrue: [recoveredBlock103PC := 136] ifFalse: [recoveredBlock103PC := 118].
        ].
        recoveredBlock103Step = 118 ifTrue: [
            recoveredBlock103PC := 119.
        ].
        recoveredBlock103Step = 119 ifTrue: [
            recoveredBlock103Stack1 := false.
            recoveredBlock103PC := 120.
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103Stack2 := self.
            recoveredBlock103PC := 121.
        ].
        recoveredBlock103Step = 121 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) uiController.
            recoveredBlock103PC := 123.
        ].
        recoveredBlock103Step = 123 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) item.
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) isSmClass.
            recoveredBlock103PC := 127.
        ].
        recoveredBlock103Step = 127 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 130] ifFalse: [recoveredBlock103PC := 136].
        ].
        recoveredBlock103Step = 130 ifTrue: [
            recoveredBlock103PC := 131.
        ].
        recoveredBlock103Step = 131 ifTrue: [
            recoveredBlock103Stack1 := self.
            recoveredBlock103PC := 132.
        ].
        recoveredBlock103Step = 132 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) selectedElement.
            recoveredBlock103PC := 134.
        ].
        recoveredBlock103Step = 134 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) isSmVariable.
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) addSubMenuWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := 'menuEditElementProperties'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := 'Properties...'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock148Value0 |
    recoveredBlock148Value0 := (self) isEditPropertiesPossible.
    recoveredBlock148Value0
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := 'menuEditElementData'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := 'Data...'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock174Value0 |
    recoveredBlock174Value0 := (self) isEditDataPossible.
    recoveredBlock174Value0
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := 'menuEditElementImplementation'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := 'Implementation...'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock200Value0 |
    recoveredBlock200Value0 := (self) isEditImplementationPossible.
    recoveredBlock200Value0
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := 'menuEditElementDistribution'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := 'Distribution...'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock226Value0 |
    recoveredBlock226Value0 := (self) isEditDistributionPossible.
    recoveredBlock226Value0
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock235Value0 |
    recoveredBlock235Value0 := (self) isEditDistributionPossible.
    recoveredBlock235Value0
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := 'menuExtrasShowPath'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack4 := 'Show ~Path'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock258Value0 |
    recoveredBlock258Value0 := (self) isShowPathPossible.
    recoveredBlock258Value0
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := 'menuExtrasShowOccurences'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := 'Show ~Occurrences'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock284Value0 |
    recoveredBlock284Value0 := (self) isShowOccurencesPossible.
    recoveredBlock284Value0
].
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock293Value0 recoveredBlock293Value1 |
    recoveredBlock293Value0 := (self) class.
    recoveredBlock293Value1 := (recoveredBlock293Value0) isGraphicSpecificationView.
    recoveredBlock293Value1
].
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack9 := ControlMask.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack10 := ShiftMask.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack9 := (recoveredStack9) | (recoveredStack10).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack10 := XKO.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack9 := 'Ctrl+Shift+O'.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack2) addSingleLineDevelopmentImage.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := 'debugInspectElement'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack4 := (recoveredStack4) etasDebugMenuLabelPrefix.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack5 := 'Inspect'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock341Stack0 recoveredBlock341Stack1 recoveredBlock341Stack2 recoveredBlock341Stack3 recoveredBlock341PC recoveredBlock341Step recoveredBlock341Done recoveredBlock341Result |
    recoveredBlock341Stack0 := self.
    recoveredBlock341PC := 348.
    recoveredBlock341Done := false.
    [recoveredBlock341Done not] whileTrue: [
        recoveredBlock341Step := recoveredBlock341PC.
        recoveredBlock341Step = 348 ifTrue: [
            recoveredBlock341Stack1 := false.
            recoveredBlock341PC := 349.
        ].
        recoveredBlock341Step = 349 ifTrue: [
            recoveredBlock341Stack2 := self.
            recoveredBlock341PC := 350.
        ].
        recoveredBlock341Step = 350 ifTrue: [
            recoveredBlock341Stack2 := (recoveredBlock341Stack2) outlineTree.
            recoveredBlock341PC := 352.
        ].
        recoveredBlock341Step = 352 ifTrue: [
            recoveredBlock341Stack2 := (recoveredBlock341Stack2) isManaged.
            recoveredBlock341PC := 354.
        ].
        recoveredBlock341Step = 354 ifTrue: [
            (recoveredBlock341Stack2) ifTrue: [recoveredBlock341PC := 358] ifFalse: [recoveredBlock341PC := 376].
        ].
        recoveredBlock341Step = 358 ifTrue: [
            recoveredBlock341PC := 359.
        ].
        recoveredBlock341Step = 359 ifTrue: [
            recoveredBlock341Stack1 := false.
            recoveredBlock341PC := 360.
        ].
        recoveredBlock341Step = 360 ifTrue: [
            recoveredBlock341Stack2 := self.
            recoveredBlock341PC := 361.
        ].
        recoveredBlock341Step = 361 ifTrue: [
            recoveredBlock341Stack2 := (recoveredBlock341Stack2) dummySelected.
            recoveredBlock341PC := 365.
        ].
        recoveredBlock341Step = 365 ifTrue: [
            (recoveredBlock341Stack2) ifTrue: [recoveredBlock341PC := 376] ifFalse: [recoveredBlock341PC := 368].
        ].
        recoveredBlock341Step = 368 ifTrue: [
            recoveredBlock341PC := 369.
        ].
        recoveredBlock341Step = 369 ifTrue: [
            recoveredBlock341Stack1 := self.
            recoveredBlock341PC := 370.
        ].
        recoveredBlock341Step = 370 ifTrue: [
            recoveredBlock341Stack1 := (recoveredBlock341Stack1) selectedElements.
            recoveredBlock341PC := 375.
        ].
        recoveredBlock341Step = 375 ifTrue: [
            recoveredBlock341Stack1 := (recoveredBlock341Stack1) notNil.
            recoveredBlock341PC := 376.
        ].
        recoveredBlock341Step = 376 ifTrue: [
            recoveredBlock341Result := recoveredBlock341Stack1.
            recoveredBlock341Done := true.
        ].
    ].
    recoveredBlock341Result
].
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack6 := [
    | block28120a78Value0 block28120a78Value1 block28120a78Value2 |
    block28120a78Value0 := System.
    block28120a78Value1 := (block28120a78Value0) isRuntime.
    block28120a78Value2 := (block28120a78Value1) not.
    block28120a78Value2
].
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack3 := 'debugInspectElementDataConfig'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack4 := (recoveredStack4) etasDebugMenuLabelPrefix.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack5 := 'Inspect data'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock417Stack0 recoveredBlock417Stack1 recoveredBlock417Stack2 recoveredBlock417Stack3 recoveredBlock417PC recoveredBlock417Step recoveredBlock417Done recoveredBlock417Result |
    recoveredBlock417Stack0 := self.
    recoveredBlock417PC := 424.
    recoveredBlock417Done := false.
    [recoveredBlock417Done not] whileTrue: [
        recoveredBlock417Step := recoveredBlock417PC.
        recoveredBlock417Step = 424 ifTrue: [
            recoveredBlock417Stack1 := false.
            recoveredBlock417PC := 425.
        ].
        recoveredBlock417Step = 425 ifTrue: [
            recoveredBlock417Stack2 := self.
            recoveredBlock417PC := 426.
        ].
        recoveredBlock417Step = 426 ifTrue: [
            recoveredBlock417Stack2 := (recoveredBlock417Stack2) outlineTree.
            recoveredBlock417PC := 428.
        ].
        recoveredBlock417Step = 428 ifTrue: [
            recoveredBlock417Stack2 := (recoveredBlock417Stack2) isManaged.
            recoveredBlock417PC := 430.
        ].
        recoveredBlock417Step = 430 ifTrue: [
            (recoveredBlock417Stack2) ifTrue: [recoveredBlock417PC := 434] ifFalse: [recoveredBlock417PC := 443].
        ].
        recoveredBlock417Step = 434 ifTrue: [
            recoveredBlock417PC := 435.
        ].
        recoveredBlock417Step = 435 ifTrue: [
            recoveredBlock417Stack1 := self.
            recoveredBlock417PC := 436.
        ].
        recoveredBlock417Step = 436 ifTrue: [
            recoveredBlock417Stack1 := (recoveredBlock417Stack1) uiController.
            recoveredBlock417PC := 438.
        ].
        recoveredBlock417Step = 438 ifTrue: [
            recoveredBlock417Stack1 := (recoveredBlock417Stack1) editDataIsPossible.
            recoveredBlock417PC := 443.
        ].
        recoveredBlock417Step = 443 ifTrue: [
            recoveredBlock417Result := recoveredBlock417Stack1.
            recoveredBlock417Done := true.
        ].
    ].
    recoveredBlock417Result
].
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack6 := [
    | block28120a9cValue0 block28120a9cValue1 block28120a9cValue2 |
    block28120a9cValue0 := System.
    block28120a9cValue1 := (block28120a9cValue0) isRuntime.
    block28120a9cValue2 := (block28120a9cValue1) not.
    block28120a9cValue2
].
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := 'debugInspectElementImplConfig'.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack4 := (recoveredStack4) etasDebugMenuLabelPrefix.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack5 := 'Inspect impl'.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock485Stack0 recoveredBlock485Stack1 recoveredBlock485Stack2 recoveredBlock485Stack3 recoveredBlock485PC recoveredBlock485Step recoveredBlock485Done recoveredBlock485Result |
    recoveredBlock485Stack0 := self.
    recoveredBlock485PC := 492.
    recoveredBlock485Done := false.
    [recoveredBlock485Done not] whileTrue: [
        recoveredBlock485Step := recoveredBlock485PC.
        recoveredBlock485Step = 492 ifTrue: [
            recoveredBlock485Stack1 := false.
            recoveredBlock485PC := 493.
        ].
        recoveredBlock485Step = 493 ifTrue: [
            recoveredBlock485Stack2 := self.
            recoveredBlock485PC := 494.
        ].
        recoveredBlock485Step = 494 ifTrue: [
            recoveredBlock485Stack2 := (recoveredBlock485Stack2) outlineTree.
            recoveredBlock485PC := 496.
        ].
        recoveredBlock485Step = 496 ifTrue: [
            recoveredBlock485Stack2 := (recoveredBlock485Stack2) isManaged.
            recoveredBlock485PC := 498.
        ].
        recoveredBlock485Step = 498 ifTrue: [
            (recoveredBlock485Stack2) ifTrue: [recoveredBlock485PC := 502] ifFalse: [recoveredBlock485PC := 511].
        ].
        recoveredBlock485Step = 502 ifTrue: [
            recoveredBlock485PC := 503.
        ].
        recoveredBlock485Step = 503 ifTrue: [
            recoveredBlock485Stack1 := self.
            recoveredBlock485PC := 504.
        ].
        recoveredBlock485Step = 504 ifTrue: [
            recoveredBlock485Stack1 := (recoveredBlock485Stack1) uiController.
            recoveredBlock485PC := 506.
        ].
        recoveredBlock485Step = 506 ifTrue: [
            recoveredBlock485Stack1 := (recoveredBlock485Stack1) editImplIsPossible.
            recoveredBlock485PC := 511.
        ].
        recoveredBlock485Step = 511 ifTrue: [
            recoveredBlock485Result := recoveredBlock485Stack1.
            recoveredBlock485Done := true.
        ].
    ].
    recoveredBlock485Result
].
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack6 := [
    | block28120ac0Value0 block28120ac0Value1 block28120ac0Value2 |
    block28120ac0Value0 := System.
    block28120ac0Value1 := (block28120ac0Value0) isRuntime.
    block28120ac0Value2 := (block28120ac0Value1) not.
    block28120ac0Value2
].
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := 'debugShowSelectedInSearchResult'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasDebugMenuLabelPrefix.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack4 := 'Show in search result'.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock553Stack0 recoveredBlock553Stack1 recoveredBlock553Stack2 recoveredBlock553Stack3 recoveredBlock553PC recoveredBlock553Step recoveredBlock553Done recoveredBlock553Result |
    recoveredBlock553Stack0 := self.
    recoveredBlock553PC := 560.
    recoveredBlock553Done := false.
    [recoveredBlock553Done not] whileTrue: [
        recoveredBlock553Step := recoveredBlock553PC.
        recoveredBlock553Step = 560 ifTrue: [
            recoveredBlock553Stack1 := false.
            recoveredBlock553PC := 561.
        ].
        recoveredBlock553Step = 561 ifTrue: [
            recoveredBlock553Stack2 := self.
            recoveredBlock553PC := 562.
        ].
        recoveredBlock553Step = 562 ifTrue: [
            recoveredBlock553Stack2 := (recoveredBlock553Stack2) outlineTree.
            recoveredBlock553PC := 564.
        ].
        recoveredBlock553Step = 564 ifTrue: [
            recoveredBlock553Stack2 := (recoveredBlock553Stack2) isManaged.
            recoveredBlock553PC := 566.
        ].
        recoveredBlock553Step = 566 ifTrue: [
            (recoveredBlock553Stack2) ifTrue: [recoveredBlock553PC := 570] ifFalse: [recoveredBlock553PC := 588].
        ].
        recoveredBlock553Step = 570 ifTrue: [
            recoveredBlock553PC := 571.
        ].
        recoveredBlock553Step = 571 ifTrue: [
            recoveredBlock553Stack1 := false.
            recoveredBlock553PC := 572.
        ].
        recoveredBlock553Step = 572 ifTrue: [
            recoveredBlock553Stack2 := self.
            recoveredBlock553PC := 573.
        ].
        recoveredBlock553Step = 573 ifTrue: [
            recoveredBlock553Stack2 := (recoveredBlock553Stack2) dummySelected.
            recoveredBlock553PC := 577.
        ].
        recoveredBlock553Step = 577 ifTrue: [
            (recoveredBlock553Stack2) ifTrue: [recoveredBlock553PC := 588] ifFalse: [recoveredBlock553PC := 580].
        ].
        recoveredBlock553Step = 580 ifTrue: [
            recoveredBlock553PC := 581.
        ].
        recoveredBlock553Step = 581 ifTrue: [
            recoveredBlock553Stack1 := self.
            recoveredBlock553PC := 582.
        ].
        recoveredBlock553Step = 582 ifTrue: [
            recoveredBlock553Stack1 := (recoveredBlock553Stack1) selectedElements.
            recoveredBlock553PC := 587.
        ].
        recoveredBlock553Step = 587 ifTrue: [
            recoveredBlock553Stack1 := (recoveredBlock553Stack1) notNil.
            recoveredBlock553PC := 588.
        ].
        recoveredBlock553Step = 588 ifTrue: [
            recoveredBlock553Result := recoveredBlock553Stack1.
            recoveredBlock553Done := true.
        ].
    ].
    recoveredBlock553Result
].
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack5 := [
    | block28120ae4Value0 block28120ae4Value1 block28120ae4Value2 |
    block28120ae4Value0 := System.
    block28120ae4Value1 := (block28120ae4Value0) isRuntime.
    block28120ae4Value2 := (block28120ae4Value1) not.
    block28120ae4Value2
].
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := 'EHI_85958'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMInstalled.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 634] ifFalse: [recoveredPC := 641].
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack1) appendSCMComponentItems: (recoveredStack2).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2063587c; bytecode file offset 0xf3222c"
!SGGraphicSpecificationView methodsFor: 'recovered'!
motion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) hasFocus.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 21] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdGeneralOptions.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMouseOverInfo.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 583].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) pane.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) point.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) point.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isZoomed.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) zoomingFactor.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := 'X:'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := ' Y:'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Stack0 recoveredBlock158Stack1 recoveredBlock158Stack2 recoveredBlock158Stack3 recoveredBlock158Stack4 recoveredBlock158PC recoveredBlock158Step recoveredBlock158Done recoveredBlock158Result |
    recoveredBlock158Stack0 := self.
    recoveredBlock158PC := 164.
    recoveredBlock158Done := false.
    [recoveredBlock158Done not] whileTrue: [
        recoveredBlock158Step := recoveredBlock158PC.
        recoveredBlock158Step = 164 ifTrue: [
            recoveredBlock158Stack1 := recoveredBlock158Arg1.
            recoveredBlock158PC := 165.
        ].
        recoveredBlock158Step = 165 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal7.
            recoveredBlock158PC := 168.
        ].
        recoveredBlock158Step = 168 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) getPointedGOFor: (recoveredBlock158Stack2).
            recoveredBlock158PC := 170.
        ].
        recoveredBlock158Step = 170 ifTrue: [
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 171.
        ].
        recoveredBlock158Step = 171 ifTrue: [
            recoveredLocal9 := recoveredBlock158Stack2.
            recoveredBlock158PC := 174.
        ].
        recoveredBlock158Step = 174 ifTrue: [
            (recoveredBlock158Stack1 ~~ nil) ifTrue: [recoveredBlock158PC := 224] ifFalse: [recoveredBlock158PC := 178].
        ].
        recoveredBlock158Step = 178 ifTrue: [
            recoveredBlock158Stack1 := nil.
            recoveredBlock158PC := 179.
        ].
        recoveredBlock158Step = 179 ifTrue: [
            recoveredBlock158Stack2 := recoveredArg3.
            recoveredBlock158PC := 182.
        ].
        recoveredBlock158Step = 182 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) state.
            recoveredBlock158PC := 184.
        ].
        recoveredBlock158Step = 184 ifTrue: [
            recoveredBlock158Stack3 := Button1Mask.
            recoveredBlock158PC := 186.
        ].
        recoveredBlock158Step = 186 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) = (recoveredBlock158Stack3).
            recoveredBlock158PC := 187.
        ].
        recoveredBlock158Step = 187 ifTrue: [
            (recoveredBlock158Stack2) ifTrue: [recoveredBlock158PC := 220] ifFalse: [recoveredBlock158PC := 190].
        ].
        recoveredBlock158Step = 190 ifTrue: [
            recoveredBlock158PC := 191.
        ].
        recoveredBlock158Step = 191 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 192.
        ].
        recoveredBlock158Step = 192 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) pointedGO.
            recoveredBlock158PC := 194.
        ].
        recoveredBlock158Step = 194 ifTrue: [
            recoveredBlock158Stack2 := [:block28120b50Arg1 | 
    | block28120b50Stack0 block28120b50Stack1 block28120b50Stack2 block28120b50Stack3 block28120b50PC block28120b50Step block28120b50Done block28120b50Result |
    block28120b50Stack0 := self.
    block28120b50PC := 4.
    block28120b50Done := false.
    [block28120b50Done not] whileTrue: [
        block28120b50Step := block28120b50PC.
        block28120b50Step = 4 ifTrue: [
            block28120b50Stack1 := nil.
            block28120b50PC := 5.
        ].
        block28120b50Step = 5 ifTrue: [
            block28120b50Stack2 := block28120b50Arg1.
            block28120b50PC := 6.
        ].
        block28120b50Step = 6 ifTrue: [
            block28120b50Stack2 := (block28120b50Stack2) isSensitiveWrapper.
            block28120b50PC := 8.
        ].
        block28120b50Step = 8 ifTrue: [
            (block28120b50Stack2) ifTrue: [block28120b50PC := 17] ifFalse: [block28120b50PC := 12].
        ].
        block28120b50Step = 12 ifTrue: [
            block28120b50PC := 13.
        ].
        block28120b50Step = 13 ifTrue: [
            block28120b50Stack1 := block28120b50Arg1.
            block28120b50PC := 14.
        ].
        block28120b50Step = 14 ifTrue: [
            block28120b50Stack2 := true.
            block28120b50PC := 15.
        ].
        block28120b50Step = 15 ifTrue: [
            block28120b50Stack1 := (block28120b50Stack1) unHighlightGODisplay: (block28120b50Stack2).
            block28120b50PC := 17.
        ].
        block28120b50Step = 17 ifTrue: [
            block28120b50Result := block28120b50Stack1.
            block28120b50Done := true.
        ].
    ].
    block28120b50Result
].
            recoveredBlock158PC := 196.
        ].
        recoveredBlock158Step = 196 ifTrue: [
            recoveredBlock158PC := 214.
        ].
        recoveredBlock158Step = 214 ifTrue: [
            (recoveredBlock158Stack1) ifNotNil: (recoveredBlock158Stack2).
            recoveredBlock158PC := 216.
        ].
        recoveredBlock158Step = 216 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 217.
        ].
        recoveredBlock158Step = 217 ifTrue: [
            recoveredBlock158Stack2 := nil.
            recoveredBlock158PC := 218.
        ].
        recoveredBlock158Step = 218 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) pointedGO: (recoveredBlock158Stack2).
            recoveredBlock158PC := 220.
        ].
        recoveredBlock158Step = 220 ifTrue: [
            recoveredBlock158PC := 566.
        ].
        recoveredBlock158Step = 224 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 225.
        ].
        recoveredBlock158Step = 225 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) pointedGO.
            recoveredBlock158PC := 227.
        ].
        recoveredBlock158Step = 227 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal9.
            recoveredBlock158PC := 230.
        ].
        recoveredBlock158Step = 230 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) = (recoveredBlock158Stack2).
            recoveredBlock158PC := 231.
        ].
        recoveredBlock158Step = 231 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 260] ifFalse: [recoveredBlock158PC := 234].
        ].
        recoveredBlock158Step = 234 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 235.
        ].
        recoveredBlock158Step = 235 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) pointedGO.
            recoveredBlock158PC := 237.
        ].
        recoveredBlock158Step = 237 ifTrue: [
            recoveredBlock158Stack2 := [:recoveredBlock158Block237Arg1 | 
    | recoveredBlock158Block237Value0 recoveredBlock158Block237Value1 recoveredBlock158Block237Value2 |
    recoveredBlock158Block237Value0 := ('Kli') == ('Call_327786').
    recoveredBlock158Block237Value1 := recoveredBlock158Block237Arg1.
    (recoveredBlock158Block237Value1) unHighlightGODisplay: (true).
    recoveredBlock158Block237Value2 := (self) pointedGO: (nil).
    recoveredBlock158Block237Value2
].
            recoveredBlock158PC := 258.
        ].
        recoveredBlock158Step = 258 ifTrue: [
            (recoveredBlock158Stack1) ifNotNil: (recoveredBlock158Stack2).
            recoveredBlock158PC := 260.
        ].
        recoveredBlock158Step = 260 ifTrue: [
            recoveredBlock158Stack1 := recoveredArg3.
            recoveredBlock158PC := 263.
        ].
        recoveredBlock158Step = 263 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) state.
            recoveredBlock158PC := 265.
        ].
        recoveredBlock158Step = 265 ifTrue: [
            recoveredBlock158Stack2 := Button1Mask.
            recoveredBlock158PC := 267.
        ].
        recoveredBlock158Step = 267 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) anyMask: (recoveredBlock158Stack2).
            recoveredBlock158PC := 269.
        ].
        recoveredBlock158Step = 269 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 356] ifFalse: [recoveredBlock158PC := 272].
        ].
        recoveredBlock158Step = 272 ifTrue: [
            recoveredBlock158Stack1 := recoveredArg3.
            recoveredBlock158PC := 275.
        ].
        recoveredBlock158Step = 275 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) state.
            recoveredBlock158PC := 277.
        ].
        recoveredBlock158Step = 277 ifTrue: [
            recoveredBlock158Stack2 := Button2Mask.
            recoveredBlock158PC := 279.
        ].
        recoveredBlock158Step = 279 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) anyMask: (recoveredBlock158Stack2).
            recoveredBlock158PC := 281.
        ].
        recoveredBlock158Step = 281 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 356] ifFalse: [recoveredBlock158PC := 284].
        ].
        recoveredBlock158Step = 284 ifTrue: [
            recoveredBlock158Stack1 := recoveredArg3.
            recoveredBlock158PC := 287.
        ].
        recoveredBlock158Step = 287 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) state.
            recoveredBlock158PC := 289.
        ].
        recoveredBlock158Step = 289 ifTrue: [
            recoveredBlock158Stack2 := Button3Mask.
            recoveredBlock158PC := 291.
        ].
        recoveredBlock158Step = 291 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) anyMask: (recoveredBlock158Stack2).
            recoveredBlock158PC := 293.
        ].
        recoveredBlock158Step = 293 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 356] ifFalse: [recoveredBlock158PC := 296].
        ].
        recoveredBlock158Step = 296 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 297.
        ].
        recoveredBlock158Step = 297 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) uiController.
            recoveredBlock158PC := 299.
        ].
        recoveredBlock158Step = 299 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) graphPaneController.
            recoveredBlock158PC := 301.
        ].
        recoveredBlock158Step = 301 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) isBuildMode.
            recoveredBlock158PC := 303.
        ].
        recoveredBlock158Step = 303 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 356] ifFalse: [recoveredBlock158PC := 306].
        ].
        recoveredBlock158Step = 306 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 309.
        ].
        recoveredBlock158Step = 309 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) isMemoryBlock.
            recoveredBlock158PC := 311.
        ].
        recoveredBlock158Step = 311 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 314] ifFalse: [recoveredBlock158PC := 322].
        ].
        recoveredBlock158Step = 314 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 315.
        ].
        recoveredBlock158Step = 315 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal9.
            recoveredBlock158PC := 318.
        ].
        recoveredBlock158Step = 318 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) element.
            recoveredBlock158PC := 320.
        ].
        recoveredBlock158Step = 320 ifTrue: [
            (recoveredBlock158Stack1) updateStatusBarForElement: (recoveredBlock158Stack2).
            recoveredBlock158PC := 322.
        ].
        recoveredBlock158Step = 322 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 325.
        ].
        recoveredBlock158Step = 325 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 327.
        ].
        recoveredBlock158Step = 327 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) isConnectionGO.
            recoveredBlock158PC := 329.
        ].
        recoveredBlock158Step = 329 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 332] ifFalse: [recoveredBlock158PC := 356].
        ].
        recoveredBlock158Step = 332 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 335.
        ].
        recoveredBlock158Step = 335 ifTrue: [
            recoveredBlock158Stack2 := self.
            recoveredBlock158PC := 336.
        ].
        recoveredBlock158Step = 336 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) pointedGO.
            recoveredBlock158PC := 338.
        ].
        recoveredBlock158Step = 338 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) ~= (recoveredBlock158Stack2).
            recoveredBlock158PC := 339.
        ].
        recoveredBlock158Step = 339 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 342] ifFalse: [recoveredBlock158PC := 356].
        ].
        recoveredBlock158Step = 342 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 343.
        ].
        recoveredBlock158Step = 343 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal9.
            recoveredBlock158PC := 346.
        ].
        recoveredBlock158Step = 346 ifTrue: [
            (recoveredBlock158Stack1) pointedGO: (recoveredBlock158Stack2).
            recoveredBlock158PC := 348.
        ].
        recoveredBlock158Step = 348 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 351.
        ].
        recoveredBlock158Step = 351 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 353.
        ].
        recoveredBlock158Step = 353 ifTrue: [
            recoveredBlock158Stack2 := true.
            recoveredBlock158PC := 354.
        ].
        recoveredBlock158Step = 354 ifTrue: [
            (recoveredBlock158Stack1) highlightGODisplay: (recoveredBlock158Stack2).
            recoveredBlock158PC := 356.
        ].
        recoveredBlock158Step = 356 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 359.
        ].
        recoveredBlock158Step = 359 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) isOperatorGO.
            recoveredBlock158PC := 361.
        ].
        recoveredBlock158Step = 361 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 364] ifFalse: [recoveredBlock158PC := 375].
        ].
        recoveredBlock158Step = 364 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 365.
        ].
        recoveredBlock158Step = 365 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) widgetstatusBarPanImp.
            recoveredBlock158PC := 367.
        ].
        recoveredBlock158Step = 367 ifTrue: [
            recoveredBlock158Stack2 := self.
            recoveredBlock158PC := 368.
        ].
        recoveredBlock158Step = 368 ifTrue: [
            recoveredBlock158Stack3 := recoveredLocal9.
            recoveredBlock158PC := 371.
        ].
        recoveredBlock158Step = 371 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) updateStatusBarForConversion: (recoveredBlock158Stack3).
            recoveredBlock158PC := 373.
        ].
        recoveredBlock158Step = 373 ifTrue: [
            (recoveredBlock158Stack1) labelString: (recoveredBlock158Stack2).
            recoveredBlock158PC := 375.
        ].
        recoveredBlock158Step = 375 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 378.
        ].
        recoveredBlock158Step = 378 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 380.
        ].
        recoveredBlock158Step = 380 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) isConnectionGO.
            recoveredBlock158PC := 382.
        ].
        recoveredBlock158Step = 382 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 410] ifFalse: [recoveredBlock158PC := 386].
        ].
        recoveredBlock158Step = 386 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 389.
        ].
        recoveredBlock158Step = 389 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 391.
        ].
        recoveredBlock158Step = 391 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) identifier.
            recoveredBlock158PC := 393.
        ].
        recoveredBlock158Step = 393 ifTrue: [
            (recoveredBlock158Stack1 == nil) ifTrue: [recoveredBlock158PC := 410] ifFalse: [recoveredBlock158PC := 396].
        ].
        recoveredBlock158Step = 396 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 399.
        ].
        recoveredBlock158Step = 399 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 401.
        ].
        recoveredBlock158Step = 401 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) identifier.
            recoveredBlock158PC := 403.
        ].
        recoveredBlock158Step = 403 ifTrue: [
            recoveredBlock158Stack2 := 0.
            recoveredBlock158PC := 405.
        ].
        recoveredBlock158Step = 405 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) < (recoveredBlock158Stack2).
            recoveredBlock158PC := 406.
        ].
        recoveredBlock158Step = 406 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 410] ifFalse: [recoveredBlock158PC := 490].
        ].
        recoveredBlock158Step = 410 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 411.
        ].
        recoveredBlock158Step = 411 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) class.
            recoveredBlock158PC := 413.
        ].
        recoveredBlock158Step = 413 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) optionShowGraphicsIDInStatusBar.
            recoveredBlock158PC := 415.
        ].
        recoveredBlock158Step = 415 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 418] ifFalse: [recoveredBlock158PC := 464].
        ].
        recoveredBlock158Step = 418 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 421.
        ].
        recoveredBlock158Step = 421 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 423.
        ].
        recoveredBlock158Step = 423 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) identifier.
            recoveredBlock158PC := 425.
        ].
        recoveredBlock158Step = 425 ifTrue: [
            (recoveredBlock158Stack1 == nil) ifTrue: [recoveredBlock158PC := 464] ifFalse: [recoveredBlock158PC := 428].
        ].
        recoveredBlock158Step = 428 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 431.
        ].
        recoveredBlock158Step = 431 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 433.
        ].
        recoveredBlock158Step = 433 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) identifier.
            recoveredBlock158PC := 435.
        ].
        recoveredBlock158Step = 435 ifTrue: [
            recoveredBlock158Stack2 := -1.
            recoveredBlock158PC := 437.
        ].
        recoveredBlock158Step = 437 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) > (recoveredBlock158Stack2).
            recoveredBlock158PC := 438.
        ].
        recoveredBlock158Step = 438 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 442] ifFalse: [recoveredBlock158PC := 464].
        ].
        recoveredBlock158Step = 442 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 445.
        ].
        recoveredBlock158Step = 445 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) getNameInfo.
            recoveredBlock158PC := 447.
        ].
        recoveredBlock158Step = 447 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal9.
            recoveredBlock158PC := 450.
        ].
        recoveredBlock158Step = 450 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) getGraphicIdString.
            recoveredBlock158PC := 452.
        ].
        recoveredBlock158Step = 452 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) , (recoveredBlock158Stack2).
            recoveredBlock158PC := 454.
        ].
        recoveredBlock158Step = 454 ifTrue: [
            recoveredBlock158Stack2 := '    '.
            recoveredBlock158PC := 456.
        ].
        recoveredBlock158Step = 456 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) , (recoveredBlock158Stack2).
            recoveredBlock158PC := 458.
        ].
        recoveredBlock158Step = 458 ifTrue: [
            recoveredLocal4 := recoveredBlock158Stack1.
            recoveredBlock158PC := 461.
        ].
        recoveredBlock158Step = 461 ifTrue: [
            recoveredBlock158PC := 476.
        ].
        recoveredBlock158Step = 464 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 467.
        ].
        recoveredBlock158Step = 467 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) getNameInfo.
            recoveredBlock158PC := 469.
        ].
        recoveredBlock158Step = 469 ifTrue: [
            recoveredBlock158Stack2 := '    '.
            recoveredBlock158PC := 471.
        ].
        recoveredBlock158Step = 471 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) , (recoveredBlock158Stack2).
            recoveredBlock158PC := 473.
        ].
        recoveredBlock158Step = 473 ifTrue: [
            recoveredLocal4 := recoveredBlock158Stack1.
            recoveredBlock158PC := 476.
        ].
        recoveredBlock158Step = 476 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal5.
            recoveredBlock158PC := 479.
        ].
        recoveredBlock158Step = 479 ifTrue: [
            recoveredBlock158Stack2 := '    '.
            recoveredBlock158PC := 481.
        ].
        recoveredBlock158Step = 481 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) , (recoveredBlock158Stack2).
            recoveredBlock158PC := 483.
        ].
        recoveredBlock158Step = 483 ifTrue: [
            recoveredLocal5 := recoveredBlock158Stack1.
            recoveredBlock158PC := 486.
        ].
        recoveredBlock158Step = 486 ifTrue: [
            recoveredBlock158PC := 519.
        ].
        recoveredBlock158Step = 490 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal9.
            recoveredBlock158PC := 493.
        ].
        recoveredBlock158Step = 493 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) getNameInfo.
            recoveredBlock158PC := 495.
        ].
        recoveredBlock158Step = 495 ifTrue: [
            recoveredBlock158Stack2 := '    '.
            recoveredBlock158PC := 497.
        ].
        recoveredBlock158Step = 497 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) , (recoveredBlock158Stack2).
            recoveredBlock158PC := 499.
        ].
        recoveredBlock158Step = 499 ifTrue: [
            recoveredLocal4 := recoveredBlock158Stack1.
            recoveredBlock158PC := 502.
        ].
        recoveredBlock158Step = 502 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal5.
            recoveredBlock158PC := 505.
        ].
        recoveredBlock158Step = 505 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal9.
            recoveredBlock158PC := 508.
        ].
        recoveredBlock158Step = 508 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) getGraphicIdString.
            recoveredBlock158PC := 510.
        ].
        recoveredBlock158Step = 510 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) , (recoveredBlock158Stack2).
            recoveredBlock158PC := 512.
        ].
        recoveredBlock158Step = 512 ifTrue: [
            recoveredBlock158Stack2 := '    '.
            recoveredBlock158PC := 514.
        ].
        recoveredBlock158Step = 514 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) , (recoveredBlock158Stack2).
            recoveredBlock158PC := 516.
        ].
        recoveredBlock158Step = 516 ifTrue: [
            recoveredLocal5 := recoveredBlock158Stack1.
            recoveredBlock158PC := 519.
        ].
        recoveredBlock158Step = 519 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 520.
        ].
        recoveredBlock158Step = 520 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) widgetstatusBarPanPos.
            recoveredBlock158PC := 522.
        ].
        recoveredBlock158Step = 522 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal5.
            recoveredBlock158PC := 525.
        ].
        recoveredBlock158Step = 525 ifTrue: [
            (recoveredBlock158Stack1) labelString: (recoveredBlock158Stack2).
            recoveredBlock158PC := 527.
        ].
        recoveredBlock158Step = 527 ifTrue: [
            recoveredBlock158Stack1 := System.
            recoveredBlock158PC := 529.
        ].
        recoveredBlock158Step = 529 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) isRuntime.
            recoveredBlock158PC := 531.
        ].
        recoveredBlock158Step = 531 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 534] ifFalse: [recoveredBlock158PC := 543].
        ].
        recoveredBlock158Step = 534 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 535.
        ].
        recoveredBlock158Step = 535 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) widgetstatusBarPanInfo.
            recoveredBlock158PC := 537.
        ].
        recoveredBlock158Step = 537 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal4.
            recoveredBlock158PC := 540.
        ].
        recoveredBlock158Step = 540 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) labelString: (recoveredBlock158Stack2).
            recoveredBlock158PC := 542.
        ].
        recoveredBlock158Step = 542 ifTrue: [
            ^recoveredBlock158Stack1
        ].
        recoveredBlock158Step = 543 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 544.
        ].
        recoveredBlock158Step = 544 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) widgetstatusBarPanInfo.
            recoveredBlock158PC := 546.
        ].
        recoveredBlock158Step = 546 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal4.
            recoveredBlock158PC := 549.
        ].
        recoveredBlock158Step = 549 ifTrue: [
            recoveredBlock158Stack3 := ' '.
            recoveredBlock158PC := 551.
        ].
        recoveredBlock158Step = 551 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) , (recoveredBlock158Stack3).
            recoveredBlock158PC := 553.
        ].
        recoveredBlock158Step = 553 ifTrue: [
            recoveredBlock158Stack3 := recoveredLocal9.
            recoveredBlock158PC := 556.
        ].
        recoveredBlock158Step = 556 ifTrue: [
            recoveredBlock158Stack3 := (recoveredBlock158Stack3) printString.
            recoveredBlock158PC := 561.
        ].
        recoveredBlock158Step = 561 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) , (recoveredBlock158Stack3).
            recoveredBlock158PC := 563.
        ].
        recoveredBlock158Step = 563 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) labelString: (recoveredBlock158Stack2).
            recoveredBlock158PC := 565.
        ].
        recoveredBlock158Step = 565 ifTrue: [
            ^recoveredBlock158Stack1
        ].
        recoveredBlock158Step = 566 ifTrue: [
            recoveredBlock158Result := recoveredBlock158Stack1.
            recoveredBlock158Done := true.
        ].
    ].
    recoveredBlock158Result
].
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack0) updateStatusBar.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetstatusBarPanPos.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionShowGraphicsIDInStatusBar.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 592] ifFalse: [recoveredPC := 641].
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 641] ifFalse: [recoveredPC := 606].
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 641] ifFalse: [recoveredPC := 620].
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetstatusBarPanInfo.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := 'Max ID: '.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack2 := (recoveredStack2) highestUsedGraphicalIdentifier.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

