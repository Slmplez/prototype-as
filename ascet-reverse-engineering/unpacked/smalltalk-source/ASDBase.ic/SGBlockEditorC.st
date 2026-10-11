"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003310; bytecode file offset 0x8ffcfc"
!SGBlockEditorC methodsFor: 'recovered'!
getBDEController
    ^self
! !

"ASDBase.ic method 0x200082f4; bytecode file offset 0x908be4"
!SGBlockEditorC methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := (self) sgClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c2c0; bytecode file offset 0x908be4"
!SGBlockEditorC methodsFor: 'recovered'!
hasVisibleSequenceCall
    | recoveredValue0 |
    recoveredValue0 := (self) visibleSequenceCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013adc; bytecode file offset 0x912098"
!SGBlockEditorC methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027a3c; bytecode file offset 0x92454c"
!SGBlockEditorC methodsFor: 'recovered'!
hasInvisibleSequenceCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) visibleSequenceCalls.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bc04; bytecode file offset 0x934580"
!SGBlockEditorC methodsFor: 'recovered'!
databaseAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := (recoveredValue0) databaseAccess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033d94; bytecode file offset 0x934580"
!SGBlockEditorC methodsFor: 'recovered'!
booleanTemplate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) databaseAccess.
    recoveredValue1 := (recoveredValue0) booleanTemplate.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d168; bytecode file offset 0x93bf94"
!SGBlockEditorC methodsFor: 'recovered'!
toolString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) toolString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d598; bytecode file offset 0x93bf94"
!SGBlockEditorC methodsFor: 'recovered'!
userName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) userName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d9e8; bytecode file offset 0x93bf94"
!SGBlockEditorC methodsFor: 'recovered'!
company
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) company.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ee78; bytecode file offset 0x93bf94"
!SGBlockEditorC methodsFor: 'recovered'!
licence
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) licence.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041c6c; bytecode file offset 0x93e560"
!SGBlockEditorC methodsFor: 'recovered'!
graphMenu
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := paneController.
    recoveredValue1 := (recoveredValue0) graphMenu.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048ac4; bytecode file offset 0x945380"
!SGBlockEditorC methodsFor: 'recovered'!
clearModified
    modified := false.
    ^self
! !

"ASDBase.ic method 0x20048ae4; bytecode file offset 0x945398"
!SGBlockEditorC methodsFor: 'recovered'!
clearMethodVisibilityModified
    methodVisibilityModified := false.
    ^self
! !

"ASDBase.ic method 0x2004aa20; bytecode file offset 0x9472d4"
!SGBlockEditorC methodsFor: 'recovered'!
setModified
    modified := true.
    ^self
! !

"ASDBase.ic method 0x2004aa30; bytecode file offset 0x9472f4"
!SGBlockEditorC methodsFor: 'recovered'!
setMethodVisibilityModified
    methodVisibilityModified := true.
    ^self
! !

"ASDBase.ic method 0x2005dd80; bytecode file offset 0x95a674"
!SGBlockEditorC methodsFor: 'recovered'!
modifyBlockDisplay
    | recoveredValue0 |
    recoveredValue0 := paneController.
    (recoveredValue0) modifyBlockDisplay.
    ^self
! !

"ASDBase.ic method 0x2005dd8c; bytecode file offset 0x95a674"
!SGBlockEditorC methodsFor: 'recovered'!
grid
    | recoveredValue0 |
    recoveredValue0 := paneController.
    (recoveredValue0) grid.
    ^self
! !

"ASDBase.ic method 0x2005dd98; bytecode file offset 0x95a674"
!SGBlockEditorC methodsFor: 'recovered'!
showDefaultBlockDisplay
    | recoveredValue0 |
    recoveredValue0 := paneController.
    (recoveredValue0) showDefaultBlockDisplay.
    ^self
! !

"ASDBase.ic method 0x2005dda4; bytecode file offset 0x95a674"
!SGBlockEditorC methodsFor: 'recovered'!
redraw
    | recoveredValue0 |
    recoveredValue0 := paneController.
    (recoveredValue0) redraw.
    ^self
! !

"ASDBase.ic method 0x2005ddbc; bytecode file offset 0x95a674"
!SGBlockEditorC methodsFor: 'recovered'!
zoom100
    | recoveredValue0 |
    recoveredValue0 := paneController.
    (recoveredValue0) zoom100.
    ^self
! !

"ASDBase.ic method 0x200689a4; bytecode file offset 0x965b90"
!SGBlockEditorC methodsFor: 'recovered'!
selectorPortEnabledElementDictionary
    | recoveredValue0 |
    recoveredValue0 := selectorPortEnabledElementDictionary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069c80; bytecode file offset 0x966bdc"
!SGBlockEditorC methodsFor: 'recovered'!
returnPortEnabledElementDictionary
    | recoveredValue0 |
    recoveredValue0 := returnPortEnabledElementDictionary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a33c; bytecode file offset 0x967a18"
!SGBlockEditorC methodsFor: 'recovered'!
sgClass
    | recoveredValue0 |
    recoveredValue0 := sgClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b7b0; bytecode file offset 0x96873c"
!SGBlockEditorC methodsFor: 'recovered'!
paneController
    | recoveredValue0 |
    recoveredValue0 := paneController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c694; bytecode file offset 0x9692b0"
!SGBlockEditorC methodsFor: 'recovered'!
graphicObject
    | recoveredValue0 |
    recoveredValue0 := graphicObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cdc0; bytecode file offset 0x969c04"
!SGBlockEditorC methodsFor: 'recovered'!
modified
    | recoveredValue0 |
    recoveredValue0 := modified.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073ed8; bytecode file offset 0x970b34"
!SGBlockEditorC methodsFor: 'recovered'!
datamodelManager
    ^nil
! !

"ASDBase.ic method 0x2007a494; bytecode file offset 0x97c330"
!SGBlockEditorC methodsFor: 'recovered'!
isCTContext
    ^false
! !

"ASDBase.ic method 0x2008eaa8; bytecode file offset 0x98b37c"
!SGBlockEditorC methodsFor: 'recovered'!
determineBlockLayoutDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graphicObject.
    recoveredValue1 := paneController.
    recoveredValue2 := (recoveredValue1) raster.
    recoveredValue3 := (recoveredValue0) determineBlockLayoutDictionaryRaster: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20092e54; bytecode file offset 0x98f718"
