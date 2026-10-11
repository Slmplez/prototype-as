"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000a08; bytecode file offset 0x8ffcfc"
!SGConfigChangesDialog methodsFor: 'recovered'!
cancel
    ^self
! !

"ASDBase.ic method 0x20005ee4; bytecode file offset 0x902de8"
!SGConfigChangesDialog methodsFor: 'recovered'!
elemListEtasMultipleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20008f60; bytecode file offset 0x908be4"
!SGConfigChangesDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 |
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001086c; bytecode file offset 0x90d208"
!SGConfigChangesDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004805c; bytecode file offset 0x9451f8"
!SGConfigChangesDialog methodsFor: 'recovered'!
eList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('elemList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005b0ac; bytecode file offset 0x957a6c"
!SGConfigChangesDialog methodsFor: 'recovered'!
topShellResize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateColumnWidth.
    ^self
! !

"ASDBase.ic method 0x200c6708; bytecode file offset 0x9c3164"
!SGConfigChangesDialog methodsFor: 'recovered'!
firstConfigLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    firstConfigLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6a6c; bytecode file offset 0x9c3470"
!SGConfigChangesDialog methodsFor: 'recovered'!
secondConfigLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    secondConfigLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e0048; bytecode file offset 0x9dc924"
!SGConfigChangesDialog methodsFor: 'recovered'!
copyToClipboard
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSClipboard.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) reset.
    recoveredValue2 := (self) printTable.
    (recoveredValue0) setString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012480c; bytecode file offset 0xa21100"
!SGConfigChangesDialog methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createConfigChangesMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20149f7c; bytecode file offset 0xa4687c"
!SGConfigChangesDialog methodsFor: 'recovered'!
initMenus
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createMenuBar.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) mainWindow.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) mainWindow.
    recoveredValue4 := (recoveredValue2) createMenuBarFor: (recoveredValue3) owner: (self).
    recoveredValue5 := (recoveredValue4) manageChild.
    (recoveredValue1) menuBar: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2014f5cc; bytecode file offset 0xa4be94"
!SGConfigChangesDialog methodsFor: 'recovered'!
updateWindowTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := firstConfigLabel.
    recoveredValue2 := ('Differences for: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('<>').
    recoveredValue4 := secondConfigLabel.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    (recoveredValue0) title: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201811ac; bytecode file offset 0xa7da78"
!SGConfigChangesDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eList.
    recoveredValue1 := result.
    (recoveredValue0) items: (recoveredValue1).
    (self) updateFonts.
    (self) initMenus.
    (self) updateWindowTitle.
    (self) installActionKeys.
    ^self
! !

"ASDBase.ic method 0x2019e21c; bytecode file offset 0xa9ab88"
!SGConfigChangesDialog methodsFor: 'recovered'!
columns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) nameColumn.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) firstValColumn.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) secondValColumn.
    (recoveredValue6) add: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201fb984; bytecode file offset 0xaf8250"
