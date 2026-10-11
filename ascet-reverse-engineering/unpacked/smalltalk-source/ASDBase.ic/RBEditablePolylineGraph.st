"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006ee9c; bytecode file offset 0x96b8a0"
!RBEditablePolylineGraph methodsFor: 'recovered'!
coordRect
    | recoveredValue0 |
    recoveredValue0 := coordRect.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009c04c; bytecode file offset 0x998d48"
!RBEditablePolylineGraph methodsFor: 'recovered'!
defaultSelectionColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) lookupColor: ('red').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c124; bytecode file offset 0x998d48"
!RBEditablePolylineGraph methodsFor: 'recovered'!
defaultPrevioisIndexColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) lookupColor: ('dark cyan').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c214; bytecode file offset 0x998d48"
!RBEditablePolylineGraph methodsFor: 'recovered'!
defaultNextIndexColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) lookupColor: ('green').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c25c; bytecode file offset 0x998d48"
!RBEditablePolylineGraph methodsFor: 'recovered'!
defaultColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) lookupColor: ('black').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f2d58; bytecode file offset 0x9ef618"
!RBEditablePolylineGraph methodsFor: 'recovered'!
setSelectionStyle
    | recoveredValue0 |
    recoveredValue0 := (self) defaultSelectionColor.
    (self) lineColor: (recoveredValue0).
    (self) lineWidth: (10).
    ^self
! !

"ASDBase.ic method 0x2014e9f4; bytecode file offset 0xa4b2f4"
!RBEditablePolylineGraph methodsFor: 'recovered'!
setPreviousIndexStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultPrevioisIndexColor.
    (self) lineColor: (recoveredValue0).
    (self) lineWidth: (0).
    recoveredValue1 := LineSolid.
    (self) lineType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014ea10; bytecode file offset 0xa4b2f4"
!RBEditablePolylineGraph methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultColor.
    (self) lineColor: (recoveredValue0).
    (self) lineWidth: (0).
    recoveredValue1 := LineSolid.
    (self) lineType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014ea2c; bytecode file offset 0xa4b2f4"
!RBEditablePolylineGraph methodsFor: 'recovered'!
setNextIndexStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultNextIndexColor.
    (self) lineColor: (recoveredValue0).
    (self) lineWidth: (0).
    recoveredValue1 := LineSolid.
    (self) lineType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d2b04; bytecode file offset 0xacf3d0"
!RBEditablePolylineGraph methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBMultipleEditSignalObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultSelectionColor.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineColor: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) graphObject: (recoveredStack2) changeToSensitivePointWrapper: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20397190; bytecode file offset 0xc93aa0"
!RBEditablePolylineGraph methodsFor: 'recovered'!
displayLineOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := GCFunction.
    recoveredValue4 := GCForeground.
    recoveredValue5 := (recoveredValue3) | (recoveredValue4).
    recoveredValue6 := GCLineWidth.
    recoveredValue7 := (recoveredValue5) | (recoveredValue6).
    recoveredValue8 := GCLineStyle.
    recoveredValue9 := (recoveredValue7) | (recoveredValue8).
    recoveredValue10 := CgGCValues.
    recoveredValue11 := (recoveredValue10) new.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := mixingRule.
    (recoveredValue12) function: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (self) lineColor.
    recoveredValue17 := (recoveredValue15) pixelNearestToColor: (recoveredValue16).
    (recoveredValue14) foreground: (recoveredValue17).
    recoveredValue18 := recoveredValue11.
    recoveredValue19 := (self) lineWidth.
    (recoveredValue18) lineWidth: (recoveredValue19).
    recoveredValue20 := recoveredValue11.
    recoveredValue21 := (self) lineType.
    (recoveredValue20) lineStyle: (recoveredValue21).
    (recoveredValue2) changeGC: (recoveredValue9) values: (recoveredValue11).
    recoveredValue22 := (self) getController.
    recoveredValue23 := recoveredArg1.
    (recoveredValue22) setSignalClippingOn: (recoveredValue23).
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) window.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := pointColl.
    recoveredValue28 := CoordModeOrigin.
    (recoveredValue25) drawLines: (recoveredValue26) points: (recoveredValue27) mode: (recoveredValue28).
    recoveredValue29 := (self) getController.
    recoveredValue30 := recoveredArg1.
    (recoveredValue29) resetSignalClippingOn: (recoveredValue30).
    ^self
! !