!SGBlockEditorC methodsFor: 'recovered'!
editRaster: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := paneController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) editRaster: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097a64; bytecode file offset 0x995850"
!SGBlockEditorC methodsFor: 'recovered'!
addInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphicObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addInterface: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c06c4; bytecode file offset 0x9bd228"
!SGBlockEditorC methodsFor: 'recovered'!
selectorPortEnabledElementDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectorPortEnabledElementDictionary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c13a8; bytecode file offset 0x9bdf14"
!SGBlockEditorC methodsFor: 'recovered'!
returnPortEnabledElementDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    returnPortEnabledElementDictionary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f4c; bytecode file offset 0x9beac8"
!SGBlockEditorC methodsFor: 'recovered'!
sgClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sgClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c345c; bytecode file offset 0x9bfde0"
!SGBlockEditorC methodsFor: 'recovered'!
graphicObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    graphicObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c45f0; bytecode file offset 0x9c11bc"
!SGBlockEditorC methodsFor: 'recovered'!
visibleSequenceCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleSequenceCalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d00bc; bytecode file offset 0x9cc978"
!SGBlockEditorC methodsFor: 'recovered'!
hasEditableLayout
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := flexibleClassLayout.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d09d4; bytecode file offset 0x9cd3a0"
!SGBlockEditorC methodsFor: 'recovered'!
allRepresentedMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := (self) item.
    recoveredValue2 := (recoveredValue1) getCompleteMethodListForGraphicsBlockLayout.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010d000; bytecode file offset 0xa098c4"
!SGBlockEditorC methodsFor: 'recovered'!
initFlexibleClassLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) hasEditableLayout.
    (self) hasEditableLayout: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011603c; bytecode file offset 0xa128f4"
!SGBlockEditorC methodsFor: 'recovered'!
showSequenceCalls
    | recoveredValue0 |
    recoveredValue0 := graphicObject.
    (recoveredValue0) sequenceVisibility: (true) unused: (true) used: (true) method: (nil).
    modified := true.
    ^self
! !

"ASDBase.ic method 0x20121898; bytecode file offset 0xa1e15c"
!SGBlockEditorC methodsFor: 'recovered'!
initUIWithGraphPane: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) paneControllerClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createWithOwner: (self) widget: (recoveredValue2).
    paneController := recoveredValue3.
    (self) updateForGraphicObject.
    ^self
! !

"ASDBase.ic method 0x2012bcfc; bytecode file offset 0xa285bc"
!SGBlockEditorC methodsFor: 'recovered'!
enableMechanismOn
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
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCTClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013b1ec; bytecode file offset 0xa37ab4"
!SGBlockEditorC methodsFor: 'recovered'!
defaultPositionSequenceCalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := graphicObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequenceCalls.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280cb6e8Arg1 | 
    | block280cb6e8Value0 block280cb6e8Value1 block280cb6e8Value2 |
    block280cb6e8Value0 := block280cb6e8Arg1.
    block280cb6e8Value1 := (block280cb6e8Value0) manager.
    block280cb6e8Value2 := (block280cb6e8Value1) repositionSequenceCall.
    block280cb6e8Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201420ac; bytecode file offset 0xa3e96c"
!SGBlockEditorC methodsFor: 'recovered'!
changeImageFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := graphicObject.
    recoveredValue1 := (recoveredValue0) symbolGO.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) changeImageFor: (recoveredValue2).
    recoveredValue3 := graphicObject.
    (recoveredValue3) iconVisibility: (true).
    modified := true.
    ^self
! !

"ASDBase.ic method 0x20153658; bytecode file offset 0xa4ff1c"
!SGBlockEditorC methodsFor: 'recovered'!
updateBlockLayoutWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    modified := true.
    recoveredValue0 := (self) graphicObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := paneController.
    recoveredValue3 := (recoveredValue2) raster.
    (recoveredValue0) updateBlockLayoutOn: (recoveredValue1) raster: (recoveredValue3).
    recoveredValue4 := paneController.
    (recoveredValue4) redraw.
    ^self
! !

"ASDBase.ic method 0x2019fdcc; bytecode file offset 0xa9c68c"
!SGBlockEditorC methodsFor: 'recovered'!
visibleSequenceCalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := visibleSequenceCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block280d2180Arg1 | 
    | block280d2180Value0 block280d2180Value1 |
    block280d2180Value0 := block280d2180Arg1.
    block280d2180Value1 := (block280d2180Value0) isVisible.
    block280d2180Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkVisibleSequenceCall: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            visibleSequenceCalls := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := visibleSequenceCalls.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201af66c; bytecode file offset 0xaabf34"
!SGBlockEditorC methodsFor: 'recovered'!
itemIsModifiable
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
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProductActivationMD.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifyDBAllowed.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b52e0; bytecode file offset 0xab1ba0"
!SGBlockEditorC methodsFor: 'recovered'!
showSequenceCalls: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := graphicObject.
    recoveredValue1 := (recoveredValue0) sequenceCalls.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) visible: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue1) do: (recoveredValue2).
    modified := true.
    ^self
! !

"ASDBase.ic method 0x201ea3ec; bytecode file offset 0xae6cd0"
!SGBlockEditorC methodsFor: 'recovered'!
getRasterPoint: recoveredArg1 gO: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) manager.
    recoveredValue2 := (recoveredValue1) controller.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) raster.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := (recoveredBlock9Value1) rasterPoint: (recoveredBlock9Value2).
    ^recoveredBlock9Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f0f78; bytecode file offset 0xaed848"
!SGBlockEditorC methodsFor: 'recovered'!
doEndModificationActions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('hw') == ('call_2009403280').
    (self) setModified.
    (self) storeAndUpdateTempGraphicObject.
    (self) setMethodVisibilityModified.
    (self) redraw.
    recoveredValue1 := paneController.
    (recoveredValue1) initializeOnFirstExpose.
    (self) setModified.
    ^self
! !

"ASDBase.ic method 0x201f50cc; bytecode file offset 0xaf1998"
!SGBlockEditorC methodsFor: 'recovered'!
addItemIsAllowed: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isImage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'You can only select an icon !!'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLibrary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20203f28; bytecode file offset 0xb007f4"
!SGBlockEditorC methodsFor: 'recovered'!
checkVisibleSequenceCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graphicObject.
    recoveredValue1 := (recoveredValue0) sequenceCalls.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) value: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 27].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) manager.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isVisible.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue3 := (recoveredValue1) anySatisfy: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2021c6f8; bytecode file offset 0xb18fbc"
