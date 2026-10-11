"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002dc0; bytecode file offset 0x7efc0"
!CgStockObjects methodsFor: 'recovered'!
blackBrush
    | recoveredValue0 |
    recoveredValue0 := blackBrush.
    ^recoveredValue0
! !

"winsys.ic method 0x200036b8; bytecode file offset 0x7f878"
!CgStockObjects methodsFor: 'recovered'!
nullBrush
    | recoveredValue0 |
    recoveredValue0 := nullBrush.
    ^recoveredValue0
! !

"winsys.ic method 0x200036f0; bytecode file offset 0x7f9b8"
!CgStockObjects methodsFor: 'recovered'!
whiteBrush
    | recoveredValue0 |
    recoveredValue0 := whiteBrush.
    ^recoveredValue0
! !

"winsys.ic method 0x20003898; bytecode file offset 0x7fac0"
!CgStockObjects methodsFor: 'recovered'!
blackPen
    | recoveredValue0 |
    recoveredValue0 := blackPen.
    ^recoveredValue0
! !

"winsys.ic method 0x20003960; bytecode file offset 0x7fbb0"
!CgStockObjects methodsFor: 'recovered'!
nullPen
    | recoveredValue0 |
    recoveredValue0 := nullPen.
    ^recoveredValue0
! !

"winsys.ic method 0x20003aa0; bytecode file offset 0x7fc78"
!CgStockObjects methodsFor: 'recovered'!
whitePen
    | recoveredValue0 |
    recoveredValue0 := whitePen.
    ^recoveredValue0
! !

"winsys.ic method 0x20003b48; bytecode file offset 0x7fd28"
!CgStockObjects methodsFor: 'recovered'!
ansiFixedFont
    | recoveredValue0 |
    recoveredValue0 := ansiFixedFont.
    ^recoveredValue0
! !

"winsys.ic method 0x20003bc4; bytecode file offset 0x7fdc4"
!CgStockObjects methodsFor: 'recovered'!
ansiVarFont
    | recoveredValue0 |
    recoveredValue0 := ansiVarFont.
    ^recoveredValue0
! !

"winsys.ic method 0x20003c30; bytecode file offset 0x7fe50"
!CgStockObjects methodsFor: 'recovered'!
deviceDefaultFont
    | recoveredValue0 |
    recoveredValue0 := deviceDefaultFont.
    ^recoveredValue0
! !

"winsys.ic method 0x20003d04; bytecode file offset 0x7fec4"
!CgStockObjects methodsFor: 'recovered'!
oemFixedFont
    | recoveredValue0 |
    recoveredValue0 := oemFixedFont.
    ^recoveredValue0
! !

"winsys.ic method 0x20003d40; bytecode file offset 0x7ff18"
!CgStockObjects methodsFor: 'recovered'!
systemFont
    | recoveredValue0 |
    recoveredValue0 := systemFont.
    ^recoveredValue0
! !

"winsys.ic method 0x20003d84; bytecode file offset 0x7ff74"
!CgStockObjects methodsFor: 'recovered'!
systemFixedFont
    | recoveredValue0 |
    recoveredValue0 := systemFixedFont.
    ^recoveredValue0
! !

"winsys.ic method 0x20003e08; bytecode file offset 0x7ffc8"
!CgStockObjects methodsFor: 'recovered'!
defaultPalette
    | recoveredValue0 |
    recoveredValue0 := defaultPalette.
    ^recoveredValue0
! !

"winsys.ic method 0x20003e3c; bytecode file offset 0x80014"
!CgStockObjects methodsFor: 'recovered'!
defaultBitmap
    | recoveredValue0 |
    recoveredValue0 := defaultBitmap.
    ^recoveredValue0
! !

"winsys.ic method 0x20003e70; bytecode file offset 0x80070"
!CgStockObjects methodsFor: 'recovered'!
defaultCursor
    | recoveredValue0 |
    recoveredValue0 := defaultCursor.
    ^recoveredValue0
! !

