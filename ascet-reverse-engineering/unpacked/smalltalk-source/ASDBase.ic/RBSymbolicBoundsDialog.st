"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000b08; bytecode file offset 0x8ffcfc"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
help
    ^self
! !

"ASDBase.ic method 0x2005a328; bytecode file offset 0x956bdc"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    smallFont := nil.
    ^self
! !

"ASDBase.ic method 0x2005a578; bytecode file offset 0x957a6c"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005a7ac; bytecode file offset 0x957a6c"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x200701f8; bytecode file offset 0x96cb7c"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
lowCriticalBound
    | recoveredValue0 |
    recoveredValue0 := lowBound.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200703d4; bytecode file offset 0x96ce40"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
highCriticalBound
    | recoveredValue0 |
    recoveredValue0 := highBound.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c68a8; bytecode file offset 0x9c3164"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
lowCriticalBound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lowBound := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c68cc; bytecode file offset 0x9c3470"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
highCriticalBound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    highBound := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6c78; bytecode file offset 0x9c36ec"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
values: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cfec0; bytecode file offset 0x9cc7b4"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
noBoundString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCNoBound.
    recoveredValue1 := ('<') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('>').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20118520; bytecode file offset 0xa14dd8"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
cancel
    lowBound := nil.
    highBound := nil.
    result := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20386570; bytecode file offset 0xc82e60"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := XKF1.
    (recoveredValue10) at: (recoveredValue11) put: ('help').
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := HKOk.
    (recoveredValue12) at: (recoveredValue13) put: ('ok').
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := HKCancel.
    (recoveredValue14) at: (recoveredValue15) put: ('cancel').
    recoveredValue16 := recoveredValue4.
    recoveredValue17 := HKHelp.
    (recoveredValue16) at: (recoveredValue17) put: ('help').
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := (self) shell.
    recoveredValue20 := recoveredLocal1.
    (recoveredValue18) at: (recoveredValue19) put: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue21).
    ^self
! !

"ASDBase.ic method 0x203a54c0; bytecode file offset 0xca1d9c"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
getValueForString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) noBoundString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280f4cb0Arg1 | 
    | block280f4cb0Value0 block280f4cb0Value1 |
    block280f4cb0Value0 := block280f4cb0Arg1.
    block280f4cb0Value1 := (block280f4cb0Value0) asString.
    block280f4cb0Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := recoveredArg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) equalsIgnoringCase: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20453f04; bytecode file offset 0xd507e8"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ff82cArg1 | 
    | block280ff82cValue0 block280ff82cValue1 |
    block280ff82cValue0 := block280ff82cArg1.
    block280ff82cValue1 := (block280ff82cValue0) asString.
    block280ff82cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'lowBoundSpinButton'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValueForString: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'highBoundSpinButton'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValueForString: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmExchangeInvalidBoundsMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            lowBound := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            highBound := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f3f6c; bytecode file offset 0xdf087c"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
aForm1Expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'EEMinValue'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnImageWithName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'EEMaxValue'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnImageWithName: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) white.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOSRGB.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) transparentPixel: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) white.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOSRGB.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) transparentPixel: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := None.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := CgGCValues.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'highBoundSpinButton'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'highBoundSpinButton'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 'lowBoundSpinButton'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 'lowBoundSpinButton'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent: (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack5 := (recoveredStack5) extent.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent: (recoveredStack5).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) putDeviceIndependentImage: (recoveredStack1) image: (recoveredStack2) srcRect: (recoveredStack3) destRect: (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20589998; bytecode file offset 0xe862ec"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) noResize: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SCDisplaySetupBit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) grayBackground.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := values.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28113be4Arg1 | 
    | block28113be4Value0 block28113be4Value1 |
    block28113be4Value0 := block28113be4Arg1.
    block28113be4Value1 := (block28113be4Value0) asString.
    block28113be4Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'lowBoundSpinButton'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) noBoundString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := lowBound.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) wrap: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'highBoundSpinButton'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) noBoundString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := highBound.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) wrap: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontTiny.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            smallFont := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := smallFont.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            smallFont := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'lowBoundSpinButton'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 'highBoundSpinButton'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'criticalBoundsText'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 'lowerText'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 'upperText'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 'criticalBoundsText'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := SCCriticalBounds.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := 'lowerText'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := SCLower.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := 'upperText'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := SCUpper.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := SCHelp.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066d090; bytecode file offset 0xf69a90"
!RBSymbolicBoundsDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTSYSTEMMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Display Setup').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := recoveredLocal13.
    recoveredBlock25Value6 := (125) * (recoveredBlock25Value5).
    recoveredBlock25Value7 := (recoveredBlock25Value6) rounded.
    (recoveredBlock25Value4) height: (recoveredBlock25Value7).
    recoveredBlock25Value8 := recoveredLocal14.
    recoveredBlock25Value9 := (516) * (recoveredBlock25Value8).
    recoveredBlock25Value10 := (recoveredBlock25Value9) rounded.
    recoveredBlock25Value11 := (recoveredBlock25Value0) width: (recoveredBlock25Value10).
    recoveredBlock25Value11
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := [:block28126628Arg1 | 
    | block28126628Value0 block28126628Value1 block28126628Value2 block28126628Value3 block28126628Value4 block28126628Value5 block28126628Value6 |
    block28126628Value0 := block28126628Arg1.
    block28126628Value1 := CgRGBColor.
    block28126628Value2 := (block28126628Value1) basicNew.
    block28126628Value3 := block28126628Value2.
    (block28126628Value3) instVarAt: (1) put: (49344).
    block28126628Value4 := block28126628Value2.
    (block28126628Value4) instVarAt: (2) put: (49344).
    block28126628Value5 := block28126628Value2.
    (block28126628Value5) instVarAt: (3) put: (49344).
    block28126628Value6 := (block28126628Value0) backgroundColor: (block28126628Value2).
    block28126628Value6
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 recoveredBlock166Value6 recoveredBlock166Value7 recoveredBlock166Value8 recoveredBlock166Value9 recoveredBlock166Value10 recoveredBlock166Value11 recoveredBlock166Value12 recoveredBlock166Value13 recoveredBlock166Value14 |
    recoveredBlock166Value0 := recoveredBlock166Arg1.
    recoveredBlock166Value1 := recoveredBlock166Value0.
    recoveredBlock166Value2 := recoveredLocal14.
    recoveredBlock166Value3 := (385) * (recoveredBlock166Value2).
    recoveredBlock166Value4 := (recoveredBlock166Value3) rounded.
    (recoveredBlock166Value1) x: (recoveredBlock166Value4).
    recoveredBlock166Value5 := recoveredBlock166Value0.
    recoveredBlock166Value6 := XmVERTICAL.
    (recoveredBlock166Value5) orientation: (recoveredBlock166Value6).
    recoveredBlock166Value7 := recoveredBlock166Value0.
    recoveredBlock166Value8 := recoveredLocal13.
    recoveredBlock166Value9 := (131) * (recoveredBlock166Value8).
    recoveredBlock166Value10 := (recoveredBlock166Value9) rounded.
    (recoveredBlock166Value7) height: (recoveredBlock166Value10).
    recoveredBlock166Value11 := recoveredLocal14.
    recoveredBlock166Value12 := (1) * (recoveredBlock166Value11).
    recoveredBlock166Value13 := (recoveredBlock166Value12) rounded.
    recoveredBlock166Value14 := (recoveredBlock166Value0) width: (recoveredBlock166Value13).
    recoveredBlock166Value14
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'lowerText'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 recoveredBlock237Value3 recoveredBlock237Value4 recoveredBlock237Value5 recoveredBlock237Value6 recoveredBlock237Value7 recoveredBlock237Value8 recoveredBlock237Value9 recoveredBlock237Value10 recoveredBlock237Value11 recoveredBlock237Value12 recoveredBlock237Value13 recoveredBlock237Value14 recoveredBlock237Value15 recoveredBlock237Value16 recoveredBlock237Value17 recoveredBlock237Value18 recoveredBlock237Value19 recoveredBlock237Value20 recoveredBlock237Value21 recoveredBlock237Value22 recoveredBlock237Value23 |
    recoveredBlock237Value0 := recoveredBlock237Arg1.
    recoveredBlock237Value1 := recoveredBlock237Value0.
    recoveredBlock237Value2 := recoveredLocal14.
    recoveredBlock237Value3 := (20) * (recoveredBlock237Value2).
    recoveredBlock237Value4 := (recoveredBlock237Value3) rounded.
    (recoveredBlock237Value1) x: (recoveredBlock237Value4).
    recoveredBlock237Value5 := recoveredBlock237Value0.
    (recoveredBlock237Value5) marginRight: (10).
    recoveredBlock237Value6 := recoveredBlock237Value0.
    recoveredBlock237Value7 := XmALIGNMENTBEGINNING.
    (recoveredBlock237Value6) alignment: (recoveredBlock237Value7).
    recoveredBlock237Value8 := recoveredBlock237Value0.
    (recoveredBlock237Value8) labelString: ('Lower').
    recoveredBlock237Value9 := recoveredBlock237Value0.
    (recoveredBlock237Value9) marginWidth: (0).
    recoveredBlock237Value10 := recoveredBlock237Value0.
    (recoveredBlock237Value10) marginHeight: (0).
    recoveredBlock237Value11 := recoveredBlock237Value0.
    recoveredBlock237Value12 := recoveredLocal13.
    recoveredBlock237Value13 := (35) * (recoveredBlock237Value12).
    recoveredBlock237Value14 := (recoveredBlock237Value13) rounded.
    (recoveredBlock237Value11) y: (recoveredBlock237Value14).
    recoveredBlock237Value15 := recoveredBlock237Value0.
    recoveredBlock237Value16 := recoveredLocal13.
    recoveredBlock237Value17 := (20) * (recoveredBlock237Value16).
    recoveredBlock237Value18 := (recoveredBlock237Value17) rounded.
    (recoveredBlock237Value15) height: (recoveredBlock237Value18).
    recoveredBlock237Value19 := recoveredBlock237Value0.
    (recoveredBlock237Value19) marginBottom: (10).
    recoveredBlock237Value20 := recoveredLocal14.
    recoveredBlock237Value21 := (44) * (recoveredBlock237Value20).
    recoveredBlock237Value22 := (recoveredBlock237Value21) rounded.
    recoveredBlock237Value23 := (recoveredBlock237Value0) width: (recoveredBlock237Value22).
    recoveredBlock237Value23
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := 'lowerText'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := 'upperText'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := [:recoveredBlock341Arg1 | 
    | recoveredBlock341Value0 recoveredBlock341Value1 recoveredBlock341Value2 recoveredBlock341Value3 recoveredBlock341Value4 recoveredBlock341Value5 recoveredBlock341Value6 recoveredBlock341Value7 recoveredBlock341Value8 recoveredBlock341Value9 recoveredBlock341Value10 recoveredBlock341Value11 recoveredBlock341Value12 recoveredBlock341Value13 recoveredBlock341Value14 recoveredBlock341Value15 recoveredBlock341Value16 recoveredBlock341Value17 recoveredBlock341Value18 recoveredBlock341Value19 recoveredBlock341Value20 recoveredBlock341Value21 recoveredBlock341Value22 recoveredBlock341Value23 |
    recoveredBlock341Value0 := recoveredBlock341Arg1.
    recoveredBlock341Value1 := recoveredBlock341Value0.
    recoveredBlock341Value2 := recoveredLocal14.
    recoveredBlock341Value3 := (210) * (recoveredBlock341Value2).
    recoveredBlock341Value4 := (recoveredBlock341Value3) rounded.
    (recoveredBlock341Value1) x: (recoveredBlock341Value4).
    recoveredBlock341Value5 := recoveredBlock341Value0.
    (recoveredBlock341Value5) marginRight: (10).
    recoveredBlock341Value6 := recoveredBlock341Value0.
    recoveredBlock341Value7 := XmALIGNMENTBEGINNING.
    (recoveredBlock341Value6) alignment: (recoveredBlock341Value7).
    recoveredBlock341Value8 := recoveredBlock341Value0.
    (recoveredBlock341Value8) labelString: ('Upper').
    recoveredBlock341Value9 := recoveredBlock341Value0.
    (recoveredBlock341Value9) marginWidth: (0).
    recoveredBlock341Value10 := recoveredBlock341Value0.
    (recoveredBlock341Value10) marginHeight: (0).
    recoveredBlock341Value11 := recoveredBlock341Value0.
    recoveredBlock341Value12 := recoveredLocal13.
    recoveredBlock341Value13 := (35) * (recoveredBlock341Value12).
    recoveredBlock341Value14 := (recoveredBlock341Value13) rounded.
    (recoveredBlock341Value11) y: (recoveredBlock341Value14).
    recoveredBlock341Value15 := recoveredBlock341Value0.
    recoveredBlock341Value16 := recoveredLocal13.
    recoveredBlock341Value17 := (20) * (recoveredBlock341Value16).
    recoveredBlock341Value18 := (recoveredBlock341Value17) rounded.
    (recoveredBlock341Value15) height: (recoveredBlock341Value18).
    recoveredBlock341Value19 := recoveredBlock341Value0.
    (recoveredBlock341Value19) marginBottom: (10).
    recoveredBlock341Value20 := recoveredLocal14.
    recoveredBlock341Value21 := (37) * (recoveredBlock341Value20).
    recoveredBlock341Value22 := (recoveredBlock341Value21) rounded.
    recoveredBlock341Value23 := (recoveredBlock341Value0) width: (recoveredBlock341Value22).
    recoveredBlock341Value23
].
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 'upperText'.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack3 := [:recoveredBlock447Arg1 | 
    | recoveredBlock447Value0 recoveredBlock447Value1 recoveredBlock447Value2 recoveredBlock447Value3 recoveredBlock447Value4 recoveredBlock447Value5 recoveredBlock447Value6 recoveredBlock447Value7 recoveredBlock447Value8 recoveredBlock447Value9 recoveredBlock447Value10 recoveredBlock447Value11 recoveredBlock447Value12 recoveredBlock447Value13 recoveredBlock447Value14 recoveredBlock447Value15 recoveredBlock447Value16 recoveredBlock447Value17 recoveredBlock447Value18 |
    recoveredBlock447Value0 := recoveredBlock447Arg1.
    recoveredBlock447Value1 := recoveredBlock447Value0.
    recoveredBlock447Value2 := recoveredLocal14.
    recoveredBlock447Value3 := (395) * (recoveredBlock447Value2).
    recoveredBlock447Value4 := (recoveredBlock447Value3) rounded.
    (recoveredBlock447Value1) x: (recoveredBlock447Value4).
    recoveredBlock447Value5 := recoveredBlock447Value0.
    (recoveredBlock447Value5) showAsDefault: (1).
    recoveredBlock447Value6 := recoveredBlock447Value0.
    (recoveredBlock447Value6) labelString: ('Ok').
    recoveredBlock447Value7 := recoveredBlock447Value0.
    recoveredBlock447Value8 := recoveredLocal13.
    recoveredBlock447Value9 := (10) * (recoveredBlock447Value8).
    recoveredBlock447Value10 := (recoveredBlock447Value9) rounded.
    (recoveredBlock447Value7) y: (recoveredBlock447Value10).
    recoveredBlock447Value11 := recoveredBlock447Value0.
    recoveredBlock447Value12 := recoveredLocal13.
    recoveredBlock447Value13 := (30) * (recoveredBlock447Value12).
    recoveredBlock447Value14 := (recoveredBlock447Value13) rounded.
    (recoveredBlock447Value11) height: (recoveredBlock447Value14).
    recoveredBlock447Value15 := recoveredLocal14.
    recoveredBlock447Value16 := (110) * (recoveredBlock447Value15).
    recoveredBlock447Value17 := (recoveredBlock447Value16) rounded.
    recoveredBlock447Value18 := (recoveredBlock447Value0) width: (recoveredBlock447Value17).
    recoveredBlock447Value18
].
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := [:recoveredBlock535Arg1 | 
    | recoveredBlock535Value0 recoveredBlock535Value1 recoveredBlock535Value2 recoveredBlock535Value3 recoveredBlock535Value4 recoveredBlock535Value5 recoveredBlock535Value6 recoveredBlock535Value7 recoveredBlock535Value8 recoveredBlock535Value9 recoveredBlock535Value10 recoveredBlock535Value11 recoveredBlock535Value12 recoveredBlock535Value13 recoveredBlock535Value14 recoveredBlock535Value15 recoveredBlock535Value16 recoveredBlock535Value17 |
    recoveredBlock535Value0 := recoveredBlock535Arg1.
    recoveredBlock535Value1 := recoveredBlock535Value0.
    recoveredBlock535Value2 := recoveredLocal14.
    recoveredBlock535Value3 := (395) * (recoveredBlock535Value2).
    recoveredBlock535Value4 := (recoveredBlock535Value3) rounded.
    (recoveredBlock535Value1) x: (recoveredBlock535Value4).
    recoveredBlock535Value5 := recoveredBlock535Value0.
    (recoveredBlock535Value5) labelString: ('Cancel').
    recoveredBlock535Value6 := recoveredBlock535Value0.
    recoveredBlock535Value7 := recoveredLocal13.
    recoveredBlock535Value8 := (45) * (recoveredBlock535Value7).
    recoveredBlock535Value9 := (recoveredBlock535Value8) rounded.
    (recoveredBlock535Value6) y: (recoveredBlock535Value9).
    recoveredBlock535Value10 := recoveredBlock535Value0.
    recoveredBlock535Value11 := recoveredLocal13.
    recoveredBlock535Value12 := (30) * (recoveredBlock535Value11).
    recoveredBlock535Value13 := (recoveredBlock535Value12) rounded.
    (recoveredBlock535Value10) height: (recoveredBlock535Value13).
    recoveredBlock535Value14 := recoveredLocal14.
    recoveredBlock535Value15 := (110) * (recoveredBlock535Value14).
    recoveredBlock535Value16 := (recoveredBlock535Value15) rounded.
    recoveredBlock535Value17 := (recoveredBlock535Value0) width: (recoveredBlock535Value16).
    recoveredBlock535Value17
].
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack3 := [:recoveredBlock617Arg1 | 
    | recoveredBlock617Value0 recoveredBlock617Value1 recoveredBlock617Value2 recoveredBlock617Value3 recoveredBlock617Value4 recoveredBlock617Value5 recoveredBlock617Value6 recoveredBlock617Value7 recoveredBlock617Value8 recoveredBlock617Value9 recoveredBlock617Value10 recoveredBlock617Value11 recoveredBlock617Value12 recoveredBlock617Value13 recoveredBlock617Value14 recoveredBlock617Value15 recoveredBlock617Value16 recoveredBlock617Value17 |
    recoveredBlock617Value0 := recoveredBlock617Arg1.
    recoveredBlock617Value1 := recoveredBlock617Value0.
    recoveredBlock617Value2 := recoveredLocal14.
    recoveredBlock617Value3 := (395) * (recoveredBlock617Value2).
    recoveredBlock617Value4 := (recoveredBlock617Value3) rounded.
    (recoveredBlock617Value1) x: (recoveredBlock617Value4).
    recoveredBlock617Value5 := recoveredBlock617Value0.
    (recoveredBlock617Value5) labelString: ('Help').
    recoveredBlock617Value6 := recoveredBlock617Value0.
    recoveredBlock617Value7 := recoveredLocal13.
    recoveredBlock617Value8 := (80) * (recoveredBlock617Value7).
    recoveredBlock617Value9 := (recoveredBlock617Value8) rounded.
    (recoveredBlock617Value6) y: (recoveredBlock617Value9).
    recoveredBlock617Value10 := recoveredBlock617Value0.
    recoveredBlock617Value11 := recoveredLocal13.
    recoveredBlock617Value12 := (30) * (recoveredBlock617Value11).
    recoveredBlock617Value13 := (recoveredBlock617Value12) rounded.
    (recoveredBlock617Value10) height: (recoveredBlock617Value13).
    recoveredBlock617Value14 := recoveredLocal14.
    recoveredBlock617Value15 := (110) * (recoveredBlock617Value14).
    recoveredBlock617Value16 := (recoveredBlock617Value15) rounded.
    recoveredBlock617Value17 := (recoveredBlock617Value0) width: (recoveredBlock617Value16).
    recoveredBlock617Value17
].
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack2 := 'lowBoundSpinButton'.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack3 := [:recoveredBlock704Arg1 | 
    | recoveredBlock704Value0 recoveredBlock704Value1 recoveredBlock704Value2 recoveredBlock704Value3 recoveredBlock704Value4 recoveredBlock704Value5 recoveredBlock704Value6 recoveredBlock704Value7 recoveredBlock704Value8 recoveredBlock704Value9 recoveredBlock704Value10 recoveredBlock704Value11 recoveredBlock704Value12 recoveredBlock704Value13 recoveredBlock704Value14 recoveredBlock704Value15 recoveredBlock704Value16 recoveredBlock704Value17 recoveredBlock704Value18 |
    recoveredBlock704Value0 := recoveredBlock704Arg1.
    recoveredBlock704Value1 := recoveredBlock704Value0.
    recoveredBlock704Value2 := recoveredLocal14.
    recoveredBlock704Value3 := (80) * (recoveredBlock704Value2).
    recoveredBlock704Value4 := (recoveredBlock704Value3) rounded.
    (recoveredBlock704Value1) x: (recoveredBlock704Value4).
    recoveredBlock704Value5 := recoveredBlock704Value0.
    recoveredBlock704Value6 := recoveredLocal13.
    recoveredBlock704Value7 := (30) * (recoveredBlock704Value6).
    recoveredBlock704Value8 := (recoveredBlock704Value7) rounded.
    (recoveredBlock704Value5) y: (recoveredBlock704Value8).
    recoveredBlock704Value9 := recoveredBlock704Value0.
    recoveredBlock704Value10 := XmSBSTRING.
    (recoveredBlock704Value9) itemType: (recoveredBlock704Value10).
    recoveredBlock704Value11 := recoveredBlock704Value0.
    recoveredBlock704Value12 := recoveredLocal13.
    recoveredBlock704Value13 := (25) * (recoveredBlock704Value12).
    recoveredBlock704Value14 := (recoveredBlock704Value13) rounded.
    (recoveredBlock704Value11) height: (recoveredBlock704Value14).
    recoveredBlock704Value15 := recoveredLocal14.
    recoveredBlock704Value16 := (105) * (recoveredBlock704Value15).
    recoveredBlock704Value17 := (recoveredBlock704Value16) rounded.
    recoveredBlock704Value18 := (recoveredBlock704Value0) width: (recoveredBlock704Value17).
    recoveredBlock704Value18
].
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack2 := 'lowBoundSpinButton'.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := 'highBoundSpinButton'.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack3 := [:recoveredBlock794Arg1 | 
    | recoveredBlock794Value0 recoveredBlock794Value1 recoveredBlock794Value2 recoveredBlock794Value3 recoveredBlock794Value4 recoveredBlock794Value5 recoveredBlock794Value6 recoveredBlock794Value7 recoveredBlock794Value8 recoveredBlock794Value9 recoveredBlock794Value10 recoveredBlock794Value11 recoveredBlock794Value12 recoveredBlock794Value13 recoveredBlock794Value14 recoveredBlock794Value15 recoveredBlock794Value16 recoveredBlock794Value17 recoveredBlock794Value18 |
    recoveredBlock794Value0 := recoveredBlock794Arg1.
    recoveredBlock794Value1 := recoveredBlock794Value0.
    recoveredBlock794Value2 := recoveredLocal14.
    recoveredBlock794Value3 := (270) * (recoveredBlock794Value2).
    recoveredBlock794Value4 := (recoveredBlock794Value3) rounded.
    (recoveredBlock794Value1) x: (recoveredBlock794Value4).
    recoveredBlock794Value5 := recoveredBlock794Value0.
    recoveredBlock794Value6 := recoveredLocal13.
    recoveredBlock794Value7 := (30) * (recoveredBlock794Value6).
    recoveredBlock794Value8 := (recoveredBlock794Value7) rounded.
    (recoveredBlock794Value5) y: (recoveredBlock794Value8).
    recoveredBlock794Value9 := recoveredBlock794Value0.
    recoveredBlock794Value10 := XmSBSTRING.
    (recoveredBlock794Value9) itemType: (recoveredBlock794Value10).
    recoveredBlock794Value11 := recoveredBlock794Value0.
    recoveredBlock794Value12 := recoveredLocal13.
    recoveredBlock794Value13 := (25) * (recoveredBlock794Value12).
    recoveredBlock794Value14 := (recoveredBlock794Value13) rounded.
    (recoveredBlock794Value11) height: (recoveredBlock794Value14).
    recoveredBlock794Value15 := recoveredLocal14.
    recoveredBlock794Value16 := (105) * (recoveredBlock794Value15).
    recoveredBlock794Value17 := (recoveredBlock794Value16) rounded.
    recoveredBlock794Value18 := (recoveredBlock794Value0) width: (recoveredBlock794Value17).
    recoveredBlock794Value18
].
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack2 := 'highBoundSpinButton'.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack2 := 'criticalBoundsText'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack3 := [:recoveredBlock884Arg1 | 
    | recoveredBlock884Value0 recoveredBlock884Value1 recoveredBlock884Value2 recoveredBlock884Value3 recoveredBlock884Value4 recoveredBlock884Value5 recoveredBlock884Value6 recoveredBlock884Value7 recoveredBlock884Value8 recoveredBlock884Value9 recoveredBlock884Value10 recoveredBlock884Value11 recoveredBlock884Value12 recoveredBlock884Value13 recoveredBlock884Value14 recoveredBlock884Value15 recoveredBlock884Value16 recoveredBlock884Value17 recoveredBlock884Value18 recoveredBlock884Value19 |
    recoveredBlock884Value0 := recoveredBlock884Arg1.
    recoveredBlock884Value1 := recoveredBlock884Value0.
    recoveredBlock884Value2 := recoveredLocal14.
    recoveredBlock884Value3 := (5) * (recoveredBlock884Value2).
    recoveredBlock884Value4 := (recoveredBlock884Value3) rounded.
    (recoveredBlock884Value1) x: (recoveredBlock884Value4).
    recoveredBlock884Value5 := recoveredBlock884Value0.
    (recoveredBlock884Value5) marginRight: (10).
    recoveredBlock884Value6 := recoveredBlock884Value0.
    (recoveredBlock884Value6) labelString: ('Critical bounds').
    recoveredBlock884Value7 := recoveredBlock884Value0.
    (recoveredBlock884Value7) marginWidth: (0).
    recoveredBlock884Value8 := recoveredBlock884Value0.
    (recoveredBlock884Value8) marginHeight: (0).
    recoveredBlock884Value9 := recoveredBlock884Value0.
    recoveredBlock884Value10 := recoveredLocal13.
    recoveredBlock884Value11 := (8) * (recoveredBlock884Value10).
    recoveredBlock884Value12 := (recoveredBlock884Value11) rounded.
    (recoveredBlock884Value9) y: (recoveredBlock884Value12).
    recoveredBlock884Value13 := recoveredBlock884Value0.
    recoveredBlock884Value14 := recoveredLocal13.
    recoveredBlock884Value15 := (20) * (recoveredBlock884Value14).
    recoveredBlock884Value16 := (recoveredBlock884Value15) rounded.
    (recoveredBlock884Value13) height: (recoveredBlock884Value16).
    recoveredBlock884Value17 := recoveredBlock884Value0.
    (recoveredBlock884Value17) marginBottom: (10).
    recoveredBlock884Value18 := (self) defaultLabelBlue.
    recoveredBlock884Value19 := (recoveredBlock884Value0) foregroundColor: (recoveredBlock884Value18).
    recoveredBlock884Value19
].
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := 'criticalBoundsText'.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack2 := [:recoveredBlock984Arg1 | 
    | recoveredBlock984Value0 recoveredBlock984Value1 recoveredBlock984Value2 |
    recoveredBlock984Value0 := recoveredBlock984Arg1.
    recoveredBlock984Value1 := recoveredLocal10.
    recoveredBlock984Value2 := (recoveredBlock984Value0) workWindow: (recoveredBlock984Value1).
    recoveredBlock984Value2
].
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack4 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

