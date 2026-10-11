"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000833c; bytecode file offset 0x908be4"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
smallFont
    | recoveredValue0 |
    recoveredValue0 := (self) smallFont10.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003a940; bytecode file offset 0x938608"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateFont: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) updateListFont: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072130; bytecode file offset 0x96ee04"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
mainWindowBorderWidth
    ^1
! !

"ASDBase.ic method 0x20084888; bytecode file offset 0x981ca4"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateFontAndItemHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) updateListFontAndItemHeight: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200887f0; bytecode file offset 0x985628"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
smallFontList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwFontList.
    recoveredValue1 := (self) smallFont10.
    recoveredValue2 := (recoveredValue0) fontStruct: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20089ddc; bytecode file offset 0x9866ec"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
freeResources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) releaseFonts.
    ^self
! !

"ASDBase.ic method 0x20089e84; bytecode file offset 0x9868f8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
listFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) listFont.
    recoveredValue3 := (recoveredValue2) fontStruct.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20089efc; bytecode file offset 0x9868f8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
textFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) textFont.
    recoveredValue3 := (recoveredValue2) fontStruct.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20089f74; bytecode file offset 0x9868f8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
buttonFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) buttonFont.
    recoveredValue3 := (recoveredValue2) fontStruct.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20089f8c; bytecode file offset 0x9868f8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
labelFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) labelFont.
    recoveredValue3 := (recoveredValue2) fontStruct.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008a034; bytecode file offset 0x9868f8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
codeFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) codeFont.
    recoveredValue3 := (recoveredValue2) fontStruct.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20090a78; bytecode file offset 0x98d334"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
labelFontWidgetHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) labelFont.
    recoveredValue1 := (recoveredValue0) height.
    recoveredValue2 := (recoveredValue1) + (8).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091d44; bytecode file offset 0x98e790"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
cursoredItemHierarchyPolicy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasCursoredItemHierarchyPolicy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createHierarchyPolicy: (recoveredValue0) resourceManager: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091e54; bytecode file offset 0x98e790"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
iconHierarchyPolicy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwIconHierarchyPolicy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createHierarchyPolicy: (recoveredValue0) resourceManager: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200abec8; bytecode file offset 0x9a8784"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
labelFontWidgetWidthFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) labelFont.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) textWidth: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (4).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d86e8; bytecode file offset 0x9d4fc4"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateTextFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CwFontList.
    recoveredValue2 := (self) textFont.
    recoveredValue3 := (recoveredValue1) fontStruct: (recoveredValue2).
    (recoveredValue0) fontList: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200d8700; bytecode file offset 0x9d4fc4"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateCodeFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CwFontList.
    recoveredValue2 := (self) codeFont.
    recoveredValue3 := (recoveredValue1) fontStruct: (recoveredValue2).
    (recoveredValue0) fontList: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e8ee4; bytecode file offset 0x9e57d8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateButtonFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CwFontList.
    recoveredValue2 := (self) buttonFont.
    recoveredValue3 := (recoveredValue1) fontStruct: (recoveredValue2).
    (recoveredValue0) fontList: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e8efc; bytecode file offset 0x9e57d8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateListFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CwFontList.
    recoveredValue2 := (self) listFont.
    recoveredValue3 := (recoveredValue1) fontStruct: (recoveredValue2).
    (recoveredValue0) fontList: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e8f14; bytecode file offset 0x9e57d8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateLabelsForForm: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CwFontList.
    recoveredValue2 := (self) labelFont.
    recoveredValue3 := (recoveredValue1) fontStruct: (recoveredValue2).
    (recoveredValue0) labelFontList: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20118db8; bytecode file offset 0xa15678"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
initGlobals
    ToolSize := 16.
    ToolMarginSize := 2.
    ToolSpacing := 5.
    ^self
! !

