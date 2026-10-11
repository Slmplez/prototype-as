"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001e90; bytecode file offset 0x8ffcfc"
!RBExtendedPrimitive class methodsFor: 'recovered'!
genConstants
    ^self
! !

"ASDBase.ic method 0x20016e38; bytecode file offset 0x92209c"
!RBExtendedPrimitive class methodsFor: 'recovered'!
popupMenuEntryString
    ^'popupMenuEntry'
! !

"ASDBase.ic method 0x2001da98; bytecode file offset 0x92209c"
!RBExtendedPrimitive class methodsFor: 'recovered'!
popupMenuString
    ^'popupMenu'
! !

"ASDBase.ic method 0x20020c00; bytecode file offset 0x92209c"
!RBExtendedPrimitive class methodsFor: 'recovered'!
helpStringSeparator
    ^'.'
! !

"ASDBase.ic method 0x2005c9d8; bytecode file offset 0x959680"
!RBExtendedPrimitive class methodsFor: 'recovered'!
defaultBackgroundGray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwSystemColors.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) buttonFace.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e1ab8; bytecode file offset 0xade37c"
!RBExtendedPrimitive class methodsFor: 'recovered'!
defaultForegroundWhite
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (65535).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (65535).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (65535).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201e1bf8; bytecode file offset 0xade4e0"
!RBExtendedPrimitive class methodsFor: 'recovered'!
defaultBackgroundBlack
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (0).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201e1c20; bytecode file offset 0xade4e0"
!RBExtendedPrimitive class methodsFor: 'recovered'!
defaultLabelBlue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (0).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20276aa8; bytecode file offset 0xb7337c"
!RBExtendedPrimitive class methodsFor: 'recovered'!
getNLSForKey: recoveredArg1
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
            recoveredStack2 := 'Ctrl'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SCCtrl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Alt'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SCAlt.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Shift'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SCShift.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := '+%1'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034c50c; bytecode file offset 0xc48dfc"
!RBExtendedPrimitive class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ButtonMotionMask.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := Button1MotionMask.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := Button2MotionMask.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := Button3MotionMask.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := ButtonPressMask.
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := ButtonReleaseMask.
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := PointerMotionMask.
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := KeyPressMask.
    (recoveredValue17) add: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := KeyReleaseMask.
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := ExposureMask.
    (recoveredValue2) add: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) asArray.
    EventMasks := recoveredValue23.
    ^self
! !

