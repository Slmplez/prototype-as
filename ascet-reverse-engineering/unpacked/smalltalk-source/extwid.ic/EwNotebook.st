"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000000; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updateMinorTabWidth
    ^self
! !

"extwid.ic method 0x20000008; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updateMinorTabHeight
    ^self
! !

"extwid.ic method 0x20000038; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updateBindingType
    ^self
! !

"extwid.ic method 0x20000088; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updatePageButtonWidth
    ^self
! !

"extwid.ic method 0x200000d0; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updateTabsPerRow
    ^self
! !

"extwid.ic method 0x20000118; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updateBackPagePosition
    ^self
! !

"extwid.ic method 0x20000150; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updatePageButtonHeight
    ^self
! !

"extwid.ic method 0x20000190; bytecode file offset 0x50f8c"
!EwNotebook methodsFor: 'recovered'!
updateOrientation
    ^self
! !

"extwid.ic method 0x20000324; bytecode file offset 0x5132c"
!EwNotebook methodsFor: 'recovered'!
updatePageLabel
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"extwid.ic method 0x2000042c; bytecode file offset 0x5132c"
!EwNotebook methodsFor: 'recovered'!
majorPages
    | recoveredValue0 |
    recoveredValue0 := (self) managedChildren.
    ^recoveredValue0
! !

"extwid.ic method 0x200005ec; bytecode file offset 0x51438"
!EwNotebook methodsFor: 'recovered'!
draw: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"extwid.ic method 0x20000664; bytecode file offset 0x51438"
!EwNotebook methodsFor: 'recovered'!
isTabVisible: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"extwid.ic method 0x20000920; bytecode file offset 0x5173c"
!EwNotebook methodsFor: 'recovered'!
minorPages
    ^#()
! !

"extwid.ic method 0x20000b18; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
maxMajorWidth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) majorTabWidthPolicy.
    recoveredValue1 := (recoveredValue0) maxWidth.
    ^recoveredValue1
! !

"extwid.ic method 0x20000b58; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
maxMinorWidth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) minorTabWidthPolicy.
    recoveredValue1 := (recoveredValue0) maxWidth.
    ^recoveredValue1
! !

"extwid.ic method 0x20000c78; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
minorTabWidth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) minorTabWidthPolicy.
    recoveredValue1 := (recoveredValue0) width.
    ^recoveredValue1
! !

"extwid.ic method 0x20000fb8; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
majorTabWidth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) majorTabWidthPolicy.
    recoveredValue1 := (recoveredValue0) width.
    ^recoveredValue1
! !

"extwid.ic method 0x20001008; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
tabWidthPolicy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) majorTabWidthPolicy.
    recoveredValue1 := (recoveredValue0) policyConstant.
    ^recoveredValue1
! !

"extwid.ic method 0x20001058; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
dragDropFontStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fontList.
    recoveredValue1 := (recoveredValue0) fontStruct.
    ^recoveredValue1
! !

"extwid.ic method 0x20001128; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
fontStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fontList.
    recoveredValue1 := (recoveredValue0) fontStruct.
    ^recoveredValue1
! !

"extwid.ic method 0x20001208; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
drawable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) workArea.
    recoveredValue1 := (recoveredValue0) window.
    ^recoveredValue1
! !

"extwid.ic method 0x200012b8; bytecode file offset 0x52154"
!EwNotebook methodsFor: 'recovered'!
tabsPerRow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) majorTabWidthPolicy.
    recoveredValue1 := (recoveredValue0) tabsPerRow.
    ^recoveredValue1
! !

"extwid.ic method 0x200016c0; bytecode file offset 0x526c8"
!EwNotebook methodsFor: 'recovered'!
updateMajorTabWidth
    (self) updateTabSize.
    ^self
! !

"extwid.ic method 0x20001708; bytecode file offset 0x526c8"
!EwNotebook methodsFor: 'recovered'!
updateMajorTabHeight
    (self) updateTabSize.
    ^self
! !

"extwid.ic method 0x200017a4; bytecode file offset 0x526c8"
!EwNotebook methodsFor: 'recovered'!
initializeFontRelatedValues
    (self) subclassResponsibility.
    ^self
! !

"extwid.ic method 0x20001a30; bytecode file offset 0x52834"
!EwNotebook methodsFor: 'recovered'!
regionAtPoint: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"extwid.ic method 0x20001a60; bytecode file offset 0x52834"
!EwNotebook methodsFor: 'recovered'!
removedVisiblePage: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"extwid.ic method 0x20001d40; bytecode file offset 0x52b08"
!EwNotebook methodsFor: 'recovered'!
destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) destroy.
    ^self
! !

"extwid.ic method 0x200022e4; bytecode file offset 0x53168"
!EwNotebook methodsFor: 'recovered'!
defaultRenderContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) renderContext.
    recoveredValue1 := (self) blackGC.
    recoveredValue2 := (recoveredValue0) gc: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x200022f8; bytecode file offset 0x53168"
