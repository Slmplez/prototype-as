"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003df98; bytecode file offset 0x93bf94"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
getHelpForActionKeysDict
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004644c; bytecode file offset 0x9451f8"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
tableList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tableList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fda8; bytecode file offset 0x96c6ac"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
hotkeyDict
    | recoveredValue0 |
    recoveredValue0 := hotkeyDict.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fe4c; bytecode file offset 0x96c850"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
parentName
    | recoveredValue0 |
    recoveredValue0 := parentName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200701d0; bytecode file offset 0x96cb7c"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007626c; bytecode file offset 0x9757c8"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
isHotkeyAssignmentView
    ^true
! !

"ASDBase.ic method 0x2007aab4; bytecode file offset 0x97c330"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
closeForDBActions
    ^false
! !

"ASDBase.ic method 0x200aece4; bytecode file offset 0x9ab6a8"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
hotkey: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200b5384; bytecode file offset 0x9b1ce4"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) tableList.
    (recoveredValue0) setInputFocus.
    (self) adjustColumnWidth.
    ^self
! !

"ASDBase.ic method 0x200c61d0; bytecode file offset 0x9c2bec"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
hotkeyDict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hotkeyDict := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c64dc; bytecode file offset 0x9c2dd0"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
parentName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6670; bytecode file offset 0x9c3164"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa45c; bytecode file offset 0x9f6d20"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    hotkeyDict := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201140e4; bytecode file offset 0xa109a4"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
resizeSupervision: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super resizeSupervision: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    (self) adjustColumnWidth.
    ^self
! !

"ASDBase.ic method 0x2019ccbc; bytecode file offset 0xa99588"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
action: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hotkeyDict.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6d34; bytecode file offset 0xae3604"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
updateDictionary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) hotkeyDict: (recoveredValue0).
    recoveredValue1 := (self) tableList.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := (self) tableList.
    recoveredBlock9Value1 := (self) hotkeyDict.
    recoveredBlock9Value2 := (recoveredBlock9Value1) keys.
    recoveredBlock9Value3 := (recoveredBlock9Value2) asSortedCollection.
    recoveredBlock9Value4 := (recoveredBlock9Value0) items: (recoveredBlock9Value3).
    recoveredBlock9Value4
].
    (recoveredValue1) deferRedraw: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202592c4; bytecode file offset 0xb55ba4"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
installPopupMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := MTOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'menuCopyToClipboard'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := MPHotkeyListToClipboard.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) for: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202829a0; bytecode file offset 0xb7f290"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := SCHotkeyAssignmentFor.
    recoveredValue2 := (self) parentName.
    recoveredValue3 := (recoveredValue1) bindWith: (recoveredValue2).
    (recoveredValue0) title: (recoveredValue3).
    (self) iconSmall: ('ASCET16') large: ('ASCET32').
    (self) updateFonts.
    recoveredValue4 := (self) tableList.
    (recoveredValue4) itemHeight: (nil).
    (self) updateContents.
    (self) adjustColumnWidth.
    (self) installActionKeys.
    (self) installPopupMenu.
    ^self
! !

"ASDBase.ic method 0x2029b198; bytecode file offset 0xb97a88"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    super installActionKeys.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := Character.
    recoveredValue4 := (recoveredValue3) value: (27).
    recoveredValue5 := DirectedMessageWithText.
    recoveredValue6 := MPCloseWindow.
    recoveredValue7 := (recoveredValue5) selector: ('close') arguments: (#()) receiver: (self) text: (recoveredValue6).
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) tableList.
    recoveredValue10 := (recoveredValue9) focusProxy.
    (self) setActionDict: (recoveredValue8) forWidget: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2039d014; bytecode file offset 0xc9991c"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
menuCopyToClipboard
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) tableList.
    recoveredValue7 := (recoveredValue6) items.
    recoveredValue8 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) asString.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            (recoveredBlock21Stack2) nextPutAll: (recoveredBlock21Stack3).
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            (recoveredBlock21Stack2) tab.
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack3 := self.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) hotkeyDict.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Arg1.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack5 := [
    ''
].
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) at: (recoveredBlock21Stack4) ifAbsent: (recoveredBlock21Stack5).
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            (recoveredBlock21Stack2) nextPutAll: (recoveredBlock21Stack3).
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) cr.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := OSClipboard.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) reset.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) contents.
    (recoveredValue9) setString: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x203ec330; bytecode file offset 0xce8c20"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := SCHotkey.
    recoveredValue3 := (self) createColumn: (recoveredValue2) selector: ('hotkey:clientData:callData:') clientData: (nil) width: (80) editable: (false).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := SCHotkeyAction.
    recoveredValue7 := (self) createColumn: (recoveredValue6) selector: ('action:clientData:callData:') clientData: (nil) width: (100) editable: (false).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := (self) tableList.
    recoveredValue11 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 recoveredBlock62Value4 recoveredBlock62Value5 recoveredBlock62Value6 |
    recoveredBlock62Value0 := (self) tableList.
    recoveredBlock62Value1 := recoveredBlock62Value0.
    recoveredBlock62Value2 := (self) hotkeyDict.
    recoveredBlock62Value3 := (recoveredBlock62Value2) keys.
    recoveredBlock62Value4 := (recoveredBlock62Value3) asSortedCollection.
    (recoveredBlock62Value1) items: (recoveredBlock62Value4).
    recoveredBlock62Value5 := recoveredLocal2.
    recoveredBlock62Value6 := (recoveredBlock62Value0) columns: (recoveredBlock62Value5).
    recoveredBlock62Value6
].
    (recoveredValue10) deferRedraw: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x205744f4; bytecode file offset 0xe70e04"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
