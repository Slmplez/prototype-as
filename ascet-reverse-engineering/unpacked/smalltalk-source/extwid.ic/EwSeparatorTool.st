"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000030; bytecode file offset 0x50f8c"
!EwSeparatorTool methodsFor: 'recovered'!
drawBorder
    ^self
! !

"extwid.ic method 0x20001ec0; bytecode file offset 0x52dac"
!EwSeparatorTool methodsFor: 'recovered'!
isHorizontal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) orientation.
    recoveredValue1 := XmHORIZONTAL.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20001f50; bytecode file offset 0x52dac"
!EwSeparatorTool methodsFor: 'recovered'!
isVertical
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) orientation.
    recoveredValue1 := XmVERTICAL.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20003afc; bytecode file offset 0x548e0"
!EwSeparatorTool methodsFor: 'recovered'!
margin
    | recoveredValue0 |
    recoveredValue0 := xmNmargin.
    ^recoveredValue0
! !

"extwid.ic method 0x20003b30; bytecode file offset 0x54934"
!EwSeparatorTool methodsFor: 'recovered'!
orientation
    | recoveredValue0 |
    recoveredValue0 := xmNorientation.
    ^recoveredValue0
! !

"extwid.ic method 0x20003bb8; bytecode file offset 0x54994"
!EwSeparatorTool methodsFor: 'recovered'!
separatorType
    | recoveredValue0 |
    recoveredValue0 := xmNseparatorType.
    ^recoveredValue0
! !

"extwid.ic method 0x20003c10; bytecode file offset 0x549ec"
!EwSeparatorTool methodsFor: 'recovered'!
autoSize
    | recoveredValue0 |
    recoveredValue0 := ewAutoSize.
    ^recoveredValue0
! !

"extwid.ic method 0x20003c58; bytecode file offset 0x54a4c"
!EwSeparatorTool methodsFor: 'recovered'!
wasAutoSized
    | recoveredValue0 |
    recoveredValue0 := wasAutoSized.
    ^recoveredValue0
! !

"extwid.ic method 0x200040b4; bytecode file offset 0x54e98"
!EwSeparatorTool methodsFor: 'recovered'!
assumedBorder
    ^0
! !

"extwid.ic method 0x200041b4; bytecode file offset 0x54f80"
!EwSeparatorTool methodsFor: 'recovered'!
defaultWidth
    ^6
! !

"extwid.ic method 0x200041bc; bytecode file offset 0x54f80"
!EwSeparatorTool methodsFor: 'recovered'!
defaultHeight
    ^6
! !

"extwid.ic method 0x200074fc; bytecode file offset 0x582d8"
!EwSeparatorTool methodsFor: 'recovered'!
wasAutoSized: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    wasAutoSized := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000c03c; bytecode file offset 0x5ce04"
!EwSeparatorTool methodsFor: 'recovered'!
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
            (recoveredStack0) layoutRelatedAspectChanged.
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

"extwid.ic method 0x2000c05c; bytecode file offset 0x5ce24"
!EwSeparatorTool methodsFor: 'recovered'!
separatorType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNseparatorType.
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
            xmNseparatorType := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) refresh.
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

"extwid.ic method 0x2000ce0c; bytecode file offset 0x5dbe0"
!EwSeparatorTool methodsFor: 'recovered'!
boundingBox
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) wasAutoSized.
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
            recoveredStack0 := (recoveredStack0) autoSizedBoundingBox.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super boundingBox.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000de90; bytecode file offset 0x5ec58"
!EwSeparatorTool methodsFor: 'recovered'!
margin: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNmargin.
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
            xmNmargin := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) refresh.
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

"extwid.ic method 0x2000f3fc; bytecode file offset 0x601c8"
!EwSeparatorTool methodsFor: 'recovered'!
autoSize: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ewAutoSize.
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
            ewAutoSize := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) refresh.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) wasAutoSized: (recoveredStack1).
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