!EwNotebook methodsFor: 'recovered'!
shadingRenderContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) renderContext.
    recoveredValue1 := (self) shadingGC.
    recoveredValue2 := (recoveredValue0) gc: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20002320; bytecode file offset 0x53168"
!EwNotebook methodsFor: 'recovered'!
backingRenderContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) renderContext.
    recoveredValue1 := (self) backgroundGC.
    recoveredValue2 := (recoveredValue0) gc: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x200024a0; bytecode file offset 0x5326c"
!EwNotebook methodsFor: 'recovered'!
redraw
    | recoveredValue0 |
    recoveredValue0 := (self) workArea.
    (recoveredValue0) redraw.
    ^self
! !

"extwid.ic method 0x20002fdc; bytecode file offset 0x53da8"
!EwNotebook methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := xmNchildren.
    ^recoveredValue0
! !

"extwid.ic method 0x200030bc; bytecode file offset 0x53eb0"
!EwNotebook methodsFor: 'recovered'!
currentPage
    | recoveredValue0 |
    recoveredValue0 := xmNcurrentPage.
    ^recoveredValue0
! !

"extwid.ic method 0x2000319c; bytecode file offset 0x53fc0"
!EwNotebook methodsFor: 'recovered'!
fontList
    | recoveredValue0 |
    recoveredValue0 := xmNfontList.
    ^recoveredValue0
! !

"extwid.ic method 0x20003300; bytecode file offset 0x54164"
!EwNotebook methodsFor: 'recovered'!
pageButtonHeight
    | recoveredValue0 |
    recoveredValue0 := xmNpageButtonHeight.
    ^recoveredValue0
! !

"extwid.ic method 0x20003420; bytecode file offset 0x5421c"
!EwNotebook methodsFor: 'recovered'!
pageButtonWidth
    | recoveredValue0 |
    recoveredValue0 := xmNpageButtonWidth.
    ^recoveredValue0
! !

"extwid.ic method 0x200034d0; bytecode file offset 0x542e4"
!EwNotebook methodsFor: 'recovered'!
majorTabHeight
    | recoveredValue0 |
    recoveredValue0 := xmNmajorTabHeight.
    ^recoveredValue0
! !

"extwid.ic method 0x20003578; bytecode file offset 0x5439c"
!EwNotebook methodsFor: 'recovered'!
minorTabHeight
    | recoveredValue0 |
    recoveredValue0 := xmNminorTabHeight.
    ^recoveredValue0
! !

"extwid.ic method 0x20003640; bytecode file offset 0x5441c"
!EwNotebook methodsFor: 'recovered'!
backPagePosition
    | recoveredValue0 |
    recoveredValue0 := xmNbackPagePosition.
    ^recoveredValue0
! !

"extwid.ic method 0x20003690; bytecode file offset 0x5447c"
!EwNotebook methodsFor: 'recovered'!
orientation
    | recoveredValue0 |
    recoveredValue0 := xmNorientation.
    ^recoveredValue0
! !

"extwid.ic method 0x200036e0; bytecode file offset 0x544e4"
!EwNotebook methodsFor: 'recovered'!
bindingType
    | recoveredValue0 |
    recoveredValue0 := xmNbindingType.
    ^recoveredValue0
! !

"extwid.ic method 0x200037b8; bytecode file offset 0x545cc"
!EwNotebook methodsFor: 'recovered'!
majorTabWidthPolicy
    | recoveredValue0 |
    recoveredValue0 := xmNtabWidthPolicy.
    ^recoveredValue0
! !

"extwid.ic method 0x20003860; bytecode file offset 0x54634"
!EwNotebook methodsFor: 'recovered'!
minorTabWidthPolicy
    | recoveredValue0 |
    recoveredValue0 := ewMinorTabWidthPolicy.
    ^recoveredValue0
! !

"extwid.ic method 0x200038a0; bytecode file offset 0x5468c"
!EwNotebook methodsFor: 'recovered'!
hasFocus
    | recoveredValue0 |
    recoveredValue0 := ewHasFocus.
    ^recoveredValue0
! !

"extwid.ic method 0x200038f8; bytecode file offset 0x546e4"
!EwNotebook methodsFor: 'recovered'!
workArea
    | recoveredValue0 |
    recoveredValue0 := ewWorkArea.
    ^recoveredValue0
! !

"extwid.ic method 0x20003934; bytecode file offset 0x54730"
!EwNotebook methodsFor: 'recovered'!
systemColors
    | recoveredValue0 |
    recoveredValue0 := ewSystemColors.
    ^recoveredValue0
! !

"extwid.ic method 0x200039a0; bytecode file offset 0x5477c"
!EwNotebook methodsFor: 'recovered'!
gc
    | recoveredValue0 |
    recoveredValue0 := ewGC.
    ^recoveredValue0
! !

