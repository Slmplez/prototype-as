"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001dc3c; bytecode file offset 0x92209c"
!CwMenuBar methodsFor: 'recovered'!
toolboxCallbackSelector
    ^'callToolboxFromMenu:'
! !

"ASDBase.ic method 0x20065ecc; bytecode file offset 0x963428"
!CwMenuBar methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := widget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067e1c; bytecode file offset 0x9646f8"
!CwMenuBar methodsFor: 'recovered'!
menus
    | recoveredValue0 |
    recoveredValue0 := menus.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069d80; bytecode file offset 0x966bdc"
!CwMenuBar methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20094848; bytecode file offset 0x991174"
!CwMenuBar methodsFor: 'recovered'!
addMenus: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addMenus: (recoveredValue0) after: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20119bfc; bytecode file offset 0xa16880"
!CwMenuBar methodsFor: 'recovered'!
removeTrailingSeparators
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menus.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7fecArg1 | 
    | block280c7fecValue0 block280c7fecValue1 |
    block280c7fecValue0 := block280c7fecArg1.
    block280c7fecValue1 := (block280c7fecValue0) removeTrailingSeparators.
    block280c7fecValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20458eb0; bytecode file offset 0xd557a4"
!CwMenuBar methodsFor: 'recovered'!
createToolboxSubmenuFor: recoveredArg1 menuCalls: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := CwMenu.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) submenu.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33Stack5 recoveredBlock33Stack6 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) item.
            recoveredBlock33PC := 45.
        ].
        recoveredBlock33Step = 45 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) notEmpty.
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            (recoveredBlock33Stack1) ifTrue: [recoveredBlock33PC := 50] ifFalse: [recoveredBlock33PC := 104].
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            recoveredBlock33Stack2 := self.
            recoveredBlock33PC := 54.
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) toolboxCallbackSelector.
            recoveredBlock33PC := 56.
        ].
        recoveredBlock33Step = 56 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Arg1.
            recoveredBlock33PC := 59.
        ].
        recoveredBlock33Step = 59 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) item.
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack4 := [
    | recoveredBlock33Block61Value0 recoveredBlock33Block61Value1 recoveredBlock33Block61Value2 recoveredBlock33Block61Value3 |
    recoveredBlock33Block61Value0 := recoveredBlock33Arg1.
    recoveredBlock33Block61Value1 := (recoveredBlock33Block61Value0) enable.
    recoveredBlock33Block61Value2 := recoveredArg1.
    recoveredBlock33Block61Value3 := (recoveredBlock33Block61Value1) value: (recoveredBlock33Block61Value2).
    recoveredBlock33Block61Value3
].
            recoveredBlock33PC := 79.
        ].
        recoveredBlock33Step = 79 ifTrue: [
            recoveredBlock33Stack5 := [
    | recoveredBlock33Block79Value0 recoveredBlock33Block79Value1 recoveredBlock33Block79Value2 recoveredBlock33Block79Value3 |
    recoveredBlock33Block79Value0 := recoveredBlock33Arg1.
    recoveredBlock33Block79Value1 := (recoveredBlock33Block79Value0) toggle.
    recoveredBlock33Block79Value2 := recoveredArg1.
    recoveredBlock33Block79Value3 := (recoveredBlock33Block79Value1) value: (recoveredBlock33Block79Value2).
    recoveredBlock33Block79Value3
].
            recoveredBlock33PC := 97.
        ].
        recoveredBlock33Step = 97 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) add: (recoveredBlock33Stack2) label: (recoveredBlock33Stack3) enable: (recoveredBlock33Stack4) toggle: (recoveredBlock33Stack5).
            recoveredBlock33PC := 100.
        ].
        recoveredBlock33Step = 100 ifTrue: [
            recoveredBlock33PC := 109.
        ].
        recoveredBlock33Step = 104 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 107.
        ].
        recoveredBlock33Step = 107 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) addLine.
            recoveredBlock33PC := 109.
        ].
        recoveredBlock33Step = 109 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c5760; bytecode file offset 0xdc2058"
