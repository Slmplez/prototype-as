"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068c14; bytecode file offset 0x965b90"
!RBLayoutConfiguration methodsFor: 'recovered'!
temporaryCorrectedX
    | recoveredValue0 |
    recoveredValue0 := temporaryCorrectedX.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ea0; bytecode file offset 0x966bdc"
!RBLayoutConfiguration methodsFor: 'recovered'!
temporaryCorrectedY
    | recoveredValue0 |
    recoveredValue0 := temporaryCorrectedY.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ade4; bytecode file offset 0x967a18"
!RBLayoutConfiguration methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b9c0; bytecode file offset 0x96873c"
!RBLayoutConfiguration methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := height.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c844; bytecode file offset 0x9692b0"
!RBLayoutConfiguration methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := title.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cf50; bytecode file offset 0x969c04"
!RBLayoutConfiguration methodsFor: 'recovered'!
iconic
    | recoveredValue0 |
    recoveredValue0 := iconic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d884; bytecode file offset 0x96a390"
!RBLayoutConfiguration methodsFor: 'recovered'!
resolution
    | recoveredValue0 |
    recoveredValue0 := resolution.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ddf0; bytecode file offset 0x96a9dc"
!RBLayoutConfiguration methodsFor: 'recovered'!
isMaximized
    | recoveredValue0 |
    recoveredValue0 := isMaximized.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be0a4; bytecode file offset 0x9bb178"
!RBLayoutConfiguration methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf048; bytecode file offset 0x9bc0b4"
!RBLayoutConfiguration methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfc5c; bytecode file offset 0x9bd228"
!RBLayoutConfiguration methodsFor: 'recovered'!
temporaryCorrectedX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    temporaryCorrectedX := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1430; bytecode file offset 0x9bdf14"
!RBLayoutConfiguration methodsFor: 'recovered'!
temporaryCorrectedY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    temporaryCorrectedY := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1d3c; bytecode file offset 0x9beac8"
!RBLayoutConfiguration methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c23a0; bytecode file offset 0x9bf474"
!RBLayoutConfiguration methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    height := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c32fc; bytecode file offset 0x9bfde0"
!RBLayoutConfiguration methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b78; bytecode file offset 0x9c058c"
!RBLayoutConfiguration methodsFor: 'recovered'!
iconic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iconic := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f84; bytecode file offset 0x9c0bf0"
!RBLayoutConfiguration methodsFor: 'recovered'!
resolution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resolution := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4378; bytecode file offset 0x9c11bc"
!RBLayoutConfiguration methodsFor: 'recovered'!
isMaximized: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isMaximized := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e1330; bytecode file offset 0x9ddbe4"
!RBLayoutConfiguration methodsFor: 'recovered'!
restoreInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isMaximized.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            isMaximized := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c764; bytecode file offset 0xa39028"
!RBLayoutConfiguration methodsFor: 'recovered'!
resetLayoutConfigOutsideDesktop
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_82374').
    (self) temporaryCorrectedX: (nil).
    (self) temporaryCorrectedY: (nil).
    ^self
! !

"ASDBase.ic method 0x201412d0; bytecode file offset 0xa3db8c"
!RBLayoutConfiguration methodsFor: 'recovered'!
x
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) temporaryCorrectedX.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := x.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201412f4; bytecode file offset 0xa3dbb0"
!RBLayoutConfiguration methodsFor: 'recovered'!
y
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) temporaryCorrectedY.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := y.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20276be4; bytecode file offset 0xb734b4"
!RBLayoutConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := iconic.
    (recoveredValue0) attr: ('iconized') boolean: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := isMaximized.
    (recoveredValue2) attr: ('maximized') boolean: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := x.
    recoveredValue6 := y.
    recoveredValue7 := (recoveredValue5) @ (recoveredValue6).
    (recoveredValue4) complex: ('Position') point: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := width.
    recoveredValue10 := height.
    recoveredValue11 := (recoveredValue9) @ (recoveredValue10).
    (recoveredValue8) complex: ('Size') point: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2032b2fc; bytecode file offset 0xc27bf0"
!RBLayoutConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initialize.
    (self) x: (0).
    (self) y: (0).
    (self) height: (0).
    (self) width: (0).
    (self) isMaximized: (false).
    (self) iconic: (false).
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) width.
    recoveredValue3 := CgScreen.
    recoveredValue4 := (recoveredValue3) default.
    recoveredValue5 := (recoveredValue4) height.
    recoveredValue6 := (recoveredValue2) @ (recoveredValue5).
    (self) resolution: (recoveredValue6).
    (self) title: ('').
    ^self
! !

"ASDBase.ic method 0x2041c738; bytecode file offset 0xd19028"
!RBLayoutConfiguration methodsFor: 'recovered'!
correctPositionIfOutsideDesktop
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_82374'.
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
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) wholeDesktopRect.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) top.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) temporaryCorrectedX: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) temporaryCorrectedY: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049400c; bytecode file offset 0xd90920"
!RBLayoutConfiguration methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue3) , (' (').
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) title.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (' title: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) x.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := (' x: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := (self) y.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := (' y: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue0.
    recoveredValue22 := (self) height.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := (' height: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) cr.
    recoveredValue26 := recoveredValue0.
    recoveredValue27 := (self) width.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := (' width: ') , (recoveredValue28).
    (recoveredValue26) nextPutAll: (recoveredValue29).
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) cr.
    recoveredValue31 := recoveredValue0.
    recoveredValue32 := (self) isMaximized.
    recoveredValue33 := (recoveredValue32) printString.
    recoveredValue34 := (' isMaximized: ') , (recoveredValue33).
    (recoveredValue31) nextPutAll: (recoveredValue34).
    recoveredValue35 := recoveredValue0.
    (recoveredValue35) cr.
    recoveredValue36 := recoveredValue0.
    recoveredValue37 := (self) iconic.
    recoveredValue38 := (recoveredValue37) printString.
    recoveredValue39 := (' iconic: ') , (recoveredValue38).
    (recoveredValue36) nextPutAll: (recoveredValue39).
    recoveredValue40 := recoveredValue0.
    (recoveredValue40) cr.
    recoveredValue41 := recoveredValue0.
    recoveredValue42 := (self) resolution.
    recoveredValue43 := (recoveredValue42) printString.
    recoveredValue44 := (' resolution: ') , (recoveredValue43).
    (recoveredValue41) nextPutAll: (recoveredValue44).
    recoveredValue45 := recoveredValue0.
    (recoveredValue45) cr.
    (recoveredValue0) nextPutAll: (')').
    ^self
! !

