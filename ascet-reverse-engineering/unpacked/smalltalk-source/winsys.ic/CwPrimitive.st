"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200001d0; bytecode file offset 0x7c440"
!CwPrimitive methodsFor: 'recovered'!
shadowThickness: recoveredArg1
    ^self
! !

"winsys.ic method 0x200001e8; bytecode file offset 0x7c440"
!CwPrimitive methodsFor: 'recovered'!
childrenDo: recoveredArg1
    ^self
! !

"winsys.ic method 0x20000218; bytecode file offset 0x7c440"
!CwPrimitive methodsFor: 'recovered'!
highlightThickness: recoveredArg1
    ^self
! !

"winsys.ic method 0x20001be0; bytecode file offset 0x7de10"
!CwPrimitive methodsFor: 'recovered'!
preOrderRealizeAndMap
    (self) realizeAndMap.
    ^self
! !

"winsys.ic method 0x20001bf8; bytecode file offset 0x7de10"
!CwPrimitive methodsFor: 'recovered'!
postOrderChangeManaged
    (self) changeManaged.
    ^self
! !

"winsys.ic method 0x200040dc; bytecode file offset 0x802ac"
!CwPrimitive methodsFor: 'recovered'!
navigationType
    | recoveredValue0 |
    recoveredValue0 := xmNnavigationType.
    ^recoveredValue0
! !

"winsys.ic method 0x20004100; bytecode file offset 0x802d0"
!CwPrimitive methodsFor: 'recovered'!
traversalOn
    | recoveredValue0 |
    recoveredValue0 := xmNtraversalOn.
    ^recoveredValue0
! !

"winsys.ic method 0x200046f8; bytecode file offset 0x808e8"
!CwPrimitive methodsFor: 'recovered'!
highlightThickness
    ^0
! !

"winsys.ic method 0x20004718; bytecode file offset 0x808e8"
!CwPrimitive methodsFor: 'recovered'!
shadowThickness
    ^0
! !

"winsys.ic method 0x200047f4; bytecode file offset 0x80a5c"
!CwPrimitive methodsFor: 'recovered'!
isPrimitive
    ^true
! !

"winsys.ic method 0x2000495c; bytecode file offset 0x80b84"
!CwPrimitive methodsFor: 'recovered'!
strictClipping
    ^false
! !

"winsys.ic method 0x20004b84; bytecode file offset 0x80d54"
!CwPrimitive methodsFor: 'recovered'!
preOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) value: (self).
    ^self
! !

"winsys.ic method 0x20004b90; bytecode file offset 0x80d54"
!CwPrimitive methodsFor: 'recovered'!
postOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) value: (self).
    ^self
! !

"winsys.ic method 0x20004bfc; bytecode file offset 0x80e38"
!CwPrimitive methodsFor: 'recovered'!
deleteChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) deletePopup: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20004c74; bytecode file offset 0x80e38"
!CwPrimitive methodsFor: 'recovered'!
insertChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) insertPopup: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200053f8; bytecode file offset 0x815e0"
!CwPrimitive methodsFor: 'recovered'!
removeTabGroup
    | recoveredValue0 |
    recoveredValue0 := (self) shell.
    (recoveredValue0) removeTabGroup: (self).
    ^self
! !

"winsys.ic method 0x20005408; bytecode file offset 0x815e0"
!CwPrimitive methodsFor: 'recovered'!
addTabGroup
    | recoveredValue0 |
    recoveredValue0 := (self) shell.
    (recoveredValue0) addTabGroup: (self).
    ^self
! !

"winsys.ic method 0x20005dfc; bytecode file offset 0x82004"
!CwPrimitive methodsFor: 'recovered'!
foregroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := osWidget.
    recoveredValue2 := (recoveredValue1) foreground.
    recoveredValue3 := (recoveredValue0) fromOSRGB: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20005e38; bytecode file offset 0x82004"
!CwPrimitive methodsFor: 'recovered'!
backgroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := osWidget.
    recoveredValue2 := (recoveredValue1) background.
    recoveredValue3 := (recoveredValue0) fromOSRGB: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20008504; bytecode file offset 0x846d4"
!CwPrimitive methodsFor: 'recovered'!
navigationType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNnavigationType := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008530; bytecode file offset 0x846f0"
!CwPrimitive methodsFor: 'recovered'!
traversalOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNtraversalOn := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20009040; bytecode file offset 0x85248"
!CwPrimitive methodsFor: 'recovered'!
updateHelpCallback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := OSxHelp.
    (recoveredValue0) replace: (recoveredValue1) with: ('callHelpCallback:').
    ^self
! !

