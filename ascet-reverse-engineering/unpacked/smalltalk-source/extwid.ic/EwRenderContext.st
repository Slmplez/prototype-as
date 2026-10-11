"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200026f4; bytecode file offset 0x534f0"
!EwRenderContext methodsFor: 'recovered'!
drawable
    | recoveredValue0 |
    recoveredValue0 := drawable.
    ^recoveredValue0
! !

"extwid.ic method 0x20002864; bytecode file offset 0x53678"
!EwRenderContext methodsFor: 'recovered'!
gc
    | recoveredValue0 |
    recoveredValue0 := gc.
    ^recoveredValue0
! !

"extwid.ic method 0x2000291c; bytecode file offset 0x53810"
!EwRenderContext methodsFor: 'recovered'!
fontStruct
    | recoveredValue0 |
    recoveredValue0 := fontStruct.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b24; bytecode file offset 0x53998"
!EwRenderContext methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := x.
    ^recoveredValue0
! !

"extwid.ic method 0x20002cec; bytecode file offset 0x53ae8"
!EwRenderContext methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := y.
    ^recoveredValue0
! !

"extwid.ic method 0x20002d5c; bytecode file offset 0x53c68"
!EwRenderContext methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"extwid.ic method 0x20002f74; bytecode file offset 0x53da8"
!EwRenderContext methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := height.
    ^recoveredValue0
! !

"extwid.ic method 0x200048f8; bytecode file offset 0x556bc"
!EwRenderContext methodsFor: 'recovered'!
right
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := width.
    recoveredValue1 := x.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20004934; bytecode file offset 0x556f8"
!EwRenderContext methodsFor: 'recovered'!
bottom
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := height.
    recoveredValue1 := y.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20005228; bytecode file offset 0x56094"
!EwRenderContext methodsFor: 'recovered'!
setBackground: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) gc.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setBackground: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20005258; bytecode file offset 0x56094"
!EwRenderContext methodsFor: 'recovered'!
setForeground: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) gc.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setForeground: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20006318; bytecode file offset 0x5710c"
!EwRenderContext methodsFor: 'recovered'!
drawable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    drawable := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200063e0; bytecode file offset 0x57284"
!EwRenderContext methodsFor: 'recovered'!
gc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    gc := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006638; bytecode file offset 0x57404"
!EwRenderContext methodsFor: 'recovered'!
fontStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontStruct := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200066cc; bytecode file offset 0x57568"
!EwRenderContext methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006874; bytecode file offset 0x576a8"
!EwRenderContext methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200069d4; bytecode file offset 0x577e8"
!EwRenderContext methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006aa8; bytecode file offset 0x578dc"
!EwRenderContext methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    height := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000964c; bytecode file offset 0x5a418"
!EwRenderContext methodsFor: 'recovered'!
boundingBox
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := x.
    recoveredValue1 := y.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    recoveredValue3 := width.
    recoveredValue4 := height.
    recoveredValue5 := (recoveredValue3) @ (recoveredValue4).
    recoveredValue6 := (recoveredValue2) extent: (recoveredValue5).
    ^recoveredValue6
! !

"extwid.ic method 0x2000b81c; bytecode file offset 0x5c618"
!EwRenderContext methodsFor: 'recovered'!
getBackground
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CgGCValues.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) gc.
    recoveredValue3 := GCBackground.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue2) getGCValues: (recoveredValue3) valuesReturn: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) background.
    ^recoveredValue6
! !

"extwid.ic method 0x2000b83c; bytecode file offset 0x5c618"
!EwRenderContext methodsFor: 'recovered'!
getForeground
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CgGCValues.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) gc.
    recoveredValue3 := GCForeground.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue2) getGCValues: (recoveredValue3) valuesReturn: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) foreground.
    ^recoveredValue6
! !

"extwid.ic method 0x2000d8c8; bytecode file offset 0x5e6a8"
!EwRenderContext methodsFor: 'recovered'!
clip
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (self) y.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    recoveredValue3 := (self) width.
    recoveredValue4 := (self) height.
    recoveredValue5 := (recoveredValue3) @ (recoveredValue4).
    recoveredValue6 := (recoveredValue2) extent: (recoveredValue5).
    (self) clipTo: (recoveredValue6).
    ^self
! !

