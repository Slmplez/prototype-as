"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ab0; bytecode file offset 0x8ffcfc"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updateFontActualNames
    ^self
! !

"ASDBase.ic method 0x200023e8; bytecode file offset 0x8ffcfc"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updateFontFormalNames
    ^self
! !

"ASDBase.ic method 0x20002710; bytecode file offset 0x8ffcfc"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updateFontCommentText
    ^self
! !

"ASDBase.ic method 0x20005428; bytecode file offset 0x90206c"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updateSequenceConnections: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005a88; bytecode file offset 0x902744"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
removeChildGO: recoveredArg1 display: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005f5c; bytecode file offset 0x902de8"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updateSequencesNames: recoveredArg1 updateSeqCallId: recoveredArg2 datamodelManager: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006c44; bytecode file offset 0x908be4"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
copyForChangeDisplay
    | recoveredValue0 |
    recoveredValue0 := (self) copyForChangeDisplayBasic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200085dc; bytecode file offset 0x908be4"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
basicFrame
    | recoveredValue0 |
    recoveredValue0 := (self) logicFrame.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000905c; bytecode file offset 0x908be4"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
visibleFrame
    | recoveredValue0 |
    recoveredValue0 := (self) bigFrame.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f2e4; bytecode file offset 0x90bc70"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f3b4; bytecode file offset 0x90bc70"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updateGOForElement: recoveredArg1 display: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2001712c; bytecode file offset 0x92209c"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
interfaceElementGOs
    ^#()
! !

"ASDBase.ic method 0x20018230; bytecode file offset 0x92209c"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
label
    ^''
! !

"ASDBase.ic method 0x20041120; bytecode file offset 0x93dd2c"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
getFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) getFont.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004eb28; bytecode file offset 0x94d048"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
getSelectFlag
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20073ac8; bytecode file offset 0x970b34"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
aliasName
    ^nil
! !

"ASDBase.ic method 0x2007b15c; bytecode file offset 0x97c330"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
isSelectorPin
    ^false
! !

"ASDBase.ic method 0x2007cb9c; bytecode file offset 0x97c330"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
isResultPin
    ^false
! !

"ASDBase.ic method 0x2007dd34; bytecode file offset 0x97c330"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
isMissingPin
    ^false
! !

"ASDBase.ic method 0x2007ec7c; bytecode file offset 0x97c330"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
showMethodInSequenceCall
    ^false
! !

"ASDBase.ic method 0x2007ecac; bytecode file offset 0x97c330"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
isArgumentPin
    ^false
! !

"ASDBase.ic method 0x2007f3c4; bytecode file offset 0x97c330"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
nameEditable
    ^false
! !

"ASDBase.ic method 0x2008478c; bytecode file offset 0x981ca4"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
rememberBuildingPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) moveTo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20086f08; bytecode file offset 0x9837f0"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
moveInterfaceElement: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) moveBasicTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2f54; bytecode file offset 0x99f810"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updateText: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) controller.
    (recoveredValue1) graphicsModified: (true).
    ^self
! !

"ASDBase.ic method 0x200a8fa0; bytecode file offset 0x9a5858"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := lineStyle.
    (self) updatePane: (recoveredValue0) forLineStyle: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b1c90; bytecode file offset 0x9ae66c"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
hasSequenceCall
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('Call_60545').
    ^false
! !

"ASDBase.ic method 0x200f2e6c; bytecode file offset 0x9ef738"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
isVisible
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
            recoveredStack2 := (recoveredStack2) viewVanish.
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
            recoveredStack1 := (recoveredStack1) viewVisibility.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ea08; bytecode file offset 0xa2b2e4"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
activeStateWrapperClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionExtendedScalingBehaviour.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBMoveAndScaleWrapper.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := RBUnmovableWrapper.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c810; bytecode file offset 0xa390d8"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
frame
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('hw') == ('call_80529').
    recoveredValue1 := (self) logicFrame.
    recoveredValue2 := (self) lineWidth.
    recoveredValue3 := (recoveredValue2) * (2).
    recoveredValue4 := (recoveredValue1) expandBy: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2017b0c4; bytecode file offset 0xa77994"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
