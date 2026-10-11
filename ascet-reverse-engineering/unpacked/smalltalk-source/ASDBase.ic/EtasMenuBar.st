"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ece8; bytecode file offset 0x93bf94"
!EtasMenuBar methodsFor: 'recovered'!
menuClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2044ac04; bytecode file offset 0xd474f4"
!EtasMenuBar methodsFor: 'recovered'!
createToolboxSubmenuFor: recoveredArg1 menuCalls: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) submenu.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30Stack6 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) item.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) notEmpty.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 46] ifFalse: [recoveredBlock30PC := 100].
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) toolboxCallbackSelector.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) item.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack4 := [
    | recoveredBlock30Block57Value0 recoveredBlock30Block57Value1 recoveredBlock30Block57Value2 recoveredBlock30Block57Value3 |
    recoveredBlock30Block57Value0 := recoveredBlock30Arg1.
    recoveredBlock30Block57Value1 := (recoveredBlock30Block57Value0) enable.
    recoveredBlock30Block57Value2 := recoveredArg1.
    recoveredBlock30Block57Value3 := (recoveredBlock30Block57Value1) value: (recoveredBlock30Block57Value2).
    recoveredBlock30Block57Value3
].
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack5 := [
    | recoveredBlock30Block75Value0 recoveredBlock30Block75Value1 recoveredBlock30Block75Value2 recoveredBlock30Block75Value3 |
    recoveredBlock30Block75Value0 := recoveredBlock30Arg1.
    recoveredBlock30Block75Value1 := (recoveredBlock30Block75Value0) toggle.
    recoveredBlock30Block75Value2 := recoveredArg1.
    recoveredBlock30Block75Value3 := (recoveredBlock30Block75Value1) value: (recoveredBlock30Block75Value2).
    recoveredBlock30Block75Value3
].
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) add: (recoveredBlock30Stack2) label: (recoveredBlock30Stack3) enable: (recoveredBlock30Stack4) toggle: (recoveredBlock30Stack5).
            recoveredBlock30PC := 96.
        ].
        recoveredBlock30Step = 96 ifTrue: [
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 103.
        ].
        recoveredBlock30Step = 103 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) addLine.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050ac84; bytecode file offset 0xe07578"