"winsys.ic method 0x2000924c; bytecode file offset 0x85414"
!CwPrimitive methodsFor: 'recovered'!
interceptTraversal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('PR') = ('1E54GU2').
    recoveredValue1 := cwInterceptTraversal.
    ^recoveredValue1
! !

"winsys.ic method 0x20009408; bytecode file offset 0x855e0"
!CwPrimitive methodsFor: 'recovered'!
setTabGroupFocus
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) wantsFocus.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) setTabItemFocus.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000a4d8; bytecode file offset 0x866a0"
!CwPrimitive methodsFor: 'recovered'!
interceptTraversal: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('PR') = ('1E54GU2').
    recoveredValue1 := recoveredArg1.
    cwInterceptTraversal := recoveredValue1.
    ^self
! !

"winsys.ic method 0x2000ab54; bytecode file offset 0x86d1c"
!CwPrimitive methodsFor: 'recovered'!
updateForegroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osWidget.
    recoveredValue1 := xmNforegroundColor.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    (recoveredValue0) foreground: (recoveredValue2).
    xmNforegroundColor := nil.
    ^self
! !

"winsys.ic method 0x2000ab74; bytecode file offset 0x86d3c"
!CwPrimitive methodsFor: 'recovered'!
updateBackgroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osWidget.
    recoveredValue1 := xmNbackgroundColor.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    (recoveredValue0) background: (recoveredValue2).
    xmNbackgroundColor := nil.
    ^self
! !

"winsys.ic method 0x2000c570; bytecode file offset 0x8873c"
!CwPrimitive methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 |
    super initializeResources.
    xmNtraversalOn := true.
    recoveredValue0 := XmNONE.
    xmNnavigationType := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000de80; bytecode file offset 0x8a050"
!CwPrimitive methodsFor: 'recovered'!
initializeWidget
    | recoveredValue0 |
    recoveredValue0 := ('PR') = ('1E54GU2').
    super initializeWidget.
    cwInterceptTraversal := false.
    ^self
! !

"winsys.ic method 0x2000e5a0; bytecode file offset 0x8a774"
!CwPrimitive methodsFor: 'recovered'!
osHookEvents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := osWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := OSxSetCursor.
    (recoveredValue1) replace: (recoveredValue2) with: ('callSetCursor:').
    recoveredValue3 := OSxTraverse.
    (recoveredValue0) replace: (recoveredValue3) with: ('callTraversalKey:').
    ^self
! !

"winsys.ic method 0x2000e784; bytecode file offset 0x8a958"
!CwPrimitive methodsFor: 'recovered'!
tabList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := XmTABGROUP.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000ef68; bytecode file offset 0x8b13c"
!CwPrimitive methodsFor: 'recovered'!
callHelpCallback: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwAnyCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := XmCRHELP.
    (recoveredValue2) reason: (recoveredValue3).
    recoveredValue4 := xmNhelpCallback.
    recoveredValue5 := recoveredLocal1.
    (self) callCallbackList: (recoveredValue4) callData: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2000f7dc; bytecode file offset 0x8b9a8"
!CwPrimitive methodsFor: 'recovered'!
helpCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNhelpCallback.
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
            (recoveredStack1) helpCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNhelpCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200105f4; bytecode file offset 0x8c7bc"
!CwPrimitive methodsFor: 'recovered'!
foregroundColor: recoveredArg1
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
            xmNforegroundColor := recoveredStack1.
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
            recoveredStack2 := 'updateForegroundColor'.
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
            (recoveredStack0) updateForegroundColor.
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

"winsys.ic method 0x2001061c; bytecode file offset 0x8c7e4"
!CwPrimitive methodsFor: 'recovered'!
backgroundColor: recoveredArg1
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
            xmNbackgroundColor := recoveredStack1.
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
            recoveredStack2 := 'updateBackgroundColor'.
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
            (recoveredStack0) updateBackgroundColor.
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

"winsys.ic method 0x20010644; bytecode file offset 0x8c80c"
!CwPrimitive methodsFor: 'recovered'!
helpCallback: recoveredArg1
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
            xmNhelpCallback := recoveredStack1.
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
            recoveredStack2 := 'updateHelpCallback'.
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
            (recoveredStack0) updateHelpCallback.
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

"winsys.ic method 0x20012b80; bytecode file offset 0x8ed50"
!CwPrimitive methodsFor: 'recovered'!
callTraversalKey: recoveredArg1
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
            recoveredStack2 := '1E54GU2'.
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
            recoveredStack1 := cwInterceptTraversal.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super callTraversalKey: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20024a38; bytecode file offset 0xa0c08"
!CwPrimitive methodsFor: 'recovered'!
changeManaged
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNwidth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := xmNheight.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredExtent.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := xmNborderWidth.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) resizeWidget: (recoveredStack1) height: (recoveredStack2) borderWidth: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