!SGBlockEditorC methodsFor: 'recovered'!
hasEditableLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := recoveredArg1.
    flexibleClassLayout := recoveredValue1.
    recoveredValue2 := graphicObject.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) flexibleCreated: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20230368; bytecode file offset 0xb2cc40"
!SGBlockEditorC methodsFor: 'recovered'!
updateForGraphicObject
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := (self) graphicObject.
    recoveredValue2 := paneController.
    (recoveredValue1) setManager: (recoveredValue2).
    recoveredValue3 := (self) graphicObject.
    recoveredValue4 := (recoveredValue3) frameGO.
    recoveredValue5 := PinDistance.
    recoveredValue6 := PinDistance.
    recoveredValue7 := (recoveredValue5) @ (recoveredValue6).
    (recoveredValue4) minSize: (recoveredValue7).
    recoveredValue8 := paneController.
    recoveredValue9 := (self) graphicObject.
    (recoveredValue8) updateForGraphicObject: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2025d7ac; bytecode file offset 0xb5a07c"
!SGBlockEditorC methodsFor: 'recovered'!
getElementBasic: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasForPortStorage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasReturnValue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnPortEnabledElementDictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorPortEnabledElementDictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026810c; bytecode file offset 0xb649dc"
!SGBlockEditorC methodsFor: 'recovered'!
setElementBasic: recoveredArg1 enabled: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasForPortStorage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasReturnValue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnPortEnabledElementDictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorPortEnabledElementDictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ad654; bytecode file offset 0xba9f34"
!SGBlockEditorC methodsFor: 'recovered'!
elementAliasName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := ('hw') == ('call_84848').
    recoveredValue2 := SGAliasVariable.
    recoveredValue3 := SGAliasVariable.
    recoveredValue4 := (recoveredValue3) dummyLayoutVarName.
    recoveredValue5 := (self) sgClass.
    recoveredValue6 := (recoveredValue5) asSelfClass.
    recoveredValue7 := (recoveredValue2) create: (recoveredValue4) sgClass: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) setWrite.
    recoveredValue10 := recoveredValue8.
    (recoveredValue10) setRead.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) sgClass.
    (recoveredValue11) sgClass: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x202db524; bytecode file offset 0xbd7e00"
!SGBlockEditorC methodsFor: 'recovered'!
repositionGraphObject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := paneController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := paneController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) rasterPoint: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneController.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) deselectActiveGO.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203919f0; bytecode file offset 0xc8e2d0"
!SGBlockEditorC methodsFor: 'recovered'!
interface: recoveredArg1 equalToMethod: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84192'.
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
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_84848'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodAliasName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSelectorPort.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) isSelectorPort.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodParameters.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2039b0fc; bytecode file offset 0xc979f4"
!SGBlockEditorC methodsFor: 'recovered'!
initializeWithProgressDialog: recoveredArg1
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
            recoveredStack2 := 'call_92964'.
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
            super initialize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) clearModified.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) clearMethodVisibilityModified.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicRepresentation.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) initEnabledElementDictGraphicsDB: (recoveredStack1) progressDialog: (recoveredStack2).
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
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicRepresentation.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) initFlexibleClassLayout: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGraphicObjectProgressDialog: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneControllerClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithOwner: (recoveredStack1) widget: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            paneController := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := paneController.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) setManager: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040c328; bytecode file offset 0xd08c34"
!SGBlockEditorC methodsFor: 'recovered'!
storeChanges
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_92964'.
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
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getGraphicRepresentation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEditableLayout.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) storeChangesBasic.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Call_55561'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := methodVisibilityModified.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) allRepresentedMethods.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Local1 recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) hasReturnValue.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 52] ifFalse: [recoveredBlock39PC := 58].
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack1 := self.
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) returnPortEnabledElementDictionary.
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack1 := self.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) selectorPortEnabledElementDictionary.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Local1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Local1.
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 65.
        ].
        recoveredBlock39Step = 65 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) methodAliasForPortStorage.
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Stack4 := [
    true
].
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39PC := 74.
        ].
        recoveredBlock39Step = 74 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) at: (recoveredBlock39Stack3) ifAbsent: (recoveredBlock39Stack4).
            recoveredBlock39PC := 76.
        ].
        recoveredBlock39Step = 76 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) enabled: (recoveredBlock39Stack2).
            recoveredBlock39PC := 78.
        ].
        recoveredBlock39Step = 78 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) getGraphicRepresentation.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicObject.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) storageObject.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) contents: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ca550; bytecode file offset 0xdc6e74"
!SGBlockEditorC methodsFor: 'recovered'!
storeAndUpdateTempGraphicObject
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
            recoveredStack2 := 'call_92964'.
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
            (recoveredStack0) storeChanges.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allRepresentedMethods.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block28106e4cArg1 | 
    | block28106e4cValue0 block28106e4cValue1 |
    block28106e4cValue0 := block28106e4cArg1.
    block28106e4cValue1 := (block28106e4cValue0) duplicate.
    block28106e4cValue1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
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
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := (self) getElementBasic: (recoveredBlock32Value0).
    recoveredBlock32Value2 := [:recoveredBlock32Block43Arg1 | 
    | recoveredBlock32Block43Value0 recoveredBlock32Block43Value1 recoveredBlock32Block43Value2 |
    recoveredBlock32Block43Value0 := recoveredBlock32Arg1.
    recoveredBlock32Block43Value1 := recoveredBlock32Block43Arg1.
    recoveredBlock32Block43Value2 := (recoveredBlock32Block43Value0) enabled: (recoveredBlock32Block43Value1).
    recoveredBlock32Block43Value2
].
    recoveredBlock32Value3 := (recoveredBlock32Value1) ifNotNil: (recoveredBlock32Value2).
    recoveredBlock32Value3
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectorPortEnabledElementDictionary.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnPortEnabledElementDictionary.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGraphicObjectMethods: (recoveredStack1) selectorPortDictTable: (recoveredStack2) returnPortDictTable: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) graphicObject: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 recoveredBlock91Value4 recoveredBlock91Value5 |
    recoveredBlock91Value0 := (self) selectorPortEnabledElementDictionary.
    recoveredBlock91Value1 := recoveredBlock91Arg1.
    recoveredBlock91Value2 := (recoveredBlock91Value1) manager.
    recoveredBlock91Value3 := (recoveredBlock91Value2) methodAliasName.
    recoveredBlock91Value4 := [:recoveredBlock91Block107Arg1 | 
    | recoveredBlock91Block107Value0 recoveredBlock91Block107Value1 recoveredBlock91Block107Value2 |
    recoveredBlock91Block107Value0 := recoveredBlock91Arg1.
    recoveredBlock91Block107Value1 := (self) hasVisibleSequenceCall.
    recoveredBlock91Block107Value2 := (recoveredBlock91Block107Value0) visible: (recoveredBlock91Block107Value1).
    recoveredBlock91Block107Value2
].
    recoveredBlock91Value5 := (recoveredBlock91Value0) at: (recoveredBlock91Value3) ifPresent: (recoveredBlock91Value4).
    recoveredBlock91Value5
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := paneController.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) setManager: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) updateForGraphicObject.
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

