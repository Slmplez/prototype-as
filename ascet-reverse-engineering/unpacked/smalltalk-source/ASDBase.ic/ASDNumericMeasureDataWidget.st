"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070198; bytecode file offset 0x96cb7c"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
additionalValueFields
    | recoveredValue0 |
    recoveredValue0 := additionalValueFields.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072340; bytecode file offset 0x96ee04"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
bitHex
    ^1
! !

"ASDBase.ic method 0x200727f8; bytecode file offset 0x96f1c4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
bitBoundsFallenShort
    ^2
! !

"ASDBase.ic method 0x20072c80; bytecode file offset 0x96f6d4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
bitBoundsExceeded
    ^4
! !

"ASDBase.ic method 0x20074394; bytecode file offset 0x970de8"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
bitLargeFont
    ^8
! !

"ASDBase.ic method 0x2009b120; bytecode file offset 0x9979e0"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
valueWidgetFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := (recoveredValue1) handle.
    (recoveredValue2) hideCaret.
    ^self
! !

"ASDBase.ic method 0x200c6790; bytecode file offset 0x9c3164"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
additionalValueFields: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    additionalValueFields := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6a7c; bytecode file offset 0x9c3470"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
additionalValueFieldWidgets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    additionalValueFieldWidgets := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cf4c0; bytecode file offset 0x9cbd90"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
setHex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf500; bytecode file offset 0x9cbdc4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
isHex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf534; bytecode file offset 0x9cbdf8"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
setBoundsFallenShort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf568; bytecode file offset 0x9cbe2c"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
isBoundsFallenShort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf5b8; bytecode file offset 0x9cbe7c"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
setBoundsExceeded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (4).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf5ec; bytecode file offset 0x9cbeb0"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
isBoundsExceeded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf614; bytecode file offset 0x9cbed8"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
clearCriticalState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (5).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf664; bytecode file offset 0x9cbf1c"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
clearLargeFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (7).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf680; bytecode file offset 0x9cbf44"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
setLargeFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (8).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf6b4; bytecode file offset 0x9cbf6c"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
isLargeFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf6dc; bytecode file offset 0x9cbf94"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
clearBoundsExceeded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (11).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf704; bytecode file offset 0x9cbfbc"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
clearBoundsFallenShort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (13).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf72c; bytecode file offset 0x9cbfe4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
clearHex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (14).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d5fc8; bytecode file offset 0x9d3134"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
showBoundsFallenShort
    super showBoundsFallenShort.
    (self) redraw.
    ^self
! !

"ASDBase.ic method 0x200d60f4; bytecode file offset 0x9d3134"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
showBoundsExceeded
    super showBoundsExceeded.
    (self) redraw.
    ^self
! !

"ASDBase.ic method 0x200d62d4; bytecode file offset 0x9d3134"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
showNormalState
    super showNormalState.
    (self) redraw.
    ^self
! !

"ASDBase.ic method 0x2010f1d4; bytecode file offset 0xa0bab0"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
fillConfigurationObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super fillConfigurationObject: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) isLargeFont.
    (recoveredValue1) largeFont: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012ad58; bytecode file offset 0xa27644"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
additionalValueFieldWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := additionalValueFieldWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            additionalValueFieldWidgets := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := additionalValueFieldWidgets.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012cfd8; bytecode file offset 0xa298d4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
fallsShortBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := ('EEMinValueExceeded') asString.
    recoveredValue2 := (recoveredValue0) returnImageWithName: (recoveredValue1).
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := (recoveredValue3) white.
    recoveredValue5 := (recoveredValue4) asOSRGB.
    recoveredValue6 := (recoveredValue2) transparentPixel: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2012d000; bytecode file offset 0xa298d4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
exceedsBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := ('EEMaxValueExceeded') asString.
    recoveredValue2 := (recoveredValue0) returnImageWithName: (recoveredValue1).
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := (recoveredValue3) white.
    recoveredValue5 := (recoveredValue4) asOSRGB.
    recoveredValue6 := (recoveredValue2) transparentPixel: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20166d20; bytecode file offset 0xa635e4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
