"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004a900; bytecode file offset 0x9471b4"
!RBBubbleHelpManager methodsFor: 'recovered'!
enable
    enabled := true.
    ^self
! !

"ASDBase.ic method 0x2004ed14; bytecode file offset 0x94d048"
!RBBubbleHelpManager methodsFor: 'recovered'!
close
    (self) removeBubble.
    ^self
! !

"ASDBase.ic method 0x2005a3b0; bytecode file offset 0x957a6c"
!RBBubbleHelpManager methodsFor: 'recovered'!
popupShellMotion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) removeBubble.
    ^self
! !

"ASDBase.ic method 0x2006664c; bytecode file offset 0x963428"
!RBBubbleHelpManager methodsFor: 'recovered'!
lastBubbleWidget
    | recoveredValue0 |
    recoveredValue0 := lastBubbleWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066e4c; bytecode file offset 0x9646f8"
!RBBubbleHelpManager methodsFor: 'recovered'!
enabled
    | recoveredValue0 |
    recoveredValue0 := enabled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200691c4; bytecode file offset 0x965b90"
!RBBubbleHelpManager methodsFor: 'recovered'!
monitorProcess
    | recoveredValue0 |
    recoveredValue0 := monitorProcess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a944; bytecode file offset 0x967a18"
!RBBubbleHelpManager methodsFor: 'recovered'!
lastListItem
    | recoveredValue0 |
    recoveredValue0 := lastItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cd68; bytecode file offset 0x969c04"
!RBBubbleHelpManager methodsFor: 'recovered'!
infoWidget
    | recoveredValue0 |
    recoveredValue0 := infoWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072040; bytecode file offset 0x96ee04"
!RBBubbleHelpManager methodsFor: 'recovered'!
bitBubbling
    ^1
! !

"ASDBase.ic method 0x20072840; bytecode file offset 0x96f1c4"
!RBBubbleHelpManager methodsFor: 'recovered'!
bitWaitingForBubble
    ^2
! !

"ASDBase.ic method 0x200bdc4c; bytecode file offset 0x9bb178"
!RBBubbleHelpManager methodsFor: 'recovered'!
lastBubbleWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastBubbleWidget := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c03f4; bytecode file offset 0x9bd228"
!RBBubbleHelpManager methodsFor: 'recovered'!
monitorProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monitorProcess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1c3c; bytecode file offset 0x9beac8"
!RBBubbleHelpManager methodsFor: 'recovered'!
lastListItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastItem := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2388; bytecode file offset 0x9bf474"
!RBBubbleHelpManager methodsFor: 'recovered'!
infoCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    infoCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2de4; bytecode file offset 0x9bfde0"
!RBBubbleHelpManager methodsFor: 'recovered'!
itemInfoCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    itemInfoCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3628; bytecode file offset 0x9c058c"
!RBBubbleHelpManager methodsFor: 'recovered'!
infoWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    infoWidget := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c802c; bytecode file offset 0x9c4908"
!RBBubbleHelpManager methodsFor: 'recovered'!
callCallbacks: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) perform: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (self) callCallbackList: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ce888; bytecode file offset 0x9cb14c"
!RBBubbleHelpManager methodsFor: 'recovered'!
setBubbling
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce894; bytecode file offset 0x9cb14c"
!RBBubbleHelpManager methodsFor: 'recovered'!
clearWaitingForBubble
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce8b0; bytecode file offset 0x9cb180"
!RBBubbleHelpManager methodsFor: 'recovered'!
isBubbling
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce8e4; bytecode file offset 0x9cb1a8"
!RBBubbleHelpManager methodsFor: 'recovered'!
clearBubbling
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce8f0; bytecode file offset 0x9cb1a8"
!RBBubbleHelpManager methodsFor: 'recovered'!
setWaitingForBubble
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce90c; bytecode file offset 0x9cb1c4"
!RBBubbleHelpManager methodsFor: 'recovered'!
isWaitingForBubble
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20111754; bytecode file offset 0xa0e014"
!RBBubbleHelpManager methodsFor: 'recovered'!
shellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XmCRLOSINGFOCUS.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) removeBubble.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013cb0c; bytecode file offset 0xa393cc"
!RBBubbleHelpManager methodsFor: 'recovered'!
disable
    enabled := false.
    (self) removeBubble.
    (self) lastBubbleWidget: (nil).
    (self) lastListItem: (nil).
    ^self
