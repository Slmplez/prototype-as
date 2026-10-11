"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20008024; bytecode file offset 0x15b928"
!OSToolItem methodsFor: 'recovered'!
recreate
    (self) redraw.
    ^self
! !

"psupp.ic method 0x2000989c; bytecode file offset 0x15d148"
!OSToolItem methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"psupp.ic method 0x200098c8; bytecode file offset 0x15d1ac"
!OSToolItem methodsFor: 'recovered'!
image
    | recoveredValue0 |
    recoveredValue0 := image.
    ^recoveredValue0
! !

"psupp.ic method 0x20009954; bytecode file offset 0x15d208"
!OSToolItem methodsFor: 'recovered'!
tip
    | recoveredValue0 |
    recoveredValue0 := tip.
    ^recoveredValue0
! !

"psupp.ic method 0x200099a8; bytecode file offset 0x15d24c"
!OSToolItem methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := widget.
    ^recoveredValue0
! !

"psupp.ic method 0x2001e24c; bytecode file offset 0x171af8"
!OSToolItem methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001ed58; bytecode file offset 0x172634"
!OSToolItem methodsFor: 'recovered'!
isSeparator
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := style.
    recoveredValue1 := TbstyleSep.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := TbstyleSep.
    recoveredValue4 := (recoveredValue2) == (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2001ee68; bytecode file offset 0x172704"
!OSToolItem methodsFor: 'recovered'!
isEnabled
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := fsState.
    recoveredValue1 := TbstateEnabled.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := TbstateEnabled.
    recoveredValue4 := (recoveredValue2) == (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20029040; bytecode file offset 0x17c8dc"
!OSToolItem methodsFor: 'recovered'!
tip: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tip.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorItemIsInvalid.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            tip := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20029304; bytecode file offset 0x17cba0"
!OSToolItem methodsFor: 'recovered'!
widget: recoveredArg1
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
            widget := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) redraw.
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

"psupp.ic method 0x2002ae68; bytecode file offset 0x17e708"
!OSToolItem methodsFor: 'recovered'!
isVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := fsState.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := TbstateHidden.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002b660; bytecode file offset 0x17eef8"
!OSToolItem methodsFor: 'recovered'!
destroyBitmap
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bitmap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := bitmap.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) deleteObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            bitmap := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002cc6c; bytecode file offset 0x180510"
!OSToolItem methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    id := 0.
    tip := ''.
    recoveredValue0 := TbstateEnabled.
    fsState := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2002d004; bytecode file offset 0x1808b8"
!OSToolItem methodsFor: 'recovered'!
selected
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) handle.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := TbIsbuttonpressed.
    recoveredValue4 := id.
    recoveredValue5 := (recoveredValue2) sendMessage: (recoveredValue3) wParam: (recoveredValue4) lParam: (0).
    recoveredValue6 := (recoveredValue5) ~~ (0).
    ^recoveredValue6
! !

"psupp.ic method 0x2002d018; bytecode file offset 0x1808b8"
!OSToolItem methodsFor: 'recovered'!
checked
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) handle.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := TbIsbuttonchecked.
    recoveredValue4 := id.
    recoveredValue5 := (recoveredValue2) sendMessage: (recoveredValue3) wParam: (recoveredValue4) lParam: (0).
    recoveredValue6 := (recoveredValue5) ~~ (0).
    ^recoveredValue6
! !

"psupp.ic method 0x2002d24c; bytecode file offset 0x180af4"
!OSToolItem methodsFor: 'recovered'!
releaseWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSxDestroy.
    (self) sendEvent: (recoveredValue0).
    recoveredValue1 := (self) menuShell.
    recoveredValue2 := id.
    (recoveredValue1) removeId: (recoveredValue2).
    (self) destroyBitmap.
    id := 0.
    ^self
! !

"psupp.ic method 0x2002fdd0; bytecode file offset 0x183678"
!OSToolItem methodsFor: 'recovered'!
enable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := fsState.
    recoveredValue1 := TbstateEnabled.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    fsState := recoveredValue2.
    recoveredValue3 := parent.
    recoveredValue4 := (recoveredValue3) handle.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := TbSetstate.
    recoveredValue7 := id.
    recoveredValue8 := fsState.
    (recoveredValue5) sendMessage: (recoveredValue6) wParam: (recoveredValue7) lParam: (recoveredValue8).
    ^self
! !

