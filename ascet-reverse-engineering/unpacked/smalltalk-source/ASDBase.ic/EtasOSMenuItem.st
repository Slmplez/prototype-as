"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006670; bytecode file offset 0x902f24"
!EtasOSMenuItem methodsFor: 'recovered'!
drawCheckFrame: recoveredArg1 x: recoveredArg2 y: recoveredArg3
    | recoveredLocal1 recoveredLocal2 |
    ^self
! !

"ASDBase.ic method 0x200086fc; bytecode file offset 0x908be4"
!EtasOSMenuItem methodsFor: 'recovered'!
alignHeight
    | recoveredValue0 |
    recoveredValue0 := (self) height.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c0a4; bytecode file offset 0x908be4"
!EtasOSMenuItem methodsFor: 'recovered'!
alignWidth
    | recoveredValue0 |
    recoveredValue0 := (self) width.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20030e64; bytecode file offset 0x934580"
!EtasOSMenuItem methodsFor: 'recovered'!
wndOrigin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) wndOrigin.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200595d8; bytecode file offset 0x956284"
!EtasOSMenuItem methodsFor: 'recovered'!
wndOrigin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) wndOrigin: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c22c; bytecode file offset 0x958ae8"
!EtasOSMenuItem methodsFor: 'recovered'!
alignX
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSMenu.
    recoveredValue1 := (recoveredValue0) menuBarHeight.
    recoveredValue2 := (recoveredValue1) + (-1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20071014; bytecode file offset 0x96d928"
!EtasOSMenuItem methodsFor: 'recovered'!
menuItemPosition
    | recoveredValue0 |
    recoveredValue0 := menuItemPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072c98; bytecode file offset 0x96f6d4"
!EtasOSMenuItem methodsFor: 'recovered'!
alignY
    ^4
! !

"ASDBase.ic method 0x20082960; bytecode file offset 0x97f218"
!EtasOSMenuItem methodsFor: 'recovered'!
clearDC: recoveredArg1
    (self) dc: (nil).
    ^self
! !

"ASDBase.ic method 0x20084774; bytecode file offset 0x981ca4"
!EtasOSMenuItem methodsFor: 'recovered'!
wmDrawChild: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) draw: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200849c0; bytecode file offset 0x981ca4"
!EtasOSMenuItem methodsFor: 'recovered'!
setDC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) dc: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20087c6c; bytecode file offset 0x9845b8"
!EtasOSMenuItem methodsFor: 'recovered'!
defaultHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := SmCymenu.
    recoveredValue2 := (recoveredValue0) getSystemMetrics: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab298; bytecode file offset 0x9a7bf8"
!EtasOSMenuItem methodsFor: 'recovered'!
setMenuItemInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (self) id.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) setMenuItemInfoForId: (recoveredValue1) itemInfo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7378; bytecode file offset 0x9c3d64"
!EtasOSMenuItem methodsFor: 'recovered'!
labelWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    labelWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c74fc; bytecode file offset 0x9c3e48"
!EtasOSMenuItem methodsFor: 'recovered'!
accelWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    accelWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c75c8; bytecode file offset 0x9c3efc"
!EtasOSMenuItem methodsFor: 'recovered'!
textHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textHeight := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c769c; bytecode file offset 0x9c3fa0"
!EtasOSMenuItem methodsFor: 'recovered'!
menuItemPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    menuItemPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20116c84; bytecode file offset 0xa13540"
!EtasOSMenuItem methodsFor: 'recovered'!
labelWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := labelWidth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116d14; bytecode file offset 0xa135d0"
!EtasOSMenuItem methodsFor: 'recovered'!
accelWidth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := accelWidth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116dd0; bytecode file offset 0xa1368c"
!EtasOSMenuItem methodsFor: 'recovered'!
textHeight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := textHeight.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014f9bc; bytecode file offset 0xa4c280"
!EtasOSMenuItem methodsFor: 'recovered'!
show
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            super show.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setMenuItemOwnerDrawn.
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

"ASDBase.ic method 0x20209ac0; bytecode file offset 0xb06390"
!EtasOSMenuItem methodsFor: 'recovered'!
alignedRect
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) height.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) alignY.
    recoveredValue2 := (self) alignHeight.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) // (2).
    recoveredValue6 := (recoveredValue1) + (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := (self) alignX.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := (recoveredValue7) @ (recoveredValue8).
    recoveredValue10 := (self) alignWidth.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue10) @ (recoveredValue11).
    recoveredValue13 := (recoveredValue9) extent: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x202469e0; bytecode file offset 0xb432b4"
!EtasOSMenuItem methodsFor: 'recovered'!
updateTextExtent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelWidth.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            (recoveredStack0) calculateInternalWidths.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelWidth.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) accelWidth.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := OSMenu.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) menuBarHeight.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
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
            recoveredStack1 := (recoveredStack1) defaultHeight.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
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

"ASDBase.ic method 0x20298d34; bytecode file offset 0xb95604"
!EtasOSMenuItem methodsFor: 'recovered'!
drawBackground: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) right.
    recoveredBlock4Value3 := recoveredArg1.
    recoveredBlock4Value4 := (recoveredBlock4Value3) left.
    recoveredBlock4Value5 := (recoveredBlock4Value2) - (recoveredBlock4Value4).
    recoveredBlock4Value6 := recoveredArg1.
    recoveredBlock4Value7 := (recoveredBlock4Value6) bottom.
    recoveredBlock4Value8 := recoveredArg1.
    recoveredBlock4Value9 := (recoveredBlock4Value8) top.
    recoveredBlock4Value10 := (recoveredBlock4Value7) - (recoveredBlock4Value9).
    recoveredBlock4Value11 := (recoveredBlock4Value10) + (1).
    recoveredBlock4Value12 := Patcopy.
    recoveredBlock4Value13 := (recoveredBlock4Value0) patBlt: (0) nTopRect: (0) nwidth: (recoveredBlock4Value5) nheight: (recoveredBlock4Value11) fdwRop: (recoveredBlock4Value12).
    recoveredBlock4Value13
].
    (self) dcDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20358bc0; bytecode file offset 0xc554ac"