"extwid.ic method 0x20003a10; bytecode file offset 0x547d4"
!EwNotebook methodsFor: 'recovered'!
renderContext
    | recoveredValue0 |
    recoveredValue0 := ewRenderContext.
    ^recoveredValue0
! !

"extwid.ic method 0x20003a3c; bytecode file offset 0x54800"
!EwNotebook methodsFor: 'recovered'!
managedChildren
    | recoveredValue0 |
    recoveredValue0 := ewManagedChildren.
    ^recoveredValue0
! !

"extwid.ic method 0x20004298; bytecode file offset 0x5512c"
!EwNotebook methodsFor: 'recovered'!
isNotebook
    ^true
! !

"extwid.ic method 0x20004528; bytecode file offset 0x552ec"
!EwNotebook methodsFor: 'recovered'!
preferredWidth
    ^80
! !

"extwid.ic method 0x2000453c; bytecode file offset 0x55310"
!EwNotebook methodsFor: 'recovered'!
preferredHeight
    ^100
! !

"extwid.ic method 0x20004640; bytecode file offset 0x55444"
!EwNotebook methodsFor: 'recovered'!
addPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addChild: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x20004f78; bytecode file offset 0x55d44"
!EwNotebook methodsFor: 'recovered'!
eraseTabFocus: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) backingRenderContext.
    (recoveredValue0) eraseFocusUsing: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x2000533c; bytecode file offset 0x56104"
!EwNotebook methodsFor: 'recovered'!
addPage: recoveredArg1 before: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) addChild: (recoveredValue0) before: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x2000544c; bytecode file offset 0x56288"
!EwNotebook methodsFor: 'recovered'!
updateTabSize
    (self) updateForResize.
    (self) redraw.
    ^self
! !

"extwid.ic method 0x20005c2c; bytecode file offset 0x569fc"
!EwNotebook methodsFor: 'recovered'!
labelChangeRequiresLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) majorTabWidthPolicy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) majorPages.
    recoveredValue3 := (recoveredValue0) changedPage: (recoveredValue1) pages: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005f9c; bytecode file offset 0x56d6c"
!EwNotebook methodsFor: 'recovered'!
manageWidgetSystem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) workArea.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) manageChild.
    (recoveredValue0) sendToBack.
    ^self
! !

"extwid.ic method 0x20006cd4; bytecode file offset 0x57b48"
!EwNotebook methodsFor: 'recovered'!
pageChangeCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNpageChangeCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200071cc; bytecode file offset 0x57fa0"
!EwNotebook methodsFor: 'recovered'!
hasFocus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewHasFocus := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007210; bytecode file offset 0x57fd4"
!EwNotebook methodsFor: 'recovered'!
workArea: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewWorkArea := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000723c; bytecode file offset 0x58010"
!EwNotebook methodsFor: 'recovered'!
systemColors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewSystemColors := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007260; bytecode file offset 0x58054"
!EwNotebook methodsFor: 'recovered'!
gc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewGC := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200072b4; bytecode file offset 0x58088"
!EwNotebook methodsFor: 'recovered'!
renderContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewRenderContext := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007314; bytecode file offset 0x580d8"
!EwNotebook methodsFor: 'recovered'!
managedChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewManagedChildren := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20008098; bytecode file offset 0x58e6c"
!EwNotebook methodsFor: 'recovered'!
idealWidthOfTab: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tab.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) tabLabel.
    recoveredValue4 := (self) renderContext.
    recoveredValue5 := (recoveredValue1) widthOfLabel: (recoveredValue3) using: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x2000810c; bytecode file offset 0x58ed8"
!EwNotebook methodsFor: 'recovered'!
addedVisiblePage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) addTabColorsToPalette.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200081e8; bytecode file offset 0x590f4"
!EwNotebook methodsFor: 'recovered'!
createPage: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwPage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008650; bytecode file offset 0x5941c"
!EwNotebook methodsFor: 'recovered'!
destroy
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20008b00; bytecode file offset 0x598cc"
!EwNotebook methodsFor: 'recovered'!
createPage: recoveredArg1 argBlock: recoveredArg2 sharingWith: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EwPage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createVirtualWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2) sharingWith: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x20008d1c; bytecode file offset 0x59ae8"
!EwNotebook methodsFor: 'recovered'!
isAlive
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
            recoveredStack2 := (recoveredStack2) isCreated.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20009f30; bytecode file offset 0x5ad00"
!EwNotebook methodsFor: 'recovered'!
resize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
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
            recoveredStack0 := (recoveredStack0) initializeFontRelatedValues.
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
            (recoveredStack0) resize.
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

"extwid.ic method 0x2000a0a4; bytecode file offset 0x5ae90"
!EwNotebook methodsFor: 'recovered'!
firstExpose
    (self) initializeGC.
    (self) initializeRC.
    (self) initializeFontRelatedValues.
    (self) initializeTabSizes.
    ^self