!CwMenuBar methodsFor: 'recovered'!
addMenus: recoveredArg1 after: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) deferRecreate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) title.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := [].
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) menuAtTitle: (recoveredBlock27Stack1) ifAbsent: (recoveredBlock27Stack2).
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredLocal3 := recoveredBlock27Stack0.
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal3.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            (recoveredBlock27Stack0 ~~ nil) ifTrue: [recoveredBlock27PC := 66] ifFalse: [recoveredBlock27PC := 50].
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack0 := self.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal4.
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            (recoveredBlock27Stack0) addMenu: (recoveredBlock27Stack1) after: (recoveredBlock27Stack2).
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Arg1.
            recoveredBlock27PC := 58.
        ].
        recoveredBlock27Step = 58 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) title.
            recoveredBlock27PC := 59.
        ].
        recoveredBlock27Step = 59 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            recoveredLocal4 := recoveredBlock27Stack1.
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27PC := 143.
        ].
        recoveredBlock27Step = 66 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal3.
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) entries.
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack1 := [:block28106be8Arg1 | 
    | block28106be8Value0 block28106be8Value1 |
    block28106be8Value0 := block28106be8Arg1.
    block28106be8Value1 := (block28106be8Value0) label.
    block28106be8Value1
].
            recoveredBlock27PC := 73.
        ].
        recoveredBlock27Step = 73 ifTrue: [
            recoveredBlock27PC := 80.
        ].
        recoveredBlock27Step = 80 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) collect: (recoveredBlock27Stack1).
            recoveredBlock27PC := 82.
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 85.
        ].
        recoveredBlock27Step = 85 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Arg1.
            recoveredBlock27PC := 86.
        ].
        recoveredBlock27Step = 86 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) entries.
            recoveredBlock27PC := 88.
        ].
        recoveredBlock27Step = 88 ifTrue: [
            recoveredBlock27Stack1 := [:recoveredBlock27Block88Arg1 | 
    | recoveredBlock27Block88Value0 recoveredBlock27Block88Value1 recoveredBlock27Block88Value2 recoveredBlock27Block88Value3 recoveredBlock27Block88Value4 |
    recoveredBlock27Block88Value0 := recoveredLocal1.
    recoveredBlock27Block88Value1 := recoveredBlock27Block88Arg1.
    recoveredBlock27Block88Value2 := (recoveredBlock27Block88Value1) label.
    recoveredBlock27Block88Value3 := (recoveredBlock27Block88Value0) includes: (recoveredBlock27Block88Value2).
    recoveredBlock27Block88Value4 := (recoveredBlock27Block88Value3) not.
    recoveredBlock27Block88Value4
].
            recoveredBlock27PC := 104.
        ].
        recoveredBlock27Step = 104 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) select: (recoveredBlock27Stack1).
            recoveredBlock27PC := 106.
        ].
        recoveredBlock27Step = 106 ifTrue: [
            recoveredLocal2 := recoveredBlock27Stack0.
            recoveredBlock27PC := 109.
        ].
        recoveredBlock27Step = 109 ifTrue: [
            recoveredBlock27Stack0 := nil.
            recoveredBlock27PC := 110.
        ].
        recoveredBlock27Step = 110 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal2.
            recoveredBlock27PC := 113.
        ].
        recoveredBlock27Step = 113 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) isEmpty.
            recoveredBlock27PC := 115.
        ].
        recoveredBlock27Step = 115 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 143] ifFalse: [recoveredBlock27PC := 118].
        ].
        recoveredBlock27Step = 118 ifTrue: [
            recoveredBlock27PC := 119.
        ].
        recoveredBlock27Step = 119 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal3.
            recoveredBlock27PC := 122.
        ].
        recoveredBlock27Step = 122 ifTrue: [
            (recoveredBlock27Stack0) addLine.
            recoveredBlock27PC := 124.
        ].
        recoveredBlock27Step = 124 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal2.
            recoveredBlock27PC := 127.
        ].
        recoveredBlock27Step = 127 ifTrue: [
            recoveredBlock27Stack1 := [:recoveredBlock27Block127Arg1 | 
    | recoveredBlock27Block127Value0 recoveredBlock27Block127Value1 recoveredBlock27Block127Value2 |
    recoveredBlock27Block127Value0 := recoveredLocal3.
    recoveredBlock27Block127Value1 := recoveredBlock27Block127Arg1.
    recoveredBlock27Block127Value2 := (recoveredBlock27Block127Value0) addEntry: (recoveredBlock27Block127Value1).
    recoveredBlock27Block127Value2
].
            recoveredBlock27PC := 141.
        ].
        recoveredBlock27Step = 141 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) do: (recoveredBlock27Stack1).
            recoveredBlock27PC := 143.
        ].
        recoveredBlock27Step = 143 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack0.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) recreateNow.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d933c; bytecode file offset 0xdd5c44"