"ASDBase.ic method 0x204f6404; bytecode file offset 0xdf2cf8"
!SGBlockEditorC methodsFor: 'recovered'!
storeChangesBasic
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
            recoveredStack2 := 'call_92964'.
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
            recoveredStack1 := modified.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := paneController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := paneController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) deselect.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := graphicObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'call_2009403280'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := selectorPortEnabledElementDictionary.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 recoveredBlock40Value6 |
    recoveredBlock40Value0 := graphicObject.
    recoveredBlock40Value1 := (recoveredBlock40Value0) interfaceGOs.
    recoveredBlock40Value2 := [:recoveredBlock40Block50Arg1 | 
    | recoveredBlock40Block50Stack0 recoveredBlock40Block50Stack1 recoveredBlock40Block50Stack2 recoveredBlock40Block50Stack3 recoveredBlock40Block50Stack4 recoveredBlock40Block50PC recoveredBlock40Block50Step recoveredBlock40Block50Done recoveredBlock40Block50Result |
    recoveredBlock40Block50Stack0 := nil.
    recoveredBlock40Block50PC := 56.
    recoveredBlock40Block50Done := false.
    [recoveredBlock40Block50Done not] whileTrue: [
        recoveredBlock40Block50Step := recoveredBlock40Block50PC.
        recoveredBlock40Block50Step = 56 ifTrue: [
            recoveredBlock40Block50Stack1 := false.
            recoveredBlock40Block50PC := 57.
        ].
        recoveredBlock40Block50Step = 57 ifTrue: [
            recoveredBlock40Block50Stack2 := recoveredBlock40Block50Arg1.
            recoveredBlock40Block50PC := 58.
        ].
        recoveredBlock40Block50Step = 58 ifTrue: [
            recoveredBlock40Block50Stack2 := (recoveredBlock40Block50Stack2) methodAliasName.
            recoveredBlock40Block50PC := 60.
        ].
        recoveredBlock40Block50Step = 60 ifTrue: [
            recoveredBlock40Block50Stack3 := recoveredBlock40Arg1.
            recoveredBlock40Block50PC := 63.
        ].
        recoveredBlock40Block50Step = 63 ifTrue: [
            recoveredBlock40Block50Stack3 := (recoveredBlock40Block50Stack3) key.
            recoveredBlock40Block50PC := 65.
        ].
        recoveredBlock40Block50Step = 65 ifTrue: [
            recoveredBlock40Block50Stack2 := (recoveredBlock40Block50Stack2) equals: (recoveredBlock40Block50Stack3).
            recoveredBlock40Block50PC := 67.
        ].
        recoveredBlock40Block50Step = 67 ifTrue: [
            (recoveredBlock40Block50Stack2) ifTrue: [recoveredBlock40Block50PC := 70] ifFalse: [recoveredBlock40Block50PC := 74].
        ].
        recoveredBlock40Block50Step = 70 ifTrue: [
            recoveredBlock40Block50PC := 71.
        ].
        recoveredBlock40Block50Step = 71 ifTrue: [
            recoveredBlock40Block50Stack1 := recoveredBlock40Block50Arg1.
            recoveredBlock40Block50PC := 72.
        ].
        recoveredBlock40Block50Step = 72 ifTrue: [
            recoveredBlock40Block50Stack1 := (recoveredBlock40Block50Stack1) isSelectorPort.
            recoveredBlock40Block50PC := 74.
        ].
        recoveredBlock40Block50Step = 74 ifTrue: [
            recoveredBlock40Block50Result := recoveredBlock40Block50Stack1.
            recoveredBlock40Block50Done := true.
        ].
    ].
    recoveredBlock40Block50Result
].
    recoveredBlock40Value3 := [].
    recoveredBlock40Value4 := (recoveredBlock40Value1) detect: (recoveredBlock40Value2) ifNone: (recoveredBlock40Value3).
    recoveredBlock40Value5 := [:recoveredBlock40Block79Arg1 | 
    | recoveredBlock40Block79Value0 recoveredBlock40Block79Value1 recoveredBlock40Block79Value2 recoveredBlock40Block79Value3 |
    recoveredBlock40Block79Value0 := recoveredBlock40Block79Arg1.
    recoveredBlock40Block79Value1 := recoveredBlock40Arg1.
    recoveredBlock40Block79Value2 := (recoveredBlock40Block79Value1) value.
    recoveredBlock40Block79Value3 := (recoveredBlock40Block79Value0) userVisibilityPins: (recoveredBlock40Block79Value2).
    recoveredBlock40Block79Value3
].
    recoveredBlock40Value6 := (recoveredBlock40Value4) ifNotNil: (recoveredBlock40Value5).
    recoveredBlock40Value6
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := returnPortEnabledElementDictionary.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 recoveredBlock102Value3 recoveredBlock102Value4 recoveredBlock102Value5 recoveredBlock102Value6 |
    recoveredBlock102Value0 := graphicObject.
    recoveredBlock102Value1 := (recoveredBlock102Value0) interfaceGOs.
    recoveredBlock102Value2 := [:recoveredBlock102Block112Arg1 | 
    | recoveredBlock102Block112Stack0 recoveredBlock102Block112Stack1 recoveredBlock102Block112Stack2 recoveredBlock102Block112Stack3 recoveredBlock102Block112Stack4 recoveredBlock102Block112PC recoveredBlock102Block112Step recoveredBlock102Block112Done recoveredBlock102Block112Result |
    recoveredBlock102Block112Stack0 := nil.
    recoveredBlock102Block112PC := 118.
    recoveredBlock102Block112Done := false.
    [recoveredBlock102Block112Done not] whileTrue: [
        recoveredBlock102Block112Step := recoveredBlock102Block112PC.
        recoveredBlock102Block112Step = 118 ifTrue: [
            recoveredBlock102Block112Stack1 := false.
            recoveredBlock102Block112PC := 119.
        ].
        recoveredBlock102Block112Step = 119 ifTrue: [
            recoveredBlock102Block112Stack2 := recoveredBlock102Block112Arg1.
            recoveredBlock102Block112PC := 120.
        ].
        recoveredBlock102Block112Step = 120 ifTrue: [
            recoveredBlock102Block112Stack2 := (recoveredBlock102Block112Stack2) methodAliasName.
            recoveredBlock102Block112PC := 122.
        ].
        recoveredBlock102Block112Step = 122 ifTrue: [
            recoveredBlock102Block112Stack3 := recoveredBlock102Arg1.
            recoveredBlock102Block112PC := 125.
        ].
        recoveredBlock102Block112Step = 125 ifTrue: [
            recoveredBlock102Block112Stack3 := (recoveredBlock102Block112Stack3) key.
            recoveredBlock102Block112PC := 127.
        ].
        recoveredBlock102Block112Step = 127 ifTrue: [
            recoveredBlock102Block112Stack2 := (recoveredBlock102Block112Stack2) equals: (recoveredBlock102Block112Stack3).
            recoveredBlock102Block112PC := 129.
        ].
        recoveredBlock102Block112Step = 129 ifTrue: [
            (recoveredBlock102Block112Stack2) ifTrue: [recoveredBlock102Block112PC := 132] ifFalse: [recoveredBlock102Block112PC := 137].
        ].
        recoveredBlock102Block112Step = 132 ifTrue: [
            recoveredBlock102Block112PC := 133.
        ].
        recoveredBlock102Block112Step = 133 ifTrue: [
            recoveredBlock102Block112Stack1 := recoveredBlock102Block112Arg1.
            recoveredBlock102Block112PC := 134.
        ].
        recoveredBlock102Block112Step = 134 ifTrue: [
            recoveredBlock102Block112Stack1 := (recoveredBlock102Block112Stack1) isSelectorPort.
            recoveredBlock102Block112PC := 136.
        ].
        recoveredBlock102Block112Step = 136 ifTrue: [
            recoveredBlock102Block112Stack1 := (recoveredBlock102Block112Stack1) not.
            recoveredBlock102Block112PC := 137.
        ].
        recoveredBlock102Block112Step = 137 ifTrue: [
            recoveredBlock102Block112Result := recoveredBlock102Block112Stack1.
            recoveredBlock102Block112Done := true.
        ].
    ].
    recoveredBlock102Block112Result
].
    recoveredBlock102Value3 := [].
    recoveredBlock102Value4 := (recoveredBlock102Value1) detect: (recoveredBlock102Value2) ifNone: (recoveredBlock102Value3).
    recoveredBlock102Value5 := [:recoveredBlock102Block142Arg1 | 
    | recoveredBlock102Block142Value0 recoveredBlock102Block142Value1 recoveredBlock102Block142Value2 recoveredBlock102Block142Value3 |
    recoveredBlock102Block142Value0 := recoveredBlock102Block142Arg1.
    recoveredBlock102Block142Value1 := recoveredBlock102Arg1.
    recoveredBlock102Block142Value2 := (recoveredBlock102Block142Value1) value.
    recoveredBlock102Block142Value3 := (recoveredBlock102Block142Value0) userVisibilityPins: (recoveredBlock102Block142Value2).
    recoveredBlock102Block142Value3
].
    recoveredBlock102Value6 := (recoveredBlock102Value4) ifNotNil: (recoveredBlock102Value5).
    recoveredBlock102Value6
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'call_2007401859'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            modified := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20517358; bytecode file offset 0xe13c78"
!SGBlockEditorC methodsFor: 'recovered'!
initEnabledElementDictGraphicsDB: recoveredArg1 progressDialog: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) returnPortEnabledElementDictionary: (recoveredValue1).
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    (self) selectorPortEnabledElementDictionary: (recoveredValue3).
    recoveredValue4 := ('hw') == ('call_84627').
    recoveredValue5 := (self) allRepresentedMethods.
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Local3 recoveredBlock28Local4 recoveredBlock28Local5 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg2.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := 100.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) \\ (recoveredBlock28Stack2).
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack2 := 0.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) equals: (recoveredBlock28Stack2).
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 48] ifFalse: [recoveredBlock28PC := 78].
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg2.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack3 := recoveredLocal1.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) size.
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) / (recoveredBlock28Stack3).
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack3 := (Fraction) numerator: (1) denominator: (6).
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) * (recoveredBlock28Stack3).
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack3 := 0.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) + (recoveredBlock28Stack3).
            recoveredBlock28PC := 66.
        ].
        recoveredBlock28Step = 66 ifTrue: [
            (recoveredBlock28Stack1) fractionComplete: (recoveredBlock28Stack2).
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg2.
            recoveredBlock28PC := 71.
        ].
        recoveredBlock28Step = 71 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) cancelled.
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 76] ifFalse: [recoveredBlock28PC := 78].
        ].
        recoveredBlock28Step = 76 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 77.
        ].
        recoveredBlock28Step = 77 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 78 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) enabled.
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            recoveredBlock28Local4 := recoveredBlock28Stack1.
            recoveredBlock28PC := 83.
        ].
        recoveredBlock28Step = 83 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local4.
            recoveredBlock28PC := 84.
        ].
        recoveredBlock28Step = 84 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 88] ifFalse: [recoveredBlock28PC := 153].
        ].
        recoveredBlock28Step = 88 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 91.
        ].
        recoveredBlock28Step = 91 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 93.
        ].
        recoveredBlock28Step = 93 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) pinDictionaryForMethod: (recoveredBlock28Stack2).
            recoveredBlock28PC := 95.
        ].
        recoveredBlock28Step = 95 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 96.
        ].
        recoveredBlock28Step = 96 ifTrue: [
            recoveredBlock28Local5 := recoveredBlock28Stack2.
            recoveredBlock28PC := 98.
        ].
        recoveredBlock28Step = 98 ifTrue: [
            (recoveredBlock28Stack1 == nil) ifTrue: [recoveredBlock28PC := 153] ifFalse: [recoveredBlock28PC := 102].
        ].
        recoveredBlock28Step = 102 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 104.
        ].
        recoveredBlock28Step = 104 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) methodParameters.
            recoveredBlock28PC := 106.
        ].
        recoveredBlock28Step = 106 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) size.
            recoveredBlock28PC := 108.
        ].
        recoveredBlock28Step = 108 ifTrue: [
            recoveredBlock28Stack2 := 1.
            recoveredBlock28PC := 110.
        ].
        recoveredBlock28Step = 110 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) = (recoveredBlock28Stack2).
            recoveredBlock28PC := 111.
        ].
        recoveredBlock28Step = 111 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 114] ifFalse: [recoveredBlock28PC := 153].
        ].
        recoveredBlock28Step = 114 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 116.
        ].
        recoveredBlock28Step = 116 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) methodParameters.
            recoveredBlock28PC := 118.
        ].
        recoveredBlock28Step = 118 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) first.
            recoveredBlock28PC := 120.
        ].
        recoveredBlock28Step = 120 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) aliasName.
            recoveredBlock28PC := 122.
        ].
        recoveredBlock28Step = 122 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 123.
        ].
        recoveredBlock28Step = 123 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local5.
            recoveredBlock28PC := 125.
        ].
        recoveredBlock28Step = 125 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local2.
            recoveredBlock28PC := 126.
        ].
        recoveredBlock28Step = 126 ifTrue: [
            recoveredBlock28Stack3 := [].
            recoveredBlock28PC := 128.
        ].
        recoveredBlock28Step = 128 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) ifAbsent: (recoveredBlock28Stack3).
            recoveredBlock28PC := 130.
        ].
        recoveredBlock28Step = 130 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 131.
        ].
        recoveredBlock28Step = 131 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 132.
        ].
        recoveredBlock28Step = 132 ifTrue: [
            (recoveredBlock28Stack1 == nil) ifTrue: [recoveredBlock28PC := 149] ifFalse: [recoveredBlock28PC := 136].
        ].
        recoveredBlock28Step = 136 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 137.
        ].
        recoveredBlock28Step = 137 ifTrue: [
            recoveredBlock28Stack2 := 4.
            recoveredBlock28PC := 139.
        ].
        recoveredBlock28Step = 139 ifTrue: [
            recoveredBlock28Stack3 := [
    false
].
            recoveredBlock28PC := 141.
        ].
        recoveredBlock28Step = 141 ifTrue: [
            recoveredBlock28PC := 146.
        ].
        recoveredBlock28Step = 146 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) ifAbsent: (recoveredBlock28Stack3).
            recoveredBlock28PC := 148.
        ].
        recoveredBlock28Step = 148 ifTrue: [
            recoveredBlock28Local4 := recoveredBlock28Stack1.
            recoveredBlock28PC := 149.
        ].
        recoveredBlock28Step = 149 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 150.
        ].
        recoveredBlock28Step = 150 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 151.
        ].
        recoveredBlock28Step = 151 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack2.
            recoveredBlock28PC := 152.
        ].
        recoveredBlock28Step = 152 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 153.
        ].
        recoveredBlock28Step = 153 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 155.
        ].
        recoveredBlock28Step = 155 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) hasReturnValue.
            recoveredBlock28PC := 157.
        ].
        recoveredBlock28Step = 157 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 160] ifFalse: [recoveredBlock28PC := 174].
        ].
        recoveredBlock28Step = 160 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 161.
        ].
        recoveredBlock28Step = 161 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) returnPortEnabledElementDictionary.
            recoveredBlock28PC := 163.
        ].
        recoveredBlock28Step = 163 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 165.
        ].
        recoveredBlock28Step = 165 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) methodAliasForPortStorage.
            recoveredBlock28PC := 167.
        ].
        recoveredBlock28Step = 167 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local4.
            recoveredBlock28PC := 168.
        ].
        recoveredBlock28Step = 168 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 170.
        ].
        recoveredBlock28Step = 170 ifTrue: [
            recoveredBlock28PC := 184.
        ].
        recoveredBlock28Step = 174 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 175.
        ].
        recoveredBlock28Step = 175 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) selectorPortEnabledElementDictionary.
            recoveredBlock28PC := 177.
        ].
        recoveredBlock28Step = 177 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 179.
        ].
        recoveredBlock28Step = 179 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) methodAliasForPortStorage.
            recoveredBlock28PC := 181.
        ].
        recoveredBlock28Step = 181 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local4.
            recoveredBlock28PC := 182.
        ].
        recoveredBlock28Step = 182 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 184.
        ].
        recoveredBlock28Step = 184 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue5) doWithIndex: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x205488e4; bytecode file offset 0xe45200"