! !

"extwid.ic method 0x2000a860; bytecode file offset 0x5b638"
!EwNotebook methodsFor: 'recovered'!
sizeWidgetSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) workArea.
    recoveredValue1 := (self) width.
    recoveredValue2 := (self) height.
    recoveredValue3 := (self) workArea.
    recoveredValue4 := (recoveredValue3) borderWidth.
    (recoveredValue0) resizeWidget: (recoveredValue1) height: (recoveredValue2) borderWidth: (recoveredValue4).
    ^self
! !

"extwid.ic method 0x2000aa38; bytecode file offset 0x5b804"
!EwNotebook methodsFor: 'recovered'!
fontList: recoveredArg1
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
            xmNfontList := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) updateFont.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000b074; bytecode file offset 0x5be50"
!EwNotebook methodsFor: 'recovered'!
updateRC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) renderContext.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) drawable.
    (recoveredValue1) drawable: (recoveredValue2).
    recoveredValue3 := (self) fontList.
    recoveredValue4 := (recoveredValue3) fontStruct.
    (recoveredValue0) fontStruct: (recoveredValue4).
    ^self
! !

"extwid.ic method 0x2000b0a8; bytecode file offset 0x5be88"
!EwNotebook methodsFor: 'recovered'!
backgroundGC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) gc.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue2) window.
    recoveredValue4 := (recoveredValue3) getPalette.
    recoveredValue5 := (self) backgroundColor.
    recoveredValue6 := (recoveredValue4) nearestPixelValue: (recoveredValue5).
    (recoveredValue1) setForeground: (recoveredValue6).
    ^recoveredValue0
! !

"extwid.ic method 0x2000b2f4; bytecode file offset 0x5c0c8"
!EwNotebook methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    ewHasFocus := false.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ewManagedChildren := recoveredValue1.
    ^self
! !

"extwid.ic method 0x2000b4bc; bytecode file offset 0x5c290"
!EwNotebook methodsFor: 'recovered'!
surfacePage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) sizePage: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) callPageEnterCallback.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) bringToFront.
    (recoveredValue1) mapWidget.
    ^self
! !

"extwid.ic method 0x2000b694; bytecode file offset 0x5c464"
!EwNotebook methodsFor: 'recovered'!
removePage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) removeChild: (recoveredStack1).
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

"extwid.ic method 0x2000b974; bytecode file offset 0x5c740"
!EwNotebook methodsFor: 'recovered'!
backgroundColor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNbackground.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := xmNbackground.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000bb58; bytecode file offset 0x5c93c"
!EwNotebook methodsFor: 'recovered'!
blackGC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) gc.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue2) window.
    recoveredValue4 := (recoveredValue3) getPalette.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) black.
    recoveredValue7 := (recoveredValue4) nearestPixelValue: (recoveredValue6).
    (recoveredValue1) setForeground: (recoveredValue7).
    ^recoveredValue0
! !

"extwid.ic method 0x2000bf18; bytecode file offset 0x5ccec"
!EwNotebook methodsFor: 'recovered'!
pageButtonHeight: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNpageButtonHeight.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNpageButtonHeight := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updatePageButtonHeight.
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

"extwid.ic method 0x2000bf44; bytecode file offset 0x5cd0c"
!EwNotebook methodsFor: 'recovered'!
pageButtonWidth: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNpageButtonWidth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNpageButtonWidth := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updatePageButtonWidth.
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

"extwid.ic method 0x2000bf64; bytecode file offset 0x5cd2c"
!EwNotebook methodsFor: 'recovered'!
backPagePosition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNbackPagePosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNbackPagePosition := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateBackPagePosition.
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

"extwid.ic method 0x2000bf84; bytecode file offset 0x5cd4c"
!EwNotebook methodsFor: 'recovered'!
orientation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNorientation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNorientation := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateOrientation.
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

"extwid.ic method 0x2000bfa4; bytecode file offset 0x5cd6c"
!EwNotebook methodsFor: 'recovered'!
bindingType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNbindingType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNbindingType := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateBindingType.
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

"extwid.ic method 0x2000cd48; bytecode file offset 0x5db2c"
!EwNotebook methodsFor: 'recovered'!
shadingGC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) gc.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue2) window.
    recoveredValue4 := (recoveredValue3) getPalette.
    recoveredValue5 := (self) systemColors.
    recoveredValue6 := (recoveredValue5) buttonShading.
    recoveredValue7 := (recoveredValue4) nearestPixelValue: (recoveredValue6).
    (recoveredValue1) setForeground: (recoveredValue7).
    ^recoveredValue0
! !

"extwid.ic method 0x2000d1e4; bytecode file offset 0x5dfb8"
!EwNotebook methodsFor: 'recovered'!
clipTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) shadingRenderContext.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) clipTo: (recoveredValue1).
    recoveredValue2 := (self) defaultRenderContext.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) clipTo: (recoveredValue3).
    recoveredValue4 := (self) backingRenderContext.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) clipTo: (recoveredValue5).
    ^self
