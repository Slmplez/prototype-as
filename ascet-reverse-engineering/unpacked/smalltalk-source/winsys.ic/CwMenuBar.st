"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001790; bytecode file offset 0x7d950"
!CwMenuBar methodsFor: 'recovered'!
deferRecreate
    deferRecreate := true.
    ^self
! !

"winsys.ic method 0x200061f0; bytecode file offset 0x823b4"
!CwMenuBar methodsFor: 'recovered'!
recreateNow
    deferRecreate := false.
    (self) recreate.
    ^self
! !

"winsys.ic method 0x20006b60; bytecode file offset 0x82d28"
!CwMenuBar methodsFor: 'recovered'!
removeLast
    | recoveredValue0 |
    recoveredValue0 := menus.
    (recoveredValue0) removeLast.
    (self) recreate.
    ^self
! !

"winsys.ic method 0x20008d0c; bytecode file offset 0x84ed4"
!CwMenuBar methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    menus := recoveredValue1.
    deferRecreate := false.
    ^self
! !

"winsys.ic method 0x20010e54; bytecode file offset 0x8d01c"
!CwMenuBar methodsFor: 'recovered'!
menuAtTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := menus.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) title.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (recoveredValue0) detect: (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x2001184c; bytecode file offset 0x8da18"
!CwMenuBar methodsFor: 'recovered'!
addMenu: recoveredArg1
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
            (recoveredStack1) removeSeparatorsAtEnd.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := menus.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) recreate.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20015e8c; bytecode file offset 0x92058"
!CwMenuBar methodsFor: 'recovered'!
removeMenu: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := menus.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^self
].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) clearWidgetsTotally.
    (self) recreate.
    ^self
! !

"winsys.ic method 0x20019e44; bytecode file offset 0x96010"
!CwMenuBar methodsFor: 'recovered'!
menuAtTitle: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := menus.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) title.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg2.
    recoveredBlock19Value1 := (recoveredBlock19Value0) value.
    recoveredBlock19Value1
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x2001cabc; bytecode file offset 0x98cac"
!CwMenuBar methodsFor: 'recovered'!
addMenu: recoveredArg1 before: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuAtTitle: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := menus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) before: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := menus.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) recreate.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001cad8; bytecode file offset 0x98cac"
!CwMenuBar methodsFor: 'recovered'!
addMenu: recoveredArg1 after: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuAtTitle: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := menus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) after: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := menus.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) recreate.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20024708; bytecode file offset 0xa08ec"
!CwMenuBar methodsFor: 'recovered'!
recreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := deferRecreate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := menus.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block28009160Arg1 | 
    | block28009160Value0 block28009160Value1 |
    block28009160Value0 := block28009160Arg1.
    block28009160Value1 := (block28009160Value0) clearWidgets.
    block28009160Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := mainWindow.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := owner.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) createMenuBarFor: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := mainWindow.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := widget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) menuBar: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) destroyWidget.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := mainWindow.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := mainWindow.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) helpTextHandling.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200396dc; bytecode file offset 0xb58dc"
!CwMenuBar methodsFor: 'recovered'!
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
    recoveredValue14 := (recoveredValue12) createSimpleMenuBar: ('menuBar') argBlock: (recoveredValue13).
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