"psupp.ic method 0x20031710; bytecode file offset 0x184fc0"
!OSToolItem methodsFor: 'recovered'!
disable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := fsState.
    recoveredValue1 := TbstateEnabled.
    recoveredValue2 := (recoveredValue1) bitXor: (4294967295).
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    fsState := recoveredValue3.
    recoveredValue4 := parent.
    recoveredValue5 := (recoveredValue4) handle.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := TbSetstate.
    recoveredValue8 := id.
    recoveredValue9 := fsState.
    (recoveredValue6) sendMessage: (recoveredValue7) wParam: (recoveredValue8) lParam: (recoveredValue9).
    ^self
! !

"psupp.ic method 0x20031830; bytecode file offset 0x1850d0"
!OSToolItem methodsFor: 'recovered'!
updateState
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) handle.
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
            recoveredStack2 := TbGetstate.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := id.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sendMessage: (recoveredStack2) wParam: (recoveredStack3) lParam: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            fsState := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x200330d0; bytecode file offset 0x18697c"
!OSToolItem methodsFor: 'recovered'!
widgetRect
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) handle.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := TbCommandtoindex.
    recoveredValue4 := id.
    recoveredValue5 := (recoveredValue2) sendMessage: (recoveredValue3) wParam: (recoveredValue4) lParam: (0).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := TbGetitemrect.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := OSRect.
    recoveredValue10 := (recoveredValue9) new.
    recoveredValue11 := recoveredValue10.
    recoveredLocal1 := recoveredValue11.
    (recoveredValue6) sendMessage: (recoveredValue7) wParam: (recoveredValue8) lParam: (recoveredValue10).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"psupp.ic method 0x20033328; bytecode file offset 0x186be0"