!SGBlockEditorC methodsFor: 'recovered'!
createGraphicObjectProgressDialog: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGraphicObjectProgressDialog: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            graphicObject := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'call_92964'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'call_2009403280'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := graphicObject.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 :recoveredBlock38Arg2 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg2.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack2 := 100.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) \\ (recoveredBlock38Stack2).
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredBlock38Stack2 := 0.
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) equals: (recoveredBlock38Stack2).
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 58] ifFalse: [recoveredBlock38PC := 90].
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg2.
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal1.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) size.
            recoveredBlock38PC := 69.
        ].
        recoveredBlock38Step = 69 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) / (recoveredBlock38Stack3).
            recoveredBlock38PC := 71.
        ].
        recoveredBlock38Step = 71 ifTrue: [
            recoveredBlock38Stack3 := (Fraction) numerator: (1) denominator: (6).
            recoveredBlock38PC := 73.
        ].
        recoveredBlock38Step = 73 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) * (recoveredBlock38Stack3).
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack3 := (Fraction) numerator: (5) denominator: (6).
            recoveredBlock38PC := 76.
        ].
        recoveredBlock38Step = 76 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) + (recoveredBlock38Stack3).
            recoveredBlock38PC := 77.
        ].
        recoveredBlock38Step = 77 ifTrue: [
            (recoveredBlock38Stack1) fractionComplete: (recoveredBlock38Stack2).
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 82.
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) cancelled.
            recoveredBlock38PC := 84.
        ].
        recoveredBlock38Step = 84 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 88] ifFalse: [recoveredBlock38PC := 90].
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 89.
        ].
        recoveredBlock38Step = 89 ifTrue: [
            ^recoveredBlock38Stack1
        ].
        recoveredBlock38Step = 90 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 93.
        ].
        recoveredBlock38Step = 93 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) isReturnPort.
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 98] ifFalse: [recoveredBlock38PC := 142].
        ].
        recoveredBlock38Step = 98 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 99.
        ].
        recoveredBlock38Step = 99 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) returnPortEnabledElementDictionary.
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 104.
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) methodAliasName.
            recoveredBlock38PC := 106.
        ].
        recoveredBlock38Step = 106 ifTrue: [
            recoveredBlock38Stack3 := [
    | recoveredBlock38Block106Value0 recoveredBlock38Block106Value1 recoveredBlock38Block106Value2 recoveredBlock38Block106Value3 recoveredBlock38Block106Value4 |
    recoveredBlock38Block106Value0 := (self) selectorPortEnabledElementDictionary.
    recoveredBlock38Block106Value1 := recoveredBlock38Arg1.
    recoveredBlock38Block106Value2 := (recoveredBlock38Block106Value1) methodAliasName.
    recoveredBlock38Block106Value3 := [:recoveredBlock38Block106Block119Arg1 | 
    | recoveredBlock38Block106Block119Value0 recoveredBlock38Block106Block119Value1 recoveredBlock38Block106Block119Value2 |
    recoveredBlock38Block106Block119Value0 := recoveredBlock38Arg1.
    recoveredBlock38Block106Block119Value1 := recoveredBlock38Block106Block119Arg1.
    recoveredBlock38Block106Block119Value2 := (recoveredBlock38Block106Block119Value0) userVisibilityPins: (recoveredBlock38Block106Block119Value1).
    recoveredBlock38Block106Block119Value2
].
    recoveredBlock38Block106Value4 := (recoveredBlock38Block106Value0) at: (recoveredBlock38Block106Value2) ifPresent: (recoveredBlock38Block106Value3).
    recoveredBlock38Block106Value4
].
            recoveredBlock38PC := 136.
        ].
        recoveredBlock38Step = 136 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3).
            recoveredBlock38PC := 138.
        ].
        recoveredBlock38Step = 138 ifTrue: [
            recoveredBlock38PC := 196.
        ].
        recoveredBlock38Step = 142 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 143.
        ].
        recoveredBlock38Step = 143 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) selectorPortEnabledElementDictionary.
            recoveredBlock38PC := 145.
        ].
        recoveredBlock38Step = 145 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 148.
        ].
        recoveredBlock38Step = 148 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) methodAliasName.
            recoveredBlock38PC := 150.
        ].
        recoveredBlock38Step = 150 ifTrue: [
            recoveredBlock38Stack3 := [
    | recoveredBlock38Block150Value0 recoveredBlock38Block150Value1 recoveredBlock38Block150Value2 recoveredBlock38Block150Value3 recoveredBlock38Block150Value4 |
    recoveredBlock38Block150Value0 := (self) returnPortEnabledElementDictionary.
    recoveredBlock38Block150Value1 := recoveredBlock38Arg1.
    recoveredBlock38Block150Value2 := (recoveredBlock38Block150Value1) methodAliasName.
    recoveredBlock38Block150Value3 := [:recoveredBlock38Block150Block163Arg1 | 
    | recoveredBlock38Block150Block163Value0 recoveredBlock38Block150Block163Value1 recoveredBlock38Block150Block163Value2 |
    recoveredBlock38Block150Block163Value0 := recoveredBlock38Arg1.
    recoveredBlock38Block150Block163Value1 := recoveredBlock38Block150Block163Arg1.
    recoveredBlock38Block150Block163Value2 := (recoveredBlock38Block150Block163Value0) userVisibilityPins: (recoveredBlock38Block150Block163Value1).
    recoveredBlock38Block150Block163Value2
].
    recoveredBlock38Block150Value4 := (recoveredBlock38Block150Value0) at: (recoveredBlock38Block150Value2) ifPresent: (recoveredBlock38Block150Value3).
    recoveredBlock38Block150Value4
].
            recoveredBlock38PC := 180.
        ].
        recoveredBlock38Step = 180 ifTrue: [
            recoveredBlock38Stack4 := [:recoveredBlock38Block180Arg1 | 
    | recoveredBlock38Block180Value0 recoveredBlock38Block180Value1 recoveredBlock38Block180Value2 |
    recoveredBlock38Block180Value0 := recoveredBlock38Arg1.
    recoveredBlock38Block180Value1 := recoveredBlock38Block180Arg1.
    recoveredBlock38Block180Value2 := (recoveredBlock38Block180Value0) userVisibilityPins: (recoveredBlock38Block180Value1).
    recoveredBlock38Block180Value2
].
            recoveredBlock38PC := 193.
        ].
        recoveredBlock38Step = 193 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3) ifPresent: (recoveredBlock38Stack4).
            recoveredBlock38PC := 196.
        ].
        recoveredBlock38Step = 196 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := graphicObject.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := paneController.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) setManager: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := graphicObject.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) minSize: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059bb64; bytecode file offset 0xe984a8"