"ASDBase.ic method 0x201439e8; bytecode file offset 0xa402b4"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateLabelFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CwFontList.
    recoveredValue2 := (self) labelFont.
    recoveredValue3 := (recoveredValue1) fontStruct: (recoveredValue2).
    (recoveredValue0) fontList: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) labelFontWidgetHeight.
    (recoveredValue4) height: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20165ce0; bytecode file offset 0xa625c4"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateListFontAndItemHeightTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) updateListFont: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) listFont.
    recoveredValue3 := (recoveredValue2) height.
    recoveredValue4 := (recoveredValue3) + (2).
    recoveredValue5 := (recoveredValue4) max: (18).
    (recoveredValue1) itemHeight: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20165cfc; bytecode file offset 0xa625c4"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateListFontAndItemHeight: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) updateListFont: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) listFont.
    recoveredValue3 := (recoveredValue2) height.
    recoveredValue4 := (recoveredValue3) + (2).
    recoveredValue5 := (recoveredValue4) max: (18).
    (recoveredValue1) itemHeight: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201a9ca4; bytecode file offset 0xaa656c"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
smallFont10
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := '-microsoft-ms sans serif-medium-r-normal-sans serif-13-100-96-96-p-*-iso8859-1'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadQueryFont: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '-*-*-medium-r-normal-sans serif-*-100-*-*-*-*-*-*'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadQueryFont: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ec738; bytecode file offset 0xbe9020"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
createHierarchyPolicy: recoveredArg1 resourceManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) height: (11).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) width: (11).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) returnIcon16WithName: ('GeneralHierarchy3').
    (recoveredValue4) collapsed: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) returnIcon16WithName: ('GeneralHierarchy4').
    (recoveredValue7) expandingDown: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) returnIcon16WithName: ('GeneralHierarchy5').
    (recoveredValue10) collapsingDown: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue14) returnIcon16WithName: ('GeneralHierarchy2').
    (recoveredValue13) expanded: (recoveredValue15).
    recoveredValue16 := (recoveredValue1) childless: (nil).
    ^recoveredValue16
! !

"ASDBase.ic method 0x2032cbd0; bytecode file offset 0xc294b8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateToolbar: recoveredArg1 groupDisplayOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmBORDERNONE.
    (recoveredValue1) selectiveBorder: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ToolSpacing.
    (recoveredValue3) spacing: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := ToolMarginSize.
    (recoveredValue5) marginWidth: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := ToolMarginSize.
    (recoveredValue7) marginHeight: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := ToolSize.
    (recoveredValue9) imageWidth: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := ToolSize.
    (recoveredValue11) imageHeight: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := ToolSize.
    recoveredValue15 := (recoveredValue14) * (2).
    recoveredValue16 := ToolMarginSize.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue16) - (recoveredValue17).
    recoveredValue19 := (recoveredValue15) - (recoveredValue18).
    (recoveredValue13) height: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) width.
    recoveredValue22 := ToolMarginSize.
    recoveredValue23 := (2) * (recoveredValue22).
    recoveredValue24 := (recoveredValue21) + (recoveredValue23).
    (recoveredValue0) width: (recoveredValue24).
    ^self
! !

"ASDBase.ic method 0x2033b0cc; bytecode file offset 0xc379b8"
!SGUserInterfaceSettings class methodsFor: 'recovered'!
updateToolbar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmBORDERNONE.
    (recoveredValue1) selectiveBorder: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ToolSpacing.
    (recoveredValue3) spacing: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := ToolMarginSize.
    (recoveredValue5) marginWidth: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := ToolMarginSize.
    (recoveredValue7) marginHeight: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := ToolSize.
    (recoveredValue9) imageWidth: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := ToolSize.
    (recoveredValue11) imageHeight: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := ToolSize.
    recoveredValue15 := (recoveredValue14) * (2).
    recoveredValue16 := ToolMarginSize.
    recoveredValue17 := (recoveredValue15) - (recoveredValue16).
    (recoveredValue13) height: (recoveredValue17).
    recoveredValue18 := recoveredValue0.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) width.
    recoveredValue21 := ToolMarginSize.
    recoveredValue22 := (2) * (recoveredValue21).
    recoveredValue23 := (recoveredValue20) + (recoveredValue22).
    (recoveredValue18) width: (recoveredValue23).
    (recoveredValue0) resizable: (false).
    ^self
! !

