"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001443c; bytecode file offset 0x912098"
!ASDUserInterfaceManager methodsFor: 'recovered'!
UserInterfaceSettings
    | recoveredValue0 |
    recoveredValue0 := UserInterfaceSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053f0c; bytecode file offset 0x951190"
!ASDUserInterfaceManager methodsFor: 'recovered'!
UserInterfaceSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    UserInterfaceSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20059e1c; bytecode file offset 0x9566d4"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addSeparator: recoveredArg1 toToolbar: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) createSeparator.
    ^self
! !

"ASDBase.ic method 0x2006787c; bytecode file offset 0x9646f8"
!ASDUserInterfaceManager methodsFor: 'recovered'!
visibleToolbarItems
    | recoveredValue0 |
    recoveredValue0 := visibleToolbarItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200683cc; bytecode file offset 0x965b90"
!ASDUserInterfaceManager methodsFor: 'recovered'!
availableToolbarItems
    | recoveredValue0 |
    recoveredValue0 := availableToolbarItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ec8; bytecode file offset 0x966bdc"
!ASDUserInterfaceManager methodsFor: 'recovered'!
visiblePalettes
    | recoveredValue0 |
    recoveredValue0 := visiblePalettes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aaa4; bytecode file offset 0x967a18"
!ASDUserInterfaceManager methodsFor: 'recovered'!
visibleToolbars
    | recoveredValue0 |
    recoveredValue0 := visibleToolbars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006be68; bytecode file offset 0x96873c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
toolbarOrder
    | recoveredValue0 |
    recoveredValue0 := toolbarOrder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082ea4; bytecode file offset 0x97f798"
!ASDUserInterfaceManager methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    owner := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ae15c; bytecode file offset 0x9aaa48"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addVisibleToolbarItems: recoveredArg1 forToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) visibleToolbarItems.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae16c; bytecode file offset 0x9aaa48"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addAvailableToolbarItems: recoveredArg1 forToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) availableToolbarItems.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bedf0; bytecode file offset 0x9bc0b4"
!ASDUserInterfaceManager methodsFor: 'recovered'!
visibleToolbarItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleToolbarItems := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0104; bytecode file offset 0x9bd228"
!ASDUserInterfaceManager methodsFor: 'recovered'!
availableToolbarItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    availableToolbarItems := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0db8; bytecode file offset 0x9bdf14"
!ASDUserInterfaceManager methodsFor: 'recovered'!
visiblePalettes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visiblePalettes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c16d4; bytecode file offset 0x9beac8"
!ASDUserInterfaceManager methodsFor: 'recovered'!
visibleToolbars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleToolbars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2a20; bytecode file offset 0x9bf474"
!ASDUserInterfaceManager methodsFor: 'recovered'!
toolbarOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toolbarOrder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cd268; bytecode file offset 0x9c9b84"
!ASDUserInterfaceManager methodsFor: 'recovered'!
defaultSettingsFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppDataPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (recoveredValue2) , ('uiDefaultSettings.xml').
    ^recoveredValue3
! !

"ASDBase.ic method 0x20105018; bytecode file offset 0xa018e0"
!ASDUserInterfaceManager methodsFor: 'recovered'!
settingsFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := MainController.
    (recoveredValue0) checkOrCreateIniFilePath.
    recoveredValue1 := MainController.
    recoveredValue2 := (recoveredValue1) userFilePath.
    recoveredValue3 := (recoveredValue2) , ('uiSettings.xml').
    ^recoveredValue3
! !

"ASDBase.ic method 0x201466b4; bytecode file offset 0xa42fb4"
!ASDUserInterfaceManager methodsFor: 'recovered'!
paletteVisible: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visiblePalettes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PaletteVisible'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201466d0; bytecode file offset 0xa42fb4"
!ASDUserInterfaceManager methodsFor: 'recovered'!
paletteMinimized: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visiblePalettes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PaletteMinimized'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201466ec; bytecode file offset 0xa42fb4"
!ASDUserInterfaceManager methodsFor: 'recovered'!
toolbarVisible: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleToolbars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolbarVisible'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20147dc0; bytecode file offset 0xa446dc"
!ASDUserInterfaceManager methodsFor: 'recovered'!
palette: recoveredArg1 visible: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) visiblePalettes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('PaletteVisible').
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    (self) writePaletteVisibility: (recoveredValue4) for: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20147ddc; bytecode file offset 0xa446dc"
!ASDUserInterfaceManager methodsFor: 'recovered'!
toolbar: recoveredArg1 position: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) visibleToolbars.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('ToolbarPosition').
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    (self) writeToolbarOrder: (recoveredValue4) for: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20147df8; bytecode file offset 0xa446dc"
!ASDUserInterfaceManager methodsFor: 'recovered'!
toolbar: recoveredArg1 visible: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) visibleToolbars.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('ToolbarVisible').
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    (self) writeToolbarVisibility: (recoveredValue4) for: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20147e14; bytecode file offset 0xa446dc"
!ASDUserInterfaceManager methodsFor: 'recovered'!
palette: recoveredArg1 minimized: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) visiblePalettes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('PaletteMinimized').
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    (self) writePaletteMinimized: (recoveredValue4) for: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014adec; bytecode file offset 0xa476ac"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readWindowSetting: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20159140; bytecode file offset 0xa55a1c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readWindowMinimizedState
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'minimized'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBoolean.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20159158; bytecode file offset 0xa55a1c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readWindowMaximizedState
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'maximized'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBoolean.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015b208; bytecode file offset 0xa57ac8"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeWindowSetting: recoveredArg1 withValue: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016c828; bytecode file offset 0xa69104"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeWindowMinimizedState: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'minimized'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016c840; bytecode file offset 0xa69104"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeWindowMaximizedState: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'maximized'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201895b0; bytecode file offset 0xa85e80"
!ASDUserInterfaceManager methodsFor: 'recovered'!
createDefaultSettingsFile
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasGenericDOMDocument.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) createElement: ('UserInterfaceSettings').
    (recoveredValue2) addTag: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (self) UserInterfaceSettings: (recoveredValue5).
    (self) writeSettingsFile.
    ^self
! !

"ASDBase.ic method 0x20195c04; bytecode file offset 0xa924d0"
!ASDUserInterfaceManager methodsFor: 'recovered'!
toolbarPosition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleToolbars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolbarPosition'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    | block280d1dfcValue0 |
    block280d1dfcValue0 := (1) @ (1).
    block280d1dfcValue0
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20207798; bytecode file offset 0xb0408c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeWindowPosition: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'x'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'y'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
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

"ASDBase.ic method 0x202077bc; bytecode file offset 0xb0408c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeWindowSize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'width'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'height'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
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