"winsys.ic method 0x200056d4; bytecode file offset 0x8189c"
!CgStockObjects methodsFor: 'recovered'!
isStockObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := all.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := (recoveredValue0) includes: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20008190; bytecode file offset 0x84350"
!CgStockObjects methodsFor: 'recovered'!
systemFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    systemFont := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2001863c; bytecode file offset 0x94818"
!CgStockObjects methodsFor: 'recovered'!
getStockObject: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getStockObject: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := NlsCatCGsWina.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := all.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2001c4d8; bytecode file offset 0x986b0"
!CgStockObjects methodsFor: 'recovered'!
getDefaultBitmap: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) createCompatibleDC.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OSHbitmap.
    recoveredValue3 := (recoveredValue2) createBitmap: (1) nHeight: (1) cbPlanes: (1) cbBits: (1) lpvBits: (nil).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) selectObject: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) selectObject: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    (recoveredValue9) deleteObject.
    recoveredValue10 := recoveredLocal3.
    (recoveredValue10) deleteDC.
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"winsys.ic method 0x2003ab8c; bytecode file offset 0xb6dc4"
!CgStockObjects methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    all := recoveredValue1.
    recoveredValue2 := BlackBrush.
    recoveredValue3 := OSHbrush.
    recoveredValue4 := (self) getStockObject: (recoveredValue2) class: (recoveredValue3).
    blackBrush := recoveredValue4.
    recoveredValue5 := DkgrayBrush.
    recoveredValue6 := OSHbrush.
    recoveredValue7 := (self) getStockObject: (recoveredValue5) class: (recoveredValue6).
    dkgrayBrush := recoveredValue7.
    recoveredValue8 := GrayBrush.
    recoveredValue9 := OSHbrush.
    recoveredValue10 := (self) getStockObject: (recoveredValue8) class: (recoveredValue9).
    grayBrush := recoveredValue10.
    recoveredValue11 := HollowBrush.
    recoveredValue12 := OSHbrush.
    recoveredValue13 := (self) getStockObject: (recoveredValue11) class: (recoveredValue12).
    hollowBrush := recoveredValue13.
    recoveredValue14 := LtgrayBrush.
    recoveredValue15 := OSHbrush.
    recoveredValue16 := (self) getStockObject: (recoveredValue14) class: (recoveredValue15).
    ltgrayBrush := recoveredValue16.
    recoveredValue17 := NullBrush.
    recoveredValue18 := OSHbrush.
    recoveredValue19 := (self) getStockObject: (recoveredValue17) class: (recoveredValue18).
    nullBrush := recoveredValue19.
    recoveredValue20 := WhiteBrush.
    recoveredValue21 := OSHbrush.
    recoveredValue22 := (self) getStockObject: (recoveredValue20) class: (recoveredValue21).
    whiteBrush := recoveredValue22.
    recoveredValue23 := BlackPen.
    recoveredValue24 := OSHpen.
    recoveredValue25 := (self) getStockObject: (recoveredValue23) class: (recoveredValue24).
    blackPen := recoveredValue25.
    recoveredValue26 := NullPen.
    recoveredValue27 := OSHpen.
    recoveredValue28 := (self) getStockObject: (recoveredValue26) class: (recoveredValue27).
    nullPen := recoveredValue28.
    recoveredValue29 := WhitePen.
    recoveredValue30 := OSHpen.
    recoveredValue31 := (self) getStockObject: (recoveredValue29) class: (recoveredValue30).
    whitePen := recoveredValue31.
    recoveredValue32 := AnsiFixedFont.
    recoveredValue33 := OSHfont.
    recoveredValue34 := (self) getStockObject: (recoveredValue32) class: (recoveredValue33).
    ansiFixedFont := recoveredValue34.
    recoveredValue35 := AnsiVarFont.
    recoveredValue36 := OSHfont.
    recoveredValue37 := (self) getStockObject: (recoveredValue35) class: (recoveredValue36).
    ansiVarFont := recoveredValue37.
    recoveredValue38 := DeviceDefaultFont.
    recoveredValue39 := OSHfont.
    recoveredValue40 := (self) getStockObject: (recoveredValue38) class: (recoveredValue39).
    deviceDefaultFont := recoveredValue40.
    recoveredValue41 := OemFixedFont.
    recoveredValue42 := OSHfont.
    recoveredValue43 := (self) getStockObject: (recoveredValue41) class: (recoveredValue42).
    oemFixedFont := recoveredValue43.
    recoveredValue44 := SystemFont.
    recoveredValue45 := OSHfont.
    recoveredValue46 := (self) getStockObject: (recoveredValue44) class: (recoveredValue45).
    systemFont := recoveredValue46.
    recoveredValue47 := SystemFixedFont.
    recoveredValue48 := OSHfont.
    recoveredValue49 := (self) getStockObject: (recoveredValue47) class: (recoveredValue48).
    systemFixedFont := recoveredValue49.
    recoveredValue50 := DefaultPalette.
    recoveredValue51 := OSHpalette.
    recoveredValue52 := (self) getStockObject: (recoveredValue50) class: (recoveredValue51).
    defaultPalette := recoveredValue52.
    recoveredValue53 := all.
    recoveredValue54 := recoveredArg1.
    recoveredValue55 := (self) getDefaultBitmap: (recoveredValue54).
    recoveredValue56 := recoveredValue55.
    defaultBitmap := recoveredValue56.
    recoveredValue57 := (recoveredValue55) asInteger.
    (recoveredValue53) add: (recoveredValue57).
    recoveredValue58 := all.
    recoveredValue59 := HInstanceNull.
    recoveredValue60 := IdcArrow.
    recoveredValue61 := (recoveredValue59) loadCursor: (recoveredValue60).
    recoveredValue62 := recoveredValue61.
    defaultCursor := recoveredValue62.
    recoveredValue63 := (recoveredValue61) asInteger.
    (recoveredValue58) add: (recoveredValue63).
    ^self
! !