!OSToolItem methodsFor: 'recovered'!
wmCommandChild: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block28021024Arg1 | 
    | block28021024Value0 block28021024Value1 |
    block28021024Value0 := block28021024Arg1.
    block28021024Value1 := (block28021024Value0) updateState.
    block28021024Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
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
            recoveredStack1 := OSxSelect.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := OSInput.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) postEvent: (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x200333ec; bytecode file offset 0x186ca0"
!OSToolItem methodsFor: 'recovered'!
hide
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := fsState.
    recoveredValue1 := TbstateHidden.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    fsState := recoveredValue2.
    recoveredValue3 := parent.
    recoveredValue4 := (recoveredValue3) handle.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := TbSetstate.
    recoveredValue7 := id.
    recoveredValue8 := fsState.
    (recoveredValue5) sendMessage: (recoveredValue6) wParam: (recoveredValue7) lParam: (recoveredValue8).
    recoveredValue9 := parent.
    (recoveredValue9) resizeItems.
    recoveredValue10 := OSxHide.
    (self) postEvent: (recoveredValue10).
    ^self
! !

"psupp.ic method 0x20034774; bytecode file offset 0x188030"
!OSToolItem methodsFor: 'recovered'!
show
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := fsState.
    recoveredValue1 := TbstateHidden.
    recoveredValue2 := (recoveredValue1) bitXor: (4294967295).
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    fsState := recoveredValue3.
    recoveredValue4 := parent.
    recoveredValue5 := (recoveredValue4) handle.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := TbSetstate.
    recoveredValue8 := id.
    recoveredValue9 := fsState.
    (recoveredValue6) sendMessage: (recoveredValue7) wParam: (recoveredValue8) lParam: (recoveredValue9).
    recoveredValue10 := parent.
    (recoveredValue10) resizeItems.
    recoveredValue11 := OSxShow.
    (self) sendEvent: (recoveredValue11).
    ^self
! !

"psupp.ic method 0x200364d8; bytecode file offset 0x189db4"
!OSToolItem methodsFor: 'recovered'!
checked: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := fsState.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := TbstateChecked.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            fsState := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := fsState.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := TbstateChecked.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 4294967295.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitXor: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            fsState := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) handle.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := TbSetstate.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := id.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := fsState.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) sendMessage: (recoveredStack2) wParam: (recoveredStack3) lParam: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20036500; bytecode file offset 0x189db4"
!OSToolItem methodsFor: 'recovered'!
selected: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := fsState.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := TbstatePressed.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            fsState := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := fsState.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := TbstatePressed.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 4294967295.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitXor: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            fsState := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) handle.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := TbSetstate.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := id.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := fsState.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) sendMessage: (recoveredStack2) wParam: (recoveredStack3) lParam: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003a7ec; bytecode file offset 0x18e0a4"
!OSToolItem methodsFor: 'recovered'!
resize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRect.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) top.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) top.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := widget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) width.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := widget.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003cdf4; bytecode file offset 0x1906b4"
!OSToolItem methodsFor: 'recovered'!
setBasicStyle: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            style := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OSxPUSH.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := OSxPUSH.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := TbstyleButton.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) setStyleBits: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := OSxCHECK.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := OSxCHECK.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := TbstyleCheck.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) setStyleBits: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := OSxRADIO.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := OSxRADIO.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := TbstyleCheckgroup.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) setStyleBits: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := OSxSEPARATOR.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := OSxSEPARATOR.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := TbstyleSep.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) setStyleBits: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003e33c; bytecode file offset 0x191bf0"
!OSToolItem methodsFor: 'recovered'!
redraw
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := drawCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 recoveredBlock16Value10 recoveredBlock16Value11 recoveredBlock16Value12 recoveredBlock16Value13 recoveredBlock16Value14 |
    recoveredBlock16Value0 := parent.
    recoveredBlock16Value1 := (recoveredBlock16Value0) handle.
    recoveredLocal2 := recoveredBlock16Value1.
    recoveredBlock16Value2 := recoveredLocal2.
    recoveredBlock16Value3 := TbCommandtoindex.
    recoveredBlock16Value4 := id.
    recoveredBlock16Value5 := (recoveredBlock16Value2) sendMessage: (recoveredBlock16Value3) wParam: (recoveredBlock16Value4) lParam: (0).
    recoveredLocal1 := recoveredBlock16Value5.
    recoveredBlock16Value6 := recoveredLocal2.
    recoveredBlock16Value7 := TbDeletebutton.
    recoveredBlock16Value8 := recoveredLocal1.
    (recoveredBlock16Value6) sendMessage: (recoveredBlock16Value7) wParam: (recoveredBlock16Value8) lParam: (0).
    recoveredBlock16Value9 := recoveredLocal2.
    recoveredBlock16Value10 := TbInsertbutton.
    recoveredBlock16Value11 := recoveredLocal1.
    recoveredBlock16Value12 := (self) item.
    (recoveredBlock16Value9) sendMessage: (recoveredBlock16Value10) wParam: (recoveredBlock16Value11) lParam: (recoveredBlock16Value12).
    recoveredBlock16Value13 := parent.
    recoveredBlock16Value14 := (recoveredBlock16Value13) resizeItems.
    recoveredBlock16Value14
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) deferRedraw: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20041480; bytecode file offset 0x194d50"
!OSToolItem methodsFor: 'recovered'!
image: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            image := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := bitmap.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) destroyBitmap.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) redraw.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := OSHicon.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) createBitmap.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := bitmap.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) setBitmapSize: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) redraw.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := TbAddbitmap.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := OSTbaddbitmap.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) nID: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) sendMessage: (recoveredStack1) wParam: (recoveredStack2) lParam: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := TbChangebitmap.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := id.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) sendMessage: (recoveredStack1) wParam: (recoveredStack2) lParam: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) resizeItems.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20048750; bytecode file offset 0x19c044"
!OSToolItem methodsFor: 'recovered'!
item
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) handle.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OSTbbutton.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := id.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) idCommand: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := fsState.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) fsState: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := style.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) fsStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) iString: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) iBitmap: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) iBitmap: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := width.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) iBitmap: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := label.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := TbAddstring.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := label.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := String.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) new: (recoveredStack5).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) sendMessage: (recoveredStack1) wParam: (recoveredStack2) lParam: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) iString: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := OSHicon.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := bitmap.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 135] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) createBitmap.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := bitmap.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := image.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) setBitmapSize: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := TbAddbitmap.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := OSTbaddbitmap.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) nID: (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) sendMessage: (recoveredStack1) wParam: (recoveredStack2) lParam: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) iBitmap: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2004dc8c; bytecode file offset 0x1a1594"
!OSToolItem methodsFor: 'recovered'!
createBitmap
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack1 := image.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OSIconinfo.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal10 := recoveredStack3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) getIconInfo: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) hbmColor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) hbmMask.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := OSBitmap.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := OSBitmap.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal8 := recoveredStack4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) getObject: (recoveredStack2) lpvObject: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) hbmColor.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) deleteObject.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) hbmMask.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) deleteObject.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) bmWidth.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) bmHeight.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := OSHbitmap.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := (recoveredStack4) bmPlanes.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack5 := (recoveredStack5) bmBitsPixel.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBitmap: (recoveredStack2) nHeight: (recoveredStack3) cbPlanes: (recoveredStack4) cbBits: (recoveredStack5) lpvBits: (recoveredStack6).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148Stack4 recoveredBlock148Stack5 recoveredBlock148Stack6 recoveredBlock148Stack7 recoveredBlock148Stack8 recoveredBlock148Stack9 recoveredBlock148Stack10 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Arg1.
            recoveredBlock148PC := 155.
        ].
        recoveredBlock148Step = 155 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) createCompatibleDC.
            recoveredBlock148PC := 157.
        ].
        recoveredBlock148Step = 157 ifTrue: [
            recoveredLocal5 := recoveredBlock148Stack1.
            recoveredBlock148PC := 160.
        ].
        recoveredBlock148Step = 160 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal5.
            recoveredBlock148PC := 163.
        ].
        recoveredBlock148Step = 163 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal9.
            recoveredBlock148PC := 166.
        ].
        recoveredBlock148Step = 166 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) selectObject: (recoveredBlock148Stack2).
            recoveredBlock148PC := 168.
        ].
        recoveredBlock148Step = 168 ifTrue: [
            recoveredLocal4 := recoveredBlock148Stack1.
            recoveredBlock148PC := 171.
        ].
        recoveredBlock148Step = 171 ifTrue: [
            recoveredBlock148Stack1 := bgBrush.
            recoveredBlock148PC := 173.
        ].
        recoveredBlock148Step = 173 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 174.
        ].
        recoveredBlock148Step = 174 ifTrue: [
            recoveredLocal2 := recoveredBlock148Stack2.
            recoveredBlock148PC := 177.
        ].
        recoveredBlock148Step = 177 ifTrue: [
            (recoveredBlock148Stack1 ~~ nil) ifTrue: [recoveredBlock148PC := 212] ifFalse: [recoveredBlock148PC := 180].
        ].
        recoveredBlock148Step = 180 ifTrue: [
            recoveredBlock148Stack1 := parent.
            recoveredBlock148PC := 182.
        ].
        recoveredBlock148Step = 182 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) background.
            recoveredBlock148PC := 184.
        ].
        recoveredBlock148Step = 184 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 185.
        ].
        recoveredBlock148Step = 185 ifTrue: [
            recoveredLocal1 := recoveredBlock148Stack2.
            recoveredBlock148PC := 188.
        ].
        recoveredBlock148Step = 188 ifTrue: [
            recoveredBlock148Stack2 := WindowColor.
            recoveredBlock148PC := 190.
        ].
        recoveredBlock148Step = 190 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) = (recoveredBlock148Stack2).
            recoveredBlock148PC := 191.
        ].
        recoveredBlock148Step = 191 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 194] ifFalse: [recoveredBlock148PC := 202].
        ].
        recoveredBlock148Step = 194 ifTrue: [
            recoveredBlock148Stack1 := WindowBrush.
            recoveredBlock148PC := 196.
        ].
        recoveredBlock148Step = 196 ifTrue: [
            recoveredLocal2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 199.
        ].
        recoveredBlock148Step = 199 ifTrue: [
            recoveredBlock148PC := 212.
        ].
        recoveredBlock148Step = 202 ifTrue: [
            recoveredBlock148Stack1 := OSHbrush.
            recoveredBlock148PC := 204.
        ].
        recoveredBlock148Step = 204 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal1.
            recoveredBlock148PC := 207.
        ].
        recoveredBlock148Step = 207 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) createSolidBrush: (recoveredBlock148Stack2).
            recoveredBlock148PC := 209.
        ].
        recoveredBlock148Step = 209 ifTrue: [
            recoveredLocal2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 212.
        ].
        recoveredBlock148Step = 212 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal5.
            recoveredBlock148PC := 215.
        ].
        recoveredBlock148Step = 215 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal2.
            recoveredBlock148PC := 218.
        ].
        recoveredBlock148Step = 218 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) selectObject: (recoveredBlock148Stack2).
            recoveredBlock148PC := 220.
        ].
        recoveredBlock148Step = 220 ifTrue: [
            recoveredLocal3 := recoveredBlock148Stack1.
            recoveredBlock148PC := 223.
        ].
        recoveredBlock148Step = 223 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal5.
            recoveredBlock148PC := 226.
        ].
        recoveredBlock148Step = 226 ifTrue: [
            recoveredBlock148Stack2 := 0.
            recoveredBlock148PC := 228.
        ].
        recoveredBlock148Step = 228 ifTrue: [
            recoveredBlock148Stack3 := 0.
            recoveredBlock148PC := 230.
        ].
        recoveredBlock148Step = 230 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal7.
            recoveredBlock148PC := 233.
        ].
        recoveredBlock148Step = 233 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal6.
            recoveredBlock148PC := 236.
        ].
        recoveredBlock148Step = 236 ifTrue: [
            recoveredBlock148Stack6 := Patcopy.
            recoveredBlock148PC := 238.
        ].
        recoveredBlock148Step = 238 ifTrue: [
            (recoveredBlock148Stack1) patBlt: (recoveredBlock148Stack2) nTopRect: (recoveredBlock148Stack3) nwidth: (recoveredBlock148Stack4) nheight: (recoveredBlock148Stack5) fdwRop: (recoveredBlock148Stack6).
            recoveredBlock148PC := 241.
        ].
        recoveredBlock148Step = 241 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal5.
            recoveredBlock148PC := 244.
        ].
        recoveredBlock148Step = 244 ifTrue: [
            recoveredBlock148Stack2 := 0.
            recoveredBlock148PC := 246.
        ].
        recoveredBlock148Step = 246 ifTrue: [
            recoveredBlock148Stack3 := 0.
            recoveredBlock148PC := 248.
        ].
        recoveredBlock148Step = 248 ifTrue: [
            recoveredBlock148Stack4 := image.
            recoveredBlock148PC := 250.
        ].
        recoveredBlock148Step = 250 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal7.
            recoveredBlock148PC := 253.
        ].
        recoveredBlock148Step = 253 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal6.
            recoveredBlock148PC := 256.
        ].
        recoveredBlock148Step = 256 ifTrue: [
            recoveredBlock148Stack7 := 0.
            recoveredBlock148PC := 258.
        ].
        recoveredBlock148Step = 258 ifTrue: [
            recoveredBlock148Stack8 := nil.
            recoveredBlock148PC := 259.
        ].
        recoveredBlock148Step = 259 ifTrue: [
            recoveredBlock148Stack9 := DiNormal.
            recoveredBlock148PC := 261.
        ].
        recoveredBlock148Step = 261 ifTrue: [
            (recoveredBlock148Stack1) drawIconEx: (recoveredBlock148Stack2) yTop: (recoveredBlock148Stack3) hIcon: (recoveredBlock148Stack4) cxWidth: (recoveredBlock148Stack5) cyWidth: (recoveredBlock148Stack6) istepIfAniCur: (recoveredBlock148Stack7) hbrFlickerFreeDraw: (recoveredBlock148Stack8) diFlags: (recoveredBlock148Stack9).
            recoveredBlock148PC := 264.
        ].
        recoveredBlock148Step = 264 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal5.
            recoveredBlock148PC := 267.
        ].
        recoveredBlock148Step = 267 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal3.
            recoveredBlock148PC := 270.
        ].
        recoveredBlock148Step = 270 ifTrue: [
            (recoveredBlock148Stack1) selectObject: (recoveredBlock148Stack2).
            recoveredBlock148PC := 272.
        ].
        recoveredBlock148Step = 272 ifTrue: [
            recoveredBlock148Stack1 := bgBrush.
            recoveredBlock148PC := 274.
        ].
        recoveredBlock148Step = 274 ifTrue: [
            (recoveredBlock148Stack1 ~~ nil) ifTrue: [recoveredBlock148PC := 291] ifFalse: [recoveredBlock148PC := 278].
        ].
        recoveredBlock148Step = 278 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal2.
            recoveredBlock148PC := 281.
        ].
        recoveredBlock148Step = 281 ifTrue: [
            recoveredBlock148Stack2 := WindowBrush.
            recoveredBlock148PC := 283.
        ].
        recoveredBlock148Step = 283 ifTrue: [
            (recoveredBlock148Stack1 == recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 291] ifFalse: [recoveredBlock148PC := 286].
        ].
        recoveredBlock148Step = 286 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal2.
            recoveredBlock148PC := 289.
        ].
        recoveredBlock148Step = 289 ifTrue: [
            (recoveredBlock148Stack1) deleteObject.
            recoveredBlock148PC := 291.
        ].
        recoveredBlock148Step = 291 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal5.
            recoveredBlock148PC := 294.
        ].
        recoveredBlock148Step = 294 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 295.
        ].
        recoveredBlock148Step = 295 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal4.
            recoveredBlock148PC := 298.
        ].
        recoveredBlock148Step = 298 ifTrue: [
            (recoveredBlock148Stack2) selectObject: (recoveredBlock148Stack3).
            recoveredBlock148PC := 300.
        ].
        recoveredBlock148Step = 300 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) deleteDC.
            recoveredBlock148PC := 302.
        ].
        recoveredBlock148Step = 302 ifTrue: [
            recoveredBlock148Result := recoveredBlock148Stack1.
            recoveredBlock148Done := true.
        ].
    ].
    recoveredBlock148Result
].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) dcDo: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            bitmap := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