"ASDBase.ic method 0x20251f38; bytecode file offset 0xb4e804"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readWindowPosition
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'x'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'y'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026b780; bytecode file offset 0xb68058"
!ASDUserInterfaceManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) visibleToolbarItems: (recoveredValue1).
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    (self) availableToolbarItems: (recoveredValue3).
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    (self) visibleToolbars: (recoveredValue5).
    recoveredValue6 := Dictionary.
    recoveredValue7 := (recoveredValue6) new.
    (self) visiblePalettes: (recoveredValue7).
    recoveredValue8 := Dictionary.
    recoveredValue9 := (recoveredValue8) new.
    (self) toolbarOrder: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202744d0; bytecode file offset 0xb70d9c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readWindowSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'width'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 800.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'height'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 600.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ab6ec; bytecode file offset 0xba7fc8"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addComboBox: recoveredArg1 toToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) registeredToolbarItems.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) createBlock.
    recoveredBlock11Value2 := recoveredArg2.
    (recoveredBlock11Value1) value: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredArg2.
    recoveredBlock11Value4 := recoveredArg1.
    recoveredBlock11Value5 := (recoveredBlock11Value4) asString.
    recoveredBlock11Value6 := (recoveredBlock11Value3) toolNamed: (recoveredBlock11Value5).
    recoveredBlock11Value7 := recoveredBlock11Arg1.
    recoveredBlock11Value8 := (recoveredBlock11Value7) tooltip.
    recoveredBlock11Value9 := (recoveredBlock11Value8) value.
    recoveredBlock11Value10 := (recoveredBlock11Value6) toolTipText: (recoveredBlock11Value9).
    recoveredBlock11Value10
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20321664; bytecode file offset 0xc1df4c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeSortOrderOutline: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Outline'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280eba28Arg1 | 
    true
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'Outline'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'sortOrder'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034bc88; bytecode file offset 0xc4856c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addDynamicButton: recoveredArg1 toToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) registeredToolbarItems.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) asString.
    recoveredBlock11Value3 := [:recoveredBlock11Block25Arg1 | 
    | recoveredBlock11Block25Value0 recoveredBlock11Block25Value1 recoveredBlock11Block25Value2 recoveredBlock11Block25Value3 recoveredBlock11Block25Value4 recoveredBlock11Block25Value5 recoveredBlock11Block25Value6 recoveredBlock11Block25Value7 recoveredBlock11Block25Value8 recoveredBlock11Block25Value9 |
    recoveredBlock11Block25Value0 := recoveredBlock11Block25Arg1.
    recoveredBlock11Block25Value1 := recoveredBlock11Block25Value0.
    recoveredBlock11Block25Value2 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value3 := (recoveredBlock11Block25Value2) icon.
    (recoveredBlock11Block25Value1) image: (recoveredBlock11Block25Value3).
    recoveredBlock11Block25Value4 := recoveredBlock11Block25Value0.
    recoveredBlock11Block25Value5 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value6 := (recoveredBlock11Block25Value5) action.
    (recoveredBlock11Block25Value4) userData: (recoveredBlock11Block25Value6).
    recoveredBlock11Block25Value7 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value8 := (recoveredBlock11Block25Value7) tooltip.
    recoveredBlock11Block25Value9 := (recoveredBlock11Block25Value0) toolTipText: (recoveredBlock11Block25Value8).
    recoveredBlock11Block25Value9
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) createTobTBPushButton: (recoveredBlock11Value2) argBlock: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value4) manageChild.
    recoveredBlock11Value5
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20356fb4; bytecode file offset 0xc538a0"
!ASDUserInterfaceManager methodsFor: 'recovered'!
configureToolbar: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDToolbarConfigurationWindow.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) availableToolbarItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) copy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) availableButtons: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) visibleToolbarItems.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) copy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) visibleButtons: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) parentWindow: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'call_83995'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleToolbarItems.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleToolbarItems.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) writeToolbarConfiguration: (recoveredStack1) toolbar: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203600cc; bytecode file offset 0xc5c9cc"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeSettingsFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMultiInstanceMode.
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
            recoveredStack0 := (recoveredStack0) settingsFile.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := CfsWriteFileStream.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Unable to write UI settings to file '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := '.\Either the file is read only or some tool or software is accessing this file at the same time.'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) abtXmlPrintOn: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203632c4; bytecode file offset 0xc5fbe0"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addToggleButton: recoveredArg1 toToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) registeredToolbarItems.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) asString.
    recoveredBlock11Value3 := [:recoveredBlock11Block25Arg1 | 
    | recoveredBlock11Block25Value0 recoveredBlock11Block25Value1 recoveredBlock11Block25Value2 recoveredBlock11Block25Value3 recoveredBlock11Block25Value4 recoveredBlock11Block25Value5 recoveredBlock11Block25Value6 recoveredBlock11Block25Value7 recoveredBlock11Block25Value8 recoveredBlock11Block25Value9 recoveredBlock11Block25Value10 recoveredBlock11Block25Value11 |
    recoveredBlock11Block25Value0 := recoveredBlock11Block25Arg1.
    recoveredBlock11Block25Value1 := recoveredBlock11Block25Value0.
    recoveredBlock11Block25Value2 := owner.
    recoveredBlock11Block25Value3 := recoveredArg1.
    recoveredBlock11Block25Value4 := (recoveredBlock11Block25Value3) asString.
    recoveredBlock11Block25Value5 := (recoveredBlock11Block25Value2) returnSizableToolbarIcon: (recoveredBlock11Block25Value4).
    (recoveredBlock11Block25Value1) image: (recoveredBlock11Block25Value5).
    recoveredBlock11Block25Value6 := recoveredBlock11Block25Value0.
    recoveredBlock11Block25Value7 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value8 := (recoveredBlock11Block25Value7) action.
    (recoveredBlock11Block25Value6) userData: (recoveredBlock11Block25Value8).
    recoveredBlock11Block25Value9 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value10 := (recoveredBlock11Block25Value9) tooltip.
    recoveredBlock11Block25Value11 := (recoveredBlock11Block25Value0) toolTipText: (recoveredBlock11Block25Value10).
    recoveredBlock11Block25Value11
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) createTobTBToggleButton: (recoveredBlock11Value2) argBlock: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value4) manageChild.
    recoveredBlock11Value5
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203632fc; bytecode file offset 0xc5fbe0"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addButton: recoveredArg1 toToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) registeredToolbarItems.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) asString.
    recoveredBlock11Value3 := [:recoveredBlock11Block25Arg1 | 
    | recoveredBlock11Block25Value0 recoveredBlock11Block25Value1 recoveredBlock11Block25Value2 recoveredBlock11Block25Value3 recoveredBlock11Block25Value4 recoveredBlock11Block25Value5 recoveredBlock11Block25Value6 recoveredBlock11Block25Value7 recoveredBlock11Block25Value8 recoveredBlock11Block25Value9 recoveredBlock11Block25Value10 recoveredBlock11Block25Value11 |
    recoveredBlock11Block25Value0 := recoveredBlock11Block25Arg1.
    recoveredBlock11Block25Value1 := recoveredBlock11Block25Value0.
    recoveredBlock11Block25Value2 := owner.
    recoveredBlock11Block25Value3 := recoveredArg1.
    recoveredBlock11Block25Value4 := (recoveredBlock11Block25Value3) asString.
    recoveredBlock11Block25Value5 := (recoveredBlock11Block25Value2) returnSizableToolbarIcon: (recoveredBlock11Block25Value4).
    (recoveredBlock11Block25Value1) image: (recoveredBlock11Block25Value5).
    recoveredBlock11Block25Value6 := recoveredBlock11Block25Value0.
    recoveredBlock11Block25Value7 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value8 := (recoveredBlock11Block25Value7) action.
    (recoveredBlock11Block25Value6) userData: (recoveredBlock11Block25Value8).
    recoveredBlock11Block25Value9 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value10 := (recoveredBlock11Block25Value9) tooltip.
    recoveredBlock11Block25Value11 := (recoveredBlock11Block25Value0) toolTipText: (recoveredBlock11Block25Value10).
    recoveredBlock11Block25Value11
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) createTobTBPushButton: (recoveredBlock11Value2) argBlock: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value4) manageChild.
    recoveredBlock11Value5
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203744a4; bytecode file offset 0xc70d90"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readSortOrderOutline
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Outline'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280f1d94Arg1 | 
    true
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'Outline'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) storeUISettings.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'sortOrder'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortOrderElementsList.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSymbol.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ec094; bytecode file offset 0xce8980"
!ASDUserInterfaceManager methodsFor: 'recovered'!
checkSettings
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := owner.
    recoveredBlock4Value1 := (recoveredBlock4Value0) notNil.
    recoveredBlock4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) readSettingsFile.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) createDefaultSettingsFile.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) createDefaultUISettings.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f1364; bytecode file offset 0xcedc54"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readPaneVisibility: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Pane'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Pane'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'visible'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBoolean.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ffd88; bytecode file offset 0xcfc774"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writePaletteVisibility: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Palette'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Palette'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'visible'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ffdc8; bytecode file offset 0xcfc774"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writePaneVisibility: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Pane'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Pane'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'visible'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ffe08; bytecode file offset 0xcfc774"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeSplitbarPosition: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Splitbar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Splitbar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'position'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ffe48; bytecode file offset 0xcfc774"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writePaletteMinimized: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Palette'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Palette'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'minimized'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ffe88; bytecode file offset 0xcfc774"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeToolbarVisibility: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'visible'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20420108; bytecode file offset 0xd1c9f8"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readSplitbarPosition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Splitbar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Splitbar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) storeUISettings.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'position'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204221f0; bytecode file offset 0xd1eae4"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addDynamicPullDownButton: recoveredArg1 toToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) registeredToolbarItems.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) asString.
    recoveredBlock11Value3 := [:recoveredBlock11Block25Arg1 | 
    | recoveredBlock11Block25Stack0 recoveredBlock11Block25Stack1 recoveredBlock11Block25Stack2 recoveredBlock11Block25Stack3 recoveredBlock11Block25Stack4 recoveredBlock11Block25PC recoveredBlock11Block25Step recoveredBlock11Block25Done recoveredBlock11Block25Result |
    recoveredBlock11Block25Stack0 := nil.
    recoveredBlock11Block25PC := 32.
    recoveredBlock11Block25Done := false.
    [recoveredBlock11Block25Done not] whileTrue: [
        recoveredBlock11Block25Step := recoveredBlock11Block25PC.
        recoveredBlock11Block25Step = 32 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 33.
        ].
        recoveredBlock11Block25Step = 33 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Block25Stack1.
            recoveredBlock11Block25PC := 34.
        ].
        recoveredBlock11Block25Step = 34 ifTrue: [
            recoveredBlock11Block25Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 37.
        ].
        recoveredBlock11Block25Step = 37 ifTrue: [
            recoveredBlock11Block25Stack3 := (recoveredBlock11Block25Stack3) icon.
            recoveredBlock11Block25PC := 38.
        ].
        recoveredBlock11Block25Step = 38 ifTrue: [
            (recoveredBlock11Block25Stack2) image: (recoveredBlock11Block25Stack3).
            recoveredBlock11Block25PC := 40.
        ].
        recoveredBlock11Block25Step = 40 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 43.
        ].
        recoveredBlock11Block25Step = 43 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) action.
            recoveredBlock11Block25PC := 45.
        ].
        recoveredBlock11Block25Step = 45 ifTrue: [
            (recoveredBlock11Block25Stack1) userData: (recoveredBlock11Block25Stack2).
            recoveredBlock11Block25PC := 47.
        ].
        recoveredBlock11Block25Step = 47 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 50.
        ].
        recoveredBlock11Block25Step = 50 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) tooltip.
            recoveredBlock11Block25PC := 52.
        ].
        recoveredBlock11Block25Step = 52 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) isBlock.
            recoveredBlock11Block25PC := 54.
        ].
        recoveredBlock11Block25Step = 54 ifTrue: [
            (recoveredBlock11Block25Stack1) ifTrue: [recoveredBlock11Block25PC := 58] ifFalse: [recoveredBlock11Block25PC := 72].
        ].
        recoveredBlock11Block25Step = 58 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 59.
        ].
        recoveredBlock11Block25Step = 59 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 62.
        ].
        recoveredBlock11Block25Step = 62 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) tooltip.
            recoveredBlock11Block25PC := 64.
        ].
        recoveredBlock11Block25Step = 64 ifTrue: [
            recoveredBlock11Block25Stack3 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 65.
        ].
        recoveredBlock11Block25Step = 65 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) value: (recoveredBlock11Block25Stack3).
            recoveredBlock11Block25PC := 67.
        ].
        recoveredBlock11Block25Step = 67 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) tobHoverHelpBlock: (recoveredBlock11Block25Stack2).
            recoveredBlock11Block25PC := 69.
        ].
        recoveredBlock11Block25Step = 69 ifTrue: [
            recoveredBlock11Block25PC := 80.
        ].
        recoveredBlock11Block25Step = 72 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 73.
        ].
        recoveredBlock11Block25Step = 73 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 76.
        ].
        recoveredBlock11Block25Step = 76 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) tooltip.
            recoveredBlock11Block25PC := 78.
        ].
        recoveredBlock11Block25Step = 78 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) toolTipText: (recoveredBlock11Block25Stack2).
            recoveredBlock11Block25PC := 80.
        ].
        recoveredBlock11Block25Step = 80 ifTrue: [
            recoveredBlock11Block25Result := recoveredBlock11Block25Stack1.
            recoveredBlock11Block25Done := true.
        ].
    ].
    recoveredBlock11Block25Result
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) createTobTBPushAndMenuButton: (recoveredBlock11Value2) argBlock: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value4) manageChild.
    recoveredBlock11Local1 := recoveredBlock11Value5.
    recoveredBlock11Value6 := recoveredBlock11Arg1.
    recoveredBlock11Value7 := (recoveredBlock11Value6) pulldownMenuBlock.
    recoveredBlock11Value8 := recoveredBlock11Local1.
    recoveredBlock11Value9 := (recoveredBlock11Value7) value: (recoveredBlock11Value8).
    recoveredBlock11Value9
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2042ab18; bytecode file offset 0xd2740c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addPullDownButton: recoveredArg1 toToolbar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) registeredToolbarItems.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) asString.
    recoveredBlock11Value3 := [:recoveredBlock11Block25Arg1 | 
    | recoveredBlock11Block25Stack0 recoveredBlock11Block25Stack1 recoveredBlock11Block25Stack2 recoveredBlock11Block25Stack3 recoveredBlock11Block25Stack4 recoveredBlock11Block25Stack5 recoveredBlock11Block25PC recoveredBlock11Block25Step recoveredBlock11Block25Done recoveredBlock11Block25Result |
    recoveredBlock11Block25Stack0 := self.
    recoveredBlock11Block25PC := 32.
    recoveredBlock11Block25Done := false.
    [recoveredBlock11Block25Done not] whileTrue: [
        recoveredBlock11Block25Step := recoveredBlock11Block25PC.
        recoveredBlock11Block25Step = 32 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 33.
        ].
        recoveredBlock11Block25Step = 33 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Block25Stack1.
            recoveredBlock11Block25PC := 34.
        ].
        recoveredBlock11Block25Step = 34 ifTrue: [
            recoveredBlock11Block25Stack3 := owner.
            recoveredBlock11Block25PC := 36.
        ].
        recoveredBlock11Block25Step = 36 ifTrue: [
            recoveredBlock11Block25Stack4 := recoveredArg1.
            recoveredBlock11Block25PC := 39.
        ].
        recoveredBlock11Block25Step = 39 ifTrue: [
            recoveredBlock11Block25Stack4 := (recoveredBlock11Block25Stack4) asString.
            recoveredBlock11Block25PC := 40.
        ].
        recoveredBlock11Block25Step = 40 ifTrue: [
            recoveredBlock11Block25Stack3 := (recoveredBlock11Block25Stack3) returnSizableToolbarIcon: (recoveredBlock11Block25Stack4).
            recoveredBlock11Block25PC := 41.
        ].
        recoveredBlock11Block25Step = 41 ifTrue: [
            (recoveredBlock11Block25Stack2) image: (recoveredBlock11Block25Stack3).
            recoveredBlock11Block25PC := 43.
        ].
        recoveredBlock11Block25Step = 43 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 46.
        ].
        recoveredBlock11Block25Step = 46 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) action.
            recoveredBlock11Block25PC := 48.
        ].
        recoveredBlock11Block25Step = 48 ifTrue: [
            (recoveredBlock11Block25Stack1) userData: (recoveredBlock11Block25Stack2).
            recoveredBlock11Block25PC := 50.
        ].
        recoveredBlock11Block25Step = 50 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 53.
        ].
        recoveredBlock11Block25Step = 53 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) tooltip.
            recoveredBlock11Block25PC := 55.
        ].
        recoveredBlock11Block25Step = 55 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) isBlock.
            recoveredBlock11Block25PC := 57.
        ].
        recoveredBlock11Block25Step = 57 ifTrue: [
            (recoveredBlock11Block25Stack1) ifTrue: [recoveredBlock11Block25PC := 60] ifFalse: [recoveredBlock11Block25PC := 74].
        ].
        recoveredBlock11Block25Step = 60 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 61.
        ].
        recoveredBlock11Block25Step = 61 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 64.
        ].
        recoveredBlock11Block25Step = 64 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) tooltip.
            recoveredBlock11Block25PC := 66.
        ].
        recoveredBlock11Block25Step = 66 ifTrue: [
            recoveredBlock11Block25Stack3 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 67.
        ].
        recoveredBlock11Block25Step = 67 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) value: (recoveredBlock11Block25Stack3).
            recoveredBlock11Block25PC := 69.
        ].
        recoveredBlock11Block25Step = 69 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) tobHoverHelpBlock: (recoveredBlock11Block25Stack2).
            recoveredBlock11Block25PC := 71.
        ].
        recoveredBlock11Block25Step = 71 ifTrue: [
            recoveredBlock11Block25PC := 82.
        ].
        recoveredBlock11Block25Step = 74 ifTrue: [
            recoveredBlock11Block25Stack1 := recoveredBlock11Block25Arg1.
            recoveredBlock11Block25PC := 75.
        ].
        recoveredBlock11Block25Step = 75 ifTrue: [
            recoveredBlock11Block25Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block25PC := 78.
        ].
        recoveredBlock11Block25Step = 78 ifTrue: [
            recoveredBlock11Block25Stack2 := (recoveredBlock11Block25Stack2) tooltip.
            recoveredBlock11Block25PC := 80.
        ].
        recoveredBlock11Block25Step = 80 ifTrue: [
            recoveredBlock11Block25Stack1 := (recoveredBlock11Block25Stack1) toolTipText: (recoveredBlock11Block25Stack2).
            recoveredBlock11Block25PC := 82.
        ].
        recoveredBlock11Block25Step = 82 ifTrue: [
            recoveredBlock11Block25Result := recoveredBlock11Block25Stack1.
            recoveredBlock11Block25Done := true.
        ].
    ].
    recoveredBlock11Block25Result
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) createTobTBPushAndMenuButton: (recoveredBlock11Value2) argBlock: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value4) manageChild.
    recoveredBlock11Local1 := recoveredBlock11Value5.
    recoveredBlock11Value6 := recoveredBlock11Arg1.
    recoveredBlock11Value7 := (recoveredBlock11Value6) pulldownMenuBlock.
    recoveredBlock11Value8 := recoveredBlock11Local1.
    recoveredBlock11Value9 := (recoveredBlock11Value7) value: (recoveredBlock11Value8).
    recoveredBlock11Value9
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20444544; bytecode file offset 0xd40e3c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeToolbarOrder: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'row'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'column'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
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