! !

"ASDBase.ic method 0x20152268; bytecode file offset 0xa4eb24"
!RBBubbleHelpManager methodsFor: 'recovered'!
initialize
    super initialize.
    state := 0.
    enabled := true.
    infoWidget := nil.
    ^self
! !

"ASDBase.ic method 0x2015d1bc; bytecode file offset 0xa59a90"
!RBBubbleHelpManager methodsFor: 'recovered'!
infoCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := infoCallback.
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
            (recoveredStack1) infoCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := infoCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d374; bytecode file offset 0xa59c48"
!RBBubbleHelpManager methodsFor: 'recovered'!
itemInfoCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := itemInfoCallback.
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
            (recoveredStack1) itemInfoCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := itemInfoCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016d568; bytecode file offset 0xa69e8c"
!RBBubbleHelpManager methodsFor: 'recovered'!
addCallback: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwCallbackRec.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) perform: (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) add: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201b551c; bytecode file offset 0xab1ddc"
!RBBubbleHelpManager methodsFor: 'recovered'!
helpStringDict: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) at: (recoveredBlock7Value1).
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := (self) addHelpString: (recoveredBlock7Value2) forWidget: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) keysDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d77fc; bytecode file offset 0xad40c4"
!RBBubbleHelpManager methodsFor: 'recovered'!
bubbleOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) infoWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isDestroyed.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 21] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack1) destroyWidget.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) infoWidget: (recoveredBlock5Stack1).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f11dc; bytecode file offset 0xaedaac"
!RBBubbleHelpManager methodsFor: 'recovered'!
resetBubblingIngredients
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) lastBubbleWidget: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) lastListItem: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorProcess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280d7c58Arg1 | 
    | block280d7c58Value0 block280d7c58Value1 |
    block280d7c58Value0 := block280d7c58Arg1.
    block280d7c58Value1 := (block280d7c58Value0) terminate.
    block280d7c58Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) monitorProcess: (recoveredStack1).
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

"ASDBase.ic method 0x201f4124; bytecode file offset 0xaf0b10"
!RBBubbleHelpManager methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isBubbling.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isBubbling: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isWaitingForBubble.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isWaitingForBubble: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x201fe7a0; bytecode file offset 0xafb06c"
!RBBubbleHelpManager methodsFor: 'recovered'!
removeBubble
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWaitingForBubble.
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
            (recoveredStack0) clearWaitingForBubble.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) resetBubblingIngredients.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBubbling.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) bubbleOff.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) clearBubbling.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) resetBubblingIngredients.
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

"ASDBase.ic method 0x2021628c; bytecode file offset 0xb12b60"
!RBBubbleHelpManager methodsFor: 'recovered'!
triggerItemInfoCallbackForWidget: recoveredArg1 item: recoveredArg2 helpString: recoveredArg3 position: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasListItemBubbleHelpCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) widget: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) item: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) helpString: (recoveredValue8).
    recoveredValue9 := recoveredArg4.
    (recoveredValue2) position: (recoveredValue9).
    recoveredValue10 := RbBubbleHelpItemInfoCallback.
    recoveredValue11 := recoveredLocal1.
    (self) callCallbacks: (recoveredValue10) callData: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20227d94; bytecode file offset 0xb24664"