"extwid.ic method 0x200242e4; bytecode file offset 0x750cc"
!EwRenderContext methodsFor: 'recovered'!
clipTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := Unsorted.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) setClipRectangles: (recoveredStack2) clipYOrigin: (recoveredStack3) rectangles: (recoveredStack4) ordering: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) setClipMask: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := Unsorted.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) setClipRectangles: (recoveredStack2) clipYOrigin: (recoveredStack3) rectangles: (recoveredStack4) ordering: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200315b8; bytecode file offset 0x823ac"
!EwRenderContext methodsFor: 'recovered'!
drawInUse
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := (self) y.
    recoveredLocal6 := recoveredValue0.
    recoveredValue1 := (self) x.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := (self) right.
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := (self) bottom.
    recoveredValue5 := (recoveredValue4) + (-1).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := (self) width.
    recoveredValue7 := (self) height.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    recoveredValue9 := (recoveredValue8) + (-2).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) // (7).
    recoveredValue12 := (recoveredValue11) min: (10).
    recoveredValue13 := (recoveredValue12) max: (5).
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) \\ (recoveredValue15).
    recoveredValue17 := (recoveredValue16) + (1).
    recoveredValue18 := (recoveredValue17) // (2).
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue19) + (-1).
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Local1 recoveredBlock71Local2 recoveredBlock71Local3 recoveredBlock71Local4 recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 recoveredBlock71Value6 recoveredBlock71Value7 recoveredBlock71Value8 recoveredBlock71Value9 recoveredBlock71Value10 recoveredBlock71Value11 recoveredBlock71Value12 recoveredBlock71Value13 recoveredBlock71Value14 recoveredBlock71Value15 recoveredBlock71Value16 recoveredBlock71Value17 recoveredBlock71Value18 recoveredBlock71Value19 recoveredBlock71Value20 recoveredBlock71Value21 recoveredBlock71Value22 recoveredBlock71Value23 recoveredBlock71Value24 recoveredBlock71Value25 recoveredBlock71Value26 recoveredBlock71Value27 recoveredBlock71Value28 recoveredBlock71Value29 recoveredBlock71Value30 |
    recoveredBlock71Value0 := recoveredLocal5.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := (recoveredBlock71Value0) + (recoveredBlock71Value1).
    recoveredBlock71Value3 := recoveredLocal4.
    recoveredBlock71Value4 := (recoveredBlock71Value2) min: (recoveredBlock71Value3).
    recoveredBlock71Local4 := recoveredBlock71Value4.
    recoveredBlock71Value5 := recoveredLocal6.
    recoveredBlock71Value6 := recoveredBlock71Arg1.
    recoveredBlock71Value7 := (recoveredBlock71Value5) + (recoveredBlock71Value6).
    recoveredBlock71Value8 := recoveredLocal3.
    recoveredBlock71Value9 := (recoveredBlock71Value7) min: (recoveredBlock71Value8).
    recoveredBlock71Local1 := recoveredBlock71Value9.
    recoveredBlock71Value10 := recoveredLocal6.
    recoveredBlock71Value11 := recoveredBlock71Arg1.
    recoveredBlock71Value12 := (recoveredBlock71Value10) + (recoveredBlock71Value11).
    recoveredBlock71Value13 := recoveredBlock71Local1.
    recoveredBlock71Value14 := (recoveredBlock71Value12) - (recoveredBlock71Value13).
    recoveredBlock71Value15 := recoveredLocal5.
    recoveredBlock71Value16 := (recoveredBlock71Value14) + (recoveredBlock71Value15).
    recoveredBlock71Local3 := recoveredBlock71Value16.
    recoveredBlock71Value17 := recoveredLocal5.
    recoveredBlock71Value18 := recoveredBlock71Arg1.
    recoveredBlock71Value19 := (recoveredBlock71Value17) + (recoveredBlock71Value18).
    recoveredBlock71Value20 := recoveredBlock71Local4.
    recoveredBlock71Value21 := (recoveredBlock71Value19) - (recoveredBlock71Value20).
    recoveredBlock71Value22 := recoveredLocal6.
    recoveredBlock71Value23 := (recoveredBlock71Value21) + (recoveredBlock71Value22).
    recoveredBlock71Local2 := recoveredBlock71Value23.
    recoveredBlock71Value24 := (self) drawable.
    recoveredBlock71Value25 := (self) gc.
    recoveredBlock71Value26 := recoveredBlock71Local4.
    recoveredBlock71Value27 := recoveredBlock71Local2.
    recoveredBlock71Value28 := recoveredBlock71Local3.
    recoveredBlock71Value29 := recoveredBlock71Local1.
    recoveredBlock71Value30 := (recoveredBlock71Value24) drawLine: (recoveredBlock71Value25) x1: (recoveredBlock71Value26) y1: (recoveredBlock71Value27) x2: (recoveredBlock71Value28) y2: (recoveredBlock71Value29).
    recoveredBlock71Value30
].
    (recoveredValue18) to: (recoveredValue20) by: (recoveredValue21) do: (recoveredValue22).
    ^self
! !