putConfigurationObject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super putConfigurationObject: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) largeFont.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) largeFont.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) largeFontSize: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b6fcc; bytecode file offset 0xab3890"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super aForm1Destroy: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := largeFont.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := largeFont.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) freeFont.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            largeFont := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fe5f8; bytecode file offset 0xafaec8"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
startAcquisition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := additionalValueFieldWidgets.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d8af8Arg1 | 
    | block280d8af8Value0 block280d8af8Value1 |
    block280d8af8Value0 := block280d8af8Arg1.
    block280d8af8Value1 := (block280d8af8Value0) labelString: ('-').
    block280d8af8Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) clearBoundsExceeded.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) clearBoundsFallenShort.
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

"ASDBase.ic method 0x20267e00; bytecode file offset 0xb646d4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
bitmapRect: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) valueWidget.
    recoveredValue1 := (recoveredValue0) y.
    recoveredValue2 := (self) valueWidget.
    recoveredValue3 := (recoveredValue2) height.
    recoveredValue4 := (recoveredValue3) // (2).
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) height.
    recoveredValue8 := (recoveredValue7) // (2).
    recoveredValue9 := (recoveredValue5) - (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := (self) valueWidget.
    recoveredValue11 := (recoveredValue10) x.
    recoveredValue12 := (recoveredValue11) + (-1).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) width.
    recoveredValue15 := (recoveredValue12) - (recoveredValue14).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue16) @ (recoveredValue17).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) extent.
    recoveredValue21 := (recoveredValue18) extent: (recoveredValue20).
    ^recoveredValue21
! !

"ASDBase.ic method 0x202b5aa8; bytecode file offset 0xbb2374"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
background: recoveredArg1 brush: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super background: (recoveredValue0) brush: (recoveredValue1).
    recoveredValue2 := (self) primaryWidget.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
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
            recoveredBlock16Stack3 := CwText.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isKindOf: (recoveredBlock16Stack3).
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 32] ifFalse: [recoveredBlock16PC := 42].
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack2 := recoveredArg1.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) background: (recoveredBlock16Stack2) brush: (recoveredBlock16Stack3).
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue2) childrenDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2030c4f0; bytecode file offset 0xc08e44"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isHex.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isHex: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isBoundsFallenShort.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isBoundsFallenShort: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) isBoundsExceeded.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isBoundsExceeded: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue10) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) isLargeFont.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isLargeFont: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue15) cr.
    ^self
! !