!SGConfigChangesDialog methodsFor: 'recovered'!
name: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildStringForArray: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20211540; bytecode file offset 0xb0de44"
!SGConfigChangesDialog methodsFor: 'recovered'!
createConfigChangesMenu
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := '~Differences'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'copyToClipboard'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Copy To Clipboard'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20222428; bytecode file offset 0xb1ecf0"
!SGConfigChangesDialog methodsFor: 'recovered'!
firstVal: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20222468; bytecode file offset 0xb1ed30"
!SGConfigChangesDialog methodsFor: 'recovered'!
secondVal: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20258a24; bytecode file offset 0xb552fc"
!SGConfigChangesDialog methodsFor: 'recovered'!
firstValColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := firstConfigLabel.
    (recoveredValue2) heading: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) editable: (false).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) verticalSeparatorThickness: (0).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) resizable: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('firstVal:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20258a78; bytecode file offset 0xb55350"
!SGConfigChangesDialog methodsFor: 'recovered'!
secondValColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := secondConfigLabel.
    (recoveredValue2) heading: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) editable: (false).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) verticalSeparatorThickness: (0).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) resizable: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('secondVal:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20290d7c; bytecode file offset 0xb8d660"
!SGConfigChangesDialog methodsFor: 'recovered'!
nameColumn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Element').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (0).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := XmALIGNMENTBEGINNING.
    (recoveredValue6) horizontalAlignment: (recoveredValue7).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNcellValueCallback.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('name:clientData:callData:') clientData: (nil).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20320860; bytecode file offset 0xc1d304"
!SGConfigChangesDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
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
    (recoveredValue10) at: ('Alt-o') put: ('ok').
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) at: ('Alt-c') put: ('cancel').
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) shell.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue12) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2035f32c; bytecode file offset 0xc5bbf8"
!SGConfigChangesDialog methodsFor: 'recovered'!
buildStringForArray: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 38] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037a5a8; bytecode file offset 0xc76e84"
!SGConfigChangesDialog methodsFor: 'recovered'!
printTable
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := result.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock20Arg1 :recoveredBlock20Arg2 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 recoveredBlock20Value10 recoveredBlock20Value11 recoveredBlock20Value12 recoveredBlock20Value13 |
    recoveredBlock20Value0 := recoveredLocal2.
    recoveredBlock20Value1 := recoveredBlock20Value0.
    recoveredBlock20Value2 := recoveredBlock20Arg1.
    recoveredBlock20Value3 := (recoveredBlock20Value2) at: (1).
    recoveredBlock20Value4 := (self) buildStringForArray: (recoveredBlock20Value3).
    (recoveredBlock20Value1) nextPutAll: (recoveredBlock20Value4).
    recoveredBlock20Value5 := recoveredBlock20Value0.
    (recoveredBlock20Value5) tab.
    recoveredBlock20Value6 := recoveredBlock20Value0.
    recoveredBlock20Value7 := recoveredBlock20Arg1.
    recoveredBlock20Value8 := (recoveredBlock20Value7) at: (2).
    (recoveredBlock20Value6) nextPutAll: (recoveredBlock20Value8).
    recoveredBlock20Value9 := recoveredBlock20Value0.
    (recoveredBlock20Value9) tab.
    recoveredBlock20Value10 := recoveredBlock20Value0.
    recoveredBlock20Value11 := recoveredBlock20Arg1.
    recoveredBlock20Value12 := (recoveredBlock20Value11) at: (3).
    (recoveredBlock20Value10) nextPutAll: (recoveredBlock20Value12).
    recoveredBlock20Value13 := (recoveredBlock20Value0) cr.
    recoveredBlock20Value13
].
    (recoveredValue3) doWithIndex: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203ed18c; bytecode file offset 0xce9a68"