"extwid.ic method 0x200126e4; bytecode file offset 0x634b8"
!EwSeparatorTool methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 |
    super initializeResources.
    xmNmargin := 0.
    recoveredValue0 := XmVERTICAL.
    xmNorientation := recoveredValue0.
    recoveredValue1 := XmNOLINE.
    xmNseparatorType := recoveredValue1.
    ewAutoSize := false.
    wasAutoSized := false.
    ^self
! !

"extwid.ic method 0x20012cd8; bytecode file offset 0x63ab0"
!EwSeparatorTool methodsFor: 'recovered'!
drawFace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := XmNOLINE.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) separatorType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := XmSHADOWETCHEDIN.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) separatorType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawEtched.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) drawNonEtched.
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

"extwid.ic method 0x2001ac7c; bytecode file offset 0x6ba68"
!EwSeparatorTool methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) tab.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) orientationString.
    recoveredValue5 := ('orientation: ') , (recoveredValue4).
    (recoveredValue3) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) tab.
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) separatorTypeString.
    recoveredValue10 := ('type: ') , (recoveredValue9).
    (recoveredValue8) nextPutAll: (recoveredValue10).
    (recoveredValue1) cr.
    ^self
! !

"extwid.ic method 0x2001e9b4; bytecode file offset 0x6f7a0"
!EwSeparatorTool methodsFor: 'recovered'!
drawDashedLine: recoveredArg1 x1: recoveredArg2 y1: recoveredArg3 x2: recoveredArg4 y2: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := GCLineStyle.
    recoveredValue4 := CgGCValues.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    (recoveredValue2) getGCValues: (recoveredValue3) valuesReturn: (recoveredValue5).
    recoveredValue7 := GCLineStyle.
    recoveredValue8 := CgGCValues.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := LineOnOffDash.
    recoveredValue11 := (recoveredValue9) lineStyle: (recoveredValue10).
    (recoveredValue1) changeGC: (recoveredValue7) values: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) drawable.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) gc.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := recoveredArg3.
    recoveredValue18 := recoveredArg4.
    recoveredValue19 := recoveredArg5.
    (recoveredValue13) drawLine: (recoveredValue15) x1: (recoveredValue16) y1: (recoveredValue17) x2: (recoveredValue18) y2: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) gc.
    recoveredValue22 := GCLineStyle.
    recoveredValue23 := recoveredLocal1.
    (recoveredValue21) changeGC: (recoveredValue22) values: (recoveredValue23).
    ^self
! !