! !

"extwid.ic method 0x2000d55c; bytecode file offset 0x5e32c"
!EwNotebook methodsFor: 'recovered'!
pageChangeCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNpageChangeCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) pageChangeCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNpageChangeCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000e2a8; bytecode file offset 0x5f078"
!EwNotebook methodsFor: 'recovered'!
updateTab: recoveredArg1 tabType: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTabVisible: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) drawTab: (recoveredStack1) tabType: (recoveredStack2).
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

"extwid.ic method 0x2000eaf4; bytecode file offset 0x5f8c4"
!EwNotebook methodsFor: 'recovered'!
drawChangedTabFocus: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) drawTabFocus: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) eraseTabFocus: (recoveredStack1).
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

"extwid.ic method 0x2000efa0; bytecode file offset 0x5fd84"
!EwNotebook methodsFor: 'recovered'!
initializeRC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EwRenderContext.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) drawable.
    (recoveredValue2) drawable: (recoveredValue3).
    recoveredValue4 := (self) fontList.
    recoveredValue5 := (recoveredValue4) fontStruct.
    recoveredValue6 := (recoveredValue1) fontStruct: (recoveredValue5).
    (self) renderContext: (recoveredValue6).
    ^self
! !

"extwid.ic method 0x2000f104; bytecode file offset 0x5fed4"
!EwNotebook methodsFor: 'recovered'!
isDrawEnabled
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
            recoveredStack2 := (recoveredStack2) isCreated.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDestroyed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000f804; bytecode file offset 0x605dc"
!EwNotebook methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('PR') = ('1EBWKGL').
    recoveredValue1 := CwDrawingArea.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) createWidget: (recoveredValue2) parent: (recoveredValue3) argBlock: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) userData: (self).
    ^recoveredValue5
! !

"extwid.ic method 0x200109ec; bytecode file offset 0x617b8"
!EwNotebook methodsFor: 'recovered'!
majorTabHeight: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNmajorTabHeight.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNmajorTabHeight := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updateMajorTabHeight.
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

"extwid.ic method 0x20010a18; bytecode file offset 0x617e4"
!EwNotebook methodsFor: 'recovered'!
minorTabHeight: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNminorTabHeight.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            xmNminorTabHeight := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updateMinorTabHeight.
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

"extwid.ic method 0x20010c70; bytecode file offset 0x61a48"
!EwNotebook methodsFor: 'recovered'!
addChild: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addedVisiblePage: (recoveredStack1).
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

"extwid.ic method 0x20010d04; bytecode file offset 0x61ad4"
!EwNotebook methodsFor: 'recovered'!
pageUnmanaged: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) managedChildren.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^self
].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) removedVisiblePage: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x200115fc; bytecode file offset 0x623f4"
!EwNotebook methodsFor: 'recovered'!
callCallbacks: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) perform: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := (recoveredBlock8Value0) callWith: (self) callData: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20012170; bytecode file offset 0x62f48"
!EwNotebook methodsFor: 'recovered'!
loseFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) hasFocus: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) focus.
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

"extwid.ic method 0x200123f8; bytecode file offset 0x631ec"
!EwNotebook methodsFor: 'recovered'!
clientHeight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwSystemPortability.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetExtentIncludesBorder.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) borderWidth.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20012414; bytecode file offset 0x631ec"
!EwNotebook methodsFor: 'recovered'!
clientWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwSystemPortability.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetExtentIncludesBorder.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) borderWidth.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2001341c; bytecode file offset 0x641f8"
!EwNotebook methodsFor: 'recovered'!
expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
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
            (recoveredStack0) firstExpose.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) event.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) rectangle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) clipTo: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) event.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) rectangle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) draw: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) clipTo: (recoveredStack1).
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

"extwid.ic method 0x20013de4; bytecode file offset 0x64bb4"
!EwNotebook methodsFor: 'recovered'!
createPage: recoveredArg1 argBlock: recoveredArg2 before: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := EwPage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EwPage.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4) before: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20013edc; bytecode file offset 0x64cb8"
!EwNotebook methodsFor: 'recovered'!
focus
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentPage.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) tab.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTabVisible: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) drawChangedTabFocus: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20013f94; bytecode file offset 0x64d68"
!EwNotebook methodsFor: 'recovered'!
currentPage: recoveredArg1
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPage.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) basicCurrentPage: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20014160; bytecode file offset 0x64f48"
!EwNotebook methodsFor: 'recovered'!
updateBackground: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) systemColors.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializePalette.
    recoveredValue2 := (recoveredValue0) palette.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) shell.
    recoveredValue4 := (recoveredValue3) window.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) setPalette: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) nearestPixelValue: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (self) gc.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) setBackground: (recoveredValue10).
    ^self
! !