"ASDBase.ic method 0x203ed8a0; bytecode file offset 0xcea170"
!RBExtendedPrimitive class methodsFor: 'recovered'!
getTabPrefixFor: recoveredArg1 widgetDictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tabStrip.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg2.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) = (recoveredBlock14Stack2).
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 33].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) asString.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 42] ifFalse: [recoveredBlock14PC := 49].
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) asString.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue5) name.
    recoveredValue7 := (recoveredValue4) defaultReturn: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) name.
    recoveredValue11 := (recoveredValue8) defaultReturn: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) helpStringSeparator.
    recoveredValue14 := (recoveredValue12) , (recoveredValue13).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) , (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x20498cc8; bytecode file offset 0xd95608"
!RBExtendedPrimitive class methodsFor: 'recovered'!
getStringForFunctionKey: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XKReturn.
    recoveredValue5 := SCHKReturn.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := XKEscape.
    recoveredValue8 := SCHKEsc.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := XKHome.
    recoveredValue11 := SCHKHome.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := XKLeft.
    recoveredValue14 := SCHKLeft.
    (recoveredValue12) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := XKUp.
    recoveredValue17 := SCHKUp.
    (recoveredValue15) at: (recoveredValue16) put: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    recoveredValue19 := XKRight.
    recoveredValue20 := SCHKRight.
    (recoveredValue18) at: (recoveredValue19) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := XKDown.
    recoveredValue23 := SCHKDown.
    (recoveredValue21) at: (recoveredValue22) put: (recoveredValue23).
    recoveredValue24 := recoveredValue2.
    recoveredValue25 := XKPrior.
    recoveredValue26 := SCHKPageUp.
    (recoveredValue24) at: (recoveredValue25) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := XKNext.
    recoveredValue29 := SCHKPageDown.
    (recoveredValue27) at: (recoveredValue28) put: (recoveredValue29).
    recoveredValue30 := recoveredValue2.
    recoveredValue31 := XKEnd.
    recoveredValue32 := SCHKEnd.
    (recoveredValue30) at: (recoveredValue31) put: (recoveredValue32).
    recoveredValue33 := recoveredValue2.
    recoveredValue34 := XKInsert.
    recoveredValue35 := SCHKInsert.
    (recoveredValue33) at: (recoveredValue34) put: (recoveredValue35).
    recoveredValue36 := recoveredValue2.
    recoveredValue37 := XKCancel.
    recoveredValue38 := SCHKCancel.
    (recoveredValue36) at: (recoveredValue37) put: (recoveredValue38).
    recoveredValue39 := recoveredValue2.
    recoveredValue40 := XKDelete.
    recoveredValue41 := SCHKDelete.
    (recoveredValue39) at: (recoveredValue40) put: (recoveredValue41).
    recoveredValue42 := XKPause.
    recoveredValue43 := SCHKPause.
    (recoveredValue2) at: (recoveredValue42) put: (recoveredValue43).
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := recoveredArg1.
    recoveredValue46 := [
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 |
    recoveredBlock116Value0 := Character.
    recoveredBlock116Value1 := recoveredArg1.
    recoveredBlock116Value2 := (recoveredBlock116Value0) value: (recoveredBlock116Value1).
    recoveredBlock116Value3 := (recoveredBlock116Value2) asString.
    recoveredBlock116Value3
].
    recoveredValue47 := (recoveredValue44) at: (recoveredValue45) ifAbsent: (recoveredValue46).
    ^recoveredValue47
! !

"ASDBase.ic method 0x204c0eb0; bytecode file offset 0xdbd79c"
!RBExtendedPrimitive class methodsFor: 'recovered'!
getPossibleTabFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) allWidgetParents.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block2810681cArg1 | 
    | block2810681cValue0 block2810681cValue1 |
    block2810681cValue0 := block2810681cArg1.
    block2810681cValue1 := (block2810681cValue0) isTabStrip.
    block2810681cValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 |
    recoveredBlock35Value0 := recoveredLocal1.
    recoveredBlock35Value1 := recoveredBlock35Value0.
    recoveredBlock35Value2 := recoveredArg1.
    (recoveredBlock35Value1) addFirst: (recoveredBlock35Value2).
    (recoveredBlock35Value0) removeLast.
    recoveredBlock35Value3 := recoveredLocal1.
    recoveredBlock35Value4 := [:recoveredBlock35Block56Arg1 | 
    | recoveredBlock35Block56Stack0 recoveredBlock35Block56Stack1 recoveredBlock35Block56Stack2 recoveredBlock35Block56Stack3 recoveredBlock35Block56Stack4 recoveredBlock35Block56PC recoveredBlock35Block56Step recoveredBlock35Block56Done recoveredBlock35Block56Result |
    recoveredBlock35Block56Stack0 := nil.
    recoveredBlock35Block56PC := 62.
    recoveredBlock35Block56Done := false.
    [recoveredBlock35Block56Done not] whileTrue: [
        recoveredBlock35Block56Step := recoveredBlock35Block56PC.
        recoveredBlock35Block56Step = 62 ifTrue: [
            recoveredBlock35Block56Stack1 := nil.
            recoveredBlock35Block56PC := 63.
        ].
        recoveredBlock35Block56Step = 63 ifTrue: [
            recoveredBlock35Block56Stack2 := recoveredBlock35Block56Arg1.
            recoveredBlock35Block56PC := 64.
        ].
        recoveredBlock35Block56Step = 64 ifTrue: [
            recoveredBlock35Block56Stack2 := (recoveredBlock35Block56Stack2) parent.
            recoveredBlock35Block56PC := 66.
        ].
        recoveredBlock35Block56Step = 66 ifTrue: [
            recoveredBlock35Block56Stack3 := recoveredBlock35Arg1.
            recoveredBlock35Block56PC := 69.
        ].
        recoveredBlock35Block56Step = 69 ifTrue: [
            recoveredBlock35Block56Stack2 := (recoveredBlock35Block56Stack2) = (recoveredBlock35Block56Stack3).
            recoveredBlock35Block56PC := 70.
        ].
        recoveredBlock35Block56Step = 70 ifTrue: [
            (recoveredBlock35Block56Stack2) ifTrue: [recoveredBlock35Block56PC := 74] ifFalse: [recoveredBlock35Block56PC := 80].
        ].
        recoveredBlock35Block56Step = 74 ifTrue: [
            recoveredBlock35Block56PC := 75.
        ].
        recoveredBlock35Block56Step = 75 ifTrue: [
            recoveredBlock35Block56Stack1 := recoveredBlock35Block56Arg1.
            recoveredBlock35Block56PC := 76.
        ].
        recoveredBlock35Block56Step = 76 ifTrue: [
            recoveredBlock35Block56Stack2 := recoveredBlock35Block56Stack1.
            recoveredBlock35Block56PC := 77.
        ].
        recoveredBlock35Block56Step = 77 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Block56Stack2.
            recoveredBlock35Block56PC := 80.
        ].
        recoveredBlock35Block56Step = 80 ifTrue: [
            recoveredBlock35Block56Result := recoveredBlock35Block56Stack1.
            recoveredBlock35Block56Done := true.
        ].
    ].
    recoveredBlock35Block56Result
].
    (recoveredBlock35Value3) do: (recoveredBlock35Value4).
    recoveredBlock35Value5 := recoveredBlock35Local1.
    recoveredBlock35Value6 := [:recoveredBlock35Block86Arg1 | 
    | recoveredBlock35Block86Value0 recoveredBlock35Block86Value1 recoveredBlock35Block86Value2 recoveredBlock35Block86Value3 recoveredBlock35Block86Value4 recoveredBlock35Block86Value5 recoveredBlock35Block86Value6 |
    recoveredBlock35Block86Value0 := recoveredBlock35Arg1.
    recoveredBlock35Block86Value1 := (recoveredBlock35Block86Value0) items.
    recoveredBlock35Block86Value2 := [:recoveredBlock35Block86Block97Arg1 | 
    | recoveredBlock35Block86Block97Value0 recoveredBlock35Block86Block97Value1 recoveredBlock35Block86Block97Value2 recoveredBlock35Block86Block97Value3 |
    recoveredBlock35Block86Block97Value0 := recoveredBlock35Block86Block97Arg1.
    recoveredBlock35Block86Block97Value1 := (recoveredBlock35Block86Block97Value0) userData.
    recoveredBlock35Block86Block97Value2 := recoveredBlock35Block86Arg1.
    recoveredBlock35Block86Block97Value3 := (recoveredBlock35Block86Block97Value1) = (recoveredBlock35Block86Block97Value2).
    recoveredBlock35Block86Block97Value3
].
    recoveredBlock35Block86Value3 := [].
    recoveredBlock35Block86Value4 := (recoveredBlock35Block86Value1) detect: (recoveredBlock35Block86Value2) ifNone: (recoveredBlock35Block86Value3).
    recoveredBlock35Block86Value5 := [:recoveredBlock35Block86Block116Arg1 | 
    | recoveredBlock35Block86Block116Value0 |
    recoveredBlock35Block86Block116Value0 := recoveredBlock35Block86Block116Arg1.
    ^recoveredBlock35Block86Block116Value0
].
    recoveredBlock35Block86Value6 := (recoveredBlock35Block86Value4) ifNotNil: (recoveredBlock35Block86Value5).
    recoveredBlock35Block86Value6
].
    recoveredBlock35Value7 := (recoveredBlock35Value5) ifNotNil: (recoveredBlock35Value6).
    recoveredBlock35Value7
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCwTab.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20600264; bytecode file offset 0xefcba4"
!RBExtendedPrimitive class methodsFor: 'recovered'!
getStringForActionKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Ctrl-'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := SCCtrl.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'Alt-'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := SCAlt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'Shift-'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := SCShift.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 257] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := XKF1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := XKF35.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := SCFunctionKey.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := XKF1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 169].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := SCHKTab.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 187].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := SCHKReturn.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 205].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := SCHKSpace.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := 27.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := SCHKEsc.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := [
    ^''
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) getStringForFunctionKey: (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) getStringForFunctionKey: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 339].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := [:recoveredBlock282Arg1 | 
    | recoveredBlock282Local1 recoveredBlock282Stack0 recoveredBlock282Stack1 recoveredBlock282Stack2 recoveredBlock282Stack3 recoveredBlock282PC recoveredBlock282Step recoveredBlock282Done recoveredBlock282Result |
    recoveredBlock282Stack0 := self.
    recoveredBlock282PC := 288.
    recoveredBlock282Done := false.
    [recoveredBlock282Done not] whileTrue: [
        recoveredBlock282Step := recoveredBlock282PC.
        recoveredBlock282Step = 288 ifTrue: [
            recoveredBlock282Stack1 := recoveredLocal4.
            recoveredBlock282PC := 291.
        ].
        recoveredBlock282Step = 291 ifTrue: [
            recoveredBlock282Stack2 := recoveredBlock282Arg1.
            recoveredBlock282PC := 292.
        ].
        recoveredBlock282Step = 292 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) at: (recoveredBlock282Stack2).
            recoveredBlock282PC := 294.
        ].
        recoveredBlock282Step = 294 ifTrue: [
            recoveredBlock282Local1 := recoveredBlock282Stack1.
            recoveredBlock282PC := 295.
        ].
        recoveredBlock282Step = 295 ifTrue: [
            recoveredBlock282Stack1 := recoveredBlock282Arg1.
            recoveredBlock282PC := 296.
        ].
        recoveredBlock282Step = 296 ifTrue: [
            recoveredBlock282Stack2 := recoveredLocal4.
            recoveredBlock282PC := 299.
        ].
        recoveredBlock282Step = 299 ifTrue: [
            recoveredBlock282Stack2 := (recoveredBlock282Stack2) size.
            recoveredBlock282PC := 301.
        ].
        recoveredBlock282Step = 301 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) = (recoveredBlock282Stack2).
            recoveredBlock282PC := 302.
        ].
        recoveredBlock282Step = 302 ifTrue: [
            (recoveredBlock282Stack1) ifTrue: [recoveredBlock282PC := 306] ifFalse: [recoveredBlock282PC := 318].
        ].
        recoveredBlock282Step = 306 ifTrue: [
            recoveredBlock282Stack1 := self.
            recoveredBlock282PC := 307.
        ].
        recoveredBlock282Step = 307 ifTrue: [
            recoveredBlock282Stack2 := recoveredBlock282Local1.
            recoveredBlock282PC := 308.
        ].
        recoveredBlock282Step = 308 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) getStringForActionKey: (recoveredBlock282Stack2).
            recoveredBlock282PC := 310.
        ].
        recoveredBlock282Step = 310 ifTrue: [
            recoveredBlock282Stack2 := recoveredBlock282Stack1.
            recoveredBlock282PC := 311.
        ].
        recoveredBlock282Step = 311 ifTrue: [
            recoveredLocal1 := recoveredBlock282Stack2.
            recoveredBlock282PC := 314.
        ].
        recoveredBlock282Step = 314 ifTrue: [
            recoveredBlock282PC := 331.
        ].
        recoveredBlock282Step = 318 ifTrue: [
            recoveredBlock282Stack1 := self.
            recoveredBlock282PC := 319.
        ].
        recoveredBlock282Step = 319 ifTrue: [
            recoveredBlock282Stack2 := recoveredBlock282Local1.
            recoveredBlock282PC := 320.
        ].
        recoveredBlock282Step = 320 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) getNLSForKey: (recoveredBlock282Stack2).
            recoveredBlock282PC := 322.
        ].
        recoveredBlock282Step = 322 ifTrue: [
            recoveredBlock282Stack2 := recoveredLocal1.
            recoveredBlock282PC := 325.
        ].
        recoveredBlock282Step = 325 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) bindWith: (recoveredBlock282Stack2).
            recoveredBlock282PC := 327.
        ].
        recoveredBlock282Step = 327 ifTrue: [
            recoveredBlock282Stack2 := recoveredBlock282Stack1.
            recoveredBlock282PC := 328.
        ].
        recoveredBlock282Step = 328 ifTrue: [
            recoveredLocal1 := recoveredBlock282Stack2.
            recoveredBlock282PC := 331.
        ].
        recoveredBlock282Step = 331 ifTrue: [
            recoveredBlock282Result := recoveredBlock282Stack1.
            recoveredBlock282Done := true.
        ].
    ].
    recoveredBlock282Result
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := '+'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 354].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNLSForKey: (recoveredStack2).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := XKF1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 427].
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := XKF35.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 404] ifFalse: [recoveredPC := 427].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNLSForKey: (recoveredStack2).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := SCFunctionKey.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack4 := XKF1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNLSForKey: (recoveredStack1).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := (recoveredStack1) getStringForFunctionKey: (recoveredStack2).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