!EtasOSMenuItem methodsFor: 'recovered'!
debugInfos
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 |
    recoveredBlock4Value0 := OSPoint.
    recoveredBlock4Value1 := (recoveredBlock4Value0) new.
    recoveredLocal1 := recoveredBlock4Value1.
    recoveredBlock4Value2 := recoveredBlock4Arg1.
    recoveredBlock4Value3 := recoveredLocal1.
    (recoveredBlock4Value2) getWindowOrgEx: (recoveredBlock4Value3).
    recoveredBlock4Value4 := Transcript.
    recoveredBlock4Value5 := recoveredBlock4Value4.
    recoveredBlock4Value6 := recoveredLocal1.
    recoveredBlock4Value7 := (recoveredBlock4Value6) x.
    recoveredBlock4Value8 := (recoveredBlock4Value7) asString.
    recoveredBlock4Value9 := ('windowOrigin = ') , (recoveredBlock4Value8).
    recoveredBlock4Value10 := (recoveredBlock4Value9) , ('@').
    recoveredBlock4Value11 := recoveredLocal1.
    recoveredBlock4Value12 := (recoveredBlock4Value11) y.
    recoveredBlock4Value13 := (recoveredBlock4Value12) asString.
    recoveredBlock4Value14 := (recoveredBlock4Value10) , (recoveredBlock4Value13).
    (recoveredBlock4Value5) show: (recoveredBlock4Value14).
    (recoveredBlock4Value4) cr.
    recoveredBlock4Value15 := recoveredBlock4Arg1.
    recoveredBlock4Value16 := (recoveredBlock4Value15) windowFromDC.
    recoveredBlock4Value17 := recoveredBlock4Value16.
    recoveredLocal6 := recoveredBlock4Value17.
    recoveredBlock4Value16
].
    (self) dcDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x203c9e00; bytecode file offset 0xcc66f0"
!EtasOSMenuItem methodsFor: 'recovered'!
drawCheckMark: recoveredArg1 x: recoveredArg2 y: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredLocal4.
    recoveredValue3 := SmCxmenucheck.
    recoveredValue4 := (recoveredValue2) getSystemMetrics: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := SmCymenucheck.
    recoveredValue7 := (recoveredValue5) getSystemMetrics: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := SmCymenu.
    recoveredValue10 := (recoveredValue8) getSystemMetrics: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := HInstanceNull.
    recoveredValue12 := ObmCheck.
    recoveredValue13 := (recoveredValue11) loadBitmap: (recoveredValue12).
    recoveredLocal7 := recoveredValue13.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) createCompatibleDC.
    recoveredLocal5 := recoveredValue15.
    recoveredValue16 := recoveredLocal5.
    recoveredValue17 := recoveredLocal7.
    recoveredValue18 := (recoveredValue16) selectObject: (recoveredValue17).
    recoveredLocal6 := recoveredValue18.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := x.
    recoveredValue21 := y.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := recoveredLocal2.
    recoveredValue24 := (recoveredValue22) - (recoveredValue23).
    recoveredValue25 := (recoveredValue21) + (recoveredValue24).
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := recoveredLocal5.
    recoveredValue29 := Srccopy.
    (recoveredValue19) bitBlt: (recoveredValue20) nYDest: (recoveredValue25) nWidth: (recoveredValue26) nHeight: (recoveredValue27) hdcSrc: (recoveredValue28) nXSrc: (0) nYSrc: (0) dwRop: (recoveredValue29).
    recoveredValue30 := recoveredLocal5.
    recoveredValue31 := recoveredLocal6.
    (recoveredValue30) selectObject: (recoveredValue31).
    recoveredValue32 := recoveredLocal7.
    (recoveredValue32) deleteObject.
    recoveredValue33 := recoveredLocal5.
    (recoveredValue33) deleteDC.
    ^self
! !

"ASDBase.ic method 0x20440384; bytecode file offset 0xd3cc60"
!EtasOSMenuItem methodsFor: 'recovered'!
drawIcon
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35Stack6 recoveredBlock35Stack7 recoveredBlock35Stack8 recoveredBlock35Stack9 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) checked.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 46] ifFalse: [recoveredBlock35PC := 83].
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal1.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal2.
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            (recoveredBlock35Stack0) drawCheckFrame: (recoveredBlock35Stack1) x: (recoveredBlock35Stack2) y: (recoveredBlock35Stack3).
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) icon.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            (recoveredBlock35Stack0 == nil) ifTrue: [recoveredBlock35PC := 72] ifFalse: [recoveredBlock35PC := 64].
        ].
        recoveredBlock35Step = 64 ifTrue: [
            recoveredBlock35Stack0 := icon.
            recoveredBlock35PC := 66.
        ].
        recoveredBlock35Step = 66 ifTrue: [
            recoveredBlock35Stack1 := 0.
            recoveredBlock35PC := 68.
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) = (recoveredBlock35Stack1).
            recoveredBlock35PC := 69.
        ].
        recoveredBlock35Step = 69 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 72] ifFalse: [recoveredBlock35PC := 83].
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 73.
        ].
        recoveredBlock35Step = 73 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 74.
        ].
        recoveredBlock35Step = 74 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal1.
            recoveredBlock35PC := 77.
        ].
        recoveredBlock35Step = 77 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal2.
            recoveredBlock35PC := 80.
        ].
        recoveredBlock35Step = 80 ifTrue: [
            (recoveredBlock35Stack0) drawCheckMark: (recoveredBlock35Stack1) x: (recoveredBlock35Stack2) y: (recoveredBlock35Stack3).
            recoveredBlock35PC := 83.
        ].
        recoveredBlock35Step = 83 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Arg1.
            recoveredBlock35PC := 84.
        ].
        recoveredBlock35Step = 84 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal1.
            recoveredBlock35PC := 87.
        ].
        recoveredBlock35Step = 87 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal2.
            recoveredBlock35PC := 90.
        ].
        recoveredBlock35Step = 90 ifTrue: [
            recoveredBlock35Stack3 := icon.
            recoveredBlock35PC := 92.
        ].
        recoveredBlock35Step = 92 ifTrue: [
            recoveredBlock35Stack4 := 16.
            recoveredBlock35PC := 94.
        ].
        recoveredBlock35Step = 94 ifTrue: [
            recoveredBlock35Stack5 := 16.
            recoveredBlock35PC := 96.
        ].
        recoveredBlock35Step = 96 ifTrue: [
            recoveredBlock35Stack6 := 0.
            recoveredBlock35PC := 98.
        ].
        recoveredBlock35Step = 98 ifTrue: [
            recoveredBlock35Stack7 := nil.
            recoveredBlock35PC := 99.
        ].
        recoveredBlock35Step = 99 ifTrue: [
            recoveredBlock35Stack8 := DiNormal.
            recoveredBlock35PC := 101.
        ].
        recoveredBlock35Step = 101 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) drawIconEx: (recoveredBlock35Stack1) yTop: (recoveredBlock35Stack2) hIcon: (recoveredBlock35Stack3) cxWidth: (recoveredBlock35Stack4) cyWidth: (recoveredBlock35Stack5) istepIfAniCur: (recoveredBlock35Stack6) hbrFlickerFreeDraw: (recoveredBlock35Stack7) diFlags: (recoveredBlock35Stack8).
            recoveredBlock35PC := 104.
        ].
        recoveredBlock35Step = 104 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack0.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204466c8; bytecode file offset 0xd42fc4"