!SGConfigChangesDialog methodsFor: 'recovered'!
updateColumnWidth
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) eList.
    recoveredValue1 := (recoveredValue0) columns.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) verticalSeparatorThickness.
    recoveredBlock11Value3 := (recoveredBlock11Value0) + (recoveredBlock11Value2).
    recoveredBlock11Value4 := recoveredBlock11Arg1.
    recoveredBlock11Value5 := (recoveredBlock11Value4) widget.
    recoveredBlock11Value6 := (recoveredBlock11Value5) totalEmphasis.
    recoveredBlock11Value7 := (recoveredBlock11Value3) + (recoveredBlock11Value6).
    recoveredBlock11Value8 := (recoveredBlock11Value7) + (1).
    recoveredBlock11Value9 := recoveredBlock11Value8.
    recoveredLocal1 := recoveredBlock11Value9.
    recoveredBlock11Value8
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) eList.
    recoveredValue4 := (recoveredValue3) width.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) - (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := (self) eList.
    recoveredValue8 := (recoveredValue7) columns.
    recoveredValue9 := (recoveredValue8) size.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := (self) eList.
    recoveredValue11 := [
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 |
    recoveredBlock58Value0 := (self) eList.
    recoveredBlock58Value1 := (recoveredBlock58Value0) columns.
    recoveredBlock58Value2 := [:recoveredBlock58Block66Arg1 | 
    | recoveredBlock58Block66Value0 recoveredBlock58Block66Value1 recoveredBlock58Block66Value2 recoveredBlock58Block66Value3 recoveredBlock58Block66Value4 |
    recoveredBlock58Block66Value0 := recoveredBlock58Block66Arg1.
    recoveredBlock58Block66Value1 := recoveredLocal3.
    recoveredBlock58Block66Value2 := recoveredLocal2.
    recoveredBlock58Block66Value3 := (recoveredBlock58Block66Value1) // (recoveredBlock58Block66Value2).
    recoveredBlock58Block66Value4 := (recoveredBlock58Block66Value0) width: (recoveredBlock58Block66Value3).
    recoveredBlock58Block66Value4
].
    recoveredBlock58Value3 := (recoveredBlock58Value1) do: (recoveredBlock58Value2).
    recoveredBlock58Value3
].
    (recoveredValue10) deferRedraw: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2065b13c; bytecode file offset 0xf57b54"
!SGConfigChangesDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal9 := recoveredStack1.
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Dialog').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := MWMDECORALL.
    recoveredBlock25Value6 := MWMDECORMINIMIZE.
    recoveredBlock25Value7 := (recoveredBlock25Value5) | (recoveredBlock25Value6).
    recoveredBlock25Value8 := MWMDECORMAXIMIZE.
    recoveredBlock25Value9 := (recoveredBlock25Value7) | (recoveredBlock25Value8).
    (recoveredBlock25Value4) mwmDecorations: (recoveredBlock25Value9).
    recoveredBlock25Value10 := recoveredBlock25Value0.
    recoveredBlock25Value11 := recoveredLocal9.
    recoveredBlock25Value12 := (200) * (recoveredBlock25Value11).
    recoveredBlock25Value13 := (recoveredBlock25Value12) rounded.
    (recoveredBlock25Value10) height: (recoveredBlock25Value13).
    recoveredBlock25Value14 := recoveredLocal10.
    recoveredBlock25Value15 := (450) * (recoveredBlock25Value14).
    recoveredBlock25Value16 := (recoveredBlock25Value15) rounded.
    recoveredBlock25Value17 := (recoveredBlock25Value0) width: (recoveredBlock25Value16).
    recoveredBlock25Value17
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 recoveredBlock145Value6 recoveredBlock145Value7 recoveredBlock145Value8 recoveredBlock145Value9 recoveredBlock145Value10 recoveredBlock145Value11 recoveredBlock145Value12 recoveredBlock145Value13 recoveredBlock145Value14 recoveredBlock145Value15 recoveredBlock145Value16 recoveredBlock145Value17 recoveredBlock145Value18 recoveredBlock145Value19 recoveredBlock145Value20 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := recoveredBlock145Value0.
    recoveredBlock145Value2 := recoveredLocal10.
    recoveredBlock145Value3 := (482) * (recoveredBlock145Value2).
    recoveredBlock145Value4 := (recoveredBlock145Value3) rounded.
    (recoveredBlock145Value1) x: (recoveredBlock145Value4).
    recoveredBlock145Value5 := recoveredBlock145Value0.
    recoveredBlock145Value6 := XmSINGLELINE.
    (recoveredBlock145Value5) separatorType: (recoveredBlock145Value6).
    recoveredBlock145Value7 := recoveredBlock145Value0.
    recoveredBlock145Value8 := XmVERTICAL.
    (recoveredBlock145Value7) orientation: (recoveredBlock145Value8).
    recoveredBlock145Value9 := recoveredBlock145Value0.
    recoveredBlock145Value10 := recoveredLocal9.
    recoveredBlock145Value11 := (35) * (recoveredBlock145Value10).
    recoveredBlock145Value12 := (recoveredBlock145Value11) rounded.
    (recoveredBlock145Value9) y: (recoveredBlock145Value12).
    recoveredBlock145Value13 := recoveredBlock145Value0.
    recoveredBlock145Value14 := recoveredLocal9.
    recoveredBlock145Value15 := (370) * (recoveredBlock145Value14).
    recoveredBlock145Value16 := (recoveredBlock145Value15) rounded.
    (recoveredBlock145Value13) height: (recoveredBlock145Value16).
    recoveredBlock145Value17 := recoveredLocal10.
    recoveredBlock145Value18 := (1) * (recoveredBlock145Value17).
    recoveredBlock145Value19 := (recoveredBlock145Value18) rounded.
    recoveredBlock145Value20 := (recoveredBlock145Value0) width: (recoveredBlock145Value19).
    recoveredBlock145Value20
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := [:recoveredBlock233Arg1 | 
    | recoveredBlock233Value0 recoveredBlock233Value1 recoveredBlock233Value2 recoveredBlock233Value3 recoveredBlock233Value4 recoveredBlock233Value5 recoveredBlock233Value6 recoveredBlock233Value7 recoveredBlock233Value8 recoveredBlock233Value9 recoveredBlock233Value10 recoveredBlock233Value11 recoveredBlock233Value12 recoveredBlock233Value13 recoveredBlock233Value14 recoveredBlock233Value15 recoveredBlock233Value16 recoveredBlock233Value17 recoveredBlock233Value18 recoveredBlock233Value19 recoveredBlock233Value20 recoveredBlock233Value21 |
    recoveredBlock233Value0 := recoveredBlock233Arg1.
    recoveredBlock233Value1 := recoveredBlock233Value0.
    recoveredBlock233Value2 := recoveredLocal10.
    recoveredBlock233Value3 := (330) * (recoveredBlock233Value2).
    recoveredBlock233Value4 := (recoveredBlock233Value3) rounded.
    (recoveredBlock233Value1) x: (recoveredBlock233Value4).
    recoveredBlock233Value5 := recoveredBlock233Value0.
    (recoveredBlock233Value5) marginRight: (10).
    recoveredBlock233Value6 := recoveredBlock233Value0.
    (recoveredBlock233Value6) labelString: ('&OK').
    recoveredBlock233Value7 := recoveredBlock233Value0.
    (recoveredBlock233Value7) marginWidth: (0).
    recoveredBlock233Value8 := recoveredBlock233Value0.
    (recoveredBlock233Value8) marginHeight: (0).
    recoveredBlock233Value9 := recoveredBlock233Value0.
    recoveredBlock233Value10 := recoveredLocal9.
    recoveredBlock233Value11 := (10) * (recoveredBlock233Value10).
    recoveredBlock233Value12 := (recoveredBlock233Value11) rounded.
    (recoveredBlock233Value9) y: (recoveredBlock233Value12).
    recoveredBlock233Value13 := recoveredBlock233Value0.
    recoveredBlock233Value14 := recoveredLocal9.
    recoveredBlock233Value15 := (30) * (recoveredBlock233Value14).
    recoveredBlock233Value16 := (recoveredBlock233Value15) rounded.
    (recoveredBlock233Value13) height: (recoveredBlock233Value16).
    recoveredBlock233Value17 := recoveredBlock233Value0.
    (recoveredBlock233Value17) marginBottom: (10).
    recoveredBlock233Value18 := recoveredLocal10.
    recoveredBlock233Value19 := (110) * (recoveredBlock233Value18).
    recoveredBlock233Value20 := (recoveredBlock233Value19) rounded.
    recoveredBlock233Value21 := (recoveredBlock233Value0) width: (recoveredBlock233Value20).
    recoveredBlock233Value21
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 recoveredBlock335Value5 recoveredBlock335Value6 recoveredBlock335Value7 recoveredBlock335Value8 recoveredBlock335Value9 recoveredBlock335Value10 recoveredBlock335Value11 recoveredBlock335Value12 recoveredBlock335Value13 recoveredBlock335Value14 recoveredBlock335Value15 recoveredBlock335Value16 recoveredBlock335Value17 recoveredBlock335Value18 recoveredBlock335Value19 recoveredBlock335Value20 recoveredBlock335Value21 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    recoveredBlock335Value1 := recoveredBlock335Value0.
    recoveredBlock335Value2 := recoveredLocal10.
    recoveredBlock335Value3 := (10) * (recoveredBlock335Value2).
    recoveredBlock335Value4 := (recoveredBlock335Value3) rounded.
    (recoveredBlock335Value1) x: (recoveredBlock335Value4).
    recoveredBlock335Value5 := recoveredBlock335Value0.
    recoveredBlock335Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock335Value5) alignment: (recoveredBlock335Value6).
    recoveredBlock335Value7 := recoveredBlock335Value0.
    (recoveredBlock335Value7) labelString: ('Differences').
    recoveredBlock335Value8 := recoveredBlock335Value0.
    recoveredBlock335Value9 := recoveredLocal9.
    recoveredBlock335Value10 := (18) * (recoveredBlock335Value9).
    recoveredBlock335Value11 := (recoveredBlock335Value10) rounded.
    (recoveredBlock335Value8) y: (recoveredBlock335Value11).
    recoveredBlock335Value12 := recoveredBlock335Value0.
    recoveredBlock335Value13 := recoveredLocal9.
    recoveredBlock335Value14 := (20) * (recoveredBlock335Value13).
    recoveredBlock335Value15 := (recoveredBlock335Value14) rounded.
    (recoveredBlock335Value12) height: (recoveredBlock335Value15).
    recoveredBlock335Value16 := recoveredBlock335Value0.
    recoveredBlock335Value17 := recoveredLocal10.
    recoveredBlock335Value18 := (140) * (recoveredBlock335Value17).
    recoveredBlock335Value19 := (recoveredBlock335Value18) rounded.
    (recoveredBlock335Value16) width: (recoveredBlock335Value19).
    recoveredBlock335Value20 := recoveredBlock335Value0.
    recoveredBlock335Value21 := (self) defaultLabelBlue.
    (recoveredBlock335Value20) foregroundColor: (recoveredBlock335Value21).
    recoveredBlock335Value0
].
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := 'elemList'.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack3 := [:recoveredBlock427Arg1 | 
    | recoveredBlock427Value0 recoveredBlock427Value1 recoveredBlock427Value2 recoveredBlock427Value3 recoveredBlock427Value4 recoveredBlock427Value5 recoveredBlock427Value6 recoveredBlock427Value7 recoveredBlock427Value8 |
    recoveredBlock427Value0 := recoveredBlock427Arg1.
    recoveredBlock427Value1 := recoveredBlock427Value0.
    (recoveredBlock427Value1) applicationDrawnBackground: (true).
    recoveredBlock427Value2 := recoveredBlock427Value0.
    recoveredBlock427Value3 := XmETCHCELLS.
    (recoveredBlock427Value2) headingVisualStyle: (recoveredBlock427Value3).
    recoveredBlock427Value4 := recoveredBlock427Value0.
    (recoveredBlock427Value4) rowSeparators: (false).
    recoveredBlock427Value5 := recoveredBlock427Value0.
    recoveredBlock427Value6 := (self) columns.
    (recoveredBlock427Value5) columns: (recoveredBlock427Value6).
    recoveredBlock427Value7 := XmEXTENDEDSELECT.
    recoveredBlock427Value8 := (recoveredBlock427Value0) selectionPolicy: (recoveredBlock427Value7).
    recoveredBlock427Value8
].
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := 'sTableList'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := 'elemList'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := [:recoveredBlock512Arg1 | 
    | recoveredBlock512Value0 recoveredBlock512Value1 recoveredBlock512Value2 |
    recoveredBlock512Value0 := recoveredBlock512Arg1.
    recoveredBlock512Value1 := recoveredLocal6.
    recoveredBlock512Value2 := (recoveredBlock512Value0) workWindow: (recoveredBlock512Value1).
    recoveredBlock512Value2
].
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := [:recoveredBlock536Arg1 | 
    | recoveredBlock536Value0 recoveredBlock536Value1 recoveredBlock536Value2 recoveredBlock536Value3 recoveredBlock536Value4 recoveredBlock536Value5 recoveredBlock536Value6 recoveredBlock536Value7 recoveredBlock536Value8 recoveredBlock536Value9 recoveredBlock536Value10 recoveredBlock536Value11 |
    recoveredBlock536Value0 := recoveredBlock536Arg1.
    recoveredBlock536Value1 := recoveredBlock536Value0.
    recoveredBlock536Value2 := XmATTACHFORM.
    (recoveredBlock536Value1) bottomAttachment: (recoveredBlock536Value2).
    recoveredBlock536Value3 := recoveredBlock536Value0.
    (recoveredBlock536Value3) bottomOffset: (10).
    recoveredBlock536Value4 := recoveredBlock536Value0.
    recoveredBlock536Value5 := XmATTACHFORM.
    (recoveredBlock536Value4) topAttachment: (recoveredBlock536Value5).
    recoveredBlock536Value6 := recoveredBlock536Value0.
    (recoveredBlock536Value6) topOffset: (10).
    recoveredBlock536Value7 := recoveredBlock536Value0.
    recoveredBlock536Value8 := XmATTACHWIDGET.
    (recoveredBlock536Value7) rightAttachment: (recoveredBlock536Value8).
    recoveredBlock536Value9 := recoveredBlock536Value0.
    recoveredBlock536Value10 := recoveredLocal4.
    (recoveredBlock536Value9) rightWidget: (recoveredBlock536Value10).
    recoveredBlock536Value11 := (recoveredBlock536Value0) rightOffset: (10).
    recoveredBlock536Value11
].
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := [:block2812463cArg1 | 
    | block2812463cValue0 block2812463cValue1 block2812463cValue2 block2812463cValue3 block2812463cValue4 block2812463cValue5 block2812463cValue6 |
    block2812463cValue0 := block2812463cArg1.
    block2812463cValue1 := block2812463cValue0.
    block2812463cValue2 := XmATTACHFORM.
    (block2812463cValue1) topAttachment: (block2812463cValue2).
    block2812463cValue3 := block2812463cValue0.
    (block2812463cValue3) topOffset: (10).
    block2812463cValue4 := block2812463cValue0.
    block2812463cValue5 := XmATTACHFORM.
    (block2812463cValue4) rightAttachment: (block2812463cValue5).
    block2812463cValue6 := (block2812463cValue0) rightOffset: (10).
    block2812463cValue6
].
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack2 := [:recoveredBlock652Arg1 | 
    | recoveredBlock652Value0 recoveredBlock652Value1 recoveredBlock652Value2 recoveredBlock652Value3 recoveredBlock652Value4 recoveredBlock652Value5 recoveredBlock652Value6 recoveredBlock652Value7 recoveredBlock652Value8 recoveredBlock652Value9 recoveredBlock652Value10 recoveredBlock652Value11 |
    recoveredBlock652Value0 := recoveredBlock652Arg1.
    recoveredBlock652Value1 := recoveredBlock652Value0.
    recoveredBlock652Value2 := XmATTACHFORM.
    (recoveredBlock652Value1) topAttachment: (recoveredBlock652Value2).
    recoveredBlock652Value3 := recoveredBlock652Value0.
    (recoveredBlock652Value3) topOffset: (5).
    recoveredBlock652Value4 := recoveredBlock652Value0.
    recoveredBlock652Value5 := XmATTACHFORM.
    (recoveredBlock652Value4) leftAttachment: (recoveredBlock652Value5).
    recoveredBlock652Value6 := recoveredBlock652Value0.
    (recoveredBlock652Value6) leftOffset: (10).
    recoveredBlock652Value7 := recoveredBlock652Value0.
    recoveredBlock652Value8 := XmATTACHWIDGET.
    (recoveredBlock652Value7) rightAttachment: (recoveredBlock652Value8).
    recoveredBlock652Value9 := recoveredBlock652Value0.
    recoveredBlock652Value10 := recoveredLocal5.
    (recoveredBlock652Value9) rightWidget: (recoveredBlock652Value10).
    recoveredBlock652Value11 := (recoveredBlock652Value0) rightOffset: (10).
    recoveredBlock652Value11
].
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack2 := [:recoveredBlock720Arg1 | 
    | recoveredBlock720Value0 recoveredBlock720Value1 recoveredBlock720Value2 recoveredBlock720Value3 recoveredBlock720Value4 recoveredBlock720Value5 recoveredBlock720Value6 recoveredBlock720Value7 recoveredBlock720Value8 recoveredBlock720Value9 recoveredBlock720Value10 recoveredBlock720Value11 recoveredBlock720Value12 recoveredBlock720Value13 recoveredBlock720Value14 recoveredBlock720Value15 recoveredBlock720Value16 recoveredBlock720Value17 recoveredBlock720Value18 recoveredBlock720Value19 recoveredBlock720Value20 recoveredBlock720Value21 recoveredBlock720Value22 recoveredBlock720Value23 recoveredBlock720Value24 recoveredBlock720Value25 recoveredBlock720Value26 recoveredBlock720Value27 recoveredBlock720Value28 recoveredBlock720Value29 recoveredBlock720Value30 |
    recoveredBlock720Value0 := recoveredBlock720Arg1.
    recoveredBlock720Value1 := recoveredBlock720Value0.
    recoveredBlock720Value2 := XmATTACHFORM.
    (recoveredBlock720Value1) bottomAttachment: (recoveredBlock720Value2).
    recoveredBlock720Value3 := recoveredBlock720Value0.
    (recoveredBlock720Value3) bottomOffset: (10).
    recoveredBlock720Value4 := recoveredBlock720Value0.
    recoveredBlock720Value5 := XmATTACHWIDGET.
    (recoveredBlock720Value4) topAttachment: (recoveredBlock720Value5).
    recoveredBlock720Value6 := recoveredBlock720Value0.
    recoveredBlock720Value7 := recoveredLocal3.
    (recoveredBlock720Value6) topWidget: (recoveredBlock720Value7).
    recoveredBlock720Value8 := recoveredBlock720Value0.
    recoveredBlock720Value9 := XmATTACHFORM.
    (recoveredBlock720Value8) leftAttachment: (recoveredBlock720Value9).
    recoveredBlock720Value10 := recoveredBlock720Value0.
    (recoveredBlock720Value10) leftOffset: (10).
    recoveredBlock720Value11 := recoveredBlock720Value0.
    recoveredBlock720Value12 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock720Value11) rightAttachment: (recoveredBlock720Value12).
    recoveredBlock720Value13 := recoveredBlock720Value0.
    recoveredBlock720Value14 := recoveredLocal3.
    (recoveredBlock720Value13) rightWidget: (recoveredBlock720Value14).
    recoveredBlock720Value15 := recoveredBlock720Value0.
    recoveredBlock720Value16 := recoveredLocal10.
    recoveredBlock720Value17 := (10) * (recoveredBlock720Value16).
    recoveredBlock720Value18 := (recoveredBlock720Value17) rounded.
    (recoveredBlock720Value15) x: (recoveredBlock720Value18).
    recoveredBlock720Value19 := recoveredBlock720Value0.
    recoveredBlock720Value20 := recoveredLocal9.
    recoveredBlock720Value21 := (148) * (recoveredBlock720Value20).
    recoveredBlock720Value22 := (recoveredBlock720Value21) rounded.
    (recoveredBlock720Value19) y: (recoveredBlock720Value22).
    recoveredBlock720Value23 := recoveredBlock720Value0.
    recoveredBlock720Value24 := recoveredLocal9.
    recoveredBlock720Value25 := (109) * (recoveredBlock720Value24).
    recoveredBlock720Value26 := (recoveredBlock720Value25) rounded.
    (recoveredBlock720Value23) height: (recoveredBlock720Value26).
    recoveredBlock720Value27 := recoveredLocal10.
    recoveredBlock720Value28 := (284) * (recoveredBlock720Value27).
    recoveredBlock720Value29 := (recoveredBlock720Value28) rounded.
    recoveredBlock720Value30 := (recoveredBlock720Value0) width: (recoveredBlock720Value29).
    recoveredBlock720Value30
].
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack4 := 'topShellResize:clientData:callData:'.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack2 := XmNextendedSelectionCallback.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack4 := 'elemListEtasMultipleSelectionCallback:clientData:callData:'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