"extwid.ic method 0x20020ab4; bytecode file offset 0x718a0"
!EwSeparatorTool methodsFor: 'recovered'!
autoSizedBoundingBox
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVertical.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) innerWidth.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVertical.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) innerHeight.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20022490; bytecode file offset 0x73288"
!EwSeparatorTool methodsFor: 'recovered'!
separatorTypeString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'XmNOLINE'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'XmSINGLELINE'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := 'XmDOUBLELINE'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 'XmSINGLEDASHEDLINE'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'XmDOUBLEDASHEDLINE'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'XmSHADOWETCHEDIN'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) separatorType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := [
    | block28005ab4Value0 |
    block28005ab4Value0 := MxEW1.
    block28005ab4Value0
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20025708; bytecode file offset 0x764ec"
!EwSeparatorTool methodsFor: 'recovered'!
width
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNwidth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := xmNwidth.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) autoSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) inLayout.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVertical.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWidth.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHorizontal.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVertical.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) innerWidth.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) assumedBorder.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWidth.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultWidth.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2002577c; bytecode file offset 0x76560"
!EwSeparatorTool methodsFor: 'recovered'!
height
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNheight.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := xmNheight.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) autoSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) inLayout.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHorizontal.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultHeight.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVertical.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHorizontal.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) innerHeight.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) assumedBorder.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultHeight.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultHeight.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20030d70; bytecode file offset 0x81b6c"
!EwSeparatorTool methodsFor: 'recovered'!
drawEtched
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) renderContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) margin.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) shadingGC.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) highlightGC.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) shadingGC.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack5 := (recoveredStack5) bottom.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) highlightGC.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := (recoveredStack5) bottom.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2003b058; bytecode file offset 0x8be68"
!EwSeparatorTool methodsFor: 'recovered'!
drawNonEtched
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) renderContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) separatorType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) margin.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := XmSINGLEDASHEDLINE.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := XmDOUBLEDASHEDLINE.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := XmDOUBLELINE.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := XmDOUBLEDASHEDLINE.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHorizontal.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := [:recoveredBlock172Arg1 | 
    | recoveredBlock172Stack0 recoveredBlock172Stack1 recoveredBlock172Stack2 recoveredBlock172Stack3 recoveredBlock172Stack4 recoveredBlock172Stack5 recoveredBlock172Stack6 recoveredBlock172Stack7 recoveredBlock172Stack8 recoveredBlock172Stack9 recoveredBlock172PC recoveredBlock172Step recoveredBlock172Done recoveredBlock172Result |
    recoveredBlock172Stack0 := self.
    recoveredBlock172PC := 178.
    recoveredBlock172Done := false.
    [recoveredBlock172Done not] whileTrue: [
        recoveredBlock172Step := recoveredBlock172PC.
        recoveredBlock172Step = 178 ifTrue: [
            recoveredBlock172Stack1 := recoveredLocal7.
            recoveredBlock172PC := 181.
        ].
        recoveredBlock172Step = 181 ifTrue: [
            recoveredBlock172PC := 376.
        ].
        recoveredBlock172Step = 184 ifTrue: [
            recoveredBlock172Stack2 := self.
            recoveredBlock172PC := 185.
        ].
        recoveredBlock172Step = 185 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) isVertical.
            recoveredBlock172PC := 187.
        ].
        recoveredBlock172Step = 187 ifTrue: [
            (recoveredBlock172Stack2) ifTrue: [recoveredBlock172PC := 190] ifFalse: [recoveredBlock172PC := 278].
        ].
        recoveredBlock172Step = 190 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal8.
            recoveredBlock172PC := 193.
        ].
        recoveredBlock172Step = 193 ifTrue: [
            (recoveredBlock172Stack2) ifTrue: [recoveredBlock172PC := 196] ifFalse: [recoveredBlock172PC := 232].
        ].
        recoveredBlock172Step = 196 ifTrue: [
            recoveredBlock172Stack2 := self.
            recoveredBlock172PC := 197.
        ].
        recoveredBlock172Step = 197 ifTrue: [
            recoveredBlock172Stack3 := recoveredLocal9.
            recoveredBlock172PC := 200.
        ].
        recoveredBlock172Step = 200 ifTrue: [
            recoveredBlock172Stack4 := recoveredLocal4.
            recoveredBlock172PC := 203.
        ].
        recoveredBlock172Step = 203 ifTrue: [
            recoveredBlock172Stack5 := recoveredLocal9.
            recoveredBlock172PC := 206.
        ].
        recoveredBlock172Step = 206 ifTrue: [
            recoveredBlock172Stack5 := (recoveredBlock172Stack5) y.
            recoveredBlock172PC := 208.
        ].
        recoveredBlock172Step = 208 ifTrue: [
            recoveredBlock172Stack6 := recoveredLocal5.
            recoveredBlock172PC := 211.
        ].
        recoveredBlock172Step = 211 ifTrue: [
            recoveredBlock172Stack5 := (recoveredBlock172Stack5) + (recoveredBlock172Stack6).
            recoveredBlock172PC := 212.
        ].
        recoveredBlock172Step = 212 ifTrue: [
            recoveredBlock172Stack6 := recoveredLocal4.
            recoveredBlock172PC := 215.
        ].
        recoveredBlock172Step = 215 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal9.
            recoveredBlock172PC := 218.
        ].
        recoveredBlock172Step = 218 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) bottom.
            recoveredBlock172PC := 220.
        ].
        recoveredBlock172Step = 220 ifTrue: [
            recoveredBlock172Stack8 := recoveredLocal5.
            recoveredBlock172PC := 223.
        ].
        recoveredBlock172Step = 223 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) - (recoveredBlock172Stack8).
            recoveredBlock172PC := 224.
        ].
        recoveredBlock172Step = 224 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) + (-1).
            recoveredBlock172PC := 225.
        ].
        recoveredBlock172Step = 225 ifTrue: [
            (recoveredBlock172Stack2) drawDashedLine: (recoveredBlock172Stack3) x1: (recoveredBlock172Stack4) y1: (recoveredBlock172Stack5) x2: (recoveredBlock172Stack6) y2: (recoveredBlock172Stack7).
            recoveredBlock172PC := 228.
        ].
        recoveredBlock172Step = 228 ifTrue: [
            recoveredBlock172PC := 266.
        ].
        recoveredBlock172Step = 232 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal9.
            recoveredBlock172PC := 235.
        ].
        recoveredBlock172Step = 235 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) drawable.
            recoveredBlock172PC := 237.
        ].
        recoveredBlock172Step = 237 ifTrue: [
            recoveredBlock172Stack3 := recoveredBlock172Arg1.
            recoveredBlock172PC := 238.
        ].
        recoveredBlock172Step = 238 ifTrue: [
            recoveredBlock172Stack4 := recoveredLocal4.
            recoveredBlock172PC := 241.
        ].
        recoveredBlock172Step = 241 ifTrue: [
            recoveredBlock172Stack5 := recoveredLocal9.
            recoveredBlock172PC := 244.
        ].
        recoveredBlock172Step = 244 ifTrue: [
            recoveredBlock172Stack5 := (recoveredBlock172Stack5) y.
            recoveredBlock172PC := 246.
        ].
        recoveredBlock172Step = 246 ifTrue: [
            recoveredBlock172Stack6 := recoveredLocal5.
            recoveredBlock172PC := 249.
        ].
        recoveredBlock172Step = 249 ifTrue: [
            recoveredBlock172Stack5 := (recoveredBlock172Stack5) + (recoveredBlock172Stack6).
            recoveredBlock172PC := 250.
        ].
        recoveredBlock172Step = 250 ifTrue: [
            recoveredBlock172Stack6 := recoveredLocal4.
            recoveredBlock172PC := 253.
        ].
        recoveredBlock172Step = 253 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal9.
            recoveredBlock172PC := 256.
        ].
        recoveredBlock172Step = 256 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) bottom.
            recoveredBlock172PC := 258.
        ].
        recoveredBlock172Step = 258 ifTrue: [
            recoveredBlock172Stack8 := recoveredLocal5.
            recoveredBlock172PC := 261.
        ].
        recoveredBlock172Step = 261 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) - (recoveredBlock172Stack8).
            recoveredBlock172PC := 262.
        ].
        recoveredBlock172Step = 262 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) + (-1).
            recoveredBlock172PC := 263.
        ].
        recoveredBlock172Step = 263 ifTrue: [
            (recoveredBlock172Stack2) drawLine: (recoveredBlock172Stack3) x1: (recoveredBlock172Stack4) y1: (recoveredBlock172Stack5) x2: (recoveredBlock172Stack6) y2: (recoveredBlock172Stack7).
            recoveredBlock172PC := 266.
        ].
        recoveredBlock172Step = 266 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal4.
            recoveredBlock172PC := 269.
        ].
        recoveredBlock172Step = 269 ifTrue: [
            recoveredBlock172Stack3 := 2.
            recoveredBlock172PC := 271.
        ].
        recoveredBlock172Step = 271 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) + (recoveredBlock172Stack3).
            recoveredBlock172PC := 272.
        ].
        recoveredBlock172Step = 272 ifTrue: [
            recoveredLocal4 := recoveredBlock172Stack2.
            recoveredBlock172PC := 275.
        ].
        recoveredBlock172Step = 275 ifTrue: [
            recoveredBlock172PC := 376.
        ].
        recoveredBlock172Step = 278 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal8.
            recoveredBlock172PC := 281.
        ].
        recoveredBlock172Step = 281 ifTrue: [
            (recoveredBlock172Stack2) ifTrue: [recoveredBlock172PC := 284] ifFalse: [recoveredBlock172PC := 326].
        ].
        recoveredBlock172Step = 284 ifTrue: [
            recoveredBlock172Stack2 := self.
            recoveredBlock172PC := 285.
        ].
        recoveredBlock172Step = 285 ifTrue: [
            recoveredBlock172Stack3 := recoveredLocal9.
            recoveredBlock172PC := 288.
        ].
        recoveredBlock172Step = 288 ifTrue: [
            recoveredBlock172Stack4 := recoveredLocal9.
            recoveredBlock172PC := 291.
        ].
        recoveredBlock172Step = 291 ifTrue: [
            recoveredBlock172Stack4 := (recoveredBlock172Stack4) x.
            recoveredBlock172PC := 293.
        ].
        recoveredBlock172Step = 293 ifTrue: [
            recoveredBlock172Stack5 := recoveredLocal5.
            recoveredBlock172PC := 296.
        ].
        recoveredBlock172Step = 296 ifTrue: [
            recoveredBlock172Stack4 := (recoveredBlock172Stack4) + (recoveredBlock172Stack5).
            recoveredBlock172PC := 297.
        ].
        recoveredBlock172Step = 297 ifTrue: [
            recoveredBlock172Stack5 := recoveredLocal3.
            recoveredBlock172PC := 300.
        ].
        recoveredBlock172Step = 300 ifTrue: [
            recoveredBlock172Stack6 := recoveredLocal9.
            recoveredBlock172PC := 303.
        ].
        recoveredBlock172Step = 303 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) right.
            recoveredBlock172PC := 305.
        ].
        recoveredBlock172Step = 305 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal5.
            recoveredBlock172PC := 308.
        ].
        recoveredBlock172Step = 308 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) - (recoveredBlock172Stack7).
            recoveredBlock172PC := 309.
        ].
        recoveredBlock172Step = 309 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) + (-1).
            recoveredBlock172PC := 310.
        ].
        recoveredBlock172Step = 310 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal9.
            recoveredBlock172PC := 313.
        ].
        recoveredBlock172Step = 313 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) x.
            recoveredBlock172PC := 315.
        ].
        recoveredBlock172Step = 315 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) max: (recoveredBlock172Stack7).
            recoveredBlock172PC := 317.
        ].
        recoveredBlock172Step = 317 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal3.
            recoveredBlock172PC := 320.
        ].
        recoveredBlock172Step = 320 ifTrue: [
            (recoveredBlock172Stack2) drawDashedLine: (recoveredBlock172Stack3) x1: (recoveredBlock172Stack4) y1: (recoveredBlock172Stack5) x2: (recoveredBlock172Stack6) y2: (recoveredBlock172Stack7).
            recoveredBlock172PC := 323.
        ].
        recoveredBlock172Step = 323 ifTrue: [
            recoveredBlock172PC := 367.
        ].
        recoveredBlock172Step = 326 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal9.
            recoveredBlock172PC := 329.
        ].
        recoveredBlock172Step = 329 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) drawable.
            recoveredBlock172PC := 331.
        ].
        recoveredBlock172Step = 331 ifTrue: [
            recoveredBlock172Stack3 := recoveredBlock172Arg1.
            recoveredBlock172PC := 332.
        ].
        recoveredBlock172Step = 332 ifTrue: [
            recoveredBlock172Stack4 := recoveredLocal9.
            recoveredBlock172PC := 335.
        ].
        recoveredBlock172Step = 335 ifTrue: [
            recoveredBlock172Stack4 := (recoveredBlock172Stack4) x.
            recoveredBlock172PC := 337.
        ].
        recoveredBlock172Step = 337 ifTrue: [
            recoveredBlock172Stack5 := recoveredLocal5.
            recoveredBlock172PC := 340.
        ].
        recoveredBlock172Step = 340 ifTrue: [
            recoveredBlock172Stack4 := (recoveredBlock172Stack4) + (recoveredBlock172Stack5).
            recoveredBlock172PC := 341.
        ].
        recoveredBlock172Step = 341 ifTrue: [
            recoveredBlock172Stack5 := recoveredLocal3.
            recoveredBlock172PC := 344.
        ].
        recoveredBlock172Step = 344 ifTrue: [
            recoveredBlock172Stack6 := recoveredLocal9.
            recoveredBlock172PC := 347.
        ].
        recoveredBlock172Step = 347 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) right.
            recoveredBlock172PC := 349.
        ].
        recoveredBlock172Step = 349 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal5.
            recoveredBlock172PC := 352.
        ].
        recoveredBlock172Step = 352 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) - (recoveredBlock172Stack7).
            recoveredBlock172PC := 353.
        ].
        recoveredBlock172Step = 353 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) + (-1).
            recoveredBlock172PC := 354.
        ].
        recoveredBlock172Step = 354 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal9.
            recoveredBlock172PC := 357.
        ].
        recoveredBlock172Step = 357 ifTrue: [
            recoveredBlock172Stack7 := (recoveredBlock172Stack7) x.
            recoveredBlock172PC := 359.
        ].
        recoveredBlock172Step = 359 ifTrue: [
            recoveredBlock172Stack6 := (recoveredBlock172Stack6) max: (recoveredBlock172Stack7).
            recoveredBlock172PC := 361.
        ].
        recoveredBlock172Step = 361 ifTrue: [
            recoveredBlock172Stack7 := recoveredLocal3.
            recoveredBlock172PC := 364.
        ].
        recoveredBlock172Step = 364 ifTrue: [
            (recoveredBlock172Stack2) drawLine: (recoveredBlock172Stack3) x1: (recoveredBlock172Stack4) y1: (recoveredBlock172Stack5) x2: (recoveredBlock172Stack6) y2: (recoveredBlock172Stack7).
            recoveredBlock172PC := 367.
        ].
        recoveredBlock172Step = 367 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal3.
            recoveredBlock172PC := 370.
        ].
        recoveredBlock172Step = 370 ifTrue: [
            recoveredBlock172Stack3 := 2.
            recoveredBlock172PC := 372.
        ].
        recoveredBlock172Step = 372 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) + (recoveredBlock172Stack3).
            recoveredBlock172PC := 373.
        ].
        recoveredBlock172Step = 373 ifTrue: [
            recoveredLocal3 := recoveredBlock172Stack2.
            recoveredBlock172PC := 376.
        ].
        recoveredBlock172Step = 376 ifTrue: [
            (recoveredBlock172Stack1 isInteger) ifTrue: [(recoveredBlock172Stack1 > 0) ifTrue: [recoveredBlock172Stack1 := recoveredBlock172Stack1 - 1. recoveredBlock172PC := 184] ifFalse: [recoveredBlock172PC := 390]] ifFalse: [recoveredBlock172PC := 381].
        ].
        recoveredBlock172Step = 381 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) + (-1).
            recoveredBlock172PC := 382.
        ].
        recoveredBlock172Step = 382 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Stack1.
            recoveredBlock172PC := 383.
        ].
        recoveredBlock172Step = 383 ifTrue: [
            recoveredBlock172Stack3 := 0.
            recoveredBlock172PC := 385.
        ].
        recoveredBlock172Step = 385 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) >= (recoveredBlock172Stack3).
            recoveredBlock172PC := 386.
        ].
        recoveredBlock172Step = 386 ifTrue: [
            (recoveredBlock172Stack2) ifTrue: [recoveredBlock172PC := 184] ifFalse: [recoveredBlock172PC := 390].
        ].
        recoveredBlock172Step = 390 ifTrue: [
            recoveredBlock172Result := recoveredBlock172Stack1.
            recoveredBlock172Done := true.
        ].
    ].
    recoveredBlock172Result
].
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack0) drawForeground: (recoveredStack1).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