"extwid.ic method 0x200149b8; bytecode file offset 0x657d4"
!EwNotebook methodsFor: 'recovered'!
tabsPerRow: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorTabWidthPolicy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) changedTabsPerRow: (recoveredStack1) pages: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) updateTabsPerRow.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorTabWidthPolicy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) tabsPerRow: (recoveredStack1).
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

"extwid.ic method 0x200149d8; bytecode file offset 0x657d4"
!EwNotebook methodsFor: 'recovered'!
minorTabWidth: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) minorTabWidthPolicy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) changedTabWidth: (recoveredStack1) pages: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) updateMinorTabWidth.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) minorTabWidthPolicy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200149f8; bytecode file offset 0x657d4"
!EwNotebook methodsFor: 'recovered'!
majorTabWidth: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorTabWidthPolicy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) changedTabWidth: (recoveredStack1) pages: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) updateMajorTabWidth.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorTabWidthPolicy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20014b38; bytecode file offset 0x65918"
!EwNotebook methodsFor: 'recovered'!
pageManaged: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280056e8Arg1 | 
    | block280056e8Value0 block280056e8Value1 |
    block280056e8Value0 := block280056e8Arg1.
    block280056e8Value1 := (block280056e8Value0) isManaged.
    block280056e8Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) managedChildren: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addedVisiblePage: (recoveredStack1).
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

"extwid.ic method 0x20014c5c; bytecode file offset 0x65a40"
!EwNotebook methodsFor: 'recovered'!
parentExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
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
            (recoveredStack0) initializeFontRelatedValues.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) sizeWidgetSystem.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) manageWidgetSystem.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'parentExpose:clientData:callData:'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) removeCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
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

"extwid.ic method 0x20014ca4; bytecode file offset 0x65a74"
!EwNotebook methodsFor: 'recovered'!
createPage: recoveredArg1 argBlock: recoveredArg2 before: recoveredArg3 sharingWith: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := EwPage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createVirtualWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4) sharingWith: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EwPage.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createVirtualWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4) before: (recoveredStack5) sharingWith: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x200162bc; bytecode file offset 0x670a8"
!EwNotebook methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workArea.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFontList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := EwSystemColors.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) workArea.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) systemColors: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) hookCallbacks.
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

"extwid.ic method 0x2001692c; bytecode file offset 0x67718"
!EwNotebook methodsFor: 'recovered'!
callPageChangeCallback: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwPageChangeCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) doit: (true).
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) newPage: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) currentPage: (recoveredValue7).
    recoveredValue8 := XmCRPAGECHANGE.
    (recoveredValue2) reason: (recoveredValue8).
    recoveredValue9 := XmNpageChangeCallback.
    recoveredValue10 := recoveredLocal1.
    (self) callCallbacks: (recoveredValue9) callData: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) doit.
    ^recoveredValue12
! !

"extwid.ic method 0x20017074; bytecode file offset 0x67e4c"
!EwNotebook methodsFor: 'recovered'!
removeChild: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) children.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := (self) managedChildren.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [
    ^self
].
    (recoveredValue3) remove: (recoveredValue4) ifAbsent: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) removedVisiblePage: (recoveredValue6).
    ^self
! !

"extwid.ic method 0x2001759c; bytecode file offset 0x68394"
!EwNotebook methodsFor: 'recovered'!
updateFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) updateRC.
    recoveredValue0 := (self) gc.
    recoveredValue1 := GCFont.
    recoveredValue2 := CgGCValues.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) fontList.
    recoveredValue5 := (recoveredValue4) fontStruct.
    recoveredValue6 := (recoveredValue5) fid.
    recoveredValue7 := (recoveredValue3) font: (recoveredValue6).
    (recoveredValue0) changeGC: (recoveredValue1) values: (recoveredValue7).
    (self) initializeFontRelatedValues.
    (self) updateForResize.
    (self) redraw.
    ^self
! !

"extwid.ic method 0x200184f0; bytecode file offset 0x692c8"
!EwNotebook methodsFor: 'recovered'!
backgroundColor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNbackground.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNbackground := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAlive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) workArea.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateBackground: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20019658; bytecode file offset 0x6a440"
!EwNotebook methodsFor: 'recovered'!
focus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EP2QXO'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) hasFocus: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) updateWidget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) focus.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001ad84; bytecode file offset 0x6bb64"
!EwNotebook methodsFor: 'recovered'!
tabWidthPolicy: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorTabWidthPolicy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) policyConstant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EwTabWidthPolicy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) majorTabWidthPolicy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) forTabWidthPolicy: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            xmNtabWidthPolicy := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := EwTabWidthPolicy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) minorTabWidthPolicy.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) forTabWidthPolicy: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ewMinorTabWidthPolicy := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) updateTabSize.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001b890; bytecode file offset 0x6c67c"
!EwNotebook methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    super initializeResources.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    xmNchildren := recoveredValue1.
    recoveredValue2 := EwTabWidthPolicy.
    recoveredValue3 := XmMAXIMUM.
    recoveredValue4 := (recoveredValue2) forTabWidthPolicy: (recoveredValue3) on: (self).
    xmNtabWidthPolicy := recoveredValue4.
    recoveredValue5 := EwTabWidthPolicy.
    recoveredValue6 := XmMAXIMUM.
    recoveredValue7 := (recoveredValue5) forTabWidthPolicy: (recoveredValue6) on: (self).
    ewMinorTabWidthPolicy := recoveredValue7.
    recoveredValue8 := XmNONE.
    xmNbindingType := recoveredValue8.
    recoveredValue9 := XmHORIZONTAL.
    xmNorientation := recoveredValue9.
    recoveredValue10 := XmBOTTOMRIGHT.
    xmNbackPagePosition := recoveredValue10.
    ^self