!RBBubbleHelpManager methodsFor: 'recovered'!
showItemHelpForWidget: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := PointerMotionMask.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := 'listPointerMotion:clientData:callData:'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) addEventHandler: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 'widgetButtonPress:clientData:callData:'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a7b8; bytecode file offset 0xb3708c"
!RBBubbleHelpManager methodsFor: 'recovered'!
triggerInfoCallbackForWidget: recoveredArg1 helpString: recoveredArg2 position: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := EtasBubbleHelpCallbackData.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) widget: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) helpString: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := RbBubbleHelpInfoCallback.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024d210; bytecode file offset 0xb49ae4"
!RBBubbleHelpManager methodsFor: 'recovered'!
widgetButtonPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) removeBubble.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := '_wb_sifting'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280decb4Arg1 | 
    | block280decb4Stack0 block280decb4Stack1 block280decb4Stack2 block280decb4Stack3 block280decb4PC block280decb4Step block280decb4Done block280decb4Result |
    block280decb4Stack0 := self.
    block280decb4PC := 4.
    block280decb4Done := false.
    [block280decb4Done not] whileTrue: [
        block280decb4Step := block280decb4PC.
        block280decb4Step = 4 ifTrue: [
            block280decb4Stack1 := nil.
            block280decb4PC := 5.
        ].
        block280decb4Step = 5 ifTrue: [
            block280decb4Stack2 := block280decb4Arg1.
            block280decb4PC := 6.
        ].
        block280decb4Step = 6 ifTrue: [
            block280decb4Stack2 := (block280decb4Stack2) isDestroyed.
            block280decb4PC := 8.
        ].
        block280decb4Step = 8 ifTrue: [
            (block280decb4Stack2) ifTrue: [block280decb4PC := 16] ifFalse: [block280decb4PC := 12].
        ].
        block280decb4Step = 12 ifTrue: [
            block280decb4PC := 13.
        ].
        block280decb4Step = 13 ifTrue: [
            block280decb4Stack1 := block280decb4Arg1.
            block280decb4PC := 14.
        ].
        block280decb4Step = 14 ifTrue: [
            block280decb4Stack1 := (block280decb4Stack1) redraw.
            block280decb4PC := 16.
        ].
        block280decb4Step = 16 ifTrue: [
            block280decb4Result := block280decb4Stack1.
            block280decb4Done := true.
        ].
    ].
    block280decb4Result
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039c400; bytecode file offset 0xc98e14"
!RBBubbleHelpManager methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setBubbling.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setBubbling--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) setWaitingForBubble.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setWaitingForBubble--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    (self) clearBubbling.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------clearBubbling--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue10).
    (self) clearWaitingForBubble.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------clearWaitingForBubble--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    (recoveredValue15) edit.
    ^self
! !