!EtasMenuBar methodsFor: 'recovered'!
createMenuBarFor: recoveredArg1 owner: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    mainWindow := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    owner := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := menus.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (recoveredValue2) new: (recoveredValue4).
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := Array.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) new: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := menus.
    recoveredValue11 := [:recoveredBlock38Arg1 :recoveredBlock38Arg2 | 
    | recoveredBlock38Local1 recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) title.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredLocal3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack2 := $~.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) indexOf: (recoveredBlock38Stack2).
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Local1 := recoveredBlock38Stack2.
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack2 := 0.
            recoveredBlock38PC := 60.
        ].
        recoveredBlock38Step = 60 ifTrue: [
            (recoveredBlock38Stack1 ~~ recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 84] ifFalse: [recoveredBlock38PC := 64].
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal2.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg2.
            recoveredBlock38PC := 68.
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38Stack3 := Space.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) put: (recoveredBlock38Stack3).
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal4.
            recoveredBlock38PC := 75.
        ].
        recoveredBlock38Step = 75 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg2.
            recoveredBlock38PC := 76.
        ].
        recoveredBlock38Step = 76 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal3.
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) put: (recoveredBlock38Stack3).
            recoveredBlock38PC := 81.
        ].
        recoveredBlock38Step = 81 ifTrue: [
            recoveredBlock38PC := 112.
        ].
        recoveredBlock38Step = 84 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal2.
            recoveredBlock38PC := 87.
        ].
        recoveredBlock38Step = 87 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg2.
            recoveredBlock38PC := 88.
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal3.
            recoveredBlock38PC := 91.
        ].
        recoveredBlock38Step = 91 ifTrue: [
            recoveredBlock38Stack4 := recoveredBlock38Local1.
            recoveredBlock38PC := 92.
        ].
        recoveredBlock38Step = 92 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) + (1).
            recoveredBlock38PC := 93.
        ].
        recoveredBlock38Step = 93 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) at: (recoveredBlock38Stack4).
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) put: (recoveredBlock38Stack3).
            recoveredBlock38PC := 97.
        ].
        recoveredBlock38Step = 97 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal4.
            recoveredBlock38PC := 100.
        ].
        recoveredBlock38Step = 100 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg2.
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal3.
            recoveredBlock38PC := 104.
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38Stack4 := $~.
            recoveredBlock38PC := 108.
        ].
        recoveredBlock38Step = 108 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) copyWithout: (recoveredBlock38Stack4).
            recoveredBlock38PC := 110.
        ].
        recoveredBlock38Step = 110 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) put: (recoveredBlock38Stack3).
            recoveredBlock38PC := 112.
        ].
        recoveredBlock38Step = 112 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue10) doWithIndex: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Value0 recoveredBlock120Value1 recoveredBlock120Value2 recoveredBlock120Value3 recoveredBlock120Value4 |
    recoveredBlock120Value0 := recoveredBlock120Arg1.
    recoveredBlock120Value1 := recoveredBlock120Value0.
    recoveredBlock120Value2 := recoveredLocal2.
    (recoveredBlock120Value1) buttonMnemonics: (recoveredBlock120Value2).
    recoveredBlock120Value3 := recoveredLocal4.
    recoveredBlock120Value4 := (recoveredBlock120Value0) buttons: (recoveredBlock120Value3).
    recoveredBlock120Value4
].
    recoveredValue14 := (recoveredValue12) createEtasSimpleMenuBar: ('menuBar') argBlock: (recoveredValue13).
    widget := recoveredValue14.
    recoveredValue15 := menus.
    recoveredValue16 := [:recoveredBlock145Arg1 :recoveredBlock145Arg2 | 
    | recoveredBlock145Stack0 recoveredBlock145Stack1 recoveredBlock145Stack2 recoveredBlock145Stack3 recoveredBlock145Stack4 recoveredBlock145Stack5 recoveredBlock145PC recoveredBlock145Step recoveredBlock145Done recoveredBlock145Result |
    recoveredBlock145Stack0 := self.
    recoveredBlock145PC := 152.
    recoveredBlock145Done := false.
    [recoveredBlock145Done not] whileTrue: [
        recoveredBlock145Step := recoveredBlock145PC.
        recoveredBlock145Step = 152 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Arg1.
            recoveredBlock145PC := 153.
        ].
        recoveredBlock145Step = 153 ifTrue: [
            recoveredBlock145Stack2 := widget.
            recoveredBlock145PC := 155.
        ].
        recoveredBlock145Step = 155 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Arg1.
            recoveredBlock145PC := 156.
        ].
        recoveredBlock145Step = 156 ifTrue: [
            recoveredBlock145Stack3 := (recoveredBlock145Stack3) owner.
            recoveredBlock145PC := 158.
        ].
        recoveredBlock145Step = 158 ifTrue: [
            (recoveredBlock145Stack3 ~~ nil) ifTrue: [recoveredBlock145PC := 168] ifFalse: [recoveredBlock145PC := 162].
        ].
        recoveredBlock145Step = 162 ifTrue: [
            recoveredBlock145Stack3 := recoveredArg2.
            recoveredBlock145PC := 165.
        ].
        recoveredBlock145Step = 165 ifTrue: [
            recoveredBlock145PC := 171.
        ].
        recoveredBlock145Step = 168 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Arg1.
            recoveredBlock145PC := 169.
        ].
        recoveredBlock145Step = 169 ifTrue: [
            recoveredBlock145Stack3 := (recoveredBlock145Stack3) owner.
            recoveredBlock145PC := 171.
        ].
        recoveredBlock145Step = 171 ifTrue: [
            recoveredBlock145Stack4 := recoveredBlock145Arg2.
            recoveredBlock145PC := 172.
        ].
        recoveredBlock145Step = 172 ifTrue: [
            recoveredBlock145Stack4 := (recoveredBlock145Stack4) + (-1).
            recoveredBlock145PC := 173.
        ].
        recoveredBlock145Step = 173 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) registerMenuBarPulldownFor: (recoveredBlock145Stack2) owner: (recoveredBlock145Stack3) postFromButton: (recoveredBlock145Stack4).
            recoveredBlock145PC := 176.
        ].
        recoveredBlock145Step = 176 ifTrue: [
            recoveredBlock145Result := recoveredBlock145Stack1.
            recoveredBlock145Done := true.
        ].
    ].
    recoveredBlock145Result
].
    (recoveredValue15) doWithIndex: (recoveredValue16).
    recoveredValue17 := widget.
    ^recoveredValue17
! !