"ASDBase.ic method 0x2044c530; bytecode file offset 0xd48e30"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readToolbarVisibility: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) writeDefaultToolbarVisibility.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'visible'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleToolbars.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'ToolbarVisible'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204649b8; bytecode file offset 0xd612c0"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readSettingsFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) settingsFile.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultSettingsFile.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := EtasGenericDOMDocument.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) new.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal2.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) parseStream: (recoveredBlock47Stack2).
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 64.
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock47Stack2.
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            (recoveredBlock47Stack1 ~~ nil) ifTrue: [recoveredBlock47PC := 72] ifFalse: [recoveredBlock47PC := 70].
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            ^recoveredBlock47Stack1
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal1.
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) rootTag.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) name.
            recoveredBlock47PC := 79.
        ].
        recoveredBlock47Step = 79 ifTrue: [
            recoveredBlock47Stack2 := 'UserInterfaceSettings'.
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) ~= (recoveredBlock47Stack2).
            recoveredBlock47PC := 82.
        ].
        recoveredBlock47Step = 82 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 86] ifFalse: [recoveredBlock47PC := 88].
        ].
        recoveredBlock47Step = 86 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 87.
        ].
        recoveredBlock47Step = 87 ifTrue: [
            ^recoveredBlock47Stack1
        ].
        recoveredBlock47Step = 88 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal1.
            recoveredBlock47PC := 91.
        ].
        recoveredBlock47Step = 91 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) UserInterfaceSettings: (recoveredBlock47Stack1).
            recoveredBlock47PC := 93.
        ].
        recoveredBlock47Step = 93 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack0.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := SgmlException.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := [:block28100b94Arg1 | 
    | block28100b94Value0 block28100b94Value1 block28100b94Value2 |
    block28100b94Value0 := MainController.
    (block28100b94Value0) logError: ('Error when reading UI Settings').
    block28100b94Value1 := block28100b94Arg1.
    block28100b94Value2 := (block28100b94Value1) exitWith: (nil).
    block28100b94Value2
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20464b4c; bytecode file offset 0xd61438"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readTableWidgetColumnWidth
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Table'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Local2 recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 recoveredBlock33Value6 recoveredBlock33Value7 recoveredBlock33Value8 recoveredBlock33Value9 |
    recoveredBlock33Value0 := Dictionary.
    recoveredBlock33Value1 := (recoveredBlock33Value0) new.
    recoveredBlock33Local2 := recoveredBlock33Value1.
    recoveredBlock33Value2 := recoveredBlock33Arg1.
    recoveredBlock33Value3 := (recoveredBlock33Value2) getElementsByTagName: ('Column').
    recoveredBlock33Value4 := [:recoveredBlock33Block53Arg1 | 
    | recoveredBlock33Block53Stack0 recoveredBlock33Block53Stack1 recoveredBlock33Block53Stack2 recoveredBlock33Block53Stack3 recoveredBlock33Block53Stack4 recoveredBlock33Block53Stack5 recoveredBlock33Block53PC recoveredBlock33Block53Step recoveredBlock33Block53Done recoveredBlock33Block53Result |
    recoveredBlock33Block53Stack0 := nil.
    recoveredBlock33Block53PC := 60.
    recoveredBlock33Block53Done := false.
    [recoveredBlock33Block53Done not] whileTrue: [
        recoveredBlock33Block53Step := recoveredBlock33Block53PC.
        recoveredBlock33Block53Step = 60 ifTrue: [
            recoveredBlock33Block53Stack1 := nil.
            recoveredBlock33Block53PC := 61.
        ].
        recoveredBlock33Block53Step = 61 ifTrue: [
            recoveredBlock33Block53Stack2 := recoveredBlock33Block53Arg1.
            recoveredBlock33Block53PC := 62.
        ].
        recoveredBlock33Block53Step = 62 ifTrue: [
            recoveredBlock33Block53Stack3 := 'width'.
            recoveredBlock33Block53PC := 64.
        ].
        recoveredBlock33Block53Step = 64 ifTrue: [
            recoveredBlock33Block53Stack2 := (recoveredBlock33Block53Stack2) getAttribute: (recoveredBlock33Block53Stack3).
            recoveredBlock33Block53PC := 66.
        ].
        recoveredBlock33Block53Step = 66 ifTrue: [
            recoveredBlock33Block53Stack3 := recoveredBlock33Block53Stack2.
            recoveredBlock33Block53PC := 67.
        ].
        recoveredBlock33Block53Step = 67 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Block53Stack3.
            recoveredBlock33Block53PC := 70.
        ].
        recoveredBlock33Block53Step = 70 ifTrue: [
            recoveredBlock33Block53Stack2 := (recoveredBlock33Block53Stack2) isNumeric.
            recoveredBlock33Block53PC := 72.
        ].
        recoveredBlock33Block53Step = 72 ifTrue: [
            (recoveredBlock33Block53Stack2) ifTrue: [recoveredBlock33Block53PC := 76] ifFalse: [recoveredBlock33Block53PC := 94].
        ].
        recoveredBlock33Block53Step = 76 ifTrue: [
            recoveredBlock33Block53PC := 77.
        ].
        recoveredBlock33Block53Step = 77 ifTrue: [
            recoveredBlock33Block53Stack1 := recoveredBlock33Local2.
            recoveredBlock33Block53PC := 80.
        ].
        recoveredBlock33Block53Step = 80 ifTrue: [
            recoveredBlock33Block53Stack2 := recoveredBlock33Block53Arg1.
            recoveredBlock33Block53PC := 81.
        ].
        recoveredBlock33Block53Step = 81 ifTrue: [
            recoveredBlock33Block53Stack3 := 'id'.
            recoveredBlock33Block53PC := 83.
        ].
        recoveredBlock33Block53Step = 83 ifTrue: [
            recoveredBlock33Block53Stack2 := (recoveredBlock33Block53Stack2) getAttribute: (recoveredBlock33Block53Stack3).
            recoveredBlock33Block53PC := 85.
        ].
        recoveredBlock33Block53Step = 85 ifTrue: [
            recoveredBlock33Block53Stack3 := recoveredBlock33Block53Arg1.
            recoveredBlock33Block53PC := 86.
        ].
        recoveredBlock33Block53Step = 86 ifTrue: [
            recoveredBlock33Block53Stack4 := 'width'.
            recoveredBlock33Block53PC := 88.
        ].
        recoveredBlock33Block53Step = 88 ifTrue: [
            recoveredBlock33Block53Stack3 := (recoveredBlock33Block53Stack3) getAttribute: (recoveredBlock33Block53Stack4).
            recoveredBlock33Block53PC := 90.
        ].
        recoveredBlock33Block53Step = 90 ifTrue: [
            recoveredBlock33Block53Stack3 := (recoveredBlock33Block53Stack3) asInteger.
            recoveredBlock33Block53PC := 92.
        ].
        recoveredBlock33Block53Step = 92 ifTrue: [
            recoveredBlock33Block53Stack1 := (recoveredBlock33Block53Stack1) at: (recoveredBlock33Block53Stack2) put: (recoveredBlock33Block53Stack3).
            recoveredBlock33Block53PC := 94.
        ].
        recoveredBlock33Block53Step = 94 ifTrue: [
            recoveredBlock33Block53Result := recoveredBlock33Block53Stack1.
            recoveredBlock33Block53Done := true.
        ].
    ].
    recoveredBlock33Block53Result
].
    (recoveredBlock33Value3) do: (recoveredBlock33Value4).
    recoveredBlock33Value5 := recoveredLocal1.
    recoveredBlock33Value6 := recoveredBlock33Arg1.
    recoveredBlock33Value7 := (recoveredBlock33Value6) getAttribute: ('name').
    recoveredBlock33Value8 := recoveredBlock33Local2.
    recoveredBlock33Value9 := (recoveredBlock33Value5) at: (recoveredBlock33Value7) put: (recoveredBlock33Value8).
    recoveredBlock33Value9
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048fe70; bytecode file offset 0xd8c778"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readToolbarOrder: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) writeDefaultToolbarVisibility.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'row'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'column'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleToolbars.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'ToolbarPosition'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a3914; bytecode file offset 0xda020c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readMappingTableExpanded: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingType.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'MappingTable'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 |
    recoveredBlock73Value0 := recoveredLocal2.
    recoveredBlock73Value1 := recoveredBlock73Arg1.
    recoveredBlock73Value2 := (recoveredBlock73Value1) getAttribute: ('name').
    recoveredBlock73Value3 := (recoveredBlock73Value0) equals: (recoveredBlock73Value2).
    recoveredBlock73Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock91Value0 |
    recoveredBlock91Value0 := recoveredLocal6.
    ^recoveredBlock91Value0
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'expanded'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 'true'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a921c; bytecode file offset 0xda5b24"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readPaletteVisibility: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Palette'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Palette'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) createDefaultUISettings.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'visible'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'minimized'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) visiblePalettes.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'PaletteVisible'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) visiblePalettes.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'PaletteMinimized'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ac184; bytecode file offset 0xda8a90"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeMappingTableExpanded: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingType.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'MappingTable'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := recoveredLocal1.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := (recoveredBlock67Value1) getAttribute: ('name').
    recoveredBlock67Value3 := (recoveredBlock67Value0) equals: (recoveredBlock67Value2).
    recoveredBlock67Value3
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock85Local1 recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 recoveredBlock85Value4 recoveredBlock85Value5 |
    recoveredBlock85Value0 := (self) UserInterfaceSettings.
    recoveredBlock85Value1 := (recoveredBlock85Value0) createElement: ('MappingTable').
    recoveredBlock85Local1 := recoveredBlock85Value1.
    recoveredBlock85Value2 := recoveredBlock85Local1.
    recoveredBlock85Value3 := recoveredLocal1.
    recoveredBlock85Value4 := (recoveredBlock85Value3) abtXmlPrintString.
    recoveredBlock85Value5 := (recoveredBlock85Value2) setAttribute: ('name') value: (recoveredBlock85Value4).
    recoveredBlock85Value5
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'expanded'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) expanded.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050ecb8; bytecode file offset 0xe0b5bc"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeToolbarConfiguration: recoveredArg1 toolbar: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := ', '.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 48] ifFalse: [recoveredPC := 101]] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 recoveredBlock109Value3 |
    recoveredBlock109Value0 := recoveredBlock109Arg1.
    recoveredBlock109Value1 := (recoveredBlock109Value0) getAttribute: ('name').
    recoveredBlock109Value2 := recoveredArg2.
    recoveredBlock109Value3 := (recoveredBlock109Value1) = (recoveredBlock109Value2).
    recoveredBlock109Value3
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'buttons'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlPrintString.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052ec0c; bytecode file offset 0xe2b52c"
!ASDUserInterfaceManager methodsFor: 'recovered'!
readToolbarButtonVisibility: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getAttribute: ('name').
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) = (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) UserInterfaceSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Toolbar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) writeDefaultToolbarConfiguration.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) writeDefaultToolbarVisibility.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'buttons'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttribute: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:block2810d2fcArg1 | 
    | block2810d2fcValue0 block2810d2fcValue1 |
    block2810d2fcValue0 := block2810d2fcArg1.
    block2810d2fcValue1 := (block2810d2fcValue0) notEmpty.
    block2810d2fcValue1
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := (recoveredStack4) zapBlanks.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := (recoveredStack4) asAtom.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 136] ifFalse: [recoveredPC := 187]] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 183] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleToolbarItems.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20556464; bytecode file offset 0xe52d64"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeInfoWidgetColumnWidth: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 :recoveredBlock17Arg2 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg2.
    recoveredBlock17Value1 := [:recoveredBlock17Block27Arg1 | 
    | recoveredBlock17Block27Stack0 recoveredBlock17Block27Stack1 recoveredBlock17Block27Stack2 recoveredBlock17Block27Stack3 recoveredBlock17Block27Stack4 recoveredBlock17Block27PC recoveredBlock17Block27Step recoveredBlock17Block27Done recoveredBlock17Block27Result |
    recoveredBlock17Block27Stack0 := self.
    recoveredBlock17Block27PC := 34.
    recoveredBlock17Block27Done := false.
    [recoveredBlock17Block27Done not] whileTrue: [
        recoveredBlock17Block27Step := recoveredBlock17Block27PC.
        recoveredBlock17Block27Step = 34 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal3.
            recoveredBlock17Block27PC := 37.
        ].
        recoveredBlock17Block27Step = 37 ifTrue: [
            recoveredBlock17Block27Stack2 := 'Table'.
            recoveredBlock17Block27PC := 39.
        ].
        recoveredBlock17Block27Step = 39 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) getElementsByTagName: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 40.
        ].
        recoveredBlock17Block27Step = 40 ifTrue: [
            recoveredBlock17Block27Stack2 := [:recoveredBlock17Block27Block40Arg1 | 
    | recoveredBlock17Block27Block40Value0 recoveredBlock17Block27Block40Value1 recoveredBlock17Block27Block40Value2 recoveredBlock17Block27Block40Value3 |
    recoveredBlock17Block27Block40Value0 := recoveredBlock17Block27Block40Arg1.
    recoveredBlock17Block27Block40Value1 := (recoveredBlock17Block27Block40Value0) getAttribute: ('name').
    recoveredBlock17Block27Block40Value2 := recoveredBlock17Arg1.
    recoveredBlock17Block27Block40Value3 := (recoveredBlock17Block27Block40Value1) = (recoveredBlock17Block27Block40Value2).
    recoveredBlock17Block27Block40Value3
].
            recoveredBlock17Block27PC := 56.
        ].
        recoveredBlock17Block27Step = 56 ifTrue: [
            recoveredBlock17Block27Stack3 := [].
            recoveredBlock17Block27PC := 58.
        ].
        recoveredBlock17Block27Step = 58 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) detect: (recoveredBlock17Block27Stack2) ifNone: (recoveredBlock17Block27Stack3).
            recoveredBlock17Block27PC := 60.
        ].
        recoveredBlock17Block27Step = 60 ifTrue: [
            recoveredLocal2 := recoveredBlock17Block27Stack1.
            recoveredBlock17Block27PC := 63.
        ].
        recoveredBlock17Block27Step = 63 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal2.
            recoveredBlock17Block27PC := 66.
        ].
        recoveredBlock17Block27Step = 66 ifTrue: [
            (recoveredBlock17Block27Stack1 ~~ nil) ifTrue: [recoveredBlock17Block27PC := 100] ifFalse: [recoveredBlock17Block27PC := 70].
        ].
        recoveredBlock17Block27Step = 70 ifTrue: [
            recoveredBlock17Block27Stack1 := self.
            recoveredBlock17Block27PC := 71.
        ].
        recoveredBlock17Block27Step = 71 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) UserInterfaceSettings.
            recoveredBlock17Block27PC := 73.
        ].
        recoveredBlock17Block27Step = 73 ifTrue: [
            recoveredBlock17Block27Stack2 := 'Table'.
            recoveredBlock17Block27PC := 75.
        ].
        recoveredBlock17Block27Step = 75 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) createElement: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 77.
        ].
        recoveredBlock17Block27Step = 77 ifTrue: [
            recoveredLocal2 := recoveredBlock17Block27Stack1.
            recoveredBlock17Block27PC := 80.
        ].
        recoveredBlock17Block27Step = 80 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal2.
            recoveredBlock17Block27PC := 83.
        ].
        recoveredBlock17Block27Step = 83 ifTrue: [
            recoveredBlock17Block27Stack2 := 'name'.
            recoveredBlock17Block27PC := 85.
        ].
        recoveredBlock17Block27Step = 85 ifTrue: [
            recoveredBlock17Block27Stack3 := recoveredBlock17Arg1.
            recoveredBlock17Block27PC := 88.
        ].
        recoveredBlock17Block27Step = 88 ifTrue: [
            recoveredBlock17Block27Stack3 := (recoveredBlock17Block27Stack3) abtXmlPrintString.
            recoveredBlock17Block27PC := 90.
        ].
        recoveredBlock17Block27Step = 90 ifTrue: [
            (recoveredBlock17Block27Stack1) setAttribute: (recoveredBlock17Block27Stack2) value: (recoveredBlock17Block27Stack3).
            recoveredBlock17Block27PC := 92.
        ].
        recoveredBlock17Block27Step = 92 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal3.
            recoveredBlock17Block27PC := 95.
        ].
        recoveredBlock17Block27Step = 95 ifTrue: [
            recoveredBlock17Block27Stack2 := recoveredLocal2.
            recoveredBlock17Block27PC := 98.
        ].
        recoveredBlock17Block27Step = 98 ifTrue: [
            (recoveredBlock17Block27Stack1) appendChild: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 100.
        ].
        recoveredBlock17Block27Step = 100 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredBlock17Arg2.
            recoveredBlock17Block27PC := 103.
        ].
        recoveredBlock17Block27Step = 103 ifTrue: [
            recoveredBlock17Block27Stack2 := [:recoveredBlock17Block27Block103Arg1 :recoveredBlock17Block27Block103Arg2 | 
    | recoveredBlock17Block27Block103Stack0 recoveredBlock17Block27Block103Stack1 recoveredBlock17Block27Block103Stack2 recoveredBlock17Block27Block103Stack3 recoveredBlock17Block27Block103Stack4 recoveredBlock17Block27Block103PC recoveredBlock17Block27Block103Step recoveredBlock17Block27Block103Done recoveredBlock17Block27Block103Result |
    recoveredBlock17Block27Block103Stack0 := self.
    recoveredBlock17Block27Block103PC := 110.
    recoveredBlock17Block27Block103Done := false.
    [recoveredBlock17Block27Block103Done not] whileTrue: [
        recoveredBlock17Block27Block103Step := recoveredBlock17Block27Block103PC.
        recoveredBlock17Block27Block103Step = 110 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := recoveredLocal2.
            recoveredBlock17Block27Block103PC := 113.
        ].
        recoveredBlock17Block27Block103Step = 113 ifTrue: [
            recoveredBlock17Block27Block103Stack2 := 'Column'.
            recoveredBlock17Block27Block103PC := 115.
        ].
        recoveredBlock17Block27Block103Step = 115 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := (recoveredBlock17Block27Block103Stack1) getElementsByTagName: (recoveredBlock17Block27Block103Stack2).
            recoveredBlock17Block27Block103PC := 116.
        ].
        recoveredBlock17Block27Block103Step = 116 ifTrue: [
            recoveredBlock17Block27Block103Stack2 := [:recoveredBlock17Block27Block103Block116Arg1 | 
    | recoveredBlock17Block27Block103Block116Value0 recoveredBlock17Block27Block103Block116Value1 recoveredBlock17Block27Block103Block116Value2 recoveredBlock17Block27Block103Block116Value3 recoveredBlock17Block27Block103Block116Value4 |
    recoveredBlock17Block27Block103Block116Value0 := recoveredBlock17Block27Block103Block116Arg1.
    recoveredBlock17Block27Block103Block116Value1 := (recoveredBlock17Block27Block103Block116Value0) getAttribute: ('id').
    recoveredBlock17Block27Block103Block116Value2 := recoveredBlock17Block27Block103Arg1.
    recoveredBlock17Block27Block103Block116Value3 := (recoveredBlock17Block27Block103Block116Value2) abtXmlPrintString.
    recoveredBlock17Block27Block103Block116Value4 := (recoveredBlock17Block27Block103Block116Value1) = (recoveredBlock17Block27Block103Block116Value3).
    recoveredBlock17Block27Block103Block116Value4
].
            recoveredBlock17Block27Block103PC := 134.
        ].
        recoveredBlock17Block27Block103Step = 134 ifTrue: [
            recoveredBlock17Block27Block103Stack3 := [].
            recoveredBlock17Block27Block103PC := 136.
        ].
        recoveredBlock17Block27Block103Step = 136 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := (recoveredBlock17Block27Block103Stack1) detect: (recoveredBlock17Block27Block103Stack2) ifNone: (recoveredBlock17Block27Block103Stack3).
            recoveredBlock17Block27Block103PC := 138.
        ].
        recoveredBlock17Block27Block103Step = 138 ifTrue: [
            recoveredLocal1 := recoveredBlock17Block27Block103Stack1.
            recoveredBlock17Block27Block103PC := 141.
        ].
        recoveredBlock17Block27Block103Step = 141 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block103PC := 144.
        ].
        recoveredBlock17Block27Block103Step = 144 ifTrue: [
            (recoveredBlock17Block27Block103Stack1 ~~ nil) ifTrue: [recoveredBlock17Block27Block103PC := 194] ifFalse: [recoveredBlock17Block27Block103PC := 148].
        ].
        recoveredBlock17Block27Block103Step = 148 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := self.
            recoveredBlock17Block27Block103PC := 149.
        ].
        recoveredBlock17Block27Block103Step = 149 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := (recoveredBlock17Block27Block103Stack1) UserInterfaceSettings.
            recoveredBlock17Block27Block103PC := 151.
        ].
        recoveredBlock17Block27Block103Step = 151 ifTrue: [
            recoveredBlock17Block27Block103Stack2 := 'Column'.
            recoveredBlock17Block27Block103PC := 153.
        ].
        recoveredBlock17Block27Block103Step = 153 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := (recoveredBlock17Block27Block103Stack1) createElement: (recoveredBlock17Block27Block103Stack2).
            recoveredBlock17Block27Block103PC := 155.
        ].
        recoveredBlock17Block27Block103Step = 155 ifTrue: [
            recoveredLocal1 := recoveredBlock17Block27Block103Stack1.
            recoveredBlock17Block27Block103PC := 158.
        ].
        recoveredBlock17Block27Block103Step = 158 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block103PC := 161.
        ].
        recoveredBlock17Block27Block103Step = 161 ifTrue: [
            recoveredBlock17Block27Block103Stack2 := 'id'.
            recoveredBlock17Block27Block103PC := 163.
        ].
        recoveredBlock17Block27Block103Step = 163 ifTrue: [
            recoveredBlock17Block27Block103Stack3 := recoveredBlock17Block27Block103Arg1.
            recoveredBlock17Block27Block103PC := 166.
        ].
        recoveredBlock17Block27Block103Step = 166 ifTrue: [
            recoveredBlock17Block27Block103Stack3 := (recoveredBlock17Block27Block103Stack3) abtXmlPrintString.
            recoveredBlock17Block27Block103PC := 168.
        ].
        recoveredBlock17Block27Block103Step = 168 ifTrue: [
            (recoveredBlock17Block27Block103Stack1) setAttribute: (recoveredBlock17Block27Block103Stack2) value: (recoveredBlock17Block27Block103Stack3).
            recoveredBlock17Block27Block103PC := 170.
        ].
        recoveredBlock17Block27Block103Step = 170 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block103PC := 173.
        ].
        recoveredBlock17Block27Block103Step = 173 ifTrue: [
            recoveredBlock17Block27Block103Stack2 := 'width'.
            recoveredBlock17Block27Block103PC := 175.
        ].
        recoveredBlock17Block27Block103Step = 175 ifTrue: [
            recoveredBlock17Block27Block103Stack3 := recoveredBlock17Block27Block103Arg2.
            recoveredBlock17Block27Block103PC := 178.
        ].
        recoveredBlock17Block27Block103Step = 178 ifTrue: [
            recoveredBlock17Block27Block103Stack3 := (recoveredBlock17Block27Block103Stack3) abtXmlPrintString.
            recoveredBlock17Block27Block103PC := 180.
        ].
        recoveredBlock17Block27Block103Step = 180 ifTrue: [
            (recoveredBlock17Block27Block103Stack1) setAttribute: (recoveredBlock17Block27Block103Stack2) value: (recoveredBlock17Block27Block103Stack3).
            recoveredBlock17Block27Block103PC := 182.
        ].
        recoveredBlock17Block27Block103Step = 182 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := recoveredLocal2.
            recoveredBlock17Block27Block103PC := 185.
        ].
        recoveredBlock17Block27Block103Step = 185 ifTrue: [
            recoveredBlock17Block27Block103Stack2 := recoveredLocal1.
            recoveredBlock17Block27Block103PC := 188.
        ].
        recoveredBlock17Block27Block103Step = 188 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := (recoveredBlock17Block27Block103Stack1) appendChild: (recoveredBlock17Block27Block103Stack2).
            recoveredBlock17Block27Block103PC := 190.
        ].
        recoveredBlock17Block27Block103Step = 190 ifTrue: [
            recoveredBlock17Block27Block103PC := 206.
        ].
        recoveredBlock17Block27Block103Step = 194 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block103PC := 197.
        ].
        recoveredBlock17Block27Block103Step = 197 ifTrue: [
            recoveredBlock17Block27Block103Stack2 := 'width'.
            recoveredBlock17Block27Block103PC := 199.
        ].
        recoveredBlock17Block27Block103Step = 199 ifTrue: [
            recoveredBlock17Block27Block103Stack3 := recoveredBlock17Block27Block103Arg2.
            recoveredBlock17Block27Block103PC := 202.
        ].
        recoveredBlock17Block27Block103Step = 202 ifTrue: [
            recoveredBlock17Block27Block103Stack3 := (recoveredBlock17Block27Block103Stack3) abtXmlPrintString.
            recoveredBlock17Block27Block103PC := 204.
        ].
        recoveredBlock17Block27Block103Step = 204 ifTrue: [
            recoveredBlock17Block27Block103Stack1 := (recoveredBlock17Block27Block103Stack1) setAttribute: (recoveredBlock17Block27Block103Stack2) value: (recoveredBlock17Block27Block103Stack3).
            recoveredBlock17Block27Block103PC := 206.
        ].
        recoveredBlock17Block27Block103Step = 206 ifTrue: [
            recoveredBlock17Block27Block103Result := recoveredBlock17Block27Block103Stack1.
            recoveredBlock17Block27Block103Done := true.
        ].
    ].
    recoveredBlock17Block27Block103Result
].
            recoveredBlock17Block27PC := 207.
        ].
        recoveredBlock17Block27Step = 207 ifTrue: [
            (recoveredBlock17Block27Stack1) keysAndValuesDo: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 209.
        ].
        recoveredBlock17Block27Step = 209 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal2.
            recoveredBlock17Block27PC := 212.
        ].
        recoveredBlock17Block27Step = 212 ifTrue: [
            recoveredBlock17Block27Stack2 := 'visible'.
            recoveredBlock17Block27PC := 214.
        ].
        recoveredBlock17Block27Step = 214 ifTrue: [
            recoveredBlock17Block27Stack3 := true.
            recoveredBlock17Block27PC := 215.
        ].
        recoveredBlock17Block27Step = 215 ifTrue: [
            recoveredBlock17Block27Stack3 := (recoveredBlock17Block27Stack3) asString.
            recoveredBlock17Block27PC := 217.
        ].
        recoveredBlock17Block27Step = 217 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) setAttribute: (recoveredBlock17Block27Stack2) value: (recoveredBlock17Block27Stack3).
            recoveredBlock17Block27PC := 219.
        ].
        recoveredBlock17Block27Step = 219 ifTrue: [
            recoveredBlock17Block27Result := recoveredBlock17Block27Stack1.
            recoveredBlock17Block27Done := true.
        ].
    ].
    recoveredBlock17Block27Result
].
    recoveredBlock17Value2 := (recoveredBlock17Value0) do: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057c288; bytecode file offset 0xe78ba0"