selectPoints
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) basicFrame.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) topLeft.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) topRight.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) bottomRight.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) bottomLeft.
    recoveredValue10 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue7) with: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201fbb70; bytecode file offset 0xaf8440"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
removeGO: recoveredArg1 display: recoveredArg2 reconnect: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super removeGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) disconnectLineReconnect: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
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

"ASDBase.ic method 0x2028be54; bytecode file offset 0xb8872c"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
checkInterfaceElements
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := (self) interfaceElementGOs.
    recoveredBlock4Value1 := (recoveredBlock4Value0) size.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block12Stack0 recoveredBlock4Block12Stack1 recoveredBlock4Block12Stack2 recoveredBlock4Block12PC recoveredBlock4Block12Step recoveredBlock4Block12Done recoveredBlock4Block12Result |
    recoveredBlock4Block12Stack0 := self.
    recoveredBlock4Block12PC := 18.
    recoveredBlock4Block12Done := false.
    [recoveredBlock4Block12Done not] whileTrue: [
        recoveredBlock4Block12Step := recoveredBlock4Block12PC.
        recoveredBlock4Block12Step = 18 ifTrue: [
            recoveredBlock4Block12Stack0 := (recoveredBlock4Block12Stack0) interfaceElementGOs.
            recoveredBlock4Block12PC := 19.
        ].
        recoveredBlock4Block12Step = 19 ifTrue: [
            recoveredBlock4Block12Stack1 := [:block280e202cArg1 | 
    | block280e202cValue0 block280e202cValue1 |
    block280e202cValue0 := block280e202cArg1.
    block280e202cValue1 := (block280e202cValue0) getPosition.
    block280e202cValue1
].
            recoveredBlock4Block12PC := 21.
        ].
        recoveredBlock4Block12Step = 21 ifTrue: [
            recoveredBlock4Block12PC := 27.
        ].
        recoveredBlock4Block12Step = 27 ifTrue: [
            recoveredBlock4Block12Stack0 := (recoveredBlock4Block12Stack0) collect: (recoveredBlock4Block12Stack1).
            recoveredBlock4Block12PC := 29.
        ].
        recoveredBlock4Block12Step = 29 ifTrue: [
            recoveredBlock4Block12Stack0 := (recoveredBlock4Block12Stack0) asSet.
            recoveredBlock4Block12PC := 31.
        ].
        recoveredBlock4Block12Step = 31 ifTrue: [
            recoveredBlock4Block12Stack0 := (recoveredBlock4Block12Stack0) size.
            recoveredBlock4Block12PC := 32.
        ].
        recoveredBlock4Block12Step = 32 ifTrue: [
            recoveredBlock4Block12Result := recoveredBlock4Block12Stack0.
            recoveredBlock4Block12Done := true.
        ].
    ].
    recoveredBlock4Block12Result
].
    recoveredBlock4Value3 := (recoveredBlock4Value1) equals: (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value3) not.
    recoveredBlock4Value4
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('').
    ^self
! !

"ASDBase.ic method 0x2039c8c8; bytecode file offset 0xc991c0"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD105089'.
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
            recoveredStack0 := (recoveredStack0) getViewsMenu.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'createAscetLink'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'Create ASCET Link'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) identifier.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack5 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) identifier.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := -1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) > (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'displayBringToFront'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 'Bring To Front'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) isDrawingOrderPossible.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'displaySendToBack'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 'Send To Back'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := (recoveredStack4) isDrawingOrderPossible.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTraceManagementActive.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) appendTraceManagementEntries: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044fda0; bytecode file offset 0xd4c69c"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