"ASDBase.ic method 0x203376e4; bytecode file offset 0xc33fcc"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
createValueField: recoveredArg1 form: recoveredArg2 widgetAtom: recoveredArg3
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
            recoveredStack2 := 'valueText'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280ed378Arg1 | 
    | block280ed378Value0 block280ed378Value1 block280ed378Value2 block280ed378Value3 block280ed378Value4 block280ed378Value5 block280ed378Value6 block280ed378Value7 block280ed378Value8 |
    block280ed378Value0 := block280ed378Arg1.
    block280ed378Value1 := block280ed378Value0.
    (block280ed378Value1) x: (100).
    block280ed378Value2 := block280ed378Value0.
    (block280ed378Value2) y: (5).
    block280ed378Value3 := block280ed378Value0.
    (block280ed378Value3) width: (60).
    block280ed378Value4 := block280ed378Value0.
    (block280ed378Value4) height: (21).
    block280ed378Value5 := block280ed378Value0.
    block280ed378Value6 := XmALIGNMENTEND.
    (block280ed378Value5) alignment: (block280ed378Value6).
    block280ed378Value7 := block280ed378Value0.
    (block280ed378Value7) recomputeSize: (false).
    block280ed378Value8 := (block280ed378Value0) borderWidth: (1).
    block280ed378Value8
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2038ca00; bytecode file offset 0xc892ec"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
displayWithGC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super displayWithGC: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoundsExceeded.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoundsFallenShort.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) isBoundsFallenShort.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) fallsShortBitmap.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) exceedsBitmap.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitmapRect: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203dae44; bytecode file offset 0xcd7728"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromValue: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            actValue := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'mca'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataId.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataId.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataId.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) derivedDataElements.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataId.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) derivedDataElements.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Local1 recoveredBlock51Local2 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) readOnlineData.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Local2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            recoveredBlock51Stack1 := additionalValueFieldWidgets.
            recoveredBlock51PC := 64.
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg2.
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack3 := [].
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2) ifAbsent: (recoveredBlock51Stack3).
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local1.
            recoveredBlock51PC := 72.
        ].
        recoveredBlock51Step = 72 ifTrue: [
            (recoveredBlock51Stack2 == nil) ifTrue: [recoveredBlock51PC := 82] ifFalse: [recoveredBlock51PC := 76].
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51PC := 77.
        ].
        recoveredBlock51Step = 77 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack2 := self.
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local2.
            recoveredBlock51PC := 80.
        ].
        recoveredBlock51Step = 80 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) stringFromValue: (recoveredBlock51Stack3).
            recoveredBlock51PC := 81.
        ].
        recoveredBlock51Step = 81 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) labelString: (recoveredBlock51Stack2).
            recoveredBlock51PC := 82.
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204103cc; bytecode file offset 0xd0ccc0"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
initAttachments
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDMeasureEditorOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionMeasureScalarEditorNameWidth.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueWidget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := XmATTACHFORM.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) leftAttachment: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) leftOffset: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameWidget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := XmATTACHPOSITION.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) rightAttachment: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := ASDMeasureEditorOptions.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionMeasureScalarEditorNameWidth.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) rightPosition: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := ASDMeasureEditorOptions.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionMeasureScalarEditorUnitWidth.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) unitWidget.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueWidget.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := XmATTACHFORM.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) rightAttachment: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) rightOffset: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) unitWidget.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := XmATTACHPOSITION.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) leftAttachment: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) leftPosition: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20426d20; bytecode file offset 0xd23604"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
largeFontSize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := largeFont.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := largeFont.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) setLargeFont.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CwFontList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := CgDisplay.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultFontStruct.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) clearLargeFont.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueWidget.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameWidget.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitWidget.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := additionalValueFieldWidgets.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 |
    recoveredBlock85Value0 := recoveredBlock85Arg1.
    recoveredBlock85Value1 := recoveredLocal1.
    recoveredBlock85Value2 := (recoveredBlock85Value0) fontList: (recoveredBlock85Value1).
    recoveredBlock85Value2
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042a59c; bytecode file offset 0xd26e88"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
stringFromValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNaN.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInf.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'hex'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'dez'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := numberRepresentation.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'bin'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) printStringRadix: (recoveredStack2) showRadix: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) precision.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) rounded.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) precision.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) printStringDigitsBefore: (recoveredStack1) after: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204419e8; bytecode file offset 0xd3e2d8"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nameAlignment.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) alignment: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontTiny.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            valueFont := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            valueFont := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueWidget.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameWidget.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) unitWidget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := additionalValueFieldWidgets.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := valueFont.
    recoveredBlock57Value2 := (recoveredBlock57Value0) fontList: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontHuge.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            largeFont := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := largeFont.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            largeFont := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := additionalValueFieldWidgets.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:block280fe6e0Arg1 | 
    | block280fe6e0Value0 block280fe6e0Value1 |
    block280fe6e0Value0 := block280fe6e0Arg1.
    block280fe6e0Value1 := (block280fe6e0Value0) labelString: ('-').
    block280fe6e0Value1
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) initAttachments.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049b5e0; bytecode file offset 0xd97fc4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setHex.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setHex--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) setBoundsFallenShort.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setBoundsFallenShort--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    (self) setBoundsExceeded.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------setBoundsExceeded--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue10).
    (self) setLargeFont.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setLargeFont--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue13).
    (self) clearHex.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: ('--------clearHex--------').
    (recoveredValue14) cr.
    recoveredValue16 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue16).
    (self) clearBoundsFallenShort.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('--------clearBoundsFallenShort--------').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue19).
    (self) clearBoundsExceeded.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) nextPutAll: ('--------clearBoundsExceeded--------').
    (recoveredValue20) cr.
    recoveredValue22 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue22).
    (self) clearLargeFont.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) nextPutAll: ('--------clearLargeFont--------').
    (recoveredValue23) cr.
    recoveredValue25 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := (recoveredValue26) contents.
    (recoveredValue27) edit.
    ^self
! !