adjustColumnWidth
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) heading.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 66] ifFalse: [recoveredLocal4 := nil. recoveredPC := 109]] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) heading.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) hotkeyDict.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) nextLine.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 158] ifFalse: [recoveredLocal4 := nil. recoveredPC := 234]] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057fc54; bytecode file offset 0xe7c5b8"
!EtasHotkeyAssignmentView methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28112f60Arg1 | 
    | block28112f60Value0 block28112f60Value1 block28112f60Value2 block28112f60Value3 |
    block28112f60Value0 := block28112f60Arg1.
    block28112f60Value1 := block28112f60Value0.
    (block28112f60Value1) title: ('Window').
    block28112f60Value2 := block28112f60Value0.
    (block28112f60Value2) height: (300).
    block28112f60Value3 := (block28112f60Value0) width: (450).
    block28112f60Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'tableList'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:block28112f84Arg1 | 
    | block28112f84Value0 block28112f84Value1 block28112f84Value2 block28112f84Value3 |
    block28112f84Value0 := block28112f84Arg1.
    block28112f84Value1 := block28112f84Value0.
    (block28112f84Value1) applicationDrawnBackground: (true).
    block28112f84Value2 := XmETCHCELLS.
    block28112f84Value3 := (block28112f84Value0) headingVisualStyle: (block28112f84Value2).
    block28112f84Value3
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 'aScrolledTableList1'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 'tableList'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Value0 recoveredBlock158Value1 recoveredBlock158Value2 |
    recoveredBlock158Value0 := recoveredBlock158Arg1.
    recoveredBlock158Value1 := recoveredLocal3.
    recoveredBlock158Value2 := (recoveredBlock158Value0) workWindow: (recoveredBlock158Value1).
    recoveredBlock158Value2
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := [:block28112fa8Arg1 | 
    | block28112fa8Value0 block28112fa8Value1 block28112fa8Value2 block28112fa8Value3 block28112fa8Value4 block28112fa8Value5 block28112fa8Value6 block28112fa8Value7 block28112fa8Value8 block28112fa8Value9 block28112fa8Value10 block28112fa8Value11 block28112fa8Value12 block28112fa8Value13 block28112fa8Value14 block28112fa8Value15 block28112fa8Value16 |
    block28112fa8Value0 := block28112fa8Arg1.
    block28112fa8Value1 := block28112fa8Value0.
    block28112fa8Value2 := XmATTACHFORM.
    (block28112fa8Value1) bottomAttachment: (block28112fa8Value2).
    block28112fa8Value3 := block28112fa8Value0.
    (block28112fa8Value3) bottomOffset: (5).
    block28112fa8Value4 := block28112fa8Value0.
    block28112fa8Value5 := XmATTACHFORM.
    (block28112fa8Value4) topAttachment: (block28112fa8Value5).
    block28112fa8Value6 := block28112fa8Value0.
    (block28112fa8Value6) topOffset: (5).
    block28112fa8Value7 := block28112fa8Value0.
    block28112fa8Value8 := XmATTACHFORM.
    (block28112fa8Value7) leftAttachment: (block28112fa8Value8).
    block28112fa8Value9 := block28112fa8Value0.
    (block28112fa8Value9) leftOffset: (5).
    block28112fa8Value10 := block28112fa8Value0.
    block28112fa8Value11 := XmATTACHFORM.
    (block28112fa8Value10) rightAttachment: (block28112fa8Value11).
    block28112fa8Value12 := block28112fa8Value0.
    (block28112fa8Value12) rightOffset: (5).
    block28112fa8Value13 := block28112fa8Value0.
    (block28112fa8Value13) x: (5).
    block28112fa8Value14 := block28112fa8Value0.
    (block28112fa8Value14) y: (5).
    block28112fa8Value15 := block28112fa8Value0.
    (block28112fa8Value15) height: (277).
    block28112fa8Value16 := (block28112fa8Value0) width: (384).
    block28112fa8Value16
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