getOpposedConnectionPointsForArgumentPin
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) interfaceElementGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) externalConnectorGO.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isArgumentPin.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 106].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isVisible.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 106].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) externalConnectorGO.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) basicGraphObject.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) connectionPoint.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) connections.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack2.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) keys.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block49Arg1 | 
    | recoveredBlock11Block49Stack0 recoveredBlock11Block49Stack1 recoveredBlock11Block49Stack2 recoveredBlock11Block49Stack3 recoveredBlock11Block49Stack4 recoveredBlock11Block49Stack5 recoveredBlock11Block49PC recoveredBlock11Block49Step recoveredBlock11Block49Done recoveredBlock11Block49Result |
    recoveredBlock11Block49Stack0 := nil.
    recoveredBlock11Block49PC := 56.
    recoveredBlock11Block49Done := false.
    [recoveredBlock11Block49Done not] whileTrue: [
        recoveredBlock11Block49Step := recoveredBlock11Block49PC.
        recoveredBlock11Block49Step = 56 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 57.
        ].
        recoveredBlock11Block49Step = 57 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) startGO.
            recoveredBlock11Block49PC := 59.
        ].
        recoveredBlock11Block49Step = 59 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) isArgumentPin.
            recoveredBlock11Block49PC := 61.
        ].
        recoveredBlock11Block49Step = 61 ifTrue: [
            (recoveredBlock11Block49Stack1) ifTrue: [recoveredBlock11Block49PC := 64] ifFalse: [recoveredBlock11Block49PC := 86].
        ].
        recoveredBlock11Block49Step = 64 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredLocal3.
            recoveredBlock11Block49PC := 67.
        ].
        recoveredBlock11Block49Step = 67 ifTrue: [
            recoveredBlock11Block49Stack2 := ASDTransitionConnectionInfo.
            recoveredBlock11Block49PC := 69.
        ].
        recoveredBlock11Block49Step = 69 ifTrue: [
            recoveredBlock11Block49Stack3 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 70.
        ].
        recoveredBlock11Block49Step = 70 ifTrue: [
            recoveredBlock11Block49Stack3 := (recoveredBlock11Block49Stack3) endGO.
            recoveredBlock11Block49PC := 72.
        ].
        recoveredBlock11Block49Step = 72 ifTrue: [
            recoveredBlock11Block49Stack4 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 73.
        ].
        recoveredBlock11Block49Step = 73 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) basicGraphObject.
            recoveredBlock11Block49PC := 75.
        ].
        recoveredBlock11Block49Step = 75 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) cornerPoints.
            recoveredBlock11Block49PC := 77.
        ].
        recoveredBlock11Block49Step = 77 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) reverse.
            recoveredBlock11Block49PC := 79.
        ].
        recoveredBlock11Block49Step = 79 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) createWithConnector: (recoveredBlock11Block49Stack3) cornerPointList: (recoveredBlock11Block49Stack4).
            recoveredBlock11Block49PC := 81.
        ].
        recoveredBlock11Block49Step = 81 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) add: (recoveredBlock11Block49Stack2).
            recoveredBlock11Block49PC := 83.
        ].
        recoveredBlock11Block49Step = 83 ifTrue: [
            recoveredBlock11Block49PC := 103.
        ].
        recoveredBlock11Block49Step = 86 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredLocal3.
            recoveredBlock11Block49PC := 89.
        ].
        recoveredBlock11Block49Step = 89 ifTrue: [
            recoveredBlock11Block49Stack2 := ASDTransitionConnectionInfo.
            recoveredBlock11Block49PC := 91.
        ].
        recoveredBlock11Block49Step = 91 ifTrue: [
            recoveredBlock11Block49Stack3 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 92.
        ].
        recoveredBlock11Block49Step = 92 ifTrue: [
            recoveredBlock11Block49Stack3 := (recoveredBlock11Block49Stack3) startGO.
            recoveredBlock11Block49PC := 94.
        ].
        recoveredBlock11Block49Step = 94 ifTrue: [
            recoveredBlock11Block49Stack4 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 95.
        ].
        recoveredBlock11Block49Step = 95 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) basicGraphObject.
            recoveredBlock11Block49PC := 97.
        ].
        recoveredBlock11Block49Step = 97 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) cornerPoints.
            recoveredBlock11Block49PC := 99.
        ].
        recoveredBlock11Block49Step = 99 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) createWithConnector: (recoveredBlock11Block49Stack3) cornerPointList: (recoveredBlock11Block49Stack4).
            recoveredBlock11Block49PC := 101.
        ].
        recoveredBlock11Block49Step = 101 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) add: (recoveredBlock11Block49Stack2).
            recoveredBlock11Block49PC := 103.
        ].
        recoveredBlock11Block49Step = 103 ifTrue: [
            recoveredBlock11Block49Result := recoveredBlock11Block49Stack1.
            recoveredBlock11Block49Done := true.
        ].
    ].
    recoveredBlock11Block49Result
].
            recoveredBlock11PC := 104.
        ].
        recoveredBlock11Step = 104 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 106.
        ].
        recoveredBlock11Step = 106 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal3.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204730f0; bytecode file offset 0xd6fa08"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