!EtasOSMenuItem methodsFor: 'recovered'!
handleWindowOrigin
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) windowFromDC.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) reference.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) = (recoveredBlock4Stack2).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := OSPoint.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal1.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            (recoveredBlock4Stack1) getWindowOrgEx: (recoveredBlock4Stack2).
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) x.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) ~= (recoveredBlock4Stack2).
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 50] ifFalse: [recoveredBlock4PC := 60].
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal1.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) wndOrigin: (recoveredBlock4Stack2).
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := Transcript.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack3 := 'origin x = '.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack4 := recoveredLocal1.
            recoveredBlock4PC := 68.
        ].
        recoveredBlock4Step = 68 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) x.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) asString.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) , (recoveredBlock4Stack4).
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            (recoveredBlock4Stack2) show: (recoveredBlock4Stack3).
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            (recoveredBlock4Stack1) cr.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) wndOrigin.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block81Arg1 | 
    | recoveredBlock4Block81Value0 recoveredBlock4Block81Value1 recoveredBlock4Block81Value2 recoveredBlock4Block81Value3 recoveredBlock4Block81Value4 recoveredBlock4Block81Value5 recoveredBlock4Block81Value6 |
    recoveredBlock4Block81Value0 := recoveredBlock4Arg1.
    recoveredBlock4Block81Value1 := recoveredBlock4Block81Arg1.
    recoveredBlock4Block81Value2 := (recoveredBlock4Block81Value1) x.
    recoveredBlock4Block81Value3 := recoveredBlock4Block81Arg1.
    recoveredBlock4Block81Value4 := (recoveredBlock4Block81Value3) y.
    recoveredBlock4Block81Value5 := recoveredLocal1.
    recoveredBlock4Block81Value6 := (recoveredBlock4Block81Value0) setWindowOrgEx: (recoveredBlock4Block81Value2) nY: (recoveredBlock4Block81Value4) lpPoint: (recoveredBlock4Block81Value5).
    recoveredBlock4Block81Value6
].
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) ifNotNil: (recoveredBlock4Stack2).
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) dcDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x204d19e4; bytecode file offset 0xdce300"
!EtasOSMenuItem methodsFor: 'recovered'!
setUpDC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) class.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) menuFont.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 30] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := OSHfont.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := DefaultGuiFont.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) getStockObject: (recoveredBlock4Stack2).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack0) selectObject: (recoveredBlock4Stack1).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) class.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) menuFont.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            (recoveredBlock4Stack0) selectObject: (recoveredBlock4Stack1).
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 44] ifFalse: [recoveredBlock4PC := 76].
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack2 := OSHbrush.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack3 := ColorHighlight.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) getSysColorBrush: (recoveredBlock4Stack3).
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            (recoveredBlock4Stack1) selectObject: (recoveredBlock4Stack2).
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack2 := OS.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack3 := ColorHighlighttext.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) getSysColor: (recoveredBlock4Stack3).
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            (recoveredBlock4Stack1) setTextColor: (recoveredBlock4Stack2).
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack1 := OS.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack2 := ColorHighlight.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) getSysColor: (recoveredBlock4Stack2).
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) setBkColor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4PC := 151.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Arg1.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 80.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack2 := OSHbrush.
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Stack3 := ColorMenu.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) getSysColorBrush: (recoveredBlock4Stack3).
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            (recoveredBlock4Stack1) selectObject: (recoveredBlock4Stack2).
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack2 := OS.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack3 := ColorMenutext.
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) getSysColor: (recoveredBlock4Stack3).
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            (recoveredBlock4Stack1) setTextColor: (recoveredBlock4Stack2).
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack1 := OS.
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            recoveredBlock4Stack2 := ColorMenu.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) getSysColor: (recoveredBlock4Stack2).
            recoveredBlock4PC := 103.
        ].
        recoveredBlock4Step = 103 ifTrue: [
            (recoveredBlock4Stack0) setBkColor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 105.
        ].
        recoveredBlock4Step = 105 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) label.
            recoveredBlock4PC := 108.
        ].
        recoveredBlock4Step = 108 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block108Arg1 | 
    | recoveredBlock4Block108Stack0 recoveredBlock4Block108Stack1 recoveredBlock4Block108Stack2 recoveredBlock4Block108Stack3 recoveredBlock4Block108Stack4 recoveredBlock4Block108PC recoveredBlock4Block108Step recoveredBlock4Block108Done recoveredBlock4Block108Result |
    recoveredBlock4Block108Stack0 := nil.
    recoveredBlock4Block108PC := 114.
    recoveredBlock4Block108Done := false.
    [recoveredBlock4Block108Done not] whileTrue: [
        recoveredBlock4Block108Step := recoveredBlock4Block108PC.
        recoveredBlock4Block108Step = 114 ifTrue: [
            recoveredBlock4Block108Stack1 := nil.
            recoveredBlock4Block108PC := 115.
        ].
        recoveredBlock4Block108Step = 115 ifTrue: [
            recoveredBlock4Block108Stack2 := recoveredBlock4Block108Arg1.
            recoveredBlock4Block108PC := 116.
        ].
        recoveredBlock4Block108Step = 116 ifTrue: [
            recoveredBlock4Block108Stack3 := RBUserWindow.
            recoveredBlock4Block108PC := 118.
        ].
        recoveredBlock4Block108Step = 118 ifTrue: [
            recoveredBlock4Block108Stack3 := (recoveredBlock4Block108Stack3) etasInternalMenuLabelPrefix.
            recoveredBlock4Block108PC := 120.
        ].
        recoveredBlock4Block108Step = 120 ifTrue: [
            recoveredBlock4Block108Stack2 := (recoveredBlock4Block108Stack2) startsWith: (recoveredBlock4Block108Stack3).
            recoveredBlock4Block108PC := 122.
        ].
        recoveredBlock4Block108Step = 122 ifTrue: [
            (recoveredBlock4Block108Stack2) ifTrue: [recoveredBlock4Block108PC := 136] ifFalse: [recoveredBlock4Block108PC := 126].
        ].
        recoveredBlock4Block108Step = 126 ifTrue: [
            recoveredBlock4Block108Stack2 := recoveredBlock4Block108Arg1.
            recoveredBlock4Block108PC := 127.
        ].
        recoveredBlock4Block108Step = 127 ifTrue: [
            recoveredBlock4Block108Stack3 := RBUserWindow.
            recoveredBlock4Block108PC := 129.
        ].
        recoveredBlock4Block108Step = 129 ifTrue: [
            recoveredBlock4Block108Stack3 := (recoveredBlock4Block108Stack3) etasDebugMenuLabelPrefix.
            recoveredBlock4Block108PC := 131.
        ].
        recoveredBlock4Block108Step = 131 ifTrue: [
            recoveredBlock4Block108Stack2 := (recoveredBlock4Block108Stack2) startsWith: (recoveredBlock4Block108Stack3).
            recoveredBlock4Block108PC := 133.
        ].
        recoveredBlock4Block108Step = 133 ifTrue: [
            (recoveredBlock4Block108Stack2) ifTrue: [recoveredBlock4Block108PC := 136] ifFalse: [recoveredBlock4Block108PC := 148].
        ].
        recoveredBlock4Block108Step = 136 ifTrue: [
            recoveredBlock4Block108PC := 137.
        ].
        recoveredBlock4Block108Step = 137 ifTrue: [
            recoveredBlock4Block108Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block108PC := 140.
        ].
        recoveredBlock4Block108Step = 140 ifTrue: [
            recoveredBlock4Block108Stack2 := CgRGBColor.
            recoveredBlock4Block108PC := 142.
        ].
        recoveredBlock4Block108Step = 142 ifTrue: [
            recoveredBlock4Block108Stack2 := (recoveredBlock4Block108Stack2) blue.
            recoveredBlock4Block108PC := 144.
        ].
        recoveredBlock4Block108Step = 144 ifTrue: [
            recoveredBlock4Block108Stack2 := (recoveredBlock4Block108Stack2) asOSRGB.
            recoveredBlock4Block108PC := 146.
        ].
        recoveredBlock4Block108Step = 146 ifTrue: [
            recoveredBlock4Block108Stack1 := (recoveredBlock4Block108Stack1) setTextColor: (recoveredBlock4Block108Stack2).
            recoveredBlock4Block108PC := 148.
        ].
        recoveredBlock4Block108Step = 148 ifTrue: [
            recoveredBlock4Block108Result := recoveredBlock4Block108Stack1.
            recoveredBlock4Block108Done := true.
        ].
    ].
    recoveredBlock4Block108Result
].
            recoveredBlock4PC := 149.
        ].
        recoveredBlock4Step = 149 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ifNotNil: (recoveredBlock4Stack1).
            recoveredBlock4PC := 151.
        ].
        recoveredBlock4Step = 151 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) dcDo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x204d33f8; bytecode file offset 0xdcfd14"