"ASDBase.ic method 0x205e8c4c; bytecode file offset 0xee559c"
!EtasMenuBar methodsFor: 'recovered'!
addToolboxMenuItemsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBToolboxManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue0) menuCallsFrom: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Local1 recoveredBlock18Local2 recoveredBlock18Local3 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg2.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := [:block2811af34Arg1 | 
    | block2811af34Stack0 block2811af34Stack1 block2811af34Stack2 block2811af34Stack3 block2811af34PC block2811af34Step block2811af34Done block2811af34Result |
    block2811af34Stack0 := self.
    block2811af34PC := 4.
    block2811af34Done := false.
    [block2811af34Done not] whileTrue: [
        block2811af34Step := block2811af34PC.
        block2811af34Step = 4 ifTrue: [
            block2811af34Stack1 := block2811af34Arg1.
            block2811af34PC := 5.
        ].
        block2811af34Step = 5 ifTrue: [
            block2811af34Stack1 := (block2811af34Stack1) value.
            block2811af34PC := 7.
        ].
        block2811af34Step = 7 ifTrue: [
            block2811af34Stack2 := [:block2811af58Arg1 | 
    | block2811af58Stack0 block2811af58Stack1 block2811af58Stack2 block2811af58Stack3 block2811af58PC block2811af58Step block2811af58Done block2811af58Result |
    block2811af58Stack0 := self.
    block2811af58PC := 4.
    block2811af58Done := false.
    [block2811af58Done not] whileTrue: [
        block2811af58Step := block2811af58PC.
        block2811af58Step = 4 ifTrue: [
            block2811af58Stack1 := block2811af58Arg1.
            block2811af58PC := 5.
        ].
        block2811af58Step = 5 ifTrue: [
            block2811af58Stack1 := (block2811af58Stack1) isCollection.
            block2811af58PC := 7.
        ].
        block2811af58Step = 7 ifTrue: [
            (block2811af58Stack1) ifTrue: [block2811af58PC := 10] ifFalse: [block2811af58PC := 26].
        ].
        block2811af58Step = 10 ifTrue: [
            block2811af58Stack1 := block2811af58Arg1.
            block2811af58PC := 11.
        ].
        block2811af58Step = 11 ifTrue: [
            block2811af58Stack2 := [:block2811af7cArg1 | 
    | block2811af7cValue0 block2811af7cValue1 block2811af7cValue2 |
    block2811af7cValue0 := block2811af7cArg1.
    block2811af7cValue1 := (block2811af7cValue0) isDynamicMenu.
    block2811af7cValue2 := (block2811af7cValue1) not.
    block2811af7cValue2
].
            block2811af58PC := 13.
        ].
        block2811af58Step = 13 ifTrue: [
            block2811af58PC := 21.
        ].
        block2811af58Step = 21 ifTrue: [
            block2811af58Stack1 := (block2811af58Stack1) anySatisfy: (block2811af58Stack2).
            block2811af58PC := 23.
        ].
        block2811af58Step = 23 ifTrue: [
            block2811af58PC := 30.
        ].
        block2811af58Step = 26 ifTrue: [
            block2811af58Stack1 := block2811af58Arg1.
            block2811af58PC := 27.
        ].
        block2811af58Step = 27 ifTrue: [
            block2811af58Stack1 := (block2811af58Stack1) isDynamicMenu.
            block2811af58PC := 29.
        ].
        block2811af58Step = 29 ifTrue: [
            block2811af58Stack1 := (block2811af58Stack1) not.
            block2811af58PC := 30.
        ].
        block2811af58Step = 30 ifTrue: [
            block2811af58Result := block2811af58Stack1.
            block2811af58Done := true.
        ].
    ].
    block2811af58Result
].
            block2811af34PC := 9.
        ].
        block2811af34Step = 9 ifTrue: [
            block2811af34PC := 39.
        ].
        block2811af34Step = 39 ifTrue: [
            block2811af34Stack1 := (block2811af34Stack1) anySatisfy: (block2811af34Stack2).
            block2811af34PC := 41.
        ].
        block2811af34Step = 41 ifTrue: [
            block2811af34Stack1 := (block2811af34Stack1) not.
            block2811af34PC := 42.
        ].
        block2811af34Step = 42 ifTrue: [
            block2811af34Result := block2811af34Stack1.
            block2811af34Done := true.
        ].
    ].
    block2811af34Result
].
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) conform: (recoveredBlock18Stack2).
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 77.
        ].
        recoveredBlock18Step = 77 ifTrue: [
            recoveredBlock18Local3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 80.
        ].
        recoveredBlock18Step = 80 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 82.
        ].
        recoveredBlock18Step = 82 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 85.
        ].
        recoveredBlock18Step = 85 ifTrue: [
            recoveredBlock18Stack4 := [
    | recoveredBlock18Block85Local1 recoveredBlock18Block85Stack0 recoveredBlock18Block85Stack1 recoveredBlock18Block85Stack2 recoveredBlock18Block85Stack3 recoveredBlock18Block85Stack4 recoveredBlock18Block85Stack5 recoveredBlock18Block85PC recoveredBlock18Block85Step recoveredBlock18Block85Done recoveredBlock18Block85Result |
    recoveredBlock18Block85Stack0 := self.
    recoveredBlock18Block85PC := 92.
    recoveredBlock18Block85Done := false.
    [recoveredBlock18Block85Done not] whileTrue: [
        recoveredBlock18Block85Step := recoveredBlock18Block85PC.
        recoveredBlock18Block85Step = 92 ifTrue: [
            recoveredBlock18Block85Stack1 := recoveredBlock18Local1.
            recoveredBlock18Block85PC := 95.
        ].
        recoveredBlock18Block85Step = 95 ifTrue: [
            (recoveredBlock18Block85Stack1) ifTrue: [recoveredBlock18Block85PC := 98] ifFalse: [recoveredBlock18Block85PC := 102].
        ].
        recoveredBlock18Block85Step = 98 ifTrue: [
            recoveredBlock18Block85Stack1 := nil.
            recoveredBlock18Block85PC := 99.
        ].
        recoveredBlock18Block85Step = 99 ifTrue: [
            recoveredBlock18Block85PC := 123.
        ].
        recoveredBlock18Block85Step = 102 ifTrue: [
            recoveredBlock18Block85Stack1 := self.
            recoveredBlock18Block85PC := 103.
        ].
        recoveredBlock18Block85Step = 103 ifTrue: [
            recoveredBlock18Block85Stack2 := self.
            recoveredBlock18Block85PC := 104.
        ].
        recoveredBlock18Block85Step = 104 ifTrue: [
            recoveredBlock18Block85Stack2 := (recoveredBlock18Block85Stack2) menuClass.
            recoveredBlock18Block85PC := 106.
        ].
        recoveredBlock18Block85Step = 106 ifTrue: [
            recoveredBlock18Block85Stack2 := (recoveredBlock18Block85Stack2) new.
            recoveredBlock18Block85PC := 108.
        ].
        recoveredBlock18Block85Step = 108 ifTrue: [
            recoveredBlock18Block85Stack3 := recoveredBlock18Block85Stack2.
            recoveredBlock18Block85PC := 109.
        ].
        recoveredBlock18Block85Step = 109 ifTrue: [
            recoveredBlock18Block85Stack4 := recoveredBlock18Arg1.
            recoveredBlock18Block85PC := 112.
        ].
        recoveredBlock18Block85Step = 112 ifTrue: [
            (recoveredBlock18Block85Stack3) title: (recoveredBlock18Block85Stack4).
            recoveredBlock18Block85PC := 114.
        ].
        recoveredBlock18Block85Step = 114 ifTrue: [
            recoveredBlock18Block85Stack3 := recoveredBlock18Block85Stack2.
            recoveredBlock18Block85PC := 115.
        ].
        recoveredBlock18Block85Step = 115 ifTrue: [
            recoveredBlock18Block85Local1 := recoveredBlock18Block85Stack3.
            recoveredBlock18Block85PC := 116.
        ].
        recoveredBlock18Block85Step = 116 ifTrue: [
            (recoveredBlock18Block85Stack1) addMenu: (recoveredBlock18Block85Stack2).
            recoveredBlock18Block85PC := 118.
        ].
        recoveredBlock18Block85Step = 118 ifTrue: [
            recoveredBlock18Block85Stack1 := true.
            recoveredBlock18Block85PC := 119.
        ].
        recoveredBlock18Block85Step = 119 ifTrue: [
            recoveredBlock18Local3 := recoveredBlock18Block85Stack1.
            recoveredBlock18Block85PC := 122.
        ].
        recoveredBlock18Block85Step = 122 ifTrue: [
            recoveredBlock18Block85Stack1 := recoveredBlock18Block85Local1.
            recoveredBlock18Block85PC := 123.
        ].
        recoveredBlock18Block85Step = 123 ifTrue: [
            recoveredBlock18Block85Result := recoveredBlock18Block85Stack1.
            recoveredBlock18Block85Done := true.
        ].
    ].
    recoveredBlock18Block85Result
].
            recoveredBlock18PC := 124.
        ].
        recoveredBlock18Step = 124 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) menuAtTitle: (recoveredBlock18Stack3) ifAbsent: (recoveredBlock18Stack4).
            recoveredBlock18PC := 126.
        ].
        recoveredBlock18Step = 126 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 127.
        ].
        recoveredBlock18Step = 127 ifTrue: [
            recoveredBlock18Local2 := recoveredBlock18Stack3.
            recoveredBlock18PC := 130.
        ].
        recoveredBlock18Step = 130 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 381] ifFalse: [recoveredBlock18PC := 134].
        ].
        recoveredBlock18Step = 134 ifTrue: [
            recoveredBlock18PC := 135.
        ].
        recoveredBlock18Step = 135 ifTrue: [
            recoveredBlock18Stack1 := OrderedCollection.
            recoveredBlock18PC := 137.
        ].
        recoveredBlock18Step = 137 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) new.
            recoveredBlock18PC := 139.
        ].
        recoveredBlock18Step = 139 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 142.
        ].
        recoveredBlock18Step = 142 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg2.
            recoveredBlock18PC := 145.
        ].
        recoveredBlock18Step = 145 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block145Arg1 | 
    | recoveredBlock18Block145Value0 recoveredBlock18Block145Value1 recoveredBlock18Block145Value2 |
    recoveredBlock18Block145Value0 := recoveredLocal1.
    recoveredBlock18Block145Value1 := recoveredBlock18Block145Arg1.
    recoveredBlock18Block145Value2 := (recoveredBlock18Block145Value0) add: (recoveredBlock18Block145Value1).
    recoveredBlock18Block145Value2
].
            recoveredBlock18PC := 159.
        ].
        recoveredBlock18Step = 159 ifTrue: [
            (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 161.
        ].
        recoveredBlock18Step = 161 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 164.
        ].
        recoveredBlock18Step = 164 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block164Arg1 | 
    | recoveredBlock18Block164Stack0 recoveredBlock18Block164Stack1 recoveredBlock18Block164Stack2 recoveredBlock18Block164Stack3 recoveredBlock18Block164PC recoveredBlock18Block164Step recoveredBlock18Block164Done recoveredBlock18Block164Result |
    recoveredBlock18Block164Stack0 := self.
    recoveredBlock18Block164PC := 170.
    recoveredBlock18Block164Done := false.
    [recoveredBlock18Block164Done not] whileTrue: [
        recoveredBlock18Block164Step := recoveredBlock18Block164PC.
        recoveredBlock18Block164Step = 170 ifTrue: [
            recoveredBlock18Block164Stack1 := recoveredBlock18Local3.
            recoveredBlock18Block164PC := 173.
        ].
        recoveredBlock18Block164Step = 173 ifTrue: [
            (recoveredBlock18Block164Stack1) ifTrue: [recoveredBlock18Block164PC := 176] ifFalse: [recoveredBlock18Block164PC := 184].
        ].
        recoveredBlock18Block164Step = 176 ifTrue: [
            recoveredBlock18Block164Stack1 := false.
            recoveredBlock18Block164PC := 177.
        ].
        recoveredBlock18Block164Step = 177 ifTrue: [
            recoveredBlock18Local3 := recoveredBlock18Block164Stack1.
            recoveredBlock18Block164PC := 180.
        ].
        recoveredBlock18Block164Step = 180 ifTrue: [
            recoveredBlock18Block164PC := 184.
        ].
        recoveredBlock18Block164Step = 184 ifTrue: [
            recoveredBlock18Block164Stack1 := recoveredBlock18Block164Arg1.
            recoveredBlock18Block164PC := 185.
        ].
        recoveredBlock18Block164Step = 185 ifTrue: [
            recoveredBlock18Block164Stack1 := (recoveredBlock18Block164Stack1) value.
            recoveredBlock18Block164PC := 187.
        ].
        recoveredBlock18Block164Step = 187 ifTrue: [
            recoveredBlock18Block164Stack2 := [:recoveredBlock18Block164Block187Arg1 | 
    | recoveredBlock18Block164Block187Stack0 recoveredBlock18Block164Block187Stack1 recoveredBlock18Block164Block187Stack2 recoveredBlock18Block164Block187Stack3 recoveredBlock18Block164Block187Stack4 recoveredBlock18Block164Block187PC recoveredBlock18Block164Block187Step recoveredBlock18Block164Block187Done recoveredBlock18Block164Block187Result |
    recoveredBlock18Block164Block187Stack0 := self.
    recoveredBlock18Block164Block187PC := 194.
    recoveredBlock18Block164Block187Done := false.
    [recoveredBlock18Block164Block187Done not] whileTrue: [
        recoveredBlock18Block164Block187Step := recoveredBlock18Block164Block187PC.
        recoveredBlock18Block164Block187Step = 194 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := recoveredBlock18Block164Block187Arg1.
            recoveredBlock18Block164Block187PC := 195.
        ].
        recoveredBlock18Block164Block187Step = 195 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := (recoveredBlock18Block164Block187Stack1) isCollection.
            recoveredBlock18Block164Block187PC := 197.
        ].
        recoveredBlock18Block164Block187Step = 197 ifTrue: [
            (recoveredBlock18Block164Block187Stack1) ifTrue: [recoveredBlock18Block164Block187PC := 200] ifFalse: [recoveredBlock18Block164Block187PC := 350].
        ].
        recoveredBlock18Block164Block187Step = 200 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := recoveredBlock18Block164Block187Arg1.
            recoveredBlock18Block164Block187PC := 201.
        ].
        recoveredBlock18Block164Block187Step = 201 ifTrue: [
            recoveredBlock18Block164Block187Stack2 := [:recoveredBlock18Block164Block187Block201Arg1 | 
    | recoveredBlock18Block164Block187Block201Local1 recoveredBlock18Block164Block187Block201Local2 recoveredBlock18Block164Block187Block201Stack0 recoveredBlock18Block164Block187Block201Stack1 recoveredBlock18Block164Block187Block201Stack2 recoveredBlock18Block164Block187Block201Stack3 recoveredBlock18Block164Block187Block201Stack4 recoveredBlock18Block164Block187Block201PC recoveredBlock18Block164Block187Block201Step recoveredBlock18Block164Block187Block201Done recoveredBlock18Block164Block187Block201Result |
    recoveredBlock18Block164Block187Block201Stack0 := self.
    recoveredBlock18Block164Block187Block201PC := 208.
    recoveredBlock18Block164Block187Block201Done := false.
    [recoveredBlock18Block164Block187Block201Done not] whileTrue: [
        recoveredBlock18Block164Block187Block201Step := recoveredBlock18Block164Block187Block201PC.
        recoveredBlock18Block164Block187Block201Step = 208 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := recoveredBlock18Local2.
            recoveredBlock18Block164Block187Block201PC := 211.
        ].
        recoveredBlock18Block164Block187Block201Step = 211 ifTrue: [
            recoveredBlock18Block164Block187Block201Local1 := recoveredBlock18Block164Block187Block201Stack1.
            recoveredBlock18Block164Block187Block201PC := 214.
        ].
        recoveredBlock18Block164Block187Block201Step = 214 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := recoveredBlock18Block164Block187Block201Arg1.
            recoveredBlock18Block164Block187Block201PC := 217.
        ].
        recoveredBlock18Block164Block187Block201Step = 217 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := (recoveredBlock18Block164Block187Block201Stack1) submenu.
            recoveredBlock18Block164Block187Block201PC := 219.
        ].
        recoveredBlock18Block164Block187Block201Step = 219 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack2 := '\'.
            recoveredBlock18Block164Block187Block201PC := 221.
        ].
        recoveredBlock18Block164Block187Block201Step = 221 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := (recoveredBlock18Block164Block187Block201Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock18Block164Block187Block201Stack2).
            recoveredBlock18Block164Block187Block201PC := 223.
        ].
        recoveredBlock18Block164Block187Block201Step = 223 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack2 := [:recoveredBlock18Block164Block187Block201Block223Arg1 | 
    | recoveredBlock18Block164Block187Block201Block223Value0 recoveredBlock18Block164Block187Block201Block223Value1 recoveredBlock18Block164Block187Block201Block223Value2 recoveredBlock18Block164Block187Block201Block223Value3 recoveredBlock18Block164Block187Block201Block223Value4 recoveredBlock18Block164Block187Block201Block223Value5 recoveredBlock18Block164Block187Block201Block223Value6 recoveredBlock18Block164Block187Block201Block223Value7 |
    recoveredBlock18Block164Block187Block201Block223Value0 := recoveredBlock18Block164Block187Block201Local1.
    recoveredBlock18Block164Block187Block201Block223Value1 := (recoveredBlock18Block164Block187Block201Block223Value0) entries.
    recoveredBlock18Block164Block187Block201Block223Value2 := [:recoveredBlock18Block164Block187Block201Block223Block235Arg1 | 
    | recoveredBlock18Block164Block187Block201Block223Block235Value0 recoveredBlock18Block164Block187Block201Block223Block235Value1 recoveredBlock18Block164Block187Block201Block223Block235Value2 recoveredBlock18Block164Block187Block201Block223Block235Value3 recoveredBlock18Block164Block187Block201Block223Block235Value4 recoveredBlock18Block164Block187Block201Block223Block235Value5 recoveredBlock18Block164Block187Block201Block223Block235Value6 |
    recoveredBlock18Block164Block187Block201Block223Block235Value0 := recoveredBlock18Block164Block187Block201Block223Block235Arg1.
    recoveredBlock18Block164Block187Block201Block223Block235Value1 := (recoveredBlock18Block164Block187Block201Block223Block235Value0) label.
    recoveredBlock18Block164Block187Block201Block223Block235Value2 := recoveredBlock18Block164Block187Block201Block223Arg1.
    recoveredBlock18Block164Block187Block201Block223Block235Value3 := (recoveredBlock18Block164Block187Block201Block223Block235Value1) = (recoveredBlock18Block164Block187Block201Block223Block235Value2).
    recoveredBlock18Block164Block187Block201Block223Block235Value4 := recoveredBlock18Block164Block187Block201Block223Block235Arg1.
    recoveredBlock18Block164Block187Block201Block223Block235Value5 := (recoveredBlock18Block164Block187Block201Block223Block235Value4) isCascadeButton.
    recoveredBlock18Block164Block187Block201Block223Block235Value6 := (recoveredBlock18Block164Block187Block201Block223Block235Value3) & (recoveredBlock18Block164Block187Block201Block223Block235Value5).
    recoveredBlock18Block164Block187Block201Block223Block235Value6
].
    recoveredBlock18Block164Block187Block201Block223Value3 := [
    | recoveredBlock18Block164Block187Block201Block223Block255Local1 recoveredBlock18Block164Block187Block201Block223Block255Stack0 recoveredBlock18Block164Block187Block201Block223Block255Stack1 recoveredBlock18Block164Block187Block201Block223Block255Stack2 recoveredBlock18Block164Block187Block201Block223Block255Stack3 recoveredBlock18Block164Block187Block201Block223Block255Stack4 recoveredBlock18Block164Block187Block201Block223Block255Stack5 recoveredBlock18Block164Block187Block201Block223Block255PC recoveredBlock18Block164Block187Block201Block223Block255Step recoveredBlock18Block164Block187Block201Block223Block255Done recoveredBlock18Block164Block187Block201Block223Block255Result |
    recoveredBlock18Block164Block187Block201Block223Block255Stack0 := self.
    recoveredBlock18Block164Block187Block201Block223Block255PC := 262.
    recoveredBlock18Block164Block187Block201Block223Block255Done := false.
    [recoveredBlock18Block164Block187Block201Block223Block255Done not] whileTrue: [
        recoveredBlock18Block164Block187Block201Block223Block255Step := recoveredBlock18Block164Block187Block201Block223Block255PC.
        recoveredBlock18Block164Block187Block201Block223Block255Step = 262 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack0 := (recoveredBlock18Block164Block187Block201Block223Block255Stack0) menuClass.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 264.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 264 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack0 := (recoveredBlock18Block164Block187Block201Block223Block255Stack0) new.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 266.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 266 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack1 := recoveredBlock18Block164Block187Block201Arg1.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 269.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 269 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack1 := (recoveredBlock18Block164Block187Block201Block223Block255Stack1) submenu.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 271.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 271 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack0 := (recoveredBlock18Block164Block187Block201Block223Block255Stack0) title: (recoveredBlock18Block164Block187Block201Block223Block255Stack1).
            recoveredBlock18Block164Block187Block201Block223Block255PC := 273.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 273 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Local1 := recoveredBlock18Block164Block187Block201Block223Block255Stack0.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 274.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 274 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack0 := recoveredBlock18Local2.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 277.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 277 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack1 := recoveredBlock18Block164Block187Block201Block223Block255Local1.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 278.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 278 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack2 := recoveredBlock18Block164Block187Block201Block223Block255Local1.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 279.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 279 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack2 := (recoveredBlock18Block164Block187Block201Block223Block255Stack2) title.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 281.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 281 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack3 := [
    true
].
            recoveredBlock18Block164Block187Block201Block223Block255PC := 283.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 283 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255PC := 288.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 288 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack4 := recoveredBlock18Block164Block187Block201Block223Block255Local1.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 289.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 289 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack4 := (recoveredBlock18Block164Block187Block201Block223Block255Stack4) owner.
            recoveredBlock18Block164Block187Block201Block223Block255PC := 291.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 291 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Stack0 := (recoveredBlock18Block164Block187Block201Block223Block255Stack0) addSubMenuSpecial: (recoveredBlock18Block164Block187Block201Block223Block255Stack1) label: (recoveredBlock18Block164Block187Block201Block223Block255Stack2) enable: (recoveredBlock18Block164Block187Block201Block223Block255Stack3) for: (recoveredBlock18Block164Block187Block201Block223Block255Stack4).
            recoveredBlock18Block164Block187Block201Block223Block255PC := 294.
        ].
        recoveredBlock18Block164Block187Block201Block223Block255Step = 294 ifTrue: [
            recoveredBlock18Block164Block187Block201Block223Block255Result := recoveredBlock18Block164Block187Block201Block223Block255Stack0.
            recoveredBlock18Block164Block187Block201Block223Block255Done := true.
        ].
    ].
    recoveredBlock18Block164Block187Block201Block223Block255Result
].
    recoveredBlock18Block164Block187Block201Block223Value4 := (recoveredBlock18Block164Block187Block201Block223Value1) detect: (recoveredBlock18Block164Block187Block201Block223Value2) ifNone: (recoveredBlock18Block164Block187Block201Block223Value3).
    recoveredBlock18Block164Block187Block201Local2 := recoveredBlock18Block164Block187Block201Block223Value4.
    recoveredBlock18Block164Block187Block201Block223Value5 := recoveredBlock18Block164Block187Block201Local2.
    recoveredBlock18Block164Block187Block201Block223Value6 := (recoveredBlock18Block164Block187Block201Block223Value5) subMenu.
    recoveredBlock18Block164Block187Block201Block223Value7 := recoveredBlock18Block164Block187Block201Block223Value6.
    recoveredBlock18Block164Block187Block201Local1 := recoveredBlock18Block164Block187Block201Block223Value7.
    recoveredBlock18Block164Block187Block201Block223Value6
].
            recoveredBlock18Block164Block187Block201PC := 310.
        ].
        recoveredBlock18Block164Block187Block201Step = 310 ifTrue: [
            (recoveredBlock18Block164Block187Block201Stack1) do: (recoveredBlock18Block164Block187Block201Stack2).
            recoveredBlock18Block164Block187Block201PC := 312.
        ].
        recoveredBlock18Block164Block187Block201Step = 312 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := recoveredBlock18Block164Block187Block201Arg1.
            recoveredBlock18Block164Block187Block201PC := 315.
        ].
        recoveredBlock18Block164Block187Block201Step = 315 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := (recoveredBlock18Block164Block187Block201Stack1) item.
            recoveredBlock18Block164Block187Block201PC := 317.
        ].
        recoveredBlock18Block164Block187Block201Step = 317 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := (recoveredBlock18Block164Block187Block201Stack1) notEmpty.
            recoveredBlock18Block164Block187Block201PC := 319.
        ].
        recoveredBlock18Block164Block187Block201Step = 319 ifTrue: [
            (recoveredBlock18Block164Block187Block201Stack1) ifTrue: [recoveredBlock18Block164Block187Block201PC := 322] ifFalse: [recoveredBlock18Block164Block187Block201PC := 338].
        ].
        recoveredBlock18Block164Block187Block201Step = 322 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := recoveredBlock18Block164Block187Block201Arg1.
            recoveredBlock18Block164Block187Block201PC := 325.
        ].
        recoveredBlock18Block164Block187Block201Step = 325 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack2 := recoveredBlock18Block164Block187Block201Local2.
            recoveredBlock18Block164Block187Block201PC := 328.
        ].
        recoveredBlock18Block164Block187Block201Step = 328 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack2 := (recoveredBlock18Block164Block187Block201Stack2) subMenu.
            recoveredBlock18Block164Block187Block201PC := 330.
        ].
        recoveredBlock18Block164Block187Block201Step = 330 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack3 := recoveredArg1.
            recoveredBlock18Block164Block187Block201PC := 333.
        ].
        recoveredBlock18Block164Block187Block201Step = 333 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := (recoveredBlock18Block164Block187Block201Stack1) appendToMenu: (recoveredBlock18Block164Block187Block201Stack2) window: (recoveredBlock18Block164Block187Block201Stack3).
            recoveredBlock18Block164Block187Block201PC := 335.
        ].
        recoveredBlock18Block164Block187Block201Step = 335 ifTrue: [
            recoveredBlock18Block164Block187Block201PC := 343.
        ].
        recoveredBlock18Block164Block187Block201Step = 338 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := recoveredBlock18Block164Block187Block201Local2.
            recoveredBlock18Block164Block187Block201PC := 341.
        ].
        recoveredBlock18Block164Block187Block201Step = 341 ifTrue: [
            recoveredBlock18Block164Block187Block201Stack1 := (recoveredBlock18Block164Block187Block201Stack1) addLine.
            recoveredBlock18Block164Block187Block201PC := 343.
        ].
        recoveredBlock18Block164Block187Block201Step = 343 ifTrue: [
            recoveredBlock18Block164Block187Block201Result := recoveredBlock18Block164Block187Block201Stack1.
            recoveredBlock18Block164Block187Block201Done := true.
        ].
    ].
    recoveredBlock18Block164Block187Block201Result
].
            recoveredBlock18Block164Block187PC := 344.
        ].
        recoveredBlock18Block164Block187Step = 344 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := (recoveredBlock18Block164Block187Stack1) do: (recoveredBlock18Block164Block187Stack2).
            recoveredBlock18Block164Block187PC := 346.
        ].
        recoveredBlock18Block164Block187Step = 346 ifTrue: [
            recoveredBlock18Block164Block187PC := 375.
        ].
        recoveredBlock18Block164Block187Step = 350 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := recoveredBlock18Block164Block187Arg1.
            recoveredBlock18Block164Block187PC := 351.
        ].
        recoveredBlock18Block164Block187Step = 351 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := (recoveredBlock18Block164Block187Stack1) item.
            recoveredBlock18Block164Block187PC := 353.
        ].
        recoveredBlock18Block164Block187Step = 353 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := (recoveredBlock18Block164Block187Stack1) notEmpty.
            recoveredBlock18Block164Block187PC := 355.
        ].
        recoveredBlock18Block164Block187Step = 355 ifTrue: [
            (recoveredBlock18Block164Block187Stack1) ifTrue: [recoveredBlock18Block164Block187PC := 358] ifFalse: [recoveredBlock18Block164Block187PC := 370].
        ].
        recoveredBlock18Block164Block187Step = 358 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := recoveredBlock18Block164Block187Arg1.
            recoveredBlock18Block164Block187PC := 359.
        ].
        recoveredBlock18Block164Block187Step = 359 ifTrue: [
            recoveredBlock18Block164Block187Stack2 := recoveredBlock18Local2.
            recoveredBlock18Block164Block187PC := 362.
        ].
        recoveredBlock18Block164Block187Step = 362 ifTrue: [
            recoveredBlock18Block164Block187Stack3 := recoveredArg1.
            recoveredBlock18Block164Block187PC := 365.
        ].
        recoveredBlock18Block164Block187Step = 365 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := (recoveredBlock18Block164Block187Stack1) appendToMenu: (recoveredBlock18Block164Block187Stack2) window: (recoveredBlock18Block164Block187Stack3).
            recoveredBlock18Block164Block187PC := 367.
        ].
        recoveredBlock18Block164Block187Step = 367 ifTrue: [
            recoveredBlock18Block164Block187PC := 375.
        ].
        recoveredBlock18Block164Block187Step = 370 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := recoveredBlock18Local2.
            recoveredBlock18Block164Block187PC := 373.
        ].
        recoveredBlock18Block164Block187Step = 373 ifTrue: [
            recoveredBlock18Block164Block187Stack1 := (recoveredBlock18Block164Block187Stack1) addLine.
            recoveredBlock18Block164Block187PC := 375.
        ].
        recoveredBlock18Block164Block187Step = 375 ifTrue: [
            recoveredBlock18Block164Block187Result := recoveredBlock18Block164Block187Stack1.
            recoveredBlock18Block164Block187Done := true.
        ].
    ].
    recoveredBlock18Block164Block187Result
].
            recoveredBlock18Block164PC := 376.
        ].
        recoveredBlock18Block164Step = 376 ifTrue: [
            recoveredBlock18Block164Stack1 := (recoveredBlock18Block164Stack1) do: (recoveredBlock18Block164Stack2).
            recoveredBlock18Block164PC := 378.
        ].
        recoveredBlock18Block164Step = 378 ifTrue: [
            recoveredBlock18Block164Result := recoveredBlock18Block164Stack1.
            recoveredBlock18Block164Done := true.
        ].
    ].
    recoveredBlock18Block164Result
].
            recoveredBlock18PC := 379.
        ].
        recoveredBlock18Step = 379 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 381.
        ].
        recoveredBlock18Step = 381 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := RBToolboxManager.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) addToolboxMenuBar: (self) caller: (recoveredValue8).
    ^self
! !