!ASDUserInterfaceManager methodsFor: 'recovered'!
writeTableWidgetColumnWidth: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 :recoveredBlock17Arg2 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg2.
    recoveredBlock17Value1 := [:recoveredBlock17Block27Arg1 | 
    | recoveredBlock17Block27Stack0 recoveredBlock17Block27Stack1 recoveredBlock17Block27Stack2 recoveredBlock17Block27Stack3 recoveredBlock17Block27Stack4 recoveredBlock17Block27Stack5 recoveredBlock17Block27PC recoveredBlock17Block27Step recoveredBlock17Block27Done recoveredBlock17Block27Result |
    recoveredBlock17Block27Stack0 := self.
    recoveredBlock17Block27PC := 34.
    recoveredBlock17Block27Done := false.
    [recoveredBlock17Block27Done not] whileTrue: [
        recoveredBlock17Block27Step := recoveredBlock17Block27PC.
        recoveredBlock17Block27Step = 34 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal3.
            recoveredBlock17Block27PC := 37.
        ].
        recoveredBlock17Block27Step = 37 ifTrue: [
            recoveredBlock17Block27Stack2 := 'Table'.
            recoveredBlock17Block27PC := 39.
        ].
        recoveredBlock17Block27Step = 39 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) getElementsByTagName: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 40.
        ].
        recoveredBlock17Block27Step = 40 ifTrue: [
            recoveredBlock17Block27Stack2 := [:recoveredBlock17Block27Block40Arg1 | 
    | recoveredBlock17Block27Block40Value0 recoveredBlock17Block27Block40Value1 recoveredBlock17Block27Block40Value2 recoveredBlock17Block27Block40Value3 recoveredBlock17Block27Block40Value4 recoveredBlock17Block27Block40Value5 recoveredBlock17Block27Block40Value6 recoveredBlock17Block27Block40Value7 |
    recoveredBlock17Block27Block40Value0 := recoveredBlock17Block27Block40Arg1.
    recoveredBlock17Block27Block40Value1 := (recoveredBlock17Block27Block40Value0) getAttribute: ('name').
    recoveredBlock17Block27Block40Value2 := recoveredBlock17Arg1.
    recoveredBlock17Block27Block40Value3 := (recoveredBlock17Block27Block40Value2) , ('.').
    recoveredBlock17Block27Block40Value4 := recoveredBlock17Block27Arg1.
    recoveredBlock17Block27Block40Value5 := (recoveredBlock17Block27Block40Value4) name.
    recoveredBlock17Block27Block40Value6 := (recoveredBlock17Block27Block40Value3) , (recoveredBlock17Block27Block40Value5).
    recoveredBlock17Block27Block40Value7 := (recoveredBlock17Block27Block40Value1) = (recoveredBlock17Block27Block40Value6).
    recoveredBlock17Block27Block40Value7
].
            recoveredBlock17Block27PC := 67.
        ].
        recoveredBlock17Block27Step = 67 ifTrue: [
            recoveredBlock17Block27Stack3 := [].
            recoveredBlock17Block27PC := 69.
        ].
        recoveredBlock17Block27Step = 69 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) detect: (recoveredBlock17Block27Stack2) ifNone: (recoveredBlock17Block27Stack3).
            recoveredBlock17Block27PC := 71.
        ].
        recoveredBlock17Block27Step = 71 ifTrue: [
            recoveredLocal2 := recoveredBlock17Block27Stack1.
            recoveredBlock17Block27PC := 74.
        ].
        recoveredBlock17Block27Step = 74 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal2.
            recoveredBlock17Block27PC := 77.
        ].
        recoveredBlock17Block27Step = 77 ifTrue: [
            (recoveredBlock17Block27Stack1 ~~ nil) ifTrue: [recoveredBlock17Block27PC := 121] ifFalse: [recoveredBlock17Block27PC := 80].
        ].
        recoveredBlock17Block27Step = 80 ifTrue: [
            recoveredBlock17Block27Stack1 := self.
            recoveredBlock17Block27PC := 81.
        ].
        recoveredBlock17Block27Step = 81 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) UserInterfaceSettings.
            recoveredBlock17Block27PC := 83.
        ].
        recoveredBlock17Block27Step = 83 ifTrue: [
            recoveredBlock17Block27Stack2 := 'Table'.
            recoveredBlock17Block27PC := 85.
        ].
        recoveredBlock17Block27Step = 85 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) createElement: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 87.
        ].
        recoveredBlock17Block27Step = 87 ifTrue: [
            recoveredLocal2 := recoveredBlock17Block27Stack1.
            recoveredBlock17Block27PC := 90.
        ].
        recoveredBlock17Block27Step = 90 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal2.
            recoveredBlock17Block27PC := 93.
        ].
        recoveredBlock17Block27Step = 93 ifTrue: [
            recoveredBlock17Block27Stack2 := 'name'.
            recoveredBlock17Block27PC := 95.
        ].
        recoveredBlock17Block27Step = 95 ifTrue: [
            recoveredBlock17Block27Stack3 := recoveredBlock17Arg1.
            recoveredBlock17Block27PC := 98.
        ].
        recoveredBlock17Block27Step = 98 ifTrue: [
            recoveredBlock17Block27Stack4 := '.'.
            recoveredBlock17Block27PC := 100.
        ].
        recoveredBlock17Block27Step = 100 ifTrue: [
            recoveredBlock17Block27Stack3 := (recoveredBlock17Block27Stack3) , (recoveredBlock17Block27Stack4).
            recoveredBlock17Block27PC := 102.
        ].
        recoveredBlock17Block27Step = 102 ifTrue: [
            recoveredBlock17Block27Stack4 := recoveredBlock17Block27Arg1.
            recoveredBlock17Block27PC := 105.
        ].
        recoveredBlock17Block27Step = 105 ifTrue: [
            recoveredBlock17Block27Stack4 := (recoveredBlock17Block27Stack4) name.
            recoveredBlock17Block27PC := 107.
        ].
        recoveredBlock17Block27Step = 107 ifTrue: [
            recoveredBlock17Block27Stack3 := (recoveredBlock17Block27Stack3) , (recoveredBlock17Block27Stack4).
            recoveredBlock17Block27PC := 109.
        ].
        recoveredBlock17Block27Step = 109 ifTrue: [
            recoveredBlock17Block27Stack3 := (recoveredBlock17Block27Stack3) abtXmlPrintString.
            recoveredBlock17Block27PC := 111.
        ].
        recoveredBlock17Block27Step = 111 ifTrue: [
            (recoveredBlock17Block27Stack1) setAttribute: (recoveredBlock17Block27Stack2) value: (recoveredBlock17Block27Stack3).
            recoveredBlock17Block27PC := 113.
        ].
        recoveredBlock17Block27Step = 113 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal3.
            recoveredBlock17Block27PC := 116.
        ].
        recoveredBlock17Block27Step = 116 ifTrue: [
            recoveredBlock17Block27Stack2 := recoveredLocal2.
            recoveredBlock17Block27PC := 119.
        ].
        recoveredBlock17Block27Step = 119 ifTrue: [
            (recoveredBlock17Block27Stack1) appendChild: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 121.
        ].
        recoveredBlock17Block27Step = 121 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredBlock17Block27Arg1.
            recoveredBlock17Block27PC := 124.
        ].
        recoveredBlock17Block27Step = 124 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) columns.
            recoveredBlock17Block27PC := 126.
        ].
        recoveredBlock17Block27Step = 126 ifTrue: [
            recoveredBlock17Block27Stack2 := [:recoveredBlock17Block27Block126Arg1 | 
    | recoveredBlock17Block27Block126Stack0 recoveredBlock17Block27Block126Stack1 recoveredBlock17Block27Block126Stack2 recoveredBlock17Block27Block126Stack3 recoveredBlock17Block27Block126Stack4 recoveredBlock17Block27Block126PC recoveredBlock17Block27Block126Step recoveredBlock17Block27Block126Done recoveredBlock17Block27Block126Result |
    recoveredBlock17Block27Block126Stack0 := self.
    recoveredBlock17Block27Block126PC := 132.
    recoveredBlock17Block27Block126Done := false.
    [recoveredBlock17Block27Block126Done not] whileTrue: [
        recoveredBlock17Block27Block126Step := recoveredBlock17Block27Block126PC.
        recoveredBlock17Block27Block126Step = 132 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := recoveredLocal2.
            recoveredBlock17Block27Block126PC := 135.
        ].
        recoveredBlock17Block27Block126Step = 135 ifTrue: [
            recoveredBlock17Block27Block126Stack2 := 'Column'.
            recoveredBlock17Block27Block126PC := 137.
        ].
        recoveredBlock17Block27Block126Step = 137 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := (recoveredBlock17Block27Block126Stack1) getElementsByTagName: (recoveredBlock17Block27Block126Stack2).
            recoveredBlock17Block27Block126PC := 138.
        ].
        recoveredBlock17Block27Block126Step = 138 ifTrue: [
            recoveredBlock17Block27Block126Stack2 := [:recoveredBlock17Block27Block126Block138Arg1 | 
    | recoveredBlock17Block27Block126Block138Value0 recoveredBlock17Block27Block126Block138Value1 recoveredBlock17Block27Block126Block138Value2 recoveredBlock17Block27Block126Block138Value3 recoveredBlock17Block27Block126Block138Value4 recoveredBlock17Block27Block126Block138Value5 |
    recoveredBlock17Block27Block126Block138Value0 := recoveredBlock17Block27Block126Block138Arg1.
    recoveredBlock17Block27Block126Block138Value1 := (recoveredBlock17Block27Block126Block138Value0) getAttribute: ('id').
    recoveredBlock17Block27Block126Block138Value2 := recoveredBlock17Block27Block126Arg1.
    recoveredBlock17Block27Block126Block138Value3 := (recoveredBlock17Block27Block126Block138Value2) columnId.
    recoveredBlock17Block27Block126Block138Value4 := (recoveredBlock17Block27Block126Block138Value3) abtXmlPrintString.
    recoveredBlock17Block27Block126Block138Value5 := (recoveredBlock17Block27Block126Block138Value1) = (recoveredBlock17Block27Block126Block138Value4).
    recoveredBlock17Block27Block126Block138Value5
].
            recoveredBlock17Block27Block126PC := 158.
        ].
        recoveredBlock17Block27Block126Step = 158 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := [].
            recoveredBlock17Block27Block126PC := 160.
        ].
        recoveredBlock17Block27Block126Step = 160 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := (recoveredBlock17Block27Block126Stack1) detect: (recoveredBlock17Block27Block126Stack2) ifNone: (recoveredBlock17Block27Block126Stack3).
            recoveredBlock17Block27Block126PC := 162.
        ].
        recoveredBlock17Block27Block126Step = 162 ifTrue: [
            recoveredLocal1 := recoveredBlock17Block27Block126Stack1.
            recoveredBlock17Block27Block126PC := 165.
        ].
        recoveredBlock17Block27Block126Step = 165 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block126PC := 168.
        ].
        recoveredBlock17Block27Block126Step = 168 ifTrue: [
            (recoveredBlock17Block27Block126Stack1 ~~ nil) ifTrue: [recoveredBlock17Block27Block126PC := 222] ifFalse: [recoveredBlock17Block27Block126PC := 172].
        ].
        recoveredBlock17Block27Block126Step = 172 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := self.
            recoveredBlock17Block27Block126PC := 173.
        ].
        recoveredBlock17Block27Block126Step = 173 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := (recoveredBlock17Block27Block126Stack1) UserInterfaceSettings.
            recoveredBlock17Block27Block126PC := 175.
        ].
        recoveredBlock17Block27Block126Step = 175 ifTrue: [
            recoveredBlock17Block27Block126Stack2 := 'Column'.
            recoveredBlock17Block27Block126PC := 177.
        ].
        recoveredBlock17Block27Block126Step = 177 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := (recoveredBlock17Block27Block126Stack1) createElement: (recoveredBlock17Block27Block126Stack2).
            recoveredBlock17Block27Block126PC := 179.
        ].
        recoveredBlock17Block27Block126Step = 179 ifTrue: [
            recoveredLocal1 := recoveredBlock17Block27Block126Stack1.
            recoveredBlock17Block27Block126PC := 182.
        ].
        recoveredBlock17Block27Block126Step = 182 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block126PC := 185.
        ].
        recoveredBlock17Block27Block126Step = 185 ifTrue: [
            recoveredBlock17Block27Block126Stack2 := 'id'.
            recoveredBlock17Block27Block126PC := 187.
        ].
        recoveredBlock17Block27Block126Step = 187 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := recoveredBlock17Block27Block126Arg1.
            recoveredBlock17Block27Block126PC := 190.
        ].
        recoveredBlock17Block27Block126Step = 190 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := (recoveredBlock17Block27Block126Stack3) columnId.
            recoveredBlock17Block27Block126PC := 192.
        ].
        recoveredBlock17Block27Block126Step = 192 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := (recoveredBlock17Block27Block126Stack3) abtXmlPrintString.
            recoveredBlock17Block27Block126PC := 194.
        ].
        recoveredBlock17Block27Block126Step = 194 ifTrue: [
            (recoveredBlock17Block27Block126Stack1) setAttribute: (recoveredBlock17Block27Block126Stack2) value: (recoveredBlock17Block27Block126Stack3).
            recoveredBlock17Block27Block126PC := 196.
        ].
        recoveredBlock17Block27Block126Step = 196 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block126PC := 199.
        ].
        recoveredBlock17Block27Block126Step = 199 ifTrue: [
            recoveredBlock17Block27Block126Stack2 := 'width'.
            recoveredBlock17Block27Block126PC := 201.
        ].
        recoveredBlock17Block27Block126Step = 201 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := recoveredBlock17Block27Block126Arg1.
            recoveredBlock17Block27Block126PC := 204.
        ].
        recoveredBlock17Block27Block126Step = 204 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := (recoveredBlock17Block27Block126Stack3) width.
            recoveredBlock17Block27Block126PC := 206.
        ].
        recoveredBlock17Block27Block126Step = 206 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := (recoveredBlock17Block27Block126Stack3) abtXmlPrintString.
            recoveredBlock17Block27Block126PC := 208.
        ].
        recoveredBlock17Block27Block126Step = 208 ifTrue: [
            (recoveredBlock17Block27Block126Stack1) setAttribute: (recoveredBlock17Block27Block126Stack2) value: (recoveredBlock17Block27Block126Stack3).
            recoveredBlock17Block27Block126PC := 210.
        ].
        recoveredBlock17Block27Block126Step = 210 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := recoveredLocal2.
            recoveredBlock17Block27Block126PC := 213.
        ].
        recoveredBlock17Block27Block126Step = 213 ifTrue: [
            recoveredBlock17Block27Block126Stack2 := recoveredLocal1.
            recoveredBlock17Block27Block126PC := 216.
        ].
        recoveredBlock17Block27Block126Step = 216 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := (recoveredBlock17Block27Block126Stack1) appendChild: (recoveredBlock17Block27Block126Stack2).
            recoveredBlock17Block27Block126PC := 218.
        ].
        recoveredBlock17Block27Block126Step = 218 ifTrue: [
            recoveredBlock17Block27Block126PC := 236.
        ].
        recoveredBlock17Block27Block126Step = 222 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := recoveredLocal1.
            recoveredBlock17Block27Block126PC := 225.
        ].
        recoveredBlock17Block27Block126Step = 225 ifTrue: [
            recoveredBlock17Block27Block126Stack2 := 'width'.
            recoveredBlock17Block27Block126PC := 227.
        ].
        recoveredBlock17Block27Block126Step = 227 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := recoveredBlock17Block27Block126Arg1.
            recoveredBlock17Block27Block126PC := 230.
        ].
        recoveredBlock17Block27Block126Step = 230 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := (recoveredBlock17Block27Block126Stack3) width.
            recoveredBlock17Block27Block126PC := 232.
        ].
        recoveredBlock17Block27Block126Step = 232 ifTrue: [
            recoveredBlock17Block27Block126Stack3 := (recoveredBlock17Block27Block126Stack3) abtXmlPrintString.
            recoveredBlock17Block27Block126PC := 234.
        ].
        recoveredBlock17Block27Block126Step = 234 ifTrue: [
            recoveredBlock17Block27Block126Stack1 := (recoveredBlock17Block27Block126Stack1) setAttribute: (recoveredBlock17Block27Block126Stack2) value: (recoveredBlock17Block27Block126Stack3).
            recoveredBlock17Block27Block126PC := 236.
        ].
        recoveredBlock17Block27Block126Step = 236 ifTrue: [
            recoveredBlock17Block27Block126Result := recoveredBlock17Block27Block126Stack1.
            recoveredBlock17Block27Block126Done := true.
        ].
    ].
    recoveredBlock17Block27Block126Result
].
            recoveredBlock17Block27PC := 237.
        ].
        recoveredBlock17Block27Step = 237 ifTrue: [
            (recoveredBlock17Block27Stack1) do: (recoveredBlock17Block27Stack2).
            recoveredBlock17Block27PC := 239.
        ].
        recoveredBlock17Block27Step = 239 ifTrue: [
            recoveredBlock17Block27Stack1 := recoveredLocal2.
            recoveredBlock17Block27PC := 242.
        ].
        recoveredBlock17Block27Step = 242 ifTrue: [
            recoveredBlock17Block27Stack2 := 'visible'.
            recoveredBlock17Block27PC := 244.
        ].
        recoveredBlock17Block27Step = 244 ifTrue: [
            recoveredBlock17Block27Stack3 := true.
            recoveredBlock17Block27PC := 245.
        ].
        recoveredBlock17Block27Step = 245 ifTrue: [
            recoveredBlock17Block27Stack3 := (recoveredBlock17Block27Stack3) asString.
            recoveredBlock17Block27PC := 247.
        ].
        recoveredBlock17Block27Step = 247 ifTrue: [
            recoveredBlock17Block27Stack1 := (recoveredBlock17Block27Stack1) setAttribute: (recoveredBlock17Block27Stack2) value: (recoveredBlock17Block27Stack3).
            recoveredBlock17Block27PC := 249.
        ].
        recoveredBlock17Block27Step = 249 ifTrue: [
            recoveredBlock17Block27Result := recoveredBlock17Block27Stack1.
            recoveredBlock17Block27Done := true.
        ].
    ].
    recoveredBlock17Block27Result
].
    recoveredBlock17Value2 := (recoveredBlock17Value0) do: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a3804; bytecode file offset 0xea0144"