! !

"extwid.ic method 0x2001d318; bytecode file offset 0x6e10c"
!EwNotebook methodsFor: 'recovered'!
createWidgetSystem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwDrawingArea.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) primaryWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := [:block28005904Arg1 | 
    | block28005904Value0 block28005904Value1 block28005904Value2 block28005904Value3 block28005904Value4 block28005904Value5 block28005904Value6 |
    block28005904Value0 := block28005904Arg1.
    block28005904Value1 := block28005904Value0.
    (block28005904Value1) x: (0).
    block28005904Value2 := block28005904Value0.
    (block28005904Value2) y: (0).
    block28005904Value3 := block28005904Value0.
    block28005904Value4 := XmRESIZENONE.
    (block28005904Value3) resizePolicy: (block28005904Value4).
    block28005904Value5 := block28005904Value0.
    (block28005904Value5) marginWidth: (0).
    block28005904Value6 := (block28005904Value0) marginHeight: (0).
    block28005904Value6
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) workArea: (recoveredStack1).
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

"extwid.ic method 0x2001e7d8; bytecode file offset 0x6f5cc"
!EwNotebook methodsFor: 'recovered'!
primaryWidgetCreateArgBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    (recoveredBlock4Value1) marginWidth: (0).
    recoveredBlock4Value2 := recoveredBlock4Value0.
    (recoveredBlock4Value2) marginHeight: (0).
    recoveredBlock4Value3 := recoveredBlock4Value0.
    recoveredBlock4Value4 := (self) preferredWidth.
    (recoveredBlock4Value3) width: (recoveredBlock4Value4).
    recoveredBlock4Value5 := recoveredBlock4Value0.
    recoveredBlock4Value6 := (self) preferredHeight.
    (recoveredBlock4Value5) height: (recoveredBlock4Value6).
    recoveredBlock4Value7 := recoveredBlock4Value0.
    (recoveredBlock4Value7) strictClipping: (true).
    recoveredBlock4Value8 := XmRESIZENONE.
    (recoveredBlock4Value0) resizePolicy: (recoveredBlock4Value8).
    recoveredBlock4Value9 := recoveredArg1.
    recoveredBlock4Value10 := super primaryWidgetCreateArgBlock: (recoveredBlock4Value9).
    recoveredBlock4Value11 := recoveredBlock4Arg1.
    recoveredBlock4Value12 := (recoveredBlock4Value10) value: (recoveredBlock4Value11).
    recoveredBlock4Value12
].
    ^recoveredValue0
! !

"extwid.ic method 0x2001ec24; bytecode file offset 0x6fa08"
!EwNotebook methodsFor: 'recovered'!
updateTabLabelFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelChangeRequiresLayout: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) updateForResize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDrawEnabled.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) tab.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTabVisible: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) tab.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) tabType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) drawTab: (recoveredStack1) tabType: (recoveredStack2).
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

"extwid.ic method 0x20020378; bytecode file offset 0x71164"
!EwNotebook methodsFor: 'recovered'!
initializeTabSizes
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) majorPages.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) tab.
    recoveredBlock7Value2 := (self) majorTabHeight.
    recoveredBlock7Value3 := (recoveredBlock7Value1) height: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) majorTabWidthPolicy.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue3) initializeTabSizes: (recoveredValue4).
    recoveredValue5 := (self) minorPages.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (recoveredBlock33Value0) tab.
    recoveredBlock33Value2 := (self) minorTabHeight.
    recoveredBlock33Value3 := (recoveredBlock33Value1) height: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := (self) minorTabWidthPolicy.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) initializeTabSizes: (recoveredValue9).
    ^self
! !