!EtasOSMenuItem methodsFor: 'recovered'!
calculateInternalWidths
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) server.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) beginRequest.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceContext.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) menuFont.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectObject: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'M'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromString: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromString: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := OSSize.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) getTextExtentPoint: (recoveredStack1) cbString: (recoveredStack2) lpSize: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) cx.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) labelWidth: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) cy.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) accelText.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'M'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromString: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) accelText.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromString: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := OSSize.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) getTextExtentPoint: (recoveredStack1) cbString: (recoveredStack2) lpSize: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) cx.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) accelWidth: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) cy.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) selectObject: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) endRequest.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultHeight.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) textHeight: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055e450; bytecode file offset 0xe5ad60"
!EtasOSMenuItem methodsFor: 'recovered'!
draw: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28110578Arg1 | 
    | block28110578Value0 block28110578Value1 |
    block28110578Value0 := block28110578Arg1.
    block28110578Value1 := (block28110578Value0) saveDC.
    block28110578Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) rcItem.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemState.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := OdsSelected.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := OdsSelected.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemState.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57Stack5 recoveredBlock57Stack6 recoveredBlock57Stack7 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := 0.
            recoveredBlock57PC := 66.
        ].
        recoveredBlock57Step = 66 ifTrue: [
            recoveredLocal4 := recoveredBlock57Stack1.
            recoveredBlock57PC := 69.
        ].
        recoveredBlock57Step = 69 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 70.
        ].
        recoveredBlock57Step = 70 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) windowFromDC.
            recoveredBlock57PC := 72.
        ].
        recoveredBlock57Step = 72 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) reference.
            recoveredBlock57PC := 74.
        ].
        recoveredBlock57Step = 74 ifTrue: [
            recoveredBlock57Stack2 := 0.
            recoveredBlock57PC := 76.
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) = (recoveredBlock57Stack2).
            recoveredBlock57PC := 77.
        ].
        recoveredBlock57Step = 77 ifTrue: [
            (recoveredBlock57Stack1) ifTrue: [recoveredBlock57PC := 80] ifFalse: [recoveredBlock57PC := 88].
        ].
        recoveredBlock57Step = 80 ifTrue: [
            recoveredBlock57Stack1 := 0.
            recoveredBlock57PC := 82.
        ].
        recoveredBlock57Step = 82 ifTrue: [
            recoveredLocal4 := recoveredBlock57Stack1.
            recoveredBlock57PC := 85.
        ].
        recoveredBlock57Step = 85 ifTrue: [
            recoveredBlock57PC := 93.
        ].
        recoveredBlock57Step = 88 ifTrue: [
            recoveredBlock57Stack1 := -3.
            recoveredBlock57PC := 90.
        ].
        recoveredBlock57Step = 90 ifTrue: [
            recoveredLocal4 := recoveredBlock57Stack1.
            recoveredBlock57PC := 93.
        ].
        recoveredBlock57Step = 93 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 94.
        ].
        recoveredBlock57Step = 94 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Stack1.
            recoveredBlock57PC := 95.
        ].
        recoveredBlock57Step = 95 ifTrue: [
            recoveredBlock57Stack3 := -2.
            recoveredBlock57PC := 97.
        ].
        recoveredBlock57Step = 97 ifTrue: [
            recoveredBlock57Stack4 := 0.
            recoveredBlock57PC := 99.
        ].
        recoveredBlock57Step = 99 ifTrue: [
            recoveredBlock57Stack5 := OSPoint.
            recoveredBlock57PC := 101.
        ].
        recoveredBlock57Step = 101 ifTrue: [
            recoveredBlock57Stack5 := (recoveredBlock57Stack5) new.
            recoveredBlock57PC := 103.
        ].
        recoveredBlock57Step = 103 ifTrue: [
            recoveredBlock57Stack6 := recoveredBlock57Stack5.
            recoveredBlock57PC := 104.
        ].
        recoveredBlock57Step = 104 ifTrue: [
            recoveredLocal2 := recoveredBlock57Stack6.
            recoveredBlock57PC := 107.
        ].
        recoveredBlock57Step = 107 ifTrue: [
            (recoveredBlock57Stack2) setWindowOrgEx: (recoveredBlock57Stack3) nY: (recoveredBlock57Stack4) lpPoint: (recoveredBlock57Stack5).
            recoveredBlock57PC := 110.
        ].
        recoveredBlock57Step = 110 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal6.
            recoveredBlock57PC := 113.
        ].
        recoveredBlock57Step = 113 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) left.
            recoveredBlock57PC := 115.
        ].
        recoveredBlock57Step = 115 ifTrue: [
            recoveredBlock57Stack3 := recoveredLocal4.
            recoveredBlock57PC := 118.
        ].
        recoveredBlock57Step = 118 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) + (recoveredBlock57Stack3).
            recoveredBlock57PC := 119.
        ].
        recoveredBlock57Step = 119 ifTrue: [
            recoveredBlock57Stack3 := recoveredLocal6.
            recoveredBlock57PC := 122.
        ].
        recoveredBlock57Step = 122 ifTrue: [
            recoveredBlock57Stack3 := (recoveredBlock57Stack3) top.
            recoveredBlock57PC := 124.
        ].
        recoveredBlock57Step = 124 ifTrue: [
            recoveredBlock57Stack4 := recoveredLocal4.
            recoveredBlock57PC := 127.
        ].
        recoveredBlock57Step = 127 ifTrue: [
            recoveredBlock57Stack3 := (recoveredBlock57Stack3) + (recoveredBlock57Stack4).
            recoveredBlock57PC := 128.
        ].
        recoveredBlock57Step = 128 ifTrue: [
            recoveredBlock57Stack4 := OSPoint.
            recoveredBlock57PC := 130.
        ].
        recoveredBlock57Step = 130 ifTrue: [
            recoveredBlock57Stack4 := (recoveredBlock57Stack4) new.
            recoveredBlock57PC := 132.
        ].
        recoveredBlock57Step = 132 ifTrue: [
            recoveredBlock57Stack5 := recoveredBlock57Stack4.
            recoveredBlock57PC := 133.
        ].
        recoveredBlock57Step = 133 ifTrue: [
            recoveredLocal3 := recoveredBlock57Stack5.
            recoveredBlock57PC := 136.
        ].
        recoveredBlock57Step = 136 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) setViewportOrgEx: (recoveredBlock57Stack2) nY: (recoveredBlock57Stack3) lpPoint: (recoveredBlock57Stack4).
            recoveredBlock57PC := 139.
        ].
        recoveredBlock57Step = 139 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) setUpDC: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) drawBackground: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) drawIcon.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) drawText: (recoveredStack1) selected: (recoveredStack2) accel: (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := [:recoveredBlock172Arg1 | 
    | recoveredBlock172Value0 recoveredBlock172Value1 recoveredBlock172Value2 recoveredBlock172Value3 recoveredBlock172Value4 recoveredBlock172Value5 recoveredBlock172Value6 recoveredBlock172Value7 recoveredBlock172Value8 recoveredBlock172Value9 recoveredBlock172Value10 recoveredBlock172Value11 recoveredBlock172Value12 |
    recoveredBlock172Value0 := recoveredBlock172Arg1.
    recoveredBlock172Value1 := recoveredBlock172Value0.
    recoveredBlock172Value2 := recoveredLocal3.
    recoveredBlock172Value3 := (recoveredBlock172Value2) x.
    recoveredBlock172Value4 := recoveredLocal3.
    recoveredBlock172Value5 := (recoveredBlock172Value4) y.
    recoveredBlock172Value6 := recoveredLocal3.
    (recoveredBlock172Value1) setViewportOrgEx: (recoveredBlock172Value3) nY: (recoveredBlock172Value5) lpPoint: (recoveredBlock172Value6).
    recoveredBlock172Value7 := recoveredLocal2.
    recoveredBlock172Value8 := (recoveredBlock172Value7) x.
    recoveredBlock172Value9 := recoveredLocal2.
    recoveredBlock172Value10 := (recoveredBlock172Value9) y.
    recoveredBlock172Value11 := recoveredLocal2.
    recoveredBlock172Value12 := (recoveredBlock172Value0) setWindowOrgEx: (recoveredBlock172Value8) nY: (recoveredBlock172Value10) lpPoint: (recoveredBlock172Value11).
    recoveredBlock172Value12
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := [:block2811059cArg1 | 
    | block2811059cValue0 block2811059cValue1 |
    block2811059cValue0 := block2811059cArg1.
    block2811059cValue1 := (block2811059cValue0) restoreDC: (0).
    block2811059cValue1
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20603558; bytecode file offset 0xeffea0"
!EtasOSMenuItem methodsFor: 'recovered'!
drawText: recoveredArg1 selected: recoveredArg2 accel: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) accelText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isEmpty.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 38] ifFalse: [recoveredBlock16PC := 28].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := PlatformString.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) fromString: (recoveredBlock16Stack2).
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredLocal6 := recoveredBlock16Stack2.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) alignedRect.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := OSRect.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) top.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) setRect: (recoveredStack1) nTop: (recoveredStack2) nRight: (recoveredStack3) nBottom: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := OSRect.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelWidth.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) top.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) setRect: (recoveredStack1) nTop: (recoveredStack2) nRight: (recoveredStack3) nBottom: (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := DtLeft.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := DtSingleline.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := DtVcenter.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := DtRight.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := DtSingleline.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := DtVcenter.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 1048576.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Local1 recoveredBlock189Stack0 recoveredBlock189Stack1 recoveredBlock189Stack2 recoveredBlock189Stack3 recoveredBlock189Stack4 recoveredBlock189Stack5 recoveredBlock189Stack6 recoveredBlock189PC recoveredBlock189Step recoveredBlock189Done recoveredBlock189Result |
    recoveredBlock189Stack0 := self.
    recoveredBlock189PC := 196.
    recoveredBlock189Done := false.
    [recoveredBlock189Done not] whileTrue: [
        recoveredBlock189Step := recoveredBlock189PC.
        recoveredBlock189Step = 196 ifTrue: [
            recoveredBlock189Stack1 := nil.
            recoveredBlock189PC := 197.
        ].
        recoveredBlock189Step = 197 ifTrue: [
            recoveredBlock189Stack2 := self.
            recoveredBlock189PC := 198.
        ].
        recoveredBlock189Step = 198 ifTrue: [
            recoveredBlock189Stack2 := (recoveredBlock189Stack2) isEnabled.
            recoveredBlock189PC := 200.
        ].
        recoveredBlock189Step = 200 ifTrue: [
            (recoveredBlock189Stack2) ifTrue: [recoveredBlock189PC := 204] ifFalse: [recoveredBlock189PC := 260].
        ].
        recoveredBlock189Step = 204 ifTrue: [
            recoveredBlock189PC := 205.
        ].
        recoveredBlock189Step = 205 ifTrue: [
            recoveredBlock189Stack1 := 'Rnz'.
            recoveredBlock189PC := 207.
        ].
        recoveredBlock189Step = 207 ifTrue: [
            recoveredBlock189Stack2 := 'EHI_81837'.
            recoveredBlock189PC := 209.
        ].
        recoveredBlock189Step = 209 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) == (recoveredBlock189Stack2).
            recoveredBlock189PC := 210.
        ].
        recoveredBlock189Step = 210 ifTrue: [
            recoveredBlock189PC := 211.
        ].
        recoveredBlock189Step = 211 ifTrue: [
            recoveredBlock189Stack1 := PlatformString.
            recoveredBlock189PC := 213.
        ].
        recoveredBlock189Step = 213 ifTrue: [
            recoveredBlock189Stack2 := recoveredLocal9.
            recoveredBlock189PC := 216.
        ].
        recoveredBlock189Step = 216 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) fromString: (recoveredBlock189Stack2).
            recoveredBlock189PC := 218.
        ].
        recoveredBlock189Step = 218 ifTrue: [
            recoveredBlock189Local1 := recoveredBlock189Stack1.
            recoveredBlock189PC := 219.
        ].
        recoveredBlock189Step = 219 ifTrue: [
            recoveredBlock189Stack1 := recoveredBlock189Arg1.
            recoveredBlock189PC := 220.
        ].
        recoveredBlock189Step = 220 ifTrue: [
            recoveredBlock189Stack2 := recoveredBlock189Local1.
            recoveredBlock189PC := 221.
        ].
        recoveredBlock189Step = 221 ifTrue: [
            recoveredBlock189Stack3 := recoveredBlock189Local1.
            recoveredBlock189PC := 222.
        ].
        recoveredBlock189Step = 222 ifTrue: [
            recoveredBlock189Stack3 := (recoveredBlock189Stack3) size.
            recoveredBlock189PC := 224.
        ].
        recoveredBlock189Step = 224 ifTrue: [
            recoveredBlock189Stack4 := recoveredLocal2.
            recoveredBlock189PC := 227.
        ].
        recoveredBlock189Step = 227 ifTrue: [
            recoveredBlock189Stack5 := recoveredLocal8.
            recoveredBlock189PC := 230.
        ].
        recoveredBlock189Step = 230 ifTrue: [
            (recoveredBlock189Stack1) drawText: (recoveredBlock189Stack2) cb: (recoveredBlock189Stack3) lprc: (recoveredBlock189Stack4) fuFormat: (recoveredBlock189Stack5).
            recoveredBlock189PC := 233.
        ].
        recoveredBlock189Step = 233 ifTrue: [
            recoveredBlock189Stack1 := recoveredLocal6.
            recoveredBlock189PC := 236.
        ].
        recoveredBlock189Step = 236 ifTrue: [
            (recoveredBlock189Stack1 == nil) ifTrue: [recoveredBlock189PC := 258] ifFalse: [recoveredBlock189PC := 240].
        ].
        recoveredBlock189Step = 240 ifTrue: [
            recoveredBlock189Stack1 := recoveredBlock189Arg1.
            recoveredBlock189PC := 241.
        ].
        recoveredBlock189Step = 241 ifTrue: [
            recoveredBlock189Stack2 := recoveredLocal6.
            recoveredBlock189PC := 244.
        ].
        recoveredBlock189Step = 244 ifTrue: [
            recoveredBlock189Stack3 := recoveredLocal6.
            recoveredBlock189PC := 247.
        ].
        recoveredBlock189Step = 247 ifTrue: [
            recoveredBlock189Stack3 := (recoveredBlock189Stack3) size.
            recoveredBlock189PC := 249.
        ].
        recoveredBlock189Step = 249 ifTrue: [
            recoveredBlock189Stack4 := recoveredLocal1.
            recoveredBlock189PC := 252.
        ].
        recoveredBlock189Step = 252 ifTrue: [
            recoveredBlock189Stack5 := recoveredLocal8.
            recoveredBlock189PC := 255.
        ].
        recoveredBlock189Step = 255 ifTrue: [
            (recoveredBlock189Stack1) drawText: (recoveredBlock189Stack2) cb: (recoveredBlock189Stack3) lprc: (recoveredBlock189Stack4) fuFormat: (recoveredBlock189Stack5).
            recoveredBlock189PC := 258.
        ].
        recoveredBlock189Step = 258 ifTrue: [
            recoveredBlock189Stack1 := true.
            recoveredBlock189PC := 259.
        ].
        recoveredBlock189Step = 259 ifTrue: [
            ^recoveredBlock189Stack1
        ].
        recoveredBlock189Step = 260 ifTrue: [
            recoveredBlock189Result := recoveredBlock189Stack1.
            recoveredBlock189Done := true.
        ].
    ].
    recoveredBlock189Result
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack6 := recoveredLocal8.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack0) drawGrayText: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5) flags: (recoveredStack6).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 339] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := [:recoveredBlock303Arg1 | 
    | recoveredBlock303Value0 recoveredBlock303Value1 recoveredBlock303Value2 recoveredBlock303Value3 recoveredBlock303Value4 recoveredBlock303Value5 recoveredBlock303Value6 recoveredBlock303Value7 recoveredBlock303Value8 recoveredBlock303Value9 |
    recoveredBlock303Value0 := recoveredBlock303Arg1.
    recoveredBlock303Value1 := (self) class.
    recoveredBlock303Value2 := (recoveredBlock303Value1) grayColor.
    (recoveredBlock303Value0) setTextColor: (recoveredBlock303Value2).
    recoveredBlock303Value3 := recoveredBlock303Arg1.
    recoveredBlock303Value4 := recoveredLocal6.
    recoveredBlock303Value5 := recoveredLocal6.
    recoveredBlock303Value6 := (recoveredBlock303Value5) size.
    recoveredBlock303Value7 := recoveredLocal1.
    recoveredBlock303Value8 := recoveredLocal8.
    recoveredBlock303Value9 := (recoveredBlock303Value3) drawText: (recoveredBlock303Value4) cb: (recoveredBlock303Value6) lprc: (recoveredBlock303Value7) fuFormat: (recoveredBlock303Value8).
    recoveredBlock303Value9
].
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 357] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeMnemonic: (recoveredStack1).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := [:recoveredBlock358Arg1 | 
    | recoveredBlock358Stack0 recoveredBlock358Stack1 recoveredBlock358Stack2 recoveredBlock358Stack3 recoveredBlock358Stack4 recoveredBlock358Stack5 recoveredBlock358Stack6 recoveredBlock358Stack7 recoveredBlock358Stack8 recoveredBlock358Stack9 recoveredBlock358Stack10 recoveredBlock358Stack11 recoveredBlock358Stack12 recoveredBlock358PC recoveredBlock358Step recoveredBlock358Done recoveredBlock358Result |
    recoveredBlock358Stack0 := self.
    recoveredBlock358PC := 364.
    recoveredBlock358Done := false.
    [recoveredBlock358Done not] whileTrue: [
        recoveredBlock358Step := recoveredBlock358PC.
        recoveredBlock358Step = 364 ifTrue: [
            recoveredBlock358Stack1 := recoveredBlock358Arg1.
            recoveredBlock358PC := 365.
        ].
        recoveredBlock358Step = 365 ifTrue: [
            recoveredBlock358Stack2 := 0.
            recoveredBlock358PC := 367.
        ].
        recoveredBlock358Step = 367 ifTrue: [
            recoveredBlock358Stack3 := nil.
            recoveredBlock358PC := 368.
        ].
        recoveredBlock358Step = 368 ifTrue: [
            recoveredBlock358Stack4 := recoveredLocal9.
            recoveredBlock358PC := 371.
        ].
        recoveredBlock358Step = 371 ifTrue: [
            recoveredBlock358Stack4 := (recoveredBlock358Stack4) asPSZ.
            recoveredBlock358PC := 373.
        ].
        recoveredBlock358Step = 373 ifTrue: [
            recoveredBlock358Stack5 := 0.
            recoveredBlock358PC := 375.
        ].
        recoveredBlock358Step = 375 ifTrue: [
            recoveredBlock358Stack6 := recoveredLocal2.
            recoveredBlock358PC := 378.
        ].
        recoveredBlock358Step = 378 ifTrue: [
            recoveredBlock358Stack6 := (recoveredBlock358Stack6) left.
            recoveredBlock358PC := 380.
        ].
        recoveredBlock358Step = 380 ifTrue: [
            recoveredBlock358Stack7 := recoveredLocal2.
            recoveredBlock358PC := 383.
        ].
        recoveredBlock358Step = 383 ifTrue: [
            recoveredBlock358Stack7 := (recoveredBlock358Stack7) top.
            recoveredBlock358PC := 385.
        ].
        recoveredBlock358Step = 385 ifTrue: [
            recoveredBlock358Stack8 := recoveredLocal5.
            recoveredBlock358PC := 388.
        ].
        recoveredBlock358Step = 388 ifTrue: [
            recoveredBlock358Stack9 := recoveredLocal4.
            recoveredBlock358PC := 391.
        ].
        recoveredBlock358Step = 391 ifTrue: [
            recoveredBlock358Stack10 := DstPrefixtext.
            recoveredBlock358PC := 393.
        ].
        recoveredBlock358Step = 393 ifTrue: [
            recoveredBlock358Stack11 := DssDisabled.
            recoveredBlock358PC := 395.
        ].
        recoveredBlock358Step = 395 ifTrue: [
            recoveredBlock358Stack10 := (recoveredBlock358Stack10) bitOr: (recoveredBlock358Stack11).
            recoveredBlock358PC := 397.
        ].
        recoveredBlock358Step = 397 ifTrue: [
            (recoveredBlock358Stack1) drawStateText: (recoveredBlock358Stack2) with: (recoveredBlock358Stack3) with: (recoveredBlock358Stack4) with: (recoveredBlock358Stack5) with: (recoveredBlock358Stack6) with: (recoveredBlock358Stack7) with: (recoveredBlock358Stack8) with: (recoveredBlock358Stack9) with: (recoveredBlock358Stack10).
            recoveredBlock358PC := 400.
        ].
        recoveredBlock358Step = 400 ifTrue: [
            recoveredBlock358Stack1 := nil.
            recoveredBlock358PC := 401.
        ].
        recoveredBlock358Step = 401 ifTrue: [
            recoveredBlock358Stack2 := recoveredLocal6.
            recoveredBlock358PC := 404.
        ].
        recoveredBlock358Step = 404 ifTrue: [
            (recoveredBlock358Stack2 == nil) ifTrue: [recoveredBlock358PC := 445] ifFalse: [recoveredBlock358PC := 408].
        ].
        recoveredBlock358Step = 408 ifTrue: [
            recoveredBlock358PC := 409.
        ].
        recoveredBlock358Step = 409 ifTrue: [
            recoveredBlock358Stack1 := recoveredBlock358Arg1.
            recoveredBlock358PC := 410.
        ].
        recoveredBlock358Step = 410 ifTrue: [
            recoveredBlock358Stack2 := 0.
            recoveredBlock358PC := 412.
        ].
        recoveredBlock358Step = 412 ifTrue: [
            recoveredBlock358Stack3 := nil.
            recoveredBlock358PC := 413.
        ].
        recoveredBlock358Step = 413 ifTrue: [
            recoveredBlock358Stack4 := recoveredLocal6.
            recoveredBlock358PC := 416.
        ].
        recoveredBlock358Step = 416 ifTrue: [
            recoveredBlock358Stack4 := (recoveredBlock358Stack4) asPSZ.
            recoveredBlock358PC := 418.
        ].
        recoveredBlock358Step = 418 ifTrue: [
            recoveredBlock358Stack5 := 0.
            recoveredBlock358PC := 420.
        ].
        recoveredBlock358Step = 420 ifTrue: [
            recoveredBlock358Stack6 := recoveredLocal1.
            recoveredBlock358PC := 423.
        ].
        recoveredBlock358Step = 423 ifTrue: [
            recoveredBlock358Stack6 := (recoveredBlock358Stack6) left.
            recoveredBlock358PC := 425.
        ].
        recoveredBlock358Step = 425 ifTrue: [
            recoveredBlock358Stack7 := recoveredLocal1.
            recoveredBlock358PC := 428.
        ].
        recoveredBlock358Step = 428 ifTrue: [
            recoveredBlock358Stack7 := (recoveredBlock358Stack7) top.
            recoveredBlock358PC := 430.
        ].
        recoveredBlock358Step = 430 ifTrue: [
            recoveredBlock358Stack8 := recoveredLocal5.
            recoveredBlock358PC := 433.
        ].
        recoveredBlock358Step = 433 ifTrue: [
            recoveredBlock358Stack9 := recoveredLocal4.
            recoveredBlock358PC := 436.
        ].
        recoveredBlock358Step = 436 ifTrue: [
            recoveredBlock358Stack10 := DstText.
            recoveredBlock358PC := 438.
        ].
        recoveredBlock358Step = 438 ifTrue: [
            recoveredBlock358Stack11 := DssDisabled.
            recoveredBlock358PC := 440.
        ].
        recoveredBlock358Step = 440 ifTrue: [
            recoveredBlock358Stack10 := (recoveredBlock358Stack10) bitOr: (recoveredBlock358Stack11).
            recoveredBlock358PC := 442.
        ].
        recoveredBlock358Step = 442 ifTrue: [
            recoveredBlock358Stack1 := (recoveredBlock358Stack1) drawStateText: (recoveredBlock358Stack2) with: (recoveredBlock358Stack3) with: (recoveredBlock358Stack4) with: (recoveredBlock358Stack5) with: (recoveredBlock358Stack6) with: (recoveredBlock358Stack7) with: (recoveredBlock358Stack8) with: (recoveredBlock358Stack9) with: (recoveredBlock358Stack10).
            recoveredBlock358PC := 445.
        ].
        recoveredBlock358Step = 445 ifTrue: [
            recoveredBlock358Result := recoveredBlock358Stack1.
            recoveredBlock358Done := true.
        ].
    ].
    recoveredBlock358Result
].
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