updatePane: recoveredArg1 forLineStyle: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectFlag.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := RBColorManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ClrSelect.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) namedColor: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := lineStyle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getColor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) diagramStyleProvider.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) styleProviderState.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) styleProviderState.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) getColorFor: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := GCFunction.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := GCLineWidth.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := GCLineStyle.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := GCForeground.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := CgGCValues.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := mixingRule.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack3) function: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) pixelNearestToColor: (recoveredStack5).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack3) foreground: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := (recoveredStack4) getWidth.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack3) lineWidth: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) getType.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack3) lineStyle: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) changeGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20499b20; bytecode file offset 0xd96424"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
getOpposedConnectionPointsForResultPin
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) interfaceElementGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) externalConnectorGO.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isResultPin.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 128].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isVisible.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 128].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) externalConnectorGO.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) basicGraphObject.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) connectionPoint.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) connections.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack2.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) keys.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block49Arg1 | 
    | recoveredBlock11Block49Stack0 recoveredBlock11Block49Stack1 recoveredBlock11Block49Stack2 recoveredBlock11Block49Stack3 recoveredBlock11Block49Stack4 recoveredBlock11Block49Stack5 recoveredBlock11Block49PC recoveredBlock11Block49Step recoveredBlock11Block49Done recoveredBlock11Block49Result |
    recoveredBlock11Block49Stack0 := nil.
    recoveredBlock11Block49PC := 56.
    recoveredBlock11Block49Done := false.
    [recoveredBlock11Block49Done not] whileTrue: [
        recoveredBlock11Block49Step := recoveredBlock11Block49PC.
        recoveredBlock11Block49Step = 56 ifTrue: [
            recoveredBlock11Block49Stack1 := nil.
            recoveredBlock11Block49PC := 57.
        ].
        recoveredBlock11Block49Step = 57 ifTrue: [
            recoveredBlock11Block49Stack2 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 58.
        ].
        recoveredBlock11Block49Step = 58 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) endGO.
            recoveredBlock11Block49PC := 60.
        ].
        recoveredBlock11Block49Step = 60 ifTrue: [
            (recoveredBlock11Block49Stack2 == nil) ifTrue: [recoveredBlock11Block49PC := 125] ifFalse: [recoveredBlock11Block49PC := 64].
        ].
        recoveredBlock11Block49Step = 64 ifTrue: [
            recoveredBlock11Block49Stack2 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 65.
        ].
        recoveredBlock11Block49Step = 65 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) startGO.
            recoveredBlock11Block49PC := 67.
        ].
        recoveredBlock11Block49Step = 67 ifTrue: [
            (recoveredBlock11Block49Stack2 == nil) ifTrue: [recoveredBlock11Block49PC := 125] ifFalse: [recoveredBlock11Block49PC := 70].
        ].
        recoveredBlock11Block49Step = 70 ifTrue: [
            recoveredBlock11Block49PC := 71.
        ].
        recoveredBlock11Block49Step = 71 ifTrue: [
            recoveredBlock11Block49Stack1 := 'hw'.
            recoveredBlock11Block49PC := 73.
        ].
        recoveredBlock11Block49Step = 73 ifTrue: [
            recoveredBlock11Block49Stack2 := 'call_80564'.
            recoveredBlock11Block49PC := 75.
        ].
        recoveredBlock11Block49Step = 75 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) == (recoveredBlock11Block49Stack2).
            recoveredBlock11Block49PC := 76.
        ].
        recoveredBlock11Block49Step = 76 ifTrue: [
            recoveredBlock11Block49PC := 77.
        ].
        recoveredBlock11Block49Step = 77 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 78.
        ].
        recoveredBlock11Block49Step = 78 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) endGO.
            recoveredBlock11Block49PC := 80.
        ].
        recoveredBlock11Block49Step = 80 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) isResultPin.
            recoveredBlock11Block49PC := 82.
        ].
        recoveredBlock11Block49Step = 82 ifTrue: [
            (recoveredBlock11Block49Stack1) ifTrue: [recoveredBlock11Block49PC := 86] ifFalse: [recoveredBlock11Block49PC := 108].
        ].
        recoveredBlock11Block49Step = 86 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredLocal3.
            recoveredBlock11Block49PC := 89.
        ].
        recoveredBlock11Block49Step = 89 ifTrue: [
            recoveredBlock11Block49Stack2 := ASDTransitionConnectionInfo.
            recoveredBlock11Block49PC := 91.
        ].
        recoveredBlock11Block49Step = 91 ifTrue: [
            recoveredBlock11Block49Stack3 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 92.
        ].
        recoveredBlock11Block49Step = 92 ifTrue: [
            recoveredBlock11Block49Stack3 := (recoveredBlock11Block49Stack3) startGO.
            recoveredBlock11Block49PC := 94.
        ].
        recoveredBlock11Block49Step = 94 ifTrue: [
            recoveredBlock11Block49Stack4 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 95.
        ].
        recoveredBlock11Block49Step = 95 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) basicGraphObject.
            recoveredBlock11Block49PC := 97.
        ].
        recoveredBlock11Block49Step = 97 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) cornerPoints.
            recoveredBlock11Block49PC := 99.
        ].
        recoveredBlock11Block49Step = 99 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) reverse.
            recoveredBlock11Block49PC := 101.
        ].
        recoveredBlock11Block49Step = 101 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) createWithConnector: (recoveredBlock11Block49Stack3) cornerPointList: (recoveredBlock11Block49Stack4).
            recoveredBlock11Block49PC := 103.
        ].
        recoveredBlock11Block49Step = 103 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) add: (recoveredBlock11Block49Stack2).
            recoveredBlock11Block49PC := 105.
        ].
        recoveredBlock11Block49Step = 105 ifTrue: [
            recoveredBlock11Block49PC := 125.
        ].
        recoveredBlock11Block49Step = 108 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredLocal3.
            recoveredBlock11Block49PC := 111.
        ].
        recoveredBlock11Block49Step = 111 ifTrue: [
            recoveredBlock11Block49Stack2 := ASDTransitionConnectionInfo.
            recoveredBlock11Block49PC := 113.
        ].
        recoveredBlock11Block49Step = 113 ifTrue: [
            recoveredBlock11Block49Stack3 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 114.
        ].
        recoveredBlock11Block49Step = 114 ifTrue: [
            recoveredBlock11Block49Stack3 := (recoveredBlock11Block49Stack3) endGO.
            recoveredBlock11Block49PC := 116.
        ].
        recoveredBlock11Block49Step = 116 ifTrue: [
            recoveredBlock11Block49Stack4 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 117.
        ].
        recoveredBlock11Block49Step = 117 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) basicGraphObject.
            recoveredBlock11Block49PC := 119.
        ].
        recoveredBlock11Block49Step = 119 ifTrue: [
            recoveredBlock11Block49Stack4 := (recoveredBlock11Block49Stack4) cornerPoints.
            recoveredBlock11Block49PC := 121.
        ].
        recoveredBlock11Block49Step = 121 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) createWithConnector: (recoveredBlock11Block49Stack3) cornerPointList: (recoveredBlock11Block49Stack4).
            recoveredBlock11Block49PC := 123.
        ].
        recoveredBlock11Block49Step = 123 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) add: (recoveredBlock11Block49Stack2).
            recoveredBlock11Block49PC := 125.
        ].
        recoveredBlock11Block49Step = 125 ifTrue: [
            recoveredBlock11Block49Result := recoveredBlock11Block49Stack1.
            recoveredBlock11Block49Done := true.
        ].
    ].
    recoveredBlock11Block49Result
].
            recoveredBlock11PC := 126.
        ].
        recoveredBlock11Step = 126 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 128.
        ].
        recoveredBlock11Step = 128 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal3.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2055daf8; bytecode file offset 0xe5a418"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