"ASDBase.ic method 0x206516e8; bytecode file offset 0xf4e0b4"
!ASDNumericMeasureDataWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainWindowBorderWidth.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) borderWidth: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 'valueText'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createValueField: (recoveredStack1) form: (recoveredStack2) widgetAtom: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := additionalValueFields.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'splitBar1'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:block28123124Arg1 | 
    | block28123124Value0 block28123124Value1 block28123124Value2 block28123124Value3 block28123124Value4 block28123124Value5 block28123124Value6 block28123124Value7 block28123124Value8 block28123124Value9 block28123124Value10 block28123124Value11 block28123124Value12 block28123124Value13 block28123124Value14 |
    block28123124Value0 := block28123124Arg1.
    block28123124Value1 := block28123124Value0.
    (block28123124Value1) minPosition: (50).
    block28123124Value2 := block28123124Value0.
    (block28123124Value2) minRightOrBottomOffset: (50).
    block28123124Value3 := block28123124Value0.
    (block28123124Value3) adjustRelPosAtResize: (true).
    block28123124Value4 := block28123124Value0.
    block28123124Value5 := CgRGBColor.
    block28123124Value6 := (block28123124Value5) gray.
    (block28123124Value4) foregroundColor: (block28123124Value6).
    block28123124Value7 := block28123124Value0.
    (block28123124Value7) x: (150).
    block28123124Value8 := block28123124Value0.
    block28123124Value9 := XmVERTICAL.
    (block28123124Value8) orientation: (block28123124Value9).
    block28123124Value10 := block28123124Value0.
    (block28123124Value10) y: (50).
    block28123124Value11 := block28123124Value0.
    (block28123124Value11) height: (100).
    block28123124Value12 := block28123124Value0.
    (block28123124Value12) width: (7).
    block28123124Value13 := XmTABGROUP.
    block28123124Value14 := (block28123124Value0) navigationType: (block28123124Value13).
    block28123124Value14
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBSplitBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'splitBar1'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := additionalValueFields.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'valueText_'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) asAtom.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) createValueField: (recoveredStack3) form: (recoveredStack4) widgetAtom: (recoveredStack5).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := additionalValueFieldWidgets.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 140] ifFalse: [recoveredPC := 217]] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 213] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 'unitText'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := [:recoveredBlock223Arg1 | 
    | recoveredBlock223Value0 recoveredBlock223Value1 recoveredBlock223Value2 recoveredBlock223Value3 recoveredBlock223Value4 recoveredBlock223Value5 recoveredBlock223Value6 recoveredBlock223Value7 recoveredBlock223Value8 recoveredBlock223Value9 recoveredBlock223Value10 recoveredBlock223Value11 recoveredBlock223Value12 recoveredBlock223Value13 recoveredBlock223Value14 recoveredBlock223Value15 recoveredBlock223Value16 recoveredBlock223Value17 recoveredBlock223Value18 recoveredBlock223Value19 |
    recoveredBlock223Value0 := recoveredBlock223Arg1.
    recoveredBlock223Value1 := recoveredBlock223Value0.
    recoveredBlock223Value2 := recoveredLocal11.
    recoveredBlock223Value3 := (168) * (recoveredBlock223Value2).
    recoveredBlock223Value4 := (recoveredBlock223Value3) rounded.
    (recoveredBlock223Value1) x: (recoveredBlock223Value4).
    recoveredBlock223Value5 := recoveredBlock223Value0.
    recoveredBlock223Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock223Value5) alignment: (recoveredBlock223Value6).
    recoveredBlock223Value7 := recoveredBlock223Value0.
    (recoveredBlock223Value7) recomputeSize: (false).
    recoveredBlock223Value8 := recoveredBlock223Value0.
    recoveredBlock223Value9 := recoveredLocal10.
    recoveredBlock223Value10 := (5) * (recoveredBlock223Value9).
    recoveredBlock223Value11 := (recoveredBlock223Value10) rounded.
    (recoveredBlock223Value8) y: (recoveredBlock223Value11).
    recoveredBlock223Value12 := recoveredBlock223Value0.
    recoveredBlock223Value13 := recoveredLocal10.
    recoveredBlock223Value14 := (21) * (recoveredBlock223Value13).
    recoveredBlock223Value15 := (recoveredBlock223Value14) rounded.
    (recoveredBlock223Value12) height: (recoveredBlock223Value15).
    recoveredBlock223Value16 := recoveredLocal11.
    recoveredBlock223Value17 := (120) * (recoveredBlock223Value16).
    recoveredBlock223Value18 := (recoveredBlock223Value17) rounded.
    recoveredBlock223Value19 := (recoveredBlock223Value0) width: (recoveredBlock223Value18).
    recoveredBlock223Value19
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := 'unitText'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := 'nameText'.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := [:recoveredBlock309Arg1 | 
    | recoveredBlock309Value0 recoveredBlock309Value1 recoveredBlock309Value2 recoveredBlock309Value3 recoveredBlock309Value4 recoveredBlock309Value5 recoveredBlock309Value6 recoveredBlock309Value7 recoveredBlock309Value8 recoveredBlock309Value9 recoveredBlock309Value10 recoveredBlock309Value11 recoveredBlock309Value12 recoveredBlock309Value13 recoveredBlock309Value14 recoveredBlock309Value15 recoveredBlock309Value16 recoveredBlock309Value17 recoveredBlock309Value18 recoveredBlock309Value19 recoveredBlock309Value20 |
    recoveredBlock309Value0 := recoveredBlock309Arg1.
    recoveredBlock309Value1 := recoveredBlock309Value0.
    recoveredBlock309Value2 := recoveredLocal11.
    recoveredBlock309Value3 := (5) * (recoveredBlock309Value2).
    recoveredBlock309Value4 := (recoveredBlock309Value3) rounded.
    (recoveredBlock309Value1) x: (recoveredBlock309Value4).
    recoveredBlock309Value5 := recoveredBlock309Value0.
    recoveredBlock309Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock309Value5) alignment: (recoveredBlock309Value6).
    recoveredBlock309Value7 := recoveredBlock309Value0.
    (recoveredBlock309Value7) recomputeSize: (false).
    recoveredBlock309Value8 := recoveredBlock309Value0.
    (recoveredBlock309Value8) labelString: ('(Name)').
    recoveredBlock309Value9 := recoveredBlock309Value0.
    recoveredBlock309Value10 := recoveredLocal10.
    recoveredBlock309Value11 := (5) * (recoveredBlock309Value10).
    recoveredBlock309Value12 := (recoveredBlock309Value11) rounded.
    (recoveredBlock309Value9) y: (recoveredBlock309Value12).
    recoveredBlock309Value13 := recoveredBlock309Value0.
    recoveredBlock309Value14 := recoveredLocal10.
    recoveredBlock309Value15 := (36) * (recoveredBlock309Value14).
    recoveredBlock309Value16 := (recoveredBlock309Value15) rounded.
    (recoveredBlock309Value13) height: (recoveredBlock309Value16).
    recoveredBlock309Value17 := recoveredLocal11.
    recoveredBlock309Value18 := (124) * (recoveredBlock309Value17).
    recoveredBlock309Value19 := (recoveredBlock309Value18) rounded.
    recoveredBlock309Value20 := (recoveredBlock309Value0) width: (recoveredBlock309Value19).
    recoveredBlock309Value20
].
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := 'nameText'.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := [:recoveredBlock397Arg1 | 
    | recoveredBlock397Value0 recoveredBlock397Value1 recoveredBlock397Value2 recoveredBlock397Value3 recoveredBlock397Value4 recoveredBlock397Value5 recoveredBlock397Value6 recoveredBlock397Value7 recoveredBlock397Value8 recoveredBlock397Value9 recoveredBlock397Value10 recoveredBlock397Value11 recoveredBlock397Value12 recoveredBlock397Value13 recoveredBlock397Value14 recoveredBlock397Value15 recoveredBlock397Value16 |
    recoveredBlock397Value0 := recoveredBlock397Arg1.
    recoveredBlock397Value1 := recoveredBlock397Value0.
    recoveredBlock397Value2 := XmATTACHFORM.
    (recoveredBlock397Value1) bottomAttachment: (recoveredBlock397Value2).
    recoveredBlock397Value3 := recoveredBlock397Value0.
    (recoveredBlock397Value3) bottomOffset: (1).
    recoveredBlock397Value4 := recoveredBlock397Value0.
    recoveredBlock397Value5 := XmATTACHFORM.
    (recoveredBlock397Value4) topAttachment: (recoveredBlock397Value5).
    recoveredBlock397Value6 := recoveredBlock397Value0.
    (recoveredBlock397Value6) topOffset: (1).
    recoveredBlock397Value7 := recoveredBlock397Value0.
    recoveredBlock397Value8 := XmATTACHWIDGET.
    (recoveredBlock397Value7) leftAttachment: (recoveredBlock397Value8).
    recoveredBlock397Value9 := recoveredBlock397Value0.
    recoveredBlock397Value10 := recoveredLocal7.
    (recoveredBlock397Value9) leftWidget: (recoveredBlock397Value10).
    recoveredBlock397Value11 := recoveredBlock397Value0.
    (recoveredBlock397Value11) leftOffset: (16).
    recoveredBlock397Value12 := recoveredBlock397Value0.
    recoveredBlock397Value13 := XmATTACHWIDGET.
    (recoveredBlock397Value12) rightAttachment: (recoveredBlock397Value13).
    recoveredBlock397Value14 := recoveredBlock397Value0.
    recoveredBlock397Value15 := recoveredLocal6.
    (recoveredBlock397Value14) rightWidget: (recoveredBlock397Value15).
    recoveredBlock397Value16 := (recoveredBlock397Value0) rightOffset: (1).
    recoveredBlock397Value16
].
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := [:block28123148Arg1 | 
    | block28123148Value0 block28123148Value1 block28123148Value2 block28123148Value3 block28123148Value4 block28123148Value5 block28123148Value6 block28123148Value7 block28123148Value8 block28123148Value9 block28123148Value10 block28123148Value11 block28123148Value12 |
    block28123148Value0 := block28123148Arg1.
    block28123148Value1 := block28123148Value0.
    block28123148Value2 := XmATTACHFORM.
    (block28123148Value1) bottomAttachment: (block28123148Value2).
    block28123148Value3 := block28123148Value0.
    (block28123148Value3) bottomOffset: (2).
    block28123148Value4 := block28123148Value0.
    block28123148Value5 := XmATTACHFORM.
    (block28123148Value4) topAttachment: (block28123148Value5).
    block28123148Value6 := block28123148Value0.
    (block28123148Value6) topOffset: (1).
    block28123148Value7 := block28123148Value0.
    block28123148Value8 := XmATTACHPOSITION.
    (block28123148Value7) leftAttachment: (block28123148Value8).
    block28123148Value9 := block28123148Value0.
    (block28123148Value9) leftPosition: (71).
    block28123148Value10 := block28123148Value0.
    block28123148Value11 := XmATTACHFORM.
    (block28123148Value10) rightAttachment: (block28123148Value11).
    block28123148Value12 := (block28123148Value0) rightOffset: (3).
    block28123148Value12
].
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := [:recoveredBlock519Arg1 | 
    | recoveredBlock519Value0 recoveredBlock519Value1 recoveredBlock519Value2 recoveredBlock519Value3 recoveredBlock519Value4 recoveredBlock519Value5 recoveredBlock519Value6 recoveredBlock519Value7 recoveredBlock519Value8 recoveredBlock519Value9 recoveredBlock519Value10 recoveredBlock519Value11 recoveredBlock519Value12 recoveredBlock519Value13 |
    recoveredBlock519Value0 := recoveredBlock519Arg1.
    recoveredBlock519Value1 := recoveredBlock519Value0.
    recoveredBlock519Value2 := XmATTACHFORM.
    (recoveredBlock519Value1) bottomAttachment: (recoveredBlock519Value2).
    recoveredBlock519Value3 := recoveredBlock519Value0.
    (recoveredBlock519Value3) bottomOffset: (2).
    recoveredBlock519Value4 := recoveredBlock519Value0.
    recoveredBlock519Value5 := XmATTACHFORM.
    (recoveredBlock519Value4) topAttachment: (recoveredBlock519Value5).
    recoveredBlock519Value6 := recoveredBlock519Value0.
    (recoveredBlock519Value6) topOffset: (2).
    recoveredBlock519Value7 := recoveredBlock519Value0.
    recoveredBlock519Value8 := XmATTACHFORM.
    (recoveredBlock519Value7) leftAttachment: (recoveredBlock519Value8).
    recoveredBlock519Value9 := recoveredBlock519Value0.
    (recoveredBlock519Value9) leftOffset: (3).
    recoveredBlock519Value10 := recoveredBlock519Value0.
    recoveredBlock519Value11 := XmATTACHWIDGET.
    (recoveredBlock519Value10) rightAttachment: (recoveredBlock519Value11).
    recoveredBlock519Value12 := recoveredLocal8.
    recoveredBlock519Value13 := (recoveredBlock519Value0) rightWidget: (recoveredBlock519Value12).
    recoveredBlock519Value13
].
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack0 := additionalValueFieldWidgets.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 580] ifFalse: [recoveredPC := 777].
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := [:block2812316cArg1 | 
    | block2812316cValue0 block2812316cValue1 block2812316cValue2 block2812316cValue3 block2812316cValue4 block2812316cValue5 block2812316cValue6 |
    block2812316cValue0 := block2812316cArg1.
    block2812316cValue1 := block2812316cValue0.
    block2812316cValue2 := XmATTACHFORM.
    (block2812316cValue1) topAttachment: (block2812316cValue2).
    block2812316cValue3 := block2812316cValue0.
    (block2812316cValue3) topOffset: (2).
    block2812316cValue4 := block2812316cValue0.
    block2812316cValue5 := XmATTACHFORM.
    (block2812316cValue4) bottomAttachment: (block2812316cValue5).
    block2812316cValue6 := (block2812316cValue0) bottomOffset: (2).
    block2812316cValue6
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := [:recoveredBlock616Arg1 | 
    | recoveredBlock616Value0 recoveredBlock616Value1 recoveredBlock616Value2 recoveredBlock616Value3 recoveredBlock616Value4 |
    recoveredBlock616Value0 := recoveredBlock616Arg1.
    recoveredBlock616Value1 := recoveredBlock616Value0.
    recoveredBlock616Value2 := XmATTACHWIDGET.
    (recoveredBlock616Value1) rightAttachment: (recoveredBlock616Value2).
    recoveredBlock616Value3 := recoveredLocal4.
    recoveredBlock616Value4 := (recoveredBlock616Value0) rightWidget: (recoveredBlock616Value3).
    recoveredBlock616Value4
].
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack0 := additionalValueFieldWidgets.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := [:recoveredBlock642Arg1 :recoveredBlock642Arg2 | 
    | recoveredBlock642Stack0 recoveredBlock642Stack1 recoveredBlock642Stack2 recoveredBlock642Stack3 recoveredBlock642PC recoveredBlock642Step recoveredBlock642Done recoveredBlock642Result |
    recoveredBlock642Stack0 := self.
    recoveredBlock642PC := 648.
    recoveredBlock642Done := false.
    [recoveredBlock642Done not] whileTrue: [
        recoveredBlock642Step := recoveredBlock642PC.
        recoveredBlock642Step = 648 ifTrue: [
            recoveredBlock642Stack1 := recoveredBlock642Arg1.
            recoveredBlock642PC := 649.
        ].
        recoveredBlock642Step = 649 ifTrue: [
            recoveredBlock642Stack2 := [:recoveredBlock642Block649Arg1 | 
    | recoveredBlock642Block649Value0 recoveredBlock642Block649Value1 recoveredBlock642Block649Value2 recoveredBlock642Block649Value3 recoveredBlock642Block649Value4 recoveredBlock642Block649Value5 recoveredBlock642Block649Value6 recoveredBlock642Block649Value7 recoveredBlock642Block649Value8 |
    recoveredBlock642Block649Value0 := recoveredBlock642Block649Arg1.
    recoveredBlock642Block649Value1 := recoveredBlock642Block649Value0.
    recoveredBlock642Block649Value2 := XmATTACHWIDGET.
    (recoveredBlock642Block649Value1) rightAttachment: (recoveredBlock642Block649Value2).
    recoveredBlock642Block649Value3 := recoveredBlock642Block649Value0.
    recoveredBlock642Block649Value4 := recoveredLocal6.
    (recoveredBlock642Block649Value3) rightWidget: (recoveredBlock642Block649Value4).
    recoveredBlock642Block649Value5 := recoveredBlock642Block649Value0.
    recoveredBlock642Block649Value6 := XmATTACHWIDGET.
    (recoveredBlock642Block649Value5) leftAttachment: (recoveredBlock642Block649Value6).
    recoveredBlock642Block649Value7 := recoveredLocal4.
    recoveredBlock642Block649Value8 := (recoveredBlock642Block649Value0) leftWidget: (recoveredBlock642Block649Value7).
    recoveredBlock642Block649Value8
].
            recoveredBlock642PC := 679.
        ].
        recoveredBlock642Step = 679 ifTrue: [
            (recoveredBlock642Stack1) setValuesBlock: (recoveredBlock642Stack2).
            recoveredBlock642PC := 681.
        ].
        recoveredBlock642Step = 681 ifTrue: [
            recoveredBlock642Stack1 := recoveredLocal3.
            recoveredBlock642PC := 684.
        ].
        recoveredBlock642Step = 684 ifTrue: [
            (recoveredBlock642Stack1 ~~ nil) ifTrue: [recoveredBlock642PC := 728] ifFalse: [recoveredBlock642PC := 688].
        ].
        recoveredBlock642Step = 688 ifTrue: [
            recoveredBlock642Stack1 := recoveredBlock642Arg1.
            recoveredBlock642PC := 689.
        ].
        recoveredBlock642Step = 689 ifTrue: [
            recoveredBlock642Stack2 := [:block28123190Arg1 | 
    | block28123190Value0 block28123190Value1 block28123190Value2 block28123190Value3 block28123190Value4 block28123190Value5 block28123190Value6 |
    block28123190Value0 := block28123190Arg1.
    block28123190Value1 := block28123190Value0.
    block28123190Value2 := XmATTACHFORM.
    (block28123190Value1) topAttachment: (block28123190Value2).
    block28123190Value3 := block28123190Value0.
    (block28123190Value3) topOffset: (2).
    block28123190Value4 := block28123190Value0.
    block28123190Value5 := XmATTACHPOSITION.
    (block28123190Value4) bottomAttachment: (block28123190Value5).
    block28123190Value6 := (block28123190Value0) bottomPosition: (50).
    block28123190Value6
].
            recoveredBlock642PC := 692.
        ].
        recoveredBlock642Step = 692 ifTrue: [
            recoveredBlock642PC := 722.
        ].
        recoveredBlock642Step = 722 ifTrue: [
            (recoveredBlock642Stack1) setValuesBlock: (recoveredBlock642Stack2).
            recoveredBlock642PC := 724.
        ].
        recoveredBlock642Step = 724 ifTrue: [
            recoveredBlock642PC := 762.
        ].
        recoveredBlock642Step = 728 ifTrue: [
            recoveredBlock642Stack1 := recoveredBlock642Arg1.
            recoveredBlock642PC := 729.
        ].
        recoveredBlock642Step = 729 ifTrue: [
            recoveredBlock642Stack2 := [:recoveredBlock642Block729Arg1 | 
    | recoveredBlock642Block729Value0 recoveredBlock642Block729Value1 recoveredBlock642Block729Value2 recoveredBlock642Block729Value3 recoveredBlock642Block729Value4 recoveredBlock642Block729Value5 recoveredBlock642Block729Value6 recoveredBlock642Block729Value7 |
    recoveredBlock642Block729Value0 := recoveredBlock642Block729Arg1.
    recoveredBlock642Block729Value1 := recoveredBlock642Block729Value0.
    recoveredBlock642Block729Value2 := XmATTACHFORM.
    (recoveredBlock642Block729Value1) bottomAttachment: (recoveredBlock642Block729Value2).
    recoveredBlock642Block729Value3 := recoveredBlock642Block729Value0.
    (recoveredBlock642Block729Value3) bottomOffset: (2).
    recoveredBlock642Block729Value4 := recoveredBlock642Block729Value0.
    recoveredBlock642Block729Value5 := XmATTACHWIDGET.
    (recoveredBlock642Block729Value4) topAttachment: (recoveredBlock642Block729Value5).
    recoveredBlock642Block729Value6 := recoveredLocal3.
    recoveredBlock642Block729Value7 := (recoveredBlock642Block729Value0) topWidget: (recoveredBlock642Block729Value6).
    recoveredBlock642Block729Value7
].
            recoveredBlock642PC := 760.
        ].
        recoveredBlock642Step = 760 ifTrue: [
            (recoveredBlock642Stack1) setValuesBlock: (recoveredBlock642Stack2).
            recoveredBlock642PC := 762.
        ].
        recoveredBlock642Step = 762 ifTrue: [
            recoveredBlock642Stack1 := recoveredBlock642Arg1.
            recoveredBlock642PC := 763.
        ].
        recoveredBlock642Step = 763 ifTrue: [
            recoveredBlock642Stack2 := recoveredBlock642Stack1.
            recoveredBlock642PC := 764.
        ].
        recoveredBlock642Step = 764 ifTrue: [
            recoveredLocal3 := recoveredBlock642Stack2.
            recoveredBlock642PC := 767.
        ].
        recoveredBlock642Step = 767 ifTrue: [
            recoveredBlock642Result := recoveredBlock642Stack1.
            recoveredBlock642Done := true.
        ].
    ].
    recoveredBlock642Result
].
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack3 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack3 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