!ASDUserInterfaceManager methodsFor: 'recovered'!
addToolbarItemsFor: recoveredArg1 toToolbar: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) availableToolbarItems.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := MainController.
    recoveredValue4 := (recoveredValue3) asdGeneralOptions.
    recoveredValue5 := (recoveredValue4) optionDisabledButtons.
    recoveredLocal2 := recoveredValue5.
    recoveredLocal1 := 'Separator'.
    recoveredValue6 := (self) visibleToolbarItems.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) at: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal3.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Arg1.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) includes: (recoveredBlock32Stack3).
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 48] ifFalse: [recoveredBlock32PC := 202].
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal2.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Arg1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) includes: (recoveredBlock32Stack3).
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 202] ifFalse: [recoveredBlock32PC := 58].
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Arg1.
            recoveredBlock32PC := 64.
        ].
        recoveredBlock32Step = 64 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) ~= (recoveredBlock32Stack3).
            recoveredBlock32PC := 65.
        ].
        recoveredBlock32Step = 65 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 68] ifFalse: [recoveredBlock32PC := 202].
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Stack1 := owner.
            recoveredBlock32PC := 75.
        ].
        recoveredBlock32Step = 75 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) registeredToolbarItems.
            recoveredBlock32PC := 77.
        ].
        recoveredBlock32Step = 77 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 78.
        ].
        recoveredBlock32Step = 78 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2).
            recoveredBlock32PC := 79.
        ].
        recoveredBlock32Step = 79 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isToolbarButton.
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 84] ifFalse: [recoveredBlock32PC := 91].
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 85.
        ].
        recoveredBlock32Step = 85 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 86.
        ].
        recoveredBlock32Step = 86 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 89.
        ].
        recoveredBlock32Step = 89 ifTrue: [
            (recoveredBlock32Stack1) addButton: (recoveredBlock32Stack2) toToolbar: (recoveredBlock32Stack3).
            recoveredBlock32PC := 91.
        ].
        recoveredBlock32Step = 91 ifTrue: [
            recoveredBlock32Stack1 := owner.
            recoveredBlock32PC := 93.
        ].
        recoveredBlock32Step = 93 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) registeredToolbarItems.
            recoveredBlock32PC := 95.
        ].
        recoveredBlock32Step = 95 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 96.
        ].
        recoveredBlock32Step = 96 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2).
            recoveredBlock32PC := 97.
        ].
        recoveredBlock32Step = 97 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isDynamicToolbarButton.
            recoveredBlock32PC := 99.
        ].
        recoveredBlock32Step = 99 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 102] ifFalse: [recoveredBlock32PC := 109].
        ].
        recoveredBlock32Step = 102 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 103.
        ].
        recoveredBlock32Step = 103 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 104.
        ].
        recoveredBlock32Step = 104 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 107.
        ].
        recoveredBlock32Step = 107 ifTrue: [
            (recoveredBlock32Stack1) addDynamicButton: (recoveredBlock32Stack2) toToolbar: (recoveredBlock32Stack3).
            recoveredBlock32PC := 109.
        ].
        recoveredBlock32Step = 109 ifTrue: [
            recoveredBlock32Stack1 := owner.
            recoveredBlock32PC := 111.
        ].
        recoveredBlock32Step = 111 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) registeredToolbarItems.
            recoveredBlock32PC := 113.
        ].
        recoveredBlock32Step = 113 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 114.
        ].
        recoveredBlock32Step = 114 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2).
            recoveredBlock32PC := 115.
        ].
        recoveredBlock32Step = 115 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isToolbarToggleButton.
            recoveredBlock32PC := 117.
        ].
        recoveredBlock32Step = 117 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 120] ifFalse: [recoveredBlock32PC := 127].
        ].
        recoveredBlock32Step = 120 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 121.
        ].
        recoveredBlock32Step = 121 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 122.
        ].
        recoveredBlock32Step = 122 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 125.
        ].
        recoveredBlock32Step = 125 ifTrue: [
            (recoveredBlock32Stack1) addToggleButton: (recoveredBlock32Stack2) toToolbar: (recoveredBlock32Stack3).
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 127 ifTrue: [
            recoveredBlock32Stack1 := owner.
            recoveredBlock32PC := 129.
        ].
        recoveredBlock32Step = 129 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) registeredToolbarItems.
            recoveredBlock32PC := 131.
        ].
        recoveredBlock32Step = 131 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 132.
        ].
        recoveredBlock32Step = 132 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2).
            recoveredBlock32PC := 133.
        ].
        recoveredBlock32Step = 133 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isToolbarPulldownButton.
            recoveredBlock32PC := 135.
        ].
        recoveredBlock32Step = 135 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 138] ifFalse: [recoveredBlock32PC := 145].
        ].
        recoveredBlock32Step = 138 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 139.
        ].
        recoveredBlock32Step = 139 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 140.
        ].
        recoveredBlock32Step = 140 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 143.
        ].
        recoveredBlock32Step = 143 ifTrue: [
            (recoveredBlock32Stack1) addPullDownButton: (recoveredBlock32Stack2) toToolbar: (recoveredBlock32Stack3).
            recoveredBlock32PC := 145.
        ].
        recoveredBlock32Step = 145 ifTrue: [
            recoveredBlock32Stack1 := owner.
            recoveredBlock32PC := 147.
        ].
        recoveredBlock32Step = 147 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) registeredToolbarItems.
            recoveredBlock32PC := 149.
        ].
        recoveredBlock32Step = 149 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 150.
        ].
        recoveredBlock32Step = 150 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2).
            recoveredBlock32PC := 151.
        ].
        recoveredBlock32Step = 151 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isDynamicToolbarPulldownButton.
            recoveredBlock32PC := 153.
        ].
        recoveredBlock32Step = 153 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 156] ifFalse: [recoveredBlock32PC := 163].
        ].
        recoveredBlock32Step = 156 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 157.
        ].
        recoveredBlock32Step = 157 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 158.
        ].
        recoveredBlock32Step = 158 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 161.
        ].
        recoveredBlock32Step = 161 ifTrue: [
            (recoveredBlock32Stack1) addDynamicPullDownButton: (recoveredBlock32Stack2) toToolbar: (recoveredBlock32Stack3).
            recoveredBlock32PC := 163.
        ].
        recoveredBlock32Step = 163 ifTrue: [
            recoveredBlock32Stack1 := owner.
            recoveredBlock32PC := 165.
        ].
        recoveredBlock32Step = 165 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) registeredToolbarItems.
            recoveredBlock32PC := 167.
        ].
        recoveredBlock32Step = 167 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 168.
        ].
        recoveredBlock32Step = 168 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2).
            recoveredBlock32PC := 169.
        ].
        recoveredBlock32Step = 169 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isToolbarDropdownList.
            recoveredBlock32PC := 171.
        ].
        recoveredBlock32Step = 171 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 174] ifFalse: [recoveredBlock32PC := 181].
        ].
        recoveredBlock32Step = 174 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 175.
        ].
        recoveredBlock32Step = 175 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 176.
        ].
        recoveredBlock32Step = 176 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 179.
        ].
        recoveredBlock32Step = 179 ifTrue: [
            (recoveredBlock32Stack1) addComboBox: (recoveredBlock32Stack2) toToolbar: (recoveredBlock32Stack3).
            recoveredBlock32PC := 181.
        ].
        recoveredBlock32Step = 181 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 182.
        ].
        recoveredBlock32Step = 182 ifTrue: [
            recoveredBlock32Stack2 := owner.
            recoveredBlock32PC := 184.
        ].
        recoveredBlock32Step = 184 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) registeredToolbarItems.
            recoveredBlock32PC := 186.
        ].
        recoveredBlock32Step = 186 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Arg1.
            recoveredBlock32PC := 187.
        ].
        recoveredBlock32Step = 187 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) at: (recoveredBlock32Stack3).
            recoveredBlock32PC := 188.
        ].
        recoveredBlock32Step = 188 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isToolbarSeparator.
            recoveredBlock32PC := 190.
        ].
        recoveredBlock32Step = 190 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 194] ifFalse: [recoveredBlock32PC := 202].
        ].
        recoveredBlock32Step = 194 ifTrue: [
            recoveredBlock32PC := 195.
        ].
        recoveredBlock32Step = 195 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 196.
        ].
        recoveredBlock32Step = 196 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 197.
        ].
        recoveredBlock32Step = 197 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg2.
            recoveredBlock32PC := 200.
        ].
        recoveredBlock32Step = 200 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) addSeparator: (recoveredBlock32Stack2) toToolbar: (recoveredBlock32Stack3).
            recoveredBlock32PC := 202.
        ].
        recoveredBlock32Step = 202 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) children.
    recoveredValue12 := [:recoveredBlock210Arg1 | 
    | recoveredBlock210Stack0 recoveredBlock210Stack1 recoveredBlock210Stack2 recoveredBlock210Stack3 recoveredBlock210Stack4 recoveredBlock210Stack5 recoveredBlock210Stack6 recoveredBlock210PC recoveredBlock210Step recoveredBlock210Done recoveredBlock210Result |
    recoveredBlock210Stack0 := self.
    recoveredBlock210PC := 216.
    recoveredBlock210Done := false.
    [recoveredBlock210Done not] whileTrue: [
        recoveredBlock210Step := recoveredBlock210PC.
        recoveredBlock210Step = 216 ifTrue: [
            recoveredBlock210Stack1 := recoveredBlock210Arg1.
            recoveredBlock210PC := 217.
        ].
        recoveredBlock210Step = 217 ifTrue: [
            recoveredBlock210Stack2 := TobTBMenuButtonWidget.
            recoveredBlock210PC := 219.
        ].
        recoveredBlock210Step = 219 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) isKindOf: (recoveredBlock210Stack2).
            recoveredBlock210PC := 221.
        ].
        recoveredBlock210Step = 221 ifTrue: [
            (recoveredBlock210Stack1) ifTrue: [recoveredBlock210PC := 260] ifFalse: [recoveredBlock210PC := 224].
        ].
        recoveredBlock210Step = 224 ifTrue: [
            recoveredBlock210Stack1 := recoveredBlock210Arg1.
            recoveredBlock210PC := 225.
        ].
        recoveredBlock210Step = 225 ifTrue: [
            recoveredBlock210Stack2 := TobTBInputWidget.
            recoveredBlock210PC := 227.
        ].
        recoveredBlock210Step = 227 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) isKindOf: (recoveredBlock210Stack2).
            recoveredBlock210PC := 229.
        ].
        recoveredBlock210Step = 229 ifTrue: [
            (recoveredBlock210Stack1) ifTrue: [recoveredBlock210PC := 260] ifFalse: [recoveredBlock210PC := 232].
        ].
        recoveredBlock210Step = 232 ifTrue: [
            recoveredBlock210Stack1 := recoveredBlock210Arg1.
            recoveredBlock210PC := 233.
        ].
        recoveredBlock210Step = 233 ifTrue: [
            recoveredBlock210Stack2 := TobTBComboWidget.
            recoveredBlock210PC := 235.
        ].
        recoveredBlock210Step = 235 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) isKindOf: (recoveredBlock210Stack2).
            recoveredBlock210PC := 237.
        ].
        recoveredBlock210Step = 237 ifTrue: [
            (recoveredBlock210Stack1) ifTrue: [recoveredBlock210PC := 260] ifFalse: [recoveredBlock210PC := 240].
        ].
        recoveredBlock210Step = 240 ifTrue: [
            recoveredBlock210Stack1 := recoveredBlock210Arg1.
            recoveredBlock210PC := 241.
        ].
        recoveredBlock210Step = 241 ifTrue: [
            recoveredBlock210Stack2 := TobTBToggleButtonWidget.
            recoveredBlock210PC := 243.
        ].
        recoveredBlock210Step = 243 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) isKindOf: (recoveredBlock210Stack2).
            recoveredBlock210PC := 245.
        ].
        recoveredBlock210Step = 245 ifTrue: [
            (recoveredBlock210Stack1) ifTrue: [recoveredBlock210PC := 260] ifFalse: [recoveredBlock210PC := 248].
        ].
        recoveredBlock210Step = 248 ifTrue: [
            recoveredBlock210Stack1 := recoveredBlock210Arg1.
            recoveredBlock210PC := 249.
        ].
        recoveredBlock210Step = 249 ifTrue: [
            recoveredBlock210Stack2 := 'pressedCallback'.
            recoveredBlock210PC := 251.
        ].
        recoveredBlock210Step = 251 ifTrue: [
            recoveredBlock210Stack3 := owner.
            recoveredBlock210PC := 253.
        ].
        recoveredBlock210Step = 253 ifTrue: [
            recoveredBlock210Stack4 := 'toolbarSelection:clientData:callData:'.
            recoveredBlock210PC := 255.
        ].
        recoveredBlock210Step = 255 ifTrue: [
            recoveredBlock210Stack5 := owner.
            recoveredBlock210PC := 257.
        ].
        recoveredBlock210Step = 257 ifTrue: [
            (recoveredBlock210Stack1) addCallback: (recoveredBlock210Stack2) receiver: (recoveredBlock210Stack3) selector: (recoveredBlock210Stack4) clientData: (recoveredBlock210Stack5).
            recoveredBlock210PC := 260.
        ].
        recoveredBlock210Step = 260 ifTrue: [
            recoveredBlock210Stack1 := nil.
            recoveredBlock210PC := 261.
        ].
        recoveredBlock210Step = 261 ifTrue: [
            recoveredBlock210Stack2 := recoveredBlock210Arg1.
            recoveredBlock210PC := 262.
        ].
        recoveredBlock210Step = 262 ifTrue: [
            recoveredBlock210Stack3 := TobTBToggleButtonWidget.
            recoveredBlock210PC := 264.
        ].
        recoveredBlock210Step = 264 ifTrue: [
            recoveredBlock210Stack2 := (recoveredBlock210Stack2) isKindOf: (recoveredBlock210Stack3).
            recoveredBlock210PC := 266.
        ].
        recoveredBlock210Step = 266 ifTrue: [
            (recoveredBlock210Stack2) ifTrue: [recoveredBlock210PC := 270] ifFalse: [recoveredBlock210PC := 283].
        ].
        recoveredBlock210Step = 270 ifTrue: [
            recoveredBlock210PC := 271.
        ].
        recoveredBlock210Step = 271 ifTrue: [
            recoveredBlock210Stack1 := recoveredBlock210Arg1.
            recoveredBlock210PC := 272.
        ].
        recoveredBlock210Step = 272 ifTrue: [
            recoveredBlock210Stack2 := 'valueChangedCallback'.
            recoveredBlock210PC := 274.
        ].
        recoveredBlock210Step = 274 ifTrue: [
            recoveredBlock210Stack3 := owner.
            recoveredBlock210PC := 276.
        ].
        recoveredBlock210Step = 276 ifTrue: [
            recoveredBlock210Stack4 := 'toolbarSelection:clientData:callData:'.
            recoveredBlock210PC := 278.
        ].
        recoveredBlock210Step = 278 ifTrue: [
            recoveredBlock210Stack5 := owner.
            recoveredBlock210PC := 280.
        ].
        recoveredBlock210Step = 280 ifTrue: [
            recoveredBlock210Stack1 := (recoveredBlock210Stack1) addCallback: (recoveredBlock210Stack2) receiver: (recoveredBlock210Stack3) selector: (recoveredBlock210Stack4) clientData: (recoveredBlock210Stack5).
            recoveredBlock210PC := 283.
        ].
        recoveredBlock210Step = 283 ifTrue: [
            recoveredBlock210Result := recoveredBlock210Stack1.
            recoveredBlock210Done := true.
        ].
    ].
    recoveredBlock210Result
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := owner.
    recoveredValue14 := recoveredArg2.
    (recoveredValue13) initializeHoverForToolbar: (recoveredValue14).
    ^self
! !

