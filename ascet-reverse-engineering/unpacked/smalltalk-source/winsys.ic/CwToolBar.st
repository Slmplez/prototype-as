"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000a88; bytecode file offset 0x7cc7c"
!CwToolBar methodsFor: 'recovered'!
osWidgetClass
    | recoveredValue0 |
    recoveredValue0 := OSToolBar.
    ^recoveredValue0
! !

"winsys.ic method 0x20001430; bytecode file offset 0x7d6c0"
!CwToolBar methodsFor: 'recovered'!
numItems
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) itemCount.
    ^recoveredValue1
! !

"winsys.ic method 0x20002340; bytecode file offset 0x7e528"
!CwToolBar methodsFor: 'recovered'!
deleteAllItems
    | recoveredValue0 |
    recoveredValue0 := osWidget.
    (recoveredValue0) removeAll.
    ^self
! !

"winsys.ic method 0x200023a0; bytecode file offset 0x7e578"
!CwToolBar methodsFor: 'recovered'!
marginHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) inset.
    recoveredValue2 := (recoveredValue1) y.
    ^recoveredValue2
! !

"winsys.ic method 0x200023b0; bytecode file offset 0x7e578"
!CwToolBar methodsFor: 'recovered'!
marginWidth
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) inset.
    recoveredValue2 := (recoveredValue1) x.
    ^recoveredValue2
! !

"winsys.ic method 0x2000434c; bytecode file offset 0x80534"
!CwToolBar methodsFor: 'recovered'!
showTips
    | recoveredValue0 |
    recoveredValue0 := xmNshowTips.
    ^recoveredValue0
! !

"winsys.ic method 0x20006070; bytecode file offset 0x82234"
!CwToolBar methodsFor: 'recovered'!
updateShowTips
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := xmNshowTips.
    (recoveredValue0) showTips: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x200086e8; bytecode file offset 0x848a8"
!CwToolBar methodsFor: 'recovered'!
singleSelectionCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNsingleSelectionCallback := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200096e8; bytecode file offset 0x858b4"
!CwToolBar methodsFor: 'recovered'!
deleteItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := osWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) osWidget.
    recoveredValue3 := [].
    (recoveredValue0) remove: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2000a7b0; bytecode file offset 0x86990"
!CwToolBar methodsFor: 'recovered'!
createToolButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwToolButton.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) create: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x2000bd20; bytecode file offset 0x87f98"
!CwToolBar methodsFor: 'recovered'!
fontList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwFontList.
    recoveredValue1 := (self) display.
    recoveredValue2 := osWidget.
    recoveredValue3 := (recoveredValue2) font.
    recoveredValue4 := (recoveredValue1) fontFromOSFont: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) queryFont.
    recoveredValue6 := (recoveredValue0) fontStruct: (recoveredValue5).
    ^recoveredValue6
! !

"winsys.ic method 0x2000bfa4; bytecode file offset 0x881bc"
!CwToolBar methodsFor: 'recovered'!
items
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := osWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28008914Arg1 | 
    | block28008914Value0 block28008914Value1 |
    block28008914Value0 := block28008914Arg1.
    block28008914Value1 := (block28008914Value0) owner.
    block28008914Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000c598; bytecode file offset 0x88764"
!CwToolBar methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 |
    super initializeResources.
    xmNshowTips := true.
    recoveredValue0 := XmTABGROUP.
    xmNnavigationType := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000fc20; bytecode file offset 0x8be00"
!CwToolBar methodsFor: 'recovered'!
singleSelectionCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNsingleSelectionCallback.
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
            (recoveredStack1) singleSelectionCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNsingleSelectionCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20010988; bytecode file offset 0x8cb70"
!CwToolBar methodsFor: 'recovered'!
fontList: recoveredArg1
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
            xmNfontList := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'updateOSWidgetFont'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateOSWidgetFont.
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

"winsys.ic method 0x20013200; bytecode file offset 0x8f3d8"
!CwToolBar methodsFor: 'recovered'!
callSelectionCallback: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwValueCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XmCRSINGLESELECT.
    (recoveredValue3) reason: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue2) value: (recoveredValue5).
    recoveredValue6 := xmNsingleSelectionCallback.
    recoveredValue7 := recoveredLocal1.
    (self) callCallbackList: (recoveredValue6) callData: (recoveredValue7).
    ^self