"ASDBase.ic method 0x203a1eac; bytecode file offset 0xc9e78c"
!RBBubbleHelpManager methodsFor: 'recovered'!
addHelpString: recoveredArg1 forWidget: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := EwTool.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := XmNenterNotifyCallback.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'widgetPointerMotion:clientData:callData:'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLabelTool.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 'widgetButtonPress:clientData:callData:'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := XmNarmCallback.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := 'widgetButtonPress:clientData:callData:'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := PointerMotionMask.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := 'widgetPointerMotion:clientData:callData:'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) addEventHandler: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := 'widgetButtonPress:clientData:callData:'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c7864; bytecode file offset 0xdc4178"
!RBBubbleHelpManager methodsFor: 'recovered'!
monitorBubbleItemPos: recoveredArg1 text: recoveredArg2 widget: recoveredArg3 item: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) setWaitingForBubble.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := Delay.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionBubbleHelpDelay.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) forMilliseconds: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Delay.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bubbleDelayTime.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) forMilliseconds: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastListItem.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCursor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) clearWaitingForBubble.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBubbling.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) bubbleOn: (recoveredStack1) text: (recoveredStack2) widget: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) setBubbling.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) removeBubble.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCursor.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := OSPoint.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) getCursorPos.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) screenToClient: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemAtPoint: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastListItem.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) removeBubble.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) removeBubble.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e9b98; bytecode file offset 0xde64ec"
!RBBubbleHelpManager methodsFor: 'recovered'!
callCallbackList: recoveredArg1 callData: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack2) callWith: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 140] ifFalse: [recoveredLocal1 := nil. recoveredPC := 163]] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 161] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050f6c8; bytecode file offset 0xe0bfc8"
!RBBubbleHelpManager methodsFor: 'recovered'!
removeHelpString: recoveredArg1 forWidget: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := EwTool.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlers.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := XmNenterNotifyCallback.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := [:recoveredBlock20Block29Arg1 | 
    | recoveredBlock20Block29Stack0 recoveredBlock20Block29Stack1 recoveredBlock20Block29Stack2 recoveredBlock20Block29Stack3 recoveredBlock20Block29Stack4 recoveredBlock20Block29PC recoveredBlock20Block29Step recoveredBlock20Block29Done recoveredBlock20Block29Result |
    recoveredBlock20Block29Stack0 := self.
    recoveredBlock20Block29PC := 36.
    recoveredBlock20Block29Done := false.
    [recoveredBlock20Block29Done not] whileTrue: [
        recoveredBlock20Block29Step := recoveredBlock20Block29PC.
        recoveredBlock20Block29Step = 36 ifTrue: [
            recoveredBlock20Block29Stack1 := false.
            recoveredBlock20Block29PC := 37.
        ].
        recoveredBlock20Block29Step = 37 ifTrue: [
            recoveredBlock20Block29Stack2 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 38.
        ].
        recoveredBlock20Block29Step = 38 ifTrue: [
            recoveredBlock20Block29Stack2 := (recoveredBlock20Block29Stack2) receiver.
            recoveredBlock20Block29PC := 40.
        ].
        recoveredBlock20Block29Step = 40 ifTrue: [
            recoveredBlock20Block29Stack3 := self.
            recoveredBlock20Block29PC := 41.
        ].
        recoveredBlock20Block29Step = 41 ifTrue: [
            recoveredBlock20Block29Stack2 := (recoveredBlock20Block29Stack2) = (recoveredBlock20Block29Stack3).
            recoveredBlock20Block29PC := 42.
        ].
        recoveredBlock20Block29Step = 42 ifTrue: [
            (recoveredBlock20Block29Stack2) ifTrue: [recoveredBlock20Block29PC := 46] ifFalse: [recoveredBlock20Block29PC := 53].
        ].
        recoveredBlock20Block29Step = 46 ifTrue: [
            recoveredBlock20Block29PC := 47.
        ].
        recoveredBlock20Block29Step = 47 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 48.
        ].
        recoveredBlock20Block29Step = 48 ifTrue: [
            recoveredBlock20Block29Stack1 := (recoveredBlock20Block29Stack1) selector.
            recoveredBlock20Block29PC := 50.
        ].
        recoveredBlock20Block29Step = 50 ifTrue: [
            recoveredBlock20Block29Stack2 := 'widgetPointerMotion:clientData:callData:'.
            recoveredBlock20Block29PC := 52.
        ].
        recoveredBlock20Block29Step = 52 ifTrue: [
            recoveredBlock20Block29Stack1 := (recoveredBlock20Block29Stack1) = (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 53.
        ].
        recoveredBlock20Block29Step = 53 ifTrue: [
            recoveredBlock20Block29Result := recoveredBlock20Block29Stack1.
            recoveredBlock20Block29Done := true.
        ].
    ].
    recoveredBlock20Block29Result
].
    recoveredBlock20Value2 := [].
    recoveredBlock20Value3 := (recoveredBlock20Value0) detect: (recoveredBlock20Value1) ifNone: (recoveredBlock20Value2).
    recoveredBlock20Value4 := [:recoveredBlock20Block58Arg1 | 
    | recoveredBlock20Block58Value0 recoveredBlock20Block58Value1 recoveredBlock20Block58Value2 |
    recoveredBlock20Block58Value0 := recoveredBlock20Arg1.
    recoveredBlock20Block58Value1 := recoveredBlock20Block58Arg1.
    recoveredBlock20Block58Value2 := (recoveredBlock20Block58Value0) remove: (recoveredBlock20Block58Value1).
    recoveredBlock20Block58Value2
].
    recoveredBlock20Value5 := (recoveredBlock20Value3) ifNotNil: (recoveredBlock20Value4).
    recoveredBlock20Value5
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLabelTool.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := 'widgetButtonPress:clientData:callData:'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) removeEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := XmNarmCallback.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := 'widgetButtonPress:clientData:callData:'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) removeCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlers.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := PointerMotionMask.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 recoveredBlock118Value1 recoveredBlock118Value2 recoveredBlock118Value3 recoveredBlock118Value4 recoveredBlock118Value5 |
    recoveredBlock118Value0 := recoveredBlock118Arg1.
    recoveredBlock118Value1 := [:recoveredBlock118Block127Arg1 | 
    | recoveredBlock118Block127Stack0 recoveredBlock118Block127Stack1 recoveredBlock118Block127Stack2 recoveredBlock118Block127Stack3 recoveredBlock118Block127Stack4 recoveredBlock118Block127PC recoveredBlock118Block127Step recoveredBlock118Block127Done recoveredBlock118Block127Result |
    recoveredBlock118Block127Stack0 := self.
    recoveredBlock118Block127PC := 134.
    recoveredBlock118Block127Done := false.
    [recoveredBlock118Block127Done not] whileTrue: [
        recoveredBlock118Block127Step := recoveredBlock118Block127PC.
        recoveredBlock118Block127Step = 134 ifTrue: [
            recoveredBlock118Block127Stack1 := false.
            recoveredBlock118Block127PC := 135.
        ].
        recoveredBlock118Block127Step = 135 ifTrue: [
            recoveredBlock118Block127Stack2 := recoveredBlock118Block127Arg1.
            recoveredBlock118Block127PC := 136.
        ].
        recoveredBlock118Block127Step = 136 ifTrue: [
            recoveredBlock118Block127Stack2 := (recoveredBlock118Block127Stack2) receiver.
            recoveredBlock118Block127PC := 138.
        ].
        recoveredBlock118Block127Step = 138 ifTrue: [
            recoveredBlock118Block127Stack3 := self.
            recoveredBlock118Block127PC := 139.
        ].
        recoveredBlock118Block127Step = 139 ifTrue: [
            recoveredBlock118Block127Stack2 := (recoveredBlock118Block127Stack2) = (recoveredBlock118Block127Stack3).
            recoveredBlock118Block127PC := 140.
        ].
        recoveredBlock118Block127Step = 140 ifTrue: [
            (recoveredBlock118Block127Stack2) ifTrue: [recoveredBlock118Block127PC := 144] ifFalse: [recoveredBlock118Block127PC := 151].
        ].
        recoveredBlock118Block127Step = 144 ifTrue: [
            recoveredBlock118Block127PC := 145.
        ].
        recoveredBlock118Block127Step = 145 ifTrue: [
            recoveredBlock118Block127Stack1 := recoveredBlock118Block127Arg1.
            recoveredBlock118Block127PC := 146.
        ].
        recoveredBlock118Block127Step = 146 ifTrue: [
            recoveredBlock118Block127Stack1 := (recoveredBlock118Block127Stack1) selector.
            recoveredBlock118Block127PC := 148.
        ].
        recoveredBlock118Block127Step = 148 ifTrue: [
            recoveredBlock118Block127Stack2 := 'widgetPointerMotion:clientData:callData:'.
            recoveredBlock118Block127PC := 150.
        ].
        recoveredBlock118Block127Step = 150 ifTrue: [
            recoveredBlock118Block127Stack1 := (recoveredBlock118Block127Stack1) = (recoveredBlock118Block127Stack2).
            recoveredBlock118Block127PC := 151.
        ].
        recoveredBlock118Block127Step = 151 ifTrue: [
            recoveredBlock118Block127Result := recoveredBlock118Block127Stack1.
            recoveredBlock118Block127Done := true.
        ].
    ].
    recoveredBlock118Block127Result
].
    recoveredBlock118Value2 := [].
    recoveredBlock118Value3 := (recoveredBlock118Value0) detect: (recoveredBlock118Value1) ifNone: (recoveredBlock118Value2).
    recoveredBlock118Value4 := [:recoveredBlock118Block156Arg1 | 
    | recoveredBlock118Block156Value0 recoveredBlock118Block156Value1 recoveredBlock118Block156Value2 |
    recoveredBlock118Block156Value0 := recoveredBlock118Arg1.
    recoveredBlock118Block156Value1 := recoveredBlock118Block156Arg1.
    recoveredBlock118Block156Value2 := (recoveredBlock118Block156Value0) remove: (recoveredBlock118Block156Value1).
    recoveredBlock118Block156Value2
].
    recoveredBlock118Value5 := (recoveredBlock118Value3) ifNotNil: (recoveredBlock118Value4).
    recoveredBlock118Value5
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := 'widgetButtonPress:clientData:callData:'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) removeEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205287d4; bytecode file offset 0xe250e4"
!RBBubbleHelpManager methodsFor: 'recovered'!
listPointerMotion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := enabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isActiveShell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) point.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) clientToScreen: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) point.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemAtPoint: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastBubbleWidget.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastListItem.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) removeBubble.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) lastListItem: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) lastBubbleWidget: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOfItem: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) getVisualInfoFor: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) visualInfoCalldata.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerItemInfoCallbackForWidget: (recoveredStack1) item: (recoveredStack2) helpString: (recoveredStack3) position: (recoveredStack4).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpString.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock161Value0 recoveredBlock161Value1 recoveredBlock161Value2 recoveredBlock161Value3 recoveredBlock161Value4 recoveredBlock161Value5 recoveredBlock161Value6 |
    recoveredBlock161Value0 := recoveredLocal1.
    recoveredBlock161Value1 := (recoveredBlock161Value0) position.
    recoveredBlock161Value2 := recoveredLocal1.
    recoveredBlock161Value3 := (recoveredBlock161Value2) helpString.
    recoveredBlock161Value4 := recoveredLocal2.
    recoveredBlock161Value5 := recoveredLocal3.
    recoveredBlock161Value6 := (self) monitorBubbleItemPos: (recoveredBlock161Value1) text: (recoveredBlock161Value3) widget: (recoveredBlock161Value4) item: (recoveredBlock161Value5).
    recoveredBlock161Value6
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) fork.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) monitorProcess: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20532f2c; bytecode file offset 0xe2f844"
!RBBubbleHelpManager methodsFor: 'recovered'!
widgetPointerMotion: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := enabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isActiveShell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := EwTool.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) window.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := ReturnParameter.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) null.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := ReturnParameter.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) null.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := ReturnParameter.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack6.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := ReturnParameter.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := (recoveredStack6) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack7.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack7 := ReturnParameter.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack7 := (recoveredStack7) null.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack8 := ReturnParameter.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack8 := (recoveredStack8) null.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack9 := ReturnParameter.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack9 := (recoveredStack9) null.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) queryPointer: (recoveredStack2) rootReturn: (recoveredStack3) childReturn: (recoveredStack4) rootXReturn: (recoveredStack5) rootYReturn: (recoveredStack6) winXReturn: (recoveredStack7) winYReturn: (recoveredStack8) maskReturn: (recoveredStack9).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) point.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) clientToScreen: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCwComboBox.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComboBoxPoppedDown.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastBubbleWidget.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) removeBubble.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) lastBubbleWidget: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) lastListItem: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerInfoCallbackForWidget: (recoveredStack1) helpString: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpString.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) lastBubbleWidget: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredPC := 200.
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
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) helpString.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) initializeMonitorProcessPosition: (recoveredStack1) text: (recoveredStack2) widget: (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205528b8; bytecode file offset 0xe4f1f0"
!RBBubbleHelpManager methodsFor: 'recovered'!
initializeMonitorProcessPosition: recoveredArg1 text: recoveredArg2 widget: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ASDGeneralOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionBubbleHelpDelay.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setWaitingForBubble.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastBubbleWidget.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
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
            recoveredStack0 := (recoveredStack0) lastBubbleWidget.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) lastBubbleWidget: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastBubbleWidget.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCursor.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) lastBubbleWidget: (recoveredStack1).
            recoveredPC := 66.
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
            (recoveredStack0) clearWaitingForBubble.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBubbling.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) bubbleOn: (recoveredStack1) text: (recoveredStack2) widget: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) setBubbling.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock95Local1 recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := false.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack1.
            recoveredBlock95PC := 106.
        ].
        recoveredBlock95Step = 106 ifTrue: [
            recoveredBlock95PC := 187.
        ].
        recoveredBlock95Step = 110 ifTrue: [
            recoveredBlock95Stack1 := CwAppContext.
            recoveredBlock95PC := 112.
        ].
        recoveredBlock95Step = 112 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) default.
            recoveredBlock95PC := 114.
        ].
        recoveredBlock95Step = 114 ifTrue: [
            recoveredBlock95Stack2 := [
    | recoveredBlock95Block114Stack0 recoveredBlock95Block114Stack1 recoveredBlock95Block114Stack2 recoveredBlock95Block114Stack3 recoveredBlock95Block114PC recoveredBlock95Block114Step recoveredBlock95Block114Done recoveredBlock95Block114Result |
    recoveredBlock95Block114Stack0 := self.
    recoveredBlock95Block114PC := 120.
    recoveredBlock95Block114Done := false.
    [recoveredBlock95Block114Done not] whileTrue: [
        recoveredBlock95Block114Step := recoveredBlock95Block114PC.
        recoveredBlock95Block114Step = 120 ifTrue: [
            recoveredBlock95Block114Stack1 := nil.
            recoveredBlock95Block114PC := 121.
        ].
        recoveredBlock95Block114Step = 121 ifTrue: [
            recoveredBlock95Block114Stack2 := self.
            recoveredBlock95Block114PC := 122.
        ].
        recoveredBlock95Block114Step = 122 ifTrue: [
            recoveredBlock95Block114Stack2 := (recoveredBlock95Block114Stack2) lastBubbleWidget.
            recoveredBlock95Block114PC := 124.
        ].
        recoveredBlock95Block114Step = 124 ifTrue: [
            (recoveredBlock95Block114Stack2 == nil) ifTrue: [recoveredBlock95Block114PC := 172] ifFalse: [recoveredBlock95Block114PC := 128].
        ].
        recoveredBlock95Block114Step = 128 ifTrue: [
            recoveredBlock95Block114PC := 129.
        ].
        recoveredBlock95Block114Step = 129 ifTrue: [
            recoveredBlock95Block114Stack1 := self.
            recoveredBlock95Block114PC := 130.
        ].
        recoveredBlock95Block114Step = 130 ifTrue: [
            recoveredBlock95Block114Stack1 := (recoveredBlock95Block114Stack1) lastBubbleWidget.
            recoveredBlock95Block114PC := 132.
        ].
        recoveredBlock95Block114Step = 132 ifTrue: [
            recoveredBlock95Block114Stack1 := (recoveredBlock95Block114Stack1) primaryWidget.
            recoveredBlock95Block114PC := 134.
        ].
        recoveredBlock95Block114Step = 134 ifTrue: [
            recoveredBlock95Block114Stack1 := (recoveredBlock95Block114Stack1) osWidget.
            recoveredBlock95Block114PC := 136.
        ].
        recoveredBlock95Block114Step = 136 ifTrue: [
            (recoveredBlock95Block114Stack1 ~~ nil) ifTrue: [recoveredBlock95Block114PC := 150] ifFalse: [recoveredBlock95Block114PC := 140].
        ].
        recoveredBlock95Block114Step = 140 ifTrue: [
            recoveredBlock95Block114Stack1 := true.
            recoveredBlock95Block114PC := 141.
        ].
        recoveredBlock95Block114Step = 141 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Block114Stack1.
            recoveredBlock95Block114PC := 144.
        ].
        recoveredBlock95Block114Step = 144 ifTrue: [
            recoveredBlock95Block114Stack1 := self.
            recoveredBlock95Block114PC := 145.
        ].
        recoveredBlock95Block114Step = 145 ifTrue: [
            recoveredBlock95Block114Stack1 := (recoveredBlock95Block114Stack1) removeBubble.
            recoveredBlock95Block114PC := 147.
        ].
        recoveredBlock95Block114Step = 147 ifTrue: [
            recoveredBlock95Block114PC := 172.
        ].
        recoveredBlock95Block114Step = 150 ifTrue: [
            recoveredBlock95Block114Stack1 := nil.
            recoveredBlock95Block114PC := 151.
        ].
        recoveredBlock95Block114Step = 151 ifTrue: [
            recoveredBlock95Block114Stack2 := self.
            recoveredBlock95Block114PC := 152.
        ].
        recoveredBlock95Block114Step = 152 ifTrue: [
            recoveredBlock95Block114Stack2 := (recoveredBlock95Block114Stack2) lastBubbleWidget.
            recoveredBlock95Block114PC := 154.
        ].
        recoveredBlock95Block114Step = 154 ifTrue: [
            recoveredBlock95Block114Stack2 := (recoveredBlock95Block114Stack2) primaryWidget.
            recoveredBlock95Block114PC := 156.
        ].
        recoveredBlock95Block114Step = 156 ifTrue: [
            recoveredBlock95Block114Stack2 := (recoveredBlock95Block114Stack2) osWidget.
            recoveredBlock95Block114PC := 158.
        ].
        recoveredBlock95Block114Step = 158 ifTrue: [
            recoveredBlock95Block114Stack2 := (recoveredBlock95Block114Stack2) hasCursor.
            recoveredBlock95Block114PC := 160.
        ].
        recoveredBlock95Block114Step = 160 ifTrue: [
            (recoveredBlock95Block114Stack2) ifTrue: [recoveredBlock95Block114PC := 172] ifFalse: [recoveredBlock95Block114PC := 164].
        ].
        recoveredBlock95Block114Step = 164 ifTrue: [
            recoveredBlock95Block114PC := 165.
        ].
        recoveredBlock95Block114Step = 165 ifTrue: [
            recoveredBlock95Block114Stack1 := true.
            recoveredBlock95Block114PC := 166.
        ].
        recoveredBlock95Block114Step = 166 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Block114Stack1.
            recoveredBlock95Block114PC := 169.
        ].
        recoveredBlock95Block114Step = 169 ifTrue: [
            recoveredBlock95Block114Stack1 := self.
            recoveredBlock95Block114PC := 170.
        ].
        recoveredBlock95Block114Step = 170 ifTrue: [
            recoveredBlock95Block114Stack1 := (recoveredBlock95Block114Stack1) removeBubble.
            recoveredBlock95Block114PC := 172.
        ].
        recoveredBlock95Block114Step = 172 ifTrue: [
            recoveredBlock95Block114Result := recoveredBlock95Block114Stack1.
            recoveredBlock95Block114Done := true.
        ].
    ].
    recoveredBlock95Block114Result
].
            recoveredBlock95PC := 173.
        ].
        recoveredBlock95Step = 173 ifTrue: [
            (recoveredBlock95Stack1) syncExecInUI: (recoveredBlock95Stack2).
            recoveredBlock95PC := 175.
        ].
        recoveredBlock95Step = 175 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Local1.
            recoveredBlock95PC := 178.
        ].
        recoveredBlock95Step = 178 ifTrue: [
            (recoveredBlock95Stack1) ifTrue: [recoveredBlock95PC := 187] ifFalse: [recoveredBlock95PC := 182].
        ].
        recoveredBlock95Step = 182 ifTrue: [
            recoveredBlock95Stack1 := recoveredLocal1.
            recoveredBlock95PC := 185.
        ].
        recoveredBlock95Step = 185 ifTrue: [
            (recoveredBlock95Stack1) wait.
            recoveredBlock95PC := 187.
        ].
        recoveredBlock95Step = 187 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Local1.
            recoveredBlock95PC := 190.
        ].
        recoveredBlock95Step = 190 ifTrue: [
            (recoveredBlock95Stack1) ifTrue: [recoveredBlock95PC := 192] ifFalse: [recoveredBlock95PC := 110].
        ].
        recoveredBlock95Step = 192 ifTrue: [
            recoveredBlock95Stack1 := nil.
            recoveredBlock95PC := 193.
        ].
        recoveredBlock95Step = 193 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) newProcess.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) monitorProcess: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorProcess.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) userSchedulingPriority.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) priority: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'BubbleHelpMonitorProcess '.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := Time.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := (recoveredStack3) now.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) resume.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057e3d4; bytecode file offset 0xe7ad34"