!CwMenuBar methodsFor: 'recovered'!
destroyMenu: recoveredArg1 entries: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuBarWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuBarWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuBarWidget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) destroyWidget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSubMenu.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuBarWidget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := XmNmapCallback.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) removeAllCallbacks: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := XmNhelpCallback.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) removeAllCallbacks: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := XmNsimpleCallback.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) removeAllCallbacks: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := XmNunmapCallback.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) removeAllCallbacks: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) destroyWidget.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := XmNhelpCallback.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) removeAllCallbacks: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := XmNsimpleCallback.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) removeAllCallbacks: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) destroyWidget.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) menus.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := [
    0
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) childAt: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := XmNcascadingCallback.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) removeAllCallbacks: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := XmNhelpCallback.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) removeAllCallbacks: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) clearWidgetsTotally.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) menus.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) removeAtIndex: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) childAt: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) destroyWidget.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a0dbc; bytecode file offset 0xe9d6c4"
!CwMenuBar methodsFor: 'recovered'!
removeEntries: recoveredArg1 fromMenu: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) entries.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) label.
    recoveredBlock37Value2 := recoveredLocal2.
    recoveredBlock37Value3 := (recoveredBlock37Value2) label.
    recoveredBlock37Value4 := (recoveredBlock37Value1) = (recoveredBlock37Value3).
    recoveredBlock37Value4
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) detect: (recoveredStack4) ifNone: (recoveredStack5).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) isSeparator.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCascadeButton.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := (recoveredStack4) subMenu.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) entries.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := (recoveredStack5) subMenu.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack3) removeEntries: (recoveredStack4) fromMenu: (recoveredStack5).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) menuBarWidget.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) menuBarWidget.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) isDestroyed.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) menuBarWidget.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack3) destroyWidget.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) entries.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := [].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack3) remove: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 20] ifFalse: [recoveredPC := 170]] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) entries.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) destroyMenu: (recoveredStack2) entries: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) entries.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuBarWidget.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 229] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuBarWidget.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) destroyWidget.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) entries.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) entries.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) removeAtIndex: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) entries.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) entries.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 269] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 269].
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) entries.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 287].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) destroyMenu: (recoveredStack2) entries: (recoveredStack3).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205df81c; bytecode file offset 0xedc164"
!CwMenuBar methodsFor: 'recovered'!
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
            recoveredBlock18Stack2 := [:block2811a28cArg1 | 
    | block2811a28cStack0 block2811a28cStack1 block2811a28cStack2 block2811a28cStack3 block2811a28cStack4 block2811a28cPC block2811a28cStep block2811a28cDone block2811a28cResult |
    block2811a28cStack0 := self.
    block2811a28cPC := 4.
    block2811a28cDone := false.
    [block2811a28cDone not] whileTrue: [
        block2811a28cStep := block2811a28cPC.
        block2811a28cStep = 4 ifTrue: [
            block2811a28cStack1 := block2811a28cArg1.
            block2811a28cPC := 5.
        ].
        block2811a28cStep = 5 ifTrue: [
            block2811a28cStack1 := (block2811a28cStack1) value.
            block2811a28cPC := 7.
        ].
        block2811a28cStep = 7 ifTrue: [
            block2811a28cStack2 := [:block2811a2b0Arg1 | 
    | block2811a2b0Stack0 block2811a2b0Stack1 block2811a2b0Stack2 block2811a2b0Stack3 block2811a2b0Stack4 block2811a2b0PC block2811a2b0Step block2811a2b0Done block2811a2b0Result |
    block2811a2b0Stack0 := self.
    block2811a2b0PC := 4.
    block2811a2b0Done := false.
    [block2811a2b0Done not] whileTrue: [
        block2811a2b0Step := block2811a2b0PC.
        block2811a2b0Step = 4 ifTrue: [
            block2811a2b0Stack1 := block2811a2b0Arg1.
            block2811a2b0PC := 5.
        ].
        block2811a2b0Step = 5 ifTrue: [
            block2811a2b0Stack1 := (block2811a2b0Stack1) isCollection.
            block2811a2b0PC := 7.
        ].
        block2811a2b0Step = 7 ifTrue: [
            (block2811a2b0Stack1) ifTrue: [block2811a2b0PC := 10] ifFalse: [block2811a2b0PC := 30].
        ].
        block2811a2b0Step = 10 ifTrue: [
            block2811a2b0Stack1 := block2811a2b0Arg1.
            block2811a2b0PC := 11.
        ].
        block2811a2b0Step = 11 ifTrue: [
            block2811a2b0Stack2 := [:block2811a2d4Arg1 | 
    | block2811a2d4Value0 block2811a2d4Value1 block2811a2d4Value2 |
    block2811a2d4Value0 := block2811a2d4Arg1.
    block2811a2d4Value1 := (block2811a2d4Value0) isDynamicMenu.
    block2811a2d4Value2 := (block2811a2d4Value1) not.
    block2811a2d4Value2
].
            block2811a2b0PC := 13.
        ].
        block2811a2b0Step = 13 ifTrue: [
            block2811a2b0PC := 21.
        ].
        block2811a2b0Step = 21 ifTrue: [
            block2811a2b0Stack3 := [].
            block2811a2b0PC := 23.
        ].
        block2811a2b0Step = 23 ifTrue: [
            block2811a2b0Stack1 := (block2811a2b0Stack1) detect: (block2811a2b0Stack2) ifNone: (block2811a2b0Stack3).
            block2811a2b0PC := 25.
        ].
        block2811a2b0Step = 25 ifTrue: [
            block2811a2b0Stack1 := (block2811a2b0Stack1) notNil.
            block2811a2b0PC := 26.
        ].
        block2811a2b0Step = 26 ifTrue: [
            block2811a2b0PC := 34.
        ].
        block2811a2b0Step = 30 ifTrue: [
            block2811a2b0Stack1 := block2811a2b0Arg1.
            block2811a2b0PC := 31.
        ].
        block2811a2b0Step = 31 ifTrue: [
            block2811a2b0Stack1 := (block2811a2b0Stack1) isDynamicMenu.
            block2811a2b0PC := 33.
        ].
        block2811a2b0Step = 33 ifTrue: [
            block2811a2b0Stack1 := (block2811a2b0Stack1) not.
            block2811a2b0PC := 34.
        ].
        block2811a2b0Step = 34 ifTrue: [
            block2811a2b0Result := block2811a2b0Stack1.
            block2811a2b0Done := true.
        ].
    ].
    block2811a2b0Result
].
            block2811a28cPC := 9.
        ].
        block2811a28cStep = 9 ifTrue: [
            block2811a28cPC := 43.
        ].
        block2811a28cStep = 43 ifTrue: [
            block2811a28cStack3 := [].
            block2811a28cPC := 45.
        ].
        block2811a28cStep = 45 ifTrue: [
            block2811a28cStack1 := (block2811a28cStack1) detect: (block2811a28cStack2) ifNone: (block2811a28cStack3).
            block2811a28cPC := 47.
        ].
        block2811a28cStep = 47 ifTrue: [
            block2811a28cStack1 := (block2811a28cStack1) notNil.
            block2811a28cPC := 48.
        ].
        block2811a28cStep = 48 ifTrue: [
            block2811a28cResult := block2811a28cStack1.
            block2811a28cDone := true.
        ].
    ].
    block2811a28cResult
].
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18PC := 77.
        ].
        recoveredBlock18Step = 77 ifTrue: [
            recoveredBlock18Stack3 := [].
            recoveredBlock18PC := 79.
        ].
        recoveredBlock18Step = 79 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) detect: (recoveredBlock18Stack2) ifNone: (recoveredBlock18Stack3).
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isNil.
            recoveredBlock18PC := 82.
        ].
        recoveredBlock18Step = 82 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 85.
        ].
        recoveredBlock18Step = 85 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            recoveredBlock18Local3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 89.
        ].
        recoveredBlock18Step = 89 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 90.
        ].
        recoveredBlock18Step = 90 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 91.
        ].
        recoveredBlock18Step = 91 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 94.
        ].
        recoveredBlock18Step = 94 ifTrue: [
            recoveredBlock18Stack4 := [
    | recoveredBlock18Block94Local1 recoveredBlock18Block94Stack0 recoveredBlock18Block94Stack1 recoveredBlock18Block94Stack2 recoveredBlock18Block94Stack3 recoveredBlock18Block94Stack4 recoveredBlock18Block94Stack5 recoveredBlock18Block94PC recoveredBlock18Block94Step recoveredBlock18Block94Done recoveredBlock18Block94Result |
    recoveredBlock18Block94Stack0 := self.
    recoveredBlock18Block94PC := 100.
    recoveredBlock18Block94Done := false.
    [recoveredBlock18Block94Done not] whileTrue: [
        recoveredBlock18Block94Step := recoveredBlock18Block94PC.
        recoveredBlock18Block94Step = 100 ifTrue: [
            recoveredBlock18Block94Stack1 := recoveredBlock18Local1.
            recoveredBlock18Block94PC := 103.
        ].
        recoveredBlock18Block94Step = 103 ifTrue: [
            (recoveredBlock18Block94Stack1) ifTrue: [recoveredBlock18Block94PC := 106] ifFalse: [recoveredBlock18Block94PC := 110].
        ].
        recoveredBlock18Block94Step = 106 ifTrue: [
            recoveredBlock18Block94Stack1 := nil.
            recoveredBlock18Block94PC := 107.
        ].
        recoveredBlock18Block94Step = 107 ifTrue: [
            recoveredBlock18Block94PC := 132.
        ].
        recoveredBlock18Block94Step = 110 ifTrue: [
            recoveredBlock18Block94Stack1 := self.
            recoveredBlock18Block94PC := 111.
        ].
        recoveredBlock18Block94Step = 111 ifTrue: [
            recoveredBlock18Block94Stack2 := CwMenu.
            recoveredBlock18Block94PC := 113.
        ].
        recoveredBlock18Block94Step = 113 ifTrue: [
            recoveredBlock18Block94Stack2 := (recoveredBlock18Block94Stack2) defaultMenuClass.
            recoveredBlock18Block94PC := 115.
        ].
        recoveredBlock18Block94Step = 115 ifTrue: [
            recoveredBlock18Block94Stack2 := (recoveredBlock18Block94Stack2) new.
            recoveredBlock18Block94PC := 117.
        ].
        recoveredBlock18Block94Step = 117 ifTrue: [
            recoveredBlock18Block94Stack3 := recoveredBlock18Block94Stack2.
            recoveredBlock18Block94PC := 118.
        ].
        recoveredBlock18Block94Step = 118 ifTrue: [
            recoveredBlock18Block94Stack4 := recoveredBlock18Arg1.
            recoveredBlock18Block94PC := 121.
        ].
        recoveredBlock18Block94Step = 121 ifTrue: [
            (recoveredBlock18Block94Stack3) title: (recoveredBlock18Block94Stack4).
            recoveredBlock18Block94PC := 123.
        ].
        recoveredBlock18Block94Step = 123 ifTrue: [
            recoveredBlock18Block94Stack3 := recoveredBlock18Block94Stack2.
            recoveredBlock18Block94PC := 124.
        ].
        recoveredBlock18Block94Step = 124 ifTrue: [
            recoveredBlock18Block94Local1 := recoveredBlock18Block94Stack3.
            recoveredBlock18Block94PC := 125.
        ].
        recoveredBlock18Block94Step = 125 ifTrue: [
            (recoveredBlock18Block94Stack1) addMenu: (recoveredBlock18Block94Stack2).
            recoveredBlock18Block94PC := 127.
        ].
        recoveredBlock18Block94Step = 127 ifTrue: [
            recoveredBlock18Block94Stack1 := true.
            recoveredBlock18Block94PC := 128.
        ].
        recoveredBlock18Block94Step = 128 ifTrue: [
            recoveredBlock18Local3 := recoveredBlock18Block94Stack1.
            recoveredBlock18Block94PC := 131.
        ].
        recoveredBlock18Block94Step = 131 ifTrue: [
            recoveredBlock18Block94Stack1 := recoveredBlock18Block94Local1.
            recoveredBlock18Block94PC := 132.
        ].
        recoveredBlock18Block94Step = 132 ifTrue: [
            recoveredBlock18Block94Result := recoveredBlock18Block94Stack1.
            recoveredBlock18Block94Done := true.
        ].
    ].
    recoveredBlock18Block94Result
].
            recoveredBlock18PC := 133.
        ].
        recoveredBlock18Step = 133 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) menuAtTitle: (recoveredBlock18Stack3) ifAbsent: (recoveredBlock18Stack4).
            recoveredBlock18PC := 135.
        ].
        recoveredBlock18Step = 135 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 136.
        ].
        recoveredBlock18Step = 136 ifTrue: [
            recoveredBlock18Local2 := recoveredBlock18Stack3.
            recoveredBlock18PC := 139.
        ].
        recoveredBlock18Step = 139 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 361] ifFalse: [recoveredBlock18PC := 142].
        ].
        recoveredBlock18Step = 142 ifTrue: [
            recoveredBlock18PC := 143.
        ].
        recoveredBlock18Step = 143 ifTrue: [
            recoveredBlock18Stack1 := OrderedCollection.
            recoveredBlock18PC := 145.
        ].
        recoveredBlock18Step = 145 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) new.
            recoveredBlock18PC := 147.
        ].
        recoveredBlock18Step = 147 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 150.
        ].
        recoveredBlock18Step = 150 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg2.
            recoveredBlock18PC := 153.
        ].
        recoveredBlock18Step = 153 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block153Arg1 | 
    | recoveredBlock18Block153Value0 recoveredBlock18Block153Value1 recoveredBlock18Block153Value2 |
    recoveredBlock18Block153Value0 := recoveredLocal1.
    recoveredBlock18Block153Value1 := recoveredBlock18Block153Arg1.
    recoveredBlock18Block153Value2 := (recoveredBlock18Block153Value0) add: (recoveredBlock18Block153Value1).
    recoveredBlock18Block153Value2
].
            recoveredBlock18PC := 167.
        ].
        recoveredBlock18Step = 167 ifTrue: [
            (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 169.
        ].
        recoveredBlock18Step = 169 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 172.
        ].
        recoveredBlock18Step = 172 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block172Arg1 | 
    | recoveredBlock18Block172Stack0 recoveredBlock18Block172Stack1 recoveredBlock18Block172Stack2 recoveredBlock18Block172Stack3 recoveredBlock18Block172PC recoveredBlock18Block172Step recoveredBlock18Block172Done recoveredBlock18Block172Result |
    recoveredBlock18Block172Stack0 := nil.
    recoveredBlock18Block172PC := 178.
    recoveredBlock18Block172Done := false.
    [recoveredBlock18Block172Done not] whileTrue: [
        recoveredBlock18Block172Step := recoveredBlock18Block172PC.
        recoveredBlock18Block172Step = 178 ifTrue: [
            recoveredBlock18Block172Stack1 := recoveredBlock18Local3.
            recoveredBlock18Block172PC := 181.
        ].
        recoveredBlock18Block172Step = 181 ifTrue: [
            (recoveredBlock18Block172Stack1) ifTrue: [recoveredBlock18Block172PC := 184] ifFalse: [recoveredBlock18Block172PC := 192].
        ].
        recoveredBlock18Block172Step = 184 ifTrue: [
            recoveredBlock18Block172Stack1 := false.
            recoveredBlock18Block172PC := 185.
        ].
        recoveredBlock18Block172Step = 185 ifTrue: [
            recoveredBlock18Local3 := recoveredBlock18Block172Stack1.
            recoveredBlock18Block172PC := 188.
        ].
        recoveredBlock18Block172Step = 188 ifTrue: [
            recoveredBlock18Block172PC := 192.
        ].
        recoveredBlock18Block172Step = 192 ifTrue: [
            recoveredBlock18Block172Stack1 := recoveredBlock18Block172Arg1.
            recoveredBlock18Block172PC := 193.
        ].
        recoveredBlock18Block172Step = 193 ifTrue: [
            recoveredBlock18Block172Stack1 := (recoveredBlock18Block172Stack1) value.
            recoveredBlock18Block172PC := 195.
        ].
        recoveredBlock18Block172Step = 195 ifTrue: [
            recoveredBlock18Block172Stack2 := [:recoveredBlock18Block172Block195Arg1 | 
    | recoveredBlock18Block172Block195Stack0 recoveredBlock18Block172Block195Stack1 recoveredBlock18Block172Block195Stack2 recoveredBlock18Block172Block195Stack3 recoveredBlock18Block172Block195Stack4 recoveredBlock18Block172Block195PC recoveredBlock18Block172Block195Step recoveredBlock18Block172Block195Done recoveredBlock18Block172Block195Result |
    recoveredBlock18Block172Block195Stack0 := nil.
    recoveredBlock18Block172Block195PC := 202.
    recoveredBlock18Block172Block195Done := false.
    [recoveredBlock18Block172Block195Done not] whileTrue: [
        recoveredBlock18Block172Block195Step := recoveredBlock18Block172Block195PC.
        recoveredBlock18Block172Block195Step = 202 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := recoveredBlock18Block172Block195Arg1.
            recoveredBlock18Block172Block195PC := 203.
        ].
        recoveredBlock18Block172Block195Step = 203 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := (recoveredBlock18Block172Block195Stack1) isCollection.
            recoveredBlock18Block172Block195PC := 205.
        ].
        recoveredBlock18Block172Block195Step = 205 ifTrue: [
            (recoveredBlock18Block172Block195Stack1) ifTrue: [recoveredBlock18Block172Block195PC := 208] ifFalse: [recoveredBlock18Block172Block195PC := 330].
        ].
        recoveredBlock18Block172Block195Step = 208 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := recoveredBlock18Block172Block195Arg1.
            recoveredBlock18Block172Block195PC := 209.
        ].
        recoveredBlock18Block172Block195Step = 209 ifTrue: [
            recoveredBlock18Block172Block195Stack2 := [:recoveredBlock18Block172Block195Block209Arg1 | 
    | recoveredBlock18Block172Block195Block209Local1 recoveredBlock18Block172Block195Block209Stack0 recoveredBlock18Block172Block195Block209Stack1 recoveredBlock18Block172Block195Block209Stack2 recoveredBlock18Block172Block195Block209Stack3 recoveredBlock18Block172Block195Block209Stack4 recoveredBlock18Block172Block195Block209PC recoveredBlock18Block172Block195Block209Step recoveredBlock18Block172Block195Block209Done recoveredBlock18Block172Block195Block209Result |
    recoveredBlock18Block172Block195Block209Stack0 := nil.
    recoveredBlock18Block172Block195Block209PC := 216.
    recoveredBlock18Block172Block195Block209Done := false.
    [recoveredBlock18Block172Block195Block209Done not] whileTrue: [
        recoveredBlock18Block172Block195Block209Step := recoveredBlock18Block172Block195Block209PC.
        recoveredBlock18Block172Block195Block209Step = 216 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := recoveredBlock18Local2.
            recoveredBlock18Block172Block195Block209PC := 219.
        ].
        recoveredBlock18Block172Block195Block209Step = 219 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := (recoveredBlock18Block172Block195Block209Stack1) entries.
            recoveredBlock18Block172Block195Block209PC := 221.
        ].
        recoveredBlock18Block172Block195Block209Step = 221 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack2 := [:recoveredBlock18Block172Block195Block209Block221Arg1 | 
    | recoveredBlock18Block172Block195Block209Block221Value0 recoveredBlock18Block172Block195Block209Block221Value1 recoveredBlock18Block172Block195Block209Block221Value2 recoveredBlock18Block172Block195Block209Block221Value3 recoveredBlock18Block172Block195Block209Block221Value4 recoveredBlock18Block172Block195Block209Block221Value5 recoveredBlock18Block172Block195Block209Block221Value6 recoveredBlock18Block172Block195Block209Block221Value7 |
    recoveredBlock18Block172Block195Block209Block221Value0 := recoveredBlock18Block172Block195Block209Block221Arg1.
    recoveredBlock18Block172Block195Block209Block221Value1 := (recoveredBlock18Block172Block195Block209Block221Value0) label.
    recoveredBlock18Block172Block195Block209Block221Value2 := recoveredBlock18Block172Block195Block209Arg1.
    recoveredBlock18Block172Block195Block209Block221Value3 := (recoveredBlock18Block172Block195Block209Block221Value2) submenu.
    recoveredBlock18Block172Block195Block209Block221Value4 := (recoveredBlock18Block172Block195Block209Block221Value1) = (recoveredBlock18Block172Block195Block209Block221Value3).
    recoveredBlock18Block172Block195Block209Block221Value5 := recoveredBlock18Block172Block195Block209Block221Arg1.
    recoveredBlock18Block172Block195Block209Block221Value6 := (recoveredBlock18Block172Block195Block209Block221Value5) isCascadeButton.
    recoveredBlock18Block172Block195Block209Block221Value7 := (recoveredBlock18Block172Block195Block209Block221Value4) & (recoveredBlock18Block172Block195Block209Block221Value6).
    recoveredBlock18Block172Block195Block209Block221Value7
].
            recoveredBlock18Block172Block195Block209PC := 243.
        ].
        recoveredBlock18Block172Block195Block209Step = 243 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack3 := [
    | recoveredBlock18Block172Block195Block209Block243Local1 recoveredBlock18Block172Block195Block209Block243Stack0 recoveredBlock18Block172Block195Block209Block243Stack1 recoveredBlock18Block172Block195Block209Block243Stack2 recoveredBlock18Block172Block195Block209Block243Stack3 recoveredBlock18Block172Block195Block209Block243Stack4 recoveredBlock18Block172Block195Block209Block243Stack5 recoveredBlock18Block172Block195Block209Block243Stack6 recoveredBlock18Block172Block195Block209Block243PC recoveredBlock18Block172Block195Block209Block243Step recoveredBlock18Block172Block195Block209Block243Done recoveredBlock18Block172Block195Block209Block243Result |
    recoveredBlock18Block172Block195Block209Block243Stack0 := nil.
    recoveredBlock18Block172Block195Block209Block243PC := 250.
    recoveredBlock18Block172Block195Block209Block243Done := false.
    [recoveredBlock18Block172Block195Block209Block243Done not] whileTrue: [
        recoveredBlock18Block172Block195Block209Block243Step := recoveredBlock18Block172Block195Block209Block243PC.
        recoveredBlock18Block172Block195Block209Block243Step = 250 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack1 := CwMenu.
            recoveredBlock18Block172Block195Block209Block243PC := 252.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 252 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack1 := (recoveredBlock18Block172Block195Block209Block243Stack1) defaultMenuClass.
            recoveredBlock18Block172Block195Block209Block243PC := 254.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 254 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack1 := (recoveredBlock18Block172Block195Block209Block243Stack1) new.
            recoveredBlock18Block172Block195Block209Block243PC := 256.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 256 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack2 := recoveredBlock18Block172Block195Block209Arg1.
            recoveredBlock18Block172Block195Block209Block243PC := 259.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 259 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack2 := (recoveredBlock18Block172Block195Block209Block243Stack2) submenu.
            recoveredBlock18Block172Block195Block209Block243PC := 261.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 261 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack1 := (recoveredBlock18Block172Block195Block209Block243Stack1) title: (recoveredBlock18Block172Block195Block209Block243Stack2).
            recoveredBlock18Block172Block195Block209Block243PC := 263.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 263 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Local1 := recoveredBlock18Block172Block195Block209Block243Stack1.
            recoveredBlock18Block172Block195Block209Block243PC := 264.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 264 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack1 := recoveredBlock18Local2.
            recoveredBlock18Block172Block195Block209Block243PC := 267.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 267 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack2 := recoveredBlock18Block172Block195Block209Block243Local1.
            recoveredBlock18Block172Block195Block209Block243PC := 268.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 268 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack3 := recoveredBlock18Block172Block195Block209Block243Local1.
            recoveredBlock18Block172Block195Block209Block243PC := 269.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 269 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack3 := (recoveredBlock18Block172Block195Block209Block243Stack3) title.
            recoveredBlock18Block172Block195Block209Block243PC := 271.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 271 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack4 := [
    true
].
            recoveredBlock18Block172Block195Block209Block243PC := 273.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 273 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243PC := 278.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 278 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack5 := recoveredBlock18Block172Block195Block209Block243Local1.
            recoveredBlock18Block172Block195Block209Block243PC := 279.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 279 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack5 := (recoveredBlock18Block172Block195Block209Block243Stack5) owner.
            recoveredBlock18Block172Block195Block209Block243PC := 281.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 281 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Stack1 := (recoveredBlock18Block172Block195Block209Block243Stack1) addSubMenuSpecial: (recoveredBlock18Block172Block195Block209Block243Stack2) label: (recoveredBlock18Block172Block195Block209Block243Stack3) enable: (recoveredBlock18Block172Block195Block209Block243Stack4) for: (recoveredBlock18Block172Block195Block209Block243Stack5).
            recoveredBlock18Block172Block195Block209Block243PC := 284.
        ].
        recoveredBlock18Block172Block195Block209Block243Step = 284 ifTrue: [
            recoveredBlock18Block172Block195Block209Block243Result := recoveredBlock18Block172Block195Block209Block243Stack1.
            recoveredBlock18Block172Block195Block209Block243Done := true.
        ].
    ].
    recoveredBlock18Block172Block195Block209Block243Result
].
            recoveredBlock18Block172Block195Block209PC := 285.
        ].
        recoveredBlock18Block172Block195Block209Step = 285 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := (recoveredBlock18Block172Block195Block209Stack1) detect: (recoveredBlock18Block172Block195Block209Stack2) ifNone: (recoveredBlock18Block172Block195Block209Stack3).
            recoveredBlock18Block172Block195Block209PC := 287.
        ].
        recoveredBlock18Block172Block195Block209Step = 287 ifTrue: [
            recoveredBlock18Block172Block195Block209Local1 := recoveredBlock18Block172Block195Block209Stack1.
            recoveredBlock18Block172Block195Block209PC := 290.
        ].
        recoveredBlock18Block172Block195Block209Step = 290 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := recoveredBlock18Block172Block195Block209Arg1.
            recoveredBlock18Block172Block195Block209PC := 293.
        ].
        recoveredBlock18Block172Block195Block209Step = 293 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := (recoveredBlock18Block172Block195Block209Stack1) item.
            recoveredBlock18Block172Block195Block209PC := 295.
        ].
        recoveredBlock18Block172Block195Block209Step = 295 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := (recoveredBlock18Block172Block195Block209Stack1) notEmpty.
            recoveredBlock18Block172Block195Block209PC := 297.
        ].
        recoveredBlock18Block172Block195Block209Step = 297 ifTrue: [
            (recoveredBlock18Block172Block195Block209Stack1) ifTrue: [recoveredBlock18Block172Block195Block209PC := 300] ifFalse: [recoveredBlock18Block172Block195Block209PC := 316].
        ].
        recoveredBlock18Block172Block195Block209Step = 300 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := recoveredBlock18Block172Block195Block209Arg1.
            recoveredBlock18Block172Block195Block209PC := 303.
        ].
        recoveredBlock18Block172Block195Block209Step = 303 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack2 := recoveredBlock18Block172Block195Block209Local1.
            recoveredBlock18Block172Block195Block209PC := 306.
        ].
        recoveredBlock18Block172Block195Block209Step = 306 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack2 := (recoveredBlock18Block172Block195Block209Stack2) subMenu.
            recoveredBlock18Block172Block195Block209PC := 308.
        ].
        recoveredBlock18Block172Block195Block209Step = 308 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack3 := recoveredArg1.
            recoveredBlock18Block172Block195Block209PC := 311.
        ].
        recoveredBlock18Block172Block195Block209Step = 311 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := (recoveredBlock18Block172Block195Block209Stack1) appendToMenu: (recoveredBlock18Block172Block195Block209Stack2) window: (recoveredBlock18Block172Block195Block209Stack3).
            recoveredBlock18Block172Block195Block209PC := 313.
        ].
        recoveredBlock18Block172Block195Block209Step = 313 ifTrue: [
            recoveredBlock18Block172Block195Block209PC := 323.
        ].
        recoveredBlock18Block172Block195Block209Step = 316 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := recoveredBlock18Block172Block195Block209Local1.
            recoveredBlock18Block172Block195Block209PC := 319.
        ].
        recoveredBlock18Block172Block195Block209Step = 319 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := (recoveredBlock18Block172Block195Block209Stack1) subMenu.
            recoveredBlock18Block172Block195Block209PC := 321.
        ].
        recoveredBlock18Block172Block195Block209Step = 321 ifTrue: [
            recoveredBlock18Block172Block195Block209Stack1 := (recoveredBlock18Block172Block195Block209Stack1) addLine.
            recoveredBlock18Block172Block195Block209PC := 323.
        ].
        recoveredBlock18Block172Block195Block209Step = 323 ifTrue: [
            recoveredBlock18Block172Block195Block209Result := recoveredBlock18Block172Block195Block209Stack1.
            recoveredBlock18Block172Block195Block209Done := true.
        ].
    ].
    recoveredBlock18Block172Block195Block209Result
].
            recoveredBlock18Block172Block195PC := 324.
        ].
        recoveredBlock18Block172Block195Step = 324 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := (recoveredBlock18Block172Block195Stack1) do: (recoveredBlock18Block172Block195Stack2).
            recoveredBlock18Block172Block195PC := 326.
        ].
        recoveredBlock18Block172Block195Step = 326 ifTrue: [
            recoveredBlock18Block172Block195PC := 355.
        ].
        recoveredBlock18Block172Block195Step = 330 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := recoveredBlock18Block172Block195Arg1.
            recoveredBlock18Block172Block195PC := 331.
        ].
        recoveredBlock18Block172Block195Step = 331 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := (recoveredBlock18Block172Block195Stack1) item.
            recoveredBlock18Block172Block195PC := 333.
        ].
        recoveredBlock18Block172Block195Step = 333 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := (recoveredBlock18Block172Block195Stack1) notEmpty.
            recoveredBlock18Block172Block195PC := 335.
        ].
        recoveredBlock18Block172Block195Step = 335 ifTrue: [
            (recoveredBlock18Block172Block195Stack1) ifTrue: [recoveredBlock18Block172Block195PC := 338] ifFalse: [recoveredBlock18Block172Block195PC := 350].
        ].
        recoveredBlock18Block172Block195Step = 338 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := recoveredBlock18Block172Block195Arg1.
            recoveredBlock18Block172Block195PC := 339.
        ].
        recoveredBlock18Block172Block195Step = 339 ifTrue: [
            recoveredBlock18Block172Block195Stack2 := recoveredBlock18Local2.
            recoveredBlock18Block172Block195PC := 342.
        ].
        recoveredBlock18Block172Block195Step = 342 ifTrue: [
            recoveredBlock18Block172Block195Stack3 := recoveredArg1.
            recoveredBlock18Block172Block195PC := 345.
        ].
        recoveredBlock18Block172Block195Step = 345 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := (recoveredBlock18Block172Block195Stack1) appendToMenu: (recoveredBlock18Block172Block195Stack2) window: (recoveredBlock18Block172Block195Stack3).
            recoveredBlock18Block172Block195PC := 347.
        ].
        recoveredBlock18Block172Block195Step = 347 ifTrue: [
            recoveredBlock18Block172Block195PC := 355.
        ].
        recoveredBlock18Block172Block195Step = 350 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := recoveredBlock18Local2.
            recoveredBlock18Block172Block195PC := 353.
        ].
        recoveredBlock18Block172Block195Step = 353 ifTrue: [
            recoveredBlock18Block172Block195Stack1 := (recoveredBlock18Block172Block195Stack1) addLine.
            recoveredBlock18Block172Block195PC := 355.
        ].
        recoveredBlock18Block172Block195Step = 355 ifTrue: [
            recoveredBlock18Block172Block195Result := recoveredBlock18Block172Block195Stack1.
            recoveredBlock18Block172Block195Done := true.
        ].
    ].
    recoveredBlock18Block172Block195Result
].
            recoveredBlock18Block172PC := 356.
        ].
        recoveredBlock18Block172Step = 356 ifTrue: [
            recoveredBlock18Block172Stack1 := (recoveredBlock18Block172Stack1) do: (recoveredBlock18Block172Stack2).
            recoveredBlock18Block172PC := 358.
        ].
        recoveredBlock18Block172Step = 358 ifTrue: [
            recoveredBlock18Block172Result := recoveredBlock18Block172Stack1.
            recoveredBlock18Block172Done := true.
        ].
    ].
    recoveredBlock18Block172Result
].
            recoveredBlock18PC := 359.
        ].
        recoveredBlock18Step = 359 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 361.
        ].
        recoveredBlock18Step = 361 ifTrue: [
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