"extwid.ic method 0x20027af8; bytecode file offset 0x78908"
!EwNotebook methodsFor: 'recovered'!
hookCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNresizeCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('resize:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := XmNdestroyCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('destroy:clientData:callData:') clientData: (nil).
    recoveredValue5 := XmNexposeCallback.
    (recoveredValue0) addCallback: (recoveredValue5) receiver: (self) selector: ('parentExpose:clientData:callData:') clientData: (nil).
    recoveredValue6 := (self) workArea.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := XmNexposeCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('expose:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := XmNfocusCallback.
    (recoveredValue9) addCallback: (recoveredValue10) receiver: (self) selector: ('focus:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredValue6.
    recoveredValue12 := XmNlosingFocusCallback.
    (recoveredValue11) addCallback: (recoveredValue12) receiver: (self) selector: ('loseFocus:clientData:callData:') clientData: (nil).
    recoveredValue13 := recoveredValue6.
    recoveredValue14 := KeyPressMask.
    (recoveredValue13) addEventHandler: (recoveredValue14) receiver: (self) selector: ('keyDown:clientData:callData:') clientData: (nil).
    recoveredValue15 := ButtonPressMask.
    (recoveredValue6) addEventHandler: (recoveredValue15) receiver: (self) selector: ('mouseDown:clientData:callData:') clientData: (nil).
    ^self
! !

"extwid.ic method 0x2002920c; bytecode file offset 0x7a044"
!EwNotebook methodsFor: 'recovered'!
initializeGC
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) systemColors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) palette.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) setPalette: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addTabColorsToPalette.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block28005c64Arg1 | 
    | block28005c64Stack0 block28005c64Stack1 block28005c64Stack2 block28005c64Stack3 block28005c64PC block28005c64Step block28005c64Done block28005c64Result |
    block28005c64Stack0 := self.
    block28005c64PC := 4.
    block28005c64Done := false.
    [block28005c64Done not] whileTrue: [
        block28005c64Step := block28005c64PC.
        block28005c64Step = 4 ifTrue: [
            block28005c64Stack1 := nil.
            block28005c64PC := 5.
        ].
        block28005c64Step = 5 ifTrue: [
            block28005c64Stack2 := block28005c64Arg1.
            block28005c64PC := 6.
        ].
        block28005c64Step = 6 ifTrue: [
            block28005c64Stack2 := (block28005c64Stack2) isPage.
            block28005c64PC := 8.
        ].
        block28005c64Step = 8 ifTrue: [
            (block28005c64Stack2) ifTrue: [block28005c64PC := 12] ifFalse: [block28005c64PC := 16].
        ].
        block28005c64Step = 12 ifTrue: [
            block28005c64PC := 13.
        ].
        block28005c64Step = 13 ifTrue: [
            block28005c64Stack1 := block28005c64Arg1.
            block28005c64PC := 14.
        ].
        block28005c64Step = 14 ifTrue: [
            block28005c64Stack1 := (block28005c64Stack1) updateColorPixel.
            block28005c64PC := 16.
        ].
        block28005c64Step = 16 ifTrue: [
            block28005c64Result := block28005c64Stack1.
            block28005c64Done := true.
        ].
    ].
    block28005c64Result
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawable.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := GCBackground.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := GCFont.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := GCForeground.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := CgGCValues.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := (recoveredStack5) fontList.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) fontStruct.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := (recoveredStack5) fid.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack4) font: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack6 := (recoveredStack6) foregroundColor.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := (recoveredStack5) nearestPixelValue: (recoveredStack6).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack4) foreground: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack6 := (recoveredStack6) backgroundColor.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := (recoveredStack5) nearestPixelValue: (recoveredStack6).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack4) background: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) gc: (recoveredStack1).
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

"extwid.ic method 0x200292e4; bytecode file offset 0x7a0d8"
!EwNotebook methodsFor: 'recovered'!
addChild: recoveredArg1 before: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) before: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) before: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 |
    recoveredBlock47Value0 := (self) managedChildren.
    recoveredBlock47Value1 := recoveredBlock47Arg1.
    recoveredBlock47Value2 := (recoveredBlock47Value0) includes: (recoveredBlock47Value1).
    recoveredBlock47Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) before: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) managedChildren.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
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
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) addedVisiblePage: (recoveredStack1).
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

"extwid.ic method 0x2002d09c; bytecode file offset 0x7dea0"
!EwNotebook methodsFor: 'recovered'!
addTabColorsToPalette
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPalette.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) colors.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isPage.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 34] ifFalse: [recoveredBlock20PC := 75].
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) tabBackgroundColor.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal4.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) includes: (recoveredBlock20Stack3).
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 75] ifFalse: [recoveredBlock20PC := 54].
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 75] ifFalse: [recoveredBlock20PC := 62].
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20Stack1 := true.
            recoveredBlock20PC := 64.
        ].
        recoveredBlock20Step = 64 ifTrue: [
            recoveredLocal3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 67.
        ].
        recoveredBlock20Step = 67 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal4.
            recoveredBlock20PC := 70.
        ].
        recoveredBlock20Step = 70 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 73.
        ].
        recoveredBlock20Step = 73 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 75.
        ].
        recoveredBlock20Step = 75 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) systemColors.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) colors: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) palette: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) setPalette: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