!RBBubbleHelpManager methodsFor: 'recovered'!
bubbleOn: recoveredArg1 text: recoveredArg2 widget: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := enabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) bubbleOff.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CwOverrideShell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'aPopup'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPopupShell: (recoveredStack1) parent: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'aLabel'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 recoveredBlock54Value10 recoveredBlock54Value11 recoveredBlock54Value12 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := recoveredBlock54Value0.
    (recoveredBlock54Value1) marginWidth: (2).
    recoveredBlock54Value2 := recoveredBlock54Value0.
    (recoveredBlock54Value2) marginHeight: (1).
    recoveredBlock54Value3 := recoveredBlock54Value0.
    recoveredBlock54Value4 := recoveredArg2.
    (recoveredBlock54Value3) labelString: (recoveredBlock54Value4).
    recoveredBlock54Value5 := recoveredBlock54Value0.
    recoveredBlock54Value6 := EwSystemColors.
    recoveredBlock54Value7 := (recoveredBlock54Value6) new.
    recoveredBlock54Value8 := (recoveredBlock54Value7) infoBackground.
    (recoveredBlock54Value5) backgroundColor: (recoveredBlock54Value8).
    recoveredBlock54Value9 := EwSystemColors.
    recoveredBlock54Value10 := (recoveredBlock54Value9) new.
    recoveredBlock54Value11 := (recoveredBlock54Value10) infoText.
    recoveredBlock54Value12 := (recoveredBlock54Value0) foregroundColor: (recoveredBlock54Value11).
    recoveredBlock54Value12
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) setTooltipFont.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := ButtonPressMask.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := PointerMotionMask.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 'popupShellMotion:clientData:callData:'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := XmNfocusCallback.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := 'shellFocus:clientData:callData:'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) realizeWidget.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) wholeDesktopRect.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) etasShowWithoutActivate.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) infoWidget: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) enable.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