disconnectLineReconnect: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOpposedConnectionPointsForResultPin.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOpposedConnectionPointsForArgumentPin.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeConnections.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) removeConnections.
    recoveredBlock20Value3 := (recoveredBlock20Value0) , (recoveredBlock20Value2).
    recoveredBlock20Value4 := recoveredBlock20Value3.
    recoveredLocal1 := recoveredBlock20Value4.
    recoveredBlock20Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) resetSequenceCalls.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Local1 recoveredBlock69Local2 recoveredBlock69Local3 recoveredBlock69Local4 recoveredBlock69Local5 recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69Stack5 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) connectorGO.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Local5 := recoveredBlock69Stack1.
            recoveredBlock69PC := 82.
        ].
        recoveredBlock69Step = 82 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal2.
            recoveredBlock69PC := 85.
        ].
        recoveredBlock69Step = 85 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) first.
            recoveredBlock69PC := 87.
        ].
        recoveredBlock69Step = 87 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) connectorGO.
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Local4 := recoveredBlock69Stack1.
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            recoveredBlock69Stack1 := nil.
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local5.
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) getBlock.
            recoveredBlock69PC := 95.
        ].
        recoveredBlock69Step = 95 ifTrue: [
            recoveredBlock69Stack3 := self.
            recoveredBlock69PC := 96.
        ].
        recoveredBlock69Step = 96 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) ~= (recoveredBlock69Stack3).
            recoveredBlock69PC := 97.
        ].
        recoveredBlock69Step = 97 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 100] ifFalse: [recoveredBlock69PC := 220].
        ].
        recoveredBlock69Step = 100 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local4.
            recoveredBlock69PC := 101.
        ].
        recoveredBlock69Step = 101 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) getBlock.
            recoveredBlock69PC := 103.
        ].
        recoveredBlock69Step = 103 ifTrue: [
            recoveredBlock69Stack3 := self.
            recoveredBlock69PC := 104.
        ].
        recoveredBlock69Step = 104 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) ~= (recoveredBlock69Stack3).
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 108] ifFalse: [recoveredBlock69PC := 220].
        ].
        recoveredBlock69Step = 108 ifTrue: [
            recoveredBlock69PC := 109.
        ].
        recoveredBlock69Step = 109 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal2.
            recoveredBlock69PC := 112.
        ].
        recoveredBlock69Step = 112 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) first.
            recoveredBlock69PC := 114.
        ].
        recoveredBlock69Step = 114 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) cornerPointList.
            recoveredBlock69PC := 116.
        ].
        recoveredBlock69Step = 116 ifTrue: [
            recoveredBlock69Local2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 117.
        ].
        recoveredBlock69Step = 117 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local2.
            recoveredBlock69PC := 118.
        ].
        recoveredBlock69Step = 118 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) size.
            recoveredBlock69PC := 120.
        ].
        recoveredBlock69Step = 120 ifTrue: [
            recoveredBlock69Stack2 := 1.
            recoveredBlock69PC := 122.
        ].
        recoveredBlock69Step = 122 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) > (recoveredBlock69Stack2).
            recoveredBlock69PC := 123.
        ].
        recoveredBlock69Step = 123 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 126] ifFalse: [recoveredBlock69PC := 136].
        ].
        recoveredBlock69Step = 126 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local2.
            recoveredBlock69PC := 127.
        ].
        recoveredBlock69Step = 127 ifTrue: [
            recoveredBlock69Stack2 := 1.
            recoveredBlock69PC := 129.
        ].
        recoveredBlock69Step = 129 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Local2.
            recoveredBlock69PC := 130.
        ].
        recoveredBlock69Step = 130 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) size.
            recoveredBlock69PC := 132.
        ].
        recoveredBlock69Step = 132 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) + (-1).
            recoveredBlock69PC := 133.
        ].
        recoveredBlock69Step = 133 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) copyFrom: (recoveredBlock69Stack2) to: (recoveredBlock69Stack3).
            recoveredBlock69PC := 135.
        ].
        recoveredBlock69Step = 135 ifTrue: [
            recoveredBlock69Local2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 136.
        ].
        recoveredBlock69Step = 136 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 138.
        ].
        recoveredBlock69Step = 138 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) cornerPointList.
            recoveredBlock69PC := 140.
        ].
        recoveredBlock69Step = 140 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 141.
        ].
        recoveredBlock69Step = 141 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local1.
            recoveredBlock69PC := 142.
        ].
        recoveredBlock69Step = 142 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) size.
            recoveredBlock69PC := 144.
        ].
        recoveredBlock69Step = 144 ifTrue: [
            recoveredBlock69Stack2 := 1.
            recoveredBlock69PC := 146.
        ].
        recoveredBlock69Step = 146 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) > (recoveredBlock69Stack2).
            recoveredBlock69PC := 147.
        ].
        recoveredBlock69Step = 147 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 150] ifFalse: [recoveredBlock69PC := 159].
        ].
        recoveredBlock69Step = 150 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local1.
            recoveredBlock69PC := 151.
        ].
        recoveredBlock69Step = 151 ifTrue: [
            recoveredBlock69Stack2 := 2.
            recoveredBlock69PC := 153.
        ].
        recoveredBlock69Step = 153 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Local1.
            recoveredBlock69PC := 154.
        ].
        recoveredBlock69Step = 154 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) size.
            recoveredBlock69PC := 156.
        ].
        recoveredBlock69Step = 156 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) copyFrom: (recoveredBlock69Stack2) to: (recoveredBlock69Stack3).
            recoveredBlock69PC := 158.
        ].
        recoveredBlock69Step = 158 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 159.
        ].
        recoveredBlock69Step = 159 ifTrue: [
            recoveredBlock69Stack1 := SGConnectionWrapperGO.
            recoveredBlock69PC := 161.
        ].
        recoveredBlock69Step = 161 ifTrue: [
            recoveredBlock69Stack2 := SGOrthogonalLineGO.
            recoveredBlock69PC := 163.
        ].
        recoveredBlock69Step = 163 ifTrue: [
            recoveredBlock69Stack3 := ConnectionLineStyle.
            recoveredBlock69PC := 165.
        ].
        recoveredBlock69Step = 165 ifTrue: [
            recoveredBlock69Stack4 := nil.
            recoveredBlock69PC := 166.
        ].
        recoveredBlock69Step = 166 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) createWithLineStyle: (recoveredBlock69Stack3) manager: (recoveredBlock69Stack4).
            recoveredBlock69PC := 168.
        ].
        recoveredBlock69Step = 168 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Local4.
            recoveredBlock69PC := 169.
        ].
        recoveredBlock69Step = 169 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) connectionPoint.
            recoveredBlock69PC := 171.
        ].
        recoveredBlock69Step = 171 ifTrue: [
            recoveredBlock69Stack4 := recoveredBlock69Local5.
            recoveredBlock69PC := 173.
        ].
        recoveredBlock69Step = 173 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) connectionPoint.
            recoveredBlock69PC := 175.
        ].
        recoveredBlock69Step = 175 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) createWith: (recoveredBlock69Stack2) startPoint: (recoveredBlock69Stack3) endPoint: (recoveredBlock69Stack4).
            recoveredBlock69PC := 178.
        ].
        recoveredBlock69Step = 178 ifTrue: [
            recoveredBlock69Local3 := recoveredBlock69Stack1.
            recoveredBlock69PC := 179.
        ].
        recoveredBlock69Step = 179 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local3.
            recoveredBlock69PC := 180.
        ].
        recoveredBlock69Step = 180 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) basicGraphObject.
            recoveredBlock69PC := 182.
        ].
        recoveredBlock69Step = 182 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local2.
            recoveredBlock69PC := 183.
        ].
        recoveredBlock69Step = 183 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Local1.
            recoveredBlock69PC := 184.
        ].
        recoveredBlock69Step = 184 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) , (recoveredBlock69Stack3).
            recoveredBlock69PC := 186.
        ].
        recoveredBlock69Step = 186 ifTrue: [
            (recoveredBlock69Stack1) initializeBuildPointColl: (recoveredBlock69Stack2).
            recoveredBlock69PC := 188.
        ].
        recoveredBlock69Step = 188 ifTrue: [
            recoveredBlock69Stack1 := self.
            recoveredBlock69PC := 189.
        ].
        recoveredBlock69Step = 189 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) getManager.
            recoveredBlock69PC := 191.
        ].
        recoveredBlock69Step = 191 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) owner.
            recoveredBlock69PC := 193.
        ].
        recoveredBlock69Step = 193 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local3.
            recoveredBlock69PC := 194.
        ].
        recoveredBlock69Step = 194 ifTrue: [
            recoveredBlock69Stack3 := true.
            recoveredBlock69PC := 195.
        ].
        recoveredBlock69Step = 195 ifTrue: [
            recoveredBlock69Stack4 := false.
            recoveredBlock69PC := 196.
        ].
        recoveredBlock69Step = 196 ifTrue: [
            (recoveredBlock69Stack1) addChildGO: (recoveredBlock69Stack2) display: (recoveredBlock69Stack3) createMemento: (recoveredBlock69Stack4).
            recoveredBlock69PC := 199.
        ].
        recoveredBlock69Step = 199 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local3.
            recoveredBlock69PC := 200.
        ].
        recoveredBlock69Step = 200 ifTrue: [
            (recoveredBlock69Stack1) updateLineStyle.
            recoveredBlock69PC := 202.
        ].
        recoveredBlock69Step = 202 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal1.
            recoveredBlock69PC := 205.
        ].
        recoveredBlock69Step = 205 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local3.
            recoveredBlock69PC := 206.
        ].
        recoveredBlock69Step = 206 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) giveRedisplayRects.
            recoveredBlock69PC := 208.
        ].
        recoveredBlock69Step = 208 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) , (recoveredBlock69Stack2).
            recoveredBlock69PC := 210.
        ].
        recoveredBlock69Step = 210 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Stack1.
            recoveredBlock69PC := 211.
        ].
        recoveredBlock69Step = 211 ifTrue: [
            recoveredLocal1 := recoveredBlock69Stack2.
            recoveredBlock69PC := 214.
        ].
        recoveredBlock69Step = 214 ifTrue: [
            recoveredBlock69Stack2 := nil.
            recoveredBlock69PC := 215.
        ].
        recoveredBlock69Step = 215 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Stack2.
            recoveredBlock69PC := 216.
        ].
        recoveredBlock69Step = 216 ifTrue: [
            recoveredBlock69Local3 := recoveredBlock69Stack3.
            recoveredBlock69PC := 217.
        ].
        recoveredBlock69Step = 217 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Stack2.
            recoveredBlock69PC := 218.
        ].
        recoveredBlock69Step = 218 ifTrue: [
            recoveredBlock69Local2 := recoveredBlock69Stack3.
            recoveredBlock69PC := 219.
        ].
        recoveredBlock69Step = 219 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack2.
            recoveredBlock69PC := 220.
        ].
        recoveredBlock69Step = 220 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20577540; bytecode file offset 0xe73e74"
!SGGraphicalProgrammingGO methodsFor: 'recovered'!
removeGO: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRemoveableFromLine.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := VkShift.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getKeyState: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            super removeGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOpposedConnectionPointsForResultPin.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOpposedConnectionPointsForArgumentPin.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeConnections.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 |
    recoveredBlock72Value0 := recoveredLocal7.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (recoveredBlock72Value1) removeConnections.
    recoveredBlock72Value3 := (recoveredBlock72Value0) , (recoveredBlock72Value2).
    recoveredBlock72Value4 := recoveredBlock72Value3.
    recoveredLocal7 := recoveredBlock72Value4.
    recoveredBlock72Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectorGO.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectorGO.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := SGConnectionWrapperGO.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := SGOrthogonalLineGO.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineStyle.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithLineStyle: (recoveredStack2) manager: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) connectionPoint.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionPoint.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWith: (recoveredStack1) startPoint: (recoveredStack2) endPoint: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) getManager.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) addChildGO: (recoveredStack1) display: (recoveredStack2) createMemento: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) updateLineStyle.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