!SGBlockEditorC methodsFor: 'recovered'!
addEnabledMethodToGO
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
    recoveredValue0 := (self) graphicObject.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) changeStarted.
    recoveredValue2 := (self) allRepresentedMethods.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := true.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := returnPortEnabledElementDictionary.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) aliasName.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack4 := [
    false
].
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) at: (recoveredBlock15Stack3) ifAbsent: (recoveredBlock15Stack4).
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 54] ifFalse: [recoveredBlock15PC := 40].
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack1 := selectorPortEnabledElementDictionary.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) aliasName.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack3 := [
    false
].
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2) ifAbsent: (recoveredBlock15Stack3).
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredLocal6 := recoveredValue4.
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal8 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) interfaceGOs.
    recoveredValue9 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredLocal6.
    recoveredBlock72Value1 := [:recoveredBlock72Block81Arg1 | 
    | recoveredBlock72Block81Value0 recoveredBlock72Block81Value1 recoveredBlock72Block81Value2 |
    recoveredBlock72Block81Value0 := recoveredBlock72Arg1.
    recoveredBlock72Block81Value1 := recoveredBlock72Block81Arg1.
    recoveredBlock72Block81Value2 := (self) interface: (recoveredBlock72Block81Value0) equalToMethod: (recoveredBlock72Block81Value1).
    recoveredBlock72Block81Value2
].
    recoveredBlock72Value2 := (recoveredBlock72Value0) anySatisfy: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
    recoveredValue10 := (recoveredValue8) select: (recoveredValue9).
    recoveredValue11 := recoveredValue10.
    recoveredLocal5 := recoveredValue11.
    recoveredValue12 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Stack0 recoveredBlock104Stack1 recoveredBlock104Stack2 recoveredBlock104Stack3 recoveredBlock104Stack4 recoveredBlock104PC recoveredBlock104Step recoveredBlock104Done recoveredBlock104Result |
    recoveredBlock104Stack0 := self.
    recoveredBlock104PC := 110.
    recoveredBlock104Done := false.
    [recoveredBlock104Done not] whileTrue: [
        recoveredBlock104Step := recoveredBlock104PC.
        recoveredBlock104Step = 110 ifTrue: [
            recoveredBlock104Stack1 := nil.
            recoveredBlock104PC := 111.
        ].
        recoveredBlock104Step = 111 ifTrue: [
            recoveredBlock104Stack2 := SGReservedNames.
            recoveredBlock104PC := 113.
        ].
        recoveredBlock104Step = 113 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) getSetMethodNames.
            recoveredBlock104PC := 115.
        ].
        recoveredBlock104Step = 115 ifTrue: [
            recoveredBlock104Stack3 := recoveredBlock104Arg1.
            recoveredBlock104PC := 116.
        ].
        recoveredBlock104Step = 116 ifTrue: [
            recoveredBlock104Stack3 := (recoveredBlock104Stack3) methodName.
            recoveredBlock104PC := 118.
        ].
        recoveredBlock104Step = 118 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) includes: (recoveredBlock104Stack3).
            recoveredBlock104PC := 120.
        ].
        recoveredBlock104Step = 120 ifTrue: [
            (recoveredBlock104Stack2) ifTrue: [recoveredBlock104PC := 133] ifFalse: [recoveredBlock104PC := 124].
        ].
        recoveredBlock104Step = 124 ifTrue: [
            recoveredBlock104PC := 125.
        ].
        recoveredBlock104Step = 125 ifTrue: [
            recoveredBlock104Stack1 := recoveredLocal8.
            recoveredBlock104PC := 128.
        ].
        recoveredBlock104Step = 128 ifTrue: [
            recoveredBlock104Stack2 := recoveredBlock104Arg1.
            recoveredBlock104PC := 129.
        ].
        recoveredBlock104Step = 129 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) interfaceGOs.
            recoveredBlock104PC := 131.
        ].
        recoveredBlock104Step = 131 ifTrue: [
            recoveredBlock104Stack1 := (recoveredBlock104Stack1) addAll: (recoveredBlock104Stack2).
            recoveredBlock104PC := 133.
        ].
        recoveredBlock104Step = 133 ifTrue: [
            recoveredBlock104Result := recoveredBlock104Stack1.
            recoveredBlock104Done := true.
        ].
    ].
    recoveredBlock104Result
].
    (recoveredValue10) do: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) logicFrame.
    recoveredValue15 := (recoveredValue14) leftTop.
    recoveredLocal4 := recoveredValue15.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) logicFrame.
    recoveredValue18 := (recoveredValue17) rightBottom.
    recoveredLocal3 := recoveredValue18.
    recoveredValue19 := recoveredLocal8.
    recoveredValue20 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 recoveredBlock159Value4 recoveredBlock159Value5 recoveredBlock159Value6 recoveredBlock159Value7 recoveredBlock159Value8 |
    recoveredBlock159Value0 := recoveredLocal4.
    recoveredBlock159Value1 := recoveredBlock159Arg1.
    recoveredBlock159Value2 := (recoveredBlock159Value1) getPosition.
    recoveredBlock159Value3 := (recoveredBlock159Value0) min: (recoveredBlock159Value2).
    recoveredLocal4 := recoveredBlock159Value3.
    recoveredBlock159Value4 := recoveredLocal3.
    recoveredBlock159Value5 := recoveredBlock159Arg1.
    recoveredBlock159Value6 := (recoveredBlock159Value5) getPosition.
    recoveredBlock159Value7 := (recoveredBlock159Value4) max: (recoveredBlock159Value6).
    recoveredBlock159Value8 := recoveredBlock159Value7.
    recoveredLocal3 := recoveredBlock159Value8.
    recoveredBlock159Value7
].
    (recoveredValue19) do: (recoveredValue20).
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := recoveredLocal4.
    recoveredValue23 := (recoveredValue21) - (recoveredValue22).
    recoveredLocal7 := recoveredValue23.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue24) logicFrame.
    recoveredValue26 := (recoveredValue25) leftTop.
    recoveredLocal2 := recoveredValue26.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue27) frameGO.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (recoveredValue29) frameGO.
    recoveredValue31 := (recoveredValue30) size.
    recoveredValue32 := recoveredLocal7.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := (self) getRasterPoint: (recoveredValue32) gO: (recoveredValue33).
    recoveredValue35 := (recoveredValue34) // (2).
    recoveredValue36 := (recoveredValue31) max: (recoveredValue35).
    (recoveredValue28) size: (recoveredValue36).
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := recoveredLocal2.
    recoveredValue39 := recoveredLocal7.
    recoveredValue40 := (recoveredValue39) // (2).
    recoveredValue41 := (recoveredValue38) + (recoveredValue40).
    (recoveredValue37) moveToWithoutInterfaceGOs: (recoveredValue41).
    recoveredValue42 := recoveredLocal1.
    (recoveredValue42) repositionInterfaces.
    recoveredValue43 := recoveredLocal1.
    recoveredValue44 := (recoveredValue43) manager.
    recoveredValue45 := (recoveredValue44) controller.
    recoveredValue46 := [:recoveredBlock267Arg1 | 
    | recoveredBlock267Value0 recoveredBlock267Value1 recoveredBlock267Value2 recoveredBlock267Value3 |
    recoveredBlock267Value0 := recoveredBlock267Arg1.
    recoveredBlock267Value1 := recoveredLocal1.
    recoveredBlock267Value2 := (recoveredBlock267Value1) giveRedisplayRects.
    recoveredBlock267Value3 := (recoveredBlock267Value0) displayRects: (recoveredBlock267Value2).
    recoveredBlock267Value3
].
    (recoveredValue45) ifNotNil: (recoveredValue46).
    ^self
! !