! !

"winsys.ic method 0x20016710; bytecode file offset 0x928e8"
!CwToolBar methodsFor: 'recovered'!
showTips: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNshowTips.
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
            xmNshowTips := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'updateShowTips'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateShowTips.
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

"winsys.ic method 0x20016b14; bytecode file offset 0x92ce0"
!CwToolBar methodsFor: 'recovered'!
deleteItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := [:recoveredBlock4Block13Arg1 | 
    | recoveredBlock4Block13Value0 recoveredBlock4Block13Value1 |
    recoveredBlock4Block13Value0 := recoveredBlock4Block13Arg1.
    recoveredBlock4Block13Value1 := (self) deleteItem: (recoveredBlock4Block13Value0).
    recoveredBlock4Block13Value1
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) do: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) deferRedraw: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20018ffc; bytecode file offset 0x951d4"
!CwToolBar methodsFor: 'recovered'!
updateOSWidgetFont
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := osWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := xmNfontList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) osHfont.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) font: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            xmNfontList := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
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
            recoveredStack0 := (recoveredStack0) requestPreferredExtent.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := XtGeometryDone.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) layOut.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001f5b4; bytecode file offset 0x9b790"
!CwToolBar methodsFor: 'recovered'!
setInitialSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) items.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) widget.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 35] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack1) setInitialSize.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) width.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) separatorWidth: (recoveredBlock5Stack2).
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    super setInitialSize.
    ^self
! !

"winsys.ic method 0x2002a2d8; bytecode file offset 0xa64c4"
!CwToolBar methodsFor: 'recovered'!
changeManaged
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) widget.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 49] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) width.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack1) separatorWidth: (recoveredBlock5Stack2).
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) osWidget.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) x.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack3 := recoveredLocal1.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) osWidget.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) y.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) moveWidget: (recoveredBlock5Stack2) y: (recoveredBlock5Stack3).
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := xmNwidth.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := xmNheight.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) requestPreferredExtent.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20033918; bytecode file offset 0xafb0c"
!CwToolBar methodsFor: 'recovered'!
preferredExtent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := xmNborderWidth.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := osWidget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 recoveredBlock42Value5 recoveredBlock42Value6 recoveredBlock42Value7 recoveredBlock42Value8 recoveredBlock42Value9 recoveredBlock42Value10 recoveredBlock42Value11 recoveredBlock42Value12 recoveredBlock42Value13 recoveredBlock42Value14 recoveredBlock42Value15 recoveredBlock42Value16 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := (recoveredBlock42Value0) widgetRect.
    recoveredLocal3 := recoveredBlock42Value1.
    recoveredBlock42Value2 := recoveredLocal2.
    recoveredBlock42Value3 := recoveredLocal3.
    recoveredBlock42Value4 := (recoveredBlock42Value3) right.
    recoveredBlock42Value5 := recoveredLocal3.
    recoveredBlock42Value6 := (recoveredBlock42Value5) left.
    recoveredBlock42Value7 := (recoveredBlock42Value4) - (recoveredBlock42Value6).
    recoveredBlock42Value8 := (recoveredBlock42Value2) + (recoveredBlock42Value7).
    recoveredLocal2 := recoveredBlock42Value8.
    recoveredBlock42Value9 := recoveredLocal1.
    recoveredBlock42Value10 := recoveredLocal3.
    recoveredBlock42Value11 := (recoveredBlock42Value10) bottom.
    recoveredBlock42Value12 := recoveredLocal3.
    recoveredBlock42Value13 := (recoveredBlock42Value12) top.
    recoveredBlock42Value14 := (recoveredBlock42Value11) - (recoveredBlock42Value13).
    recoveredBlock42Value15 := (recoveredBlock42Value9) max: (recoveredBlock42Value14).
    recoveredBlock42Value16 := recoveredBlock42Value15.
    recoveredLocal1 := recoveredBlock42Value16.
    recoveredBlock42Value15
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := osWidget.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) inset.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

