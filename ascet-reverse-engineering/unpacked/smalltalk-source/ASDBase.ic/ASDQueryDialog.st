"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004788c; bytecode file offset 0x9451f8"
!ASDQueryDialog methodsFor: 'recovered'!
queryString
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('queryString').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a6c; bytecode file offset 0x9451f8"
!ASDQueryDialog methodsFor: 'recovered'!
queryType
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('queryType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a704; bytecode file offset 0x957a6c"
!ASDQueryDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005acf8; bytecode file offset 0x957a6c"
!ASDQueryDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20070190; bytecode file offset 0x96cb7c"
!ASDQueryDialog methodsFor: 'recovered'!
browseManager
    | recoveredValue0 |
    recoveredValue0 := browseManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aaefc; bytecode file offset 0x9a7960"
!ASDQueryDialog methodsFor: 'recovered'!
setLastQueryType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sessionSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('lastQueryType') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c6700; bytecode file offset 0x9c3164"
!ASDQueryDialog methodsFor: 'recovered'!
browseManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    browseManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012849c; bytecode file offset 0xa24eb0"
!ASDQueryDialog methodsFor: 'recovered'!
sessionSettings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SessionSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            SessionSettings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SessionSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012d9a0; bytecode file offset 0xa2a26c"
!ASDQueryDialog methodsFor: 'recovered'!
updateWidgets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) queryString.
    recoveredValue1 := (self) getLastQueryString.
    (recoveredValue0) setString: (recoveredValue1).
    recoveredValue2 := (self) queryType.
    recoveredValue3 := (self) getLastQueryType.
    (recoveredValue2) setObject: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20137560; bytecode file offset 0xa33e24"
!ASDQueryDialog methodsFor: 'recovered'!
getLastQueryString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastQueryStrings.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := '*'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e370c; bytecode file offset 0xadffdc"
!ASDQueryDialog methodsFor: 'recovered'!
getLastQueryStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sessionSettings.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) sessionSettings.
    recoveredBlock7Value1 := OrderedCollection.
    recoveredBlock7Value2 := (recoveredBlock7Value1) with: ('*').
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('lastQueryString') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) at: ('lastQueryString') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f8464; bytecode file offset 0xaf4d88"
!ASDQueryDialog methodsFor: 'recovered'!
preClosingActivities
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBWindowConfiguration.
    recoveredValue1 := (self) determineLayoutConfiguration.
    recoveredValue2 := (recoveredValue0) createWithName: ('queryDialog') windowClass: (nil) layoutConfiguration: (recoveredValue1) contentsConfiguration: (nil) childConfigurations: (nil) versionString: (nil).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) class.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) lastWindowConfiguration: (recoveredValue4).
    super preClosingActivities.
    ^self
! !

"ASDBase.ic method 0x2024844c; bytecode file offset 0xb44d2c"
!ASDQueryDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) checkWindowConfiguration.
    (self) iconSmall: ('GeneralSearch') large: ('GeneralSearch32').
    (self) installActionKeys.
    recoveredValue0 := (self) queryType.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) commandListFlat.
    (recoveredValue1) items: (recoveredValue2).
    recoveredValue3 := (self) commandListFlat.
    recoveredValue4 := (recoveredValue3) size.
    (recoveredValue0) visibleItemCount: (recoveredValue4).
    (self) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x2024e4c0; bytecode file offset 0xb4ad8c"
!ASDQueryDialog methodsFor: 'recovered'!
getLastQueryType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sessionSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'lastQueryType'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := (self) sessionSettings.
    recoveredBlock7Value1 := (recoveredBlock7Value0) at: ('lastQueryType') put: ('menuBrowseItem:').
    recoveredBlock7Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'no_selection'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'menuBrowseItem:'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b7e40; bytecode file offset 0xbb4724"
!ASDQueryDialog methodsFor: 'recovered'!
setLastQueryString: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sessionSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'lastQueryString'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280e5140Value0 block280e5140Value1 |
    block280e5140Value0 := OrderedCollection.
    block280e5140Value1 := (block280e5140Value0) with: ('*').
    block280e5140Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) removeFirst.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202eabbc; bytecode file offset 0xbe74a8"
!ASDQueryDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'No query string selected!!'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 22.
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
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setLastQueryString: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setLastQueryType: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) browseManager.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) queryString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ee06c; bytecode file offset 0xbea950"
!ASDQueryDialog methodsFor: 'recovered'!
checkWindowConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastWindowConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) layoutConfiguration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203166fc; bytecode file offset 0xc12fe0"
!ASDQueryDialog methodsFor: 'recovered'!
commandListFlat
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('menuBrowseItem:').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('menuBrowseReferencesToItem:').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('menuBrowseMethods:').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('menuBrowseSendersOfMethods:').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ('menuBrowseMethodElements:').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) add: ('menuBrowseDefinerOfElement:').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) add: ('menuBrowseUserOfElement:').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) add: ('menuBrowseSenderOfMessage:').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) add: ('menuBrowseReceiverOfMessage:').
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20337c64; bytecode file offset 0xc3454c"
!ASDQueryDialog methodsFor: 'recovered'!
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
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x203963fc; bytecode file offset 0xc92d04"
!ASDQueryDialog methodsFor: 'recovered'!
commandList
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('menuBrowseItem:') put: ('Components').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('menuBrowseReferencesToItem:') put: ('References to component').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('menuBrowseMethods:') put: ('Declarations of method/process').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('menuBrowseSendersOfMethods:') put: ('References to method/process').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('menuBrowseDefinerOfElement:') put: ('Declarations of element').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('menuBrowseUserOfElement:') put: ('References to element').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('menuBrowseSenderOfMessage:') put: ('Senders of message').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('menuBrowseReceiverOfMessage:') put: ('Receivers of message').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('menuBrowseMethodElements:') put: ('Declarations of method/process element').
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20673178; bytecode file offset 0xf6fbc4"
!ASDQueryDialog methodsFor: 'recovered'!
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28127534Arg1 | 
    | block28127534Value0 block28127534Value1 block28127534Value2 block28127534Value3 block28127534Value4 block28127534Value5 block28127534Value6 block28127534Value7 block28127534Value8 block28127534Value9 block28127534Value10 block28127534Value11 |
    block28127534Value0 := block28127534Arg1.
    block28127534Value1 := block28127534Value0.
    block28127534Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28127534Value1) mwmInputMode: (block28127534Value2).
    block28127534Value3 := block28127534Value0.
    (block28127534Value3) title: ('Search').
    block28127534Value4 := block28127534Value0.
    block28127534Value5 := MWMDECORALL.
    block28127534Value6 := MWMDECORMINIMIZE.
    block28127534Value7 := (block28127534Value5) | (block28127534Value6).
    block28127534Value8 := MWMDECORMAXIMIZE.
    block28127534Value9 := (block28127534Value7) | (block28127534Value8).
    (block28127534Value4) mwmDecorations: (block28127534Value9).
    block28127534Value10 := block28127534Value0.
    (block28127534Value10) height: (125).
    block28127534Value11 := (block28127534Value0) width: (250).
    block28127534Value11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block28127558Arg1 | 
    | block28127558Value0 block28127558Value1 block28127558Value2 block28127558Value3 block28127558Value4 block28127558Value5 block28127558Value6 block28127558Value7 block28127558Value8 block28127558Value9 |
    block28127558Value0 := block28127558Arg1.
    block28127558Value1 := block28127558Value0.
    (block28127558Value1) x: (147).
    block28127558Value2 := block28127558Value0.
    (block28127558Value2) marginRight: (10).
    block28127558Value3 := block28127558Value0.
    (block28127558Value3) labelString: ('&Close').
    block28127558Value4 := block28127558Value0.
    (block28127558Value4) marginWidth: (0).
    block28127558Value5 := block28127558Value0.
    (block28127558Value5) marginHeight: (0).
    block28127558Value6 := block28127558Value0.
    (block28127558Value6) y: (45).
    block28127558Value7 := block28127558Value0.
    (block28127558Value7) height: (30).
    block28127558Value8 := block28127558Value0.
    (block28127558Value8) marginBottom: (10).
    block28127558Value9 := (block28127558Value0) width: (60).
    block28127558Value9
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := [:block2812757cArg1 | 
    | block2812757cValue0 block2812757cValue1 block2812757cValue2 block2812757cValue3 block2812757cValue4 block2812757cValue5 block2812757cValue6 block2812757cValue7 block2812757cValue8 block2812757cValue9 |
    block2812757cValue0 := block2812757cArg1.
    block2812757cValue1 := block2812757cValue0.
    (block2812757cValue1) x: (482).
    block2812757cValue2 := block2812757cValue0.
    block2812757cValue3 := XmSINGLELINE.
    (block2812757cValue2) separatorType: (block2812757cValue3).
    block2812757cValue4 := block2812757cValue0.
    block2812757cValue5 := XmVERTICAL.
    (block2812757cValue4) orientation: (block2812757cValue5).
    block2812757cValue6 := block2812757cValue0.
    block2812757cValue7 := (35) rounded.
    (block2812757cValue6) y: (block2812757cValue7).
    block2812757cValue8 := block2812757cValue0.
    (block2812757cValue8) height: (370).
    block2812757cValue9 := (block2812757cValue0) width: (1).
    block2812757cValue9
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := [:block281275a0Arg1 | 
    | block281275a0Value0 block281275a0Value1 block281275a0Value2 block281275a0Value3 block281275a0Value4 block281275a0Value5 block281275a0Value6 block281275a0Value7 block281275a0Value8 block281275a0Value9 |
    block281275a0Value0 := block281275a0Arg1.
    block281275a0Value1 := block281275a0Value0.
    (block281275a0Value1) x: (147).
    block281275a0Value2 := block281275a0Value0.
    (block281275a0Value2) marginRight: (10).
    block281275a0Value3 := block281275a0Value0.
    (block281275a0Value3) labelString: ('&Find').
    block281275a0Value4 := block281275a0Value0.
    (block281275a0Value4) marginWidth: (0).
    block281275a0Value5 := block281275a0Value0.
    (block281275a0Value5) marginHeight: (0).
    block281275a0Value6 := block281275a0Value0.
    (block281275a0Value6) y: (5).
    block281275a0Value7 := block281275a0Value0.
    (block281275a0Value7) height: (30).
    block281275a0Value8 := block281275a0Value0.
    (block281275a0Value8) marginBottom: (10).
    block281275a0Value9 := (block281275a0Value0) width: (60).
    block281275a0Value9
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := 'queryString'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := [:recoveredBlock336Arg1 | 
    | recoveredBlock336Value0 recoveredBlock336Value1 recoveredBlock336Value2 recoveredBlock336Value3 recoveredBlock336Value4 recoveredBlock336Value5 recoveredBlock336Value6 recoveredBlock336Value7 |
    recoveredBlock336Value0 := recoveredBlock336Arg1.
    recoveredBlock336Value1 := recoveredBlock336Value0.
    (recoveredBlock336Value1) editable: (true).
    recoveredBlock336Value2 := recoveredBlock336Value0.
    recoveredBlock336Value3 := (self) getLastQueryStrings.
    recoveredBlock336Value4 := (recoveredBlock336Value3) reverse.
    (recoveredBlock336Value2) items: (recoveredBlock336Value4).
    recoveredBlock336Value5 := (self) getLastQueryStrings.
    recoveredBlock336Value6 := (recoveredBlock336Value5) size.
    recoveredBlock336Value7 := (recoveredBlock336Value0) visibleItemCount: (recoveredBlock336Value6).
    recoveredBlock336Value7
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := 'queryString'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := 'queryStringLabel'.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := [:recoveredBlock390Arg1 | 
    | recoveredBlock390Value0 recoveredBlock390Value1 recoveredBlock390Value2 recoveredBlock390Value3 recoveredBlock390Value4 recoveredBlock390Value5 |
    recoveredBlock390Value0 := recoveredBlock390Arg1.
    recoveredBlock390Value1 := recoveredBlock390Value0.
    recoveredBlock390Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock390Value1) alignment: (recoveredBlock390Value2).
    recoveredBlock390Value3 := recoveredBlock390Value0.
    (recoveredBlock390Value3) labelString: ('Enter a string (Using * activates
case insensitive wildcard search)').
    recoveredBlock390Value4 := (self) defaultLabelBlue.
    recoveredBlock390Value5 := (recoveredBlock390Value0) foregroundColor: (recoveredBlock390Value4).
    recoveredBlock390Value5
].
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 'queryStringLabel'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := 'queryType'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack3 := [:recoveredBlock450Arg1 | 
    | recoveredBlock450Value0 recoveredBlock450Value1 recoveredBlock450Value2 |
    recoveredBlock450Value0 := recoveredBlock450Arg1.
    recoveredBlock450Value1 := [:recoveredBlock450Block457Arg1 | 
    | recoveredBlock450Block457Stack0 recoveredBlock450Block457Stack1 recoveredBlock450Block457Stack2 recoveredBlock450Block457Stack3 recoveredBlock450Block457PC recoveredBlock450Block457Step recoveredBlock450Block457Done recoveredBlock450Block457Result |
    recoveredBlock450Block457Stack0 := self.
    recoveredBlock450Block457PC := 464.
    recoveredBlock450Block457Done := false.
    [recoveredBlock450Block457Done not] whileTrue: [
        recoveredBlock450Block457Step := recoveredBlock450Block457PC.
        recoveredBlock450Block457Step = 464 ifTrue: [
            recoveredBlock450Block457Stack0 := (recoveredBlock450Block457Stack0) commandList.
            recoveredBlock450Block457PC := 469.
        ].
        recoveredBlock450Block457Step = 469 ifTrue: [
            recoveredBlock450Block457Stack1 := recoveredBlock450Block457Arg1.
            recoveredBlock450Block457PC := 470.
        ].
        recoveredBlock450Block457Step = 470 ifTrue: [
            recoveredBlock450Block457Stack2 := [
    'undefined'
].
            recoveredBlock450Block457PC := 474.
        ].
        recoveredBlock450Block457Step = 474 ifTrue: [
            recoveredBlock450Block457PC := 483.
        ].
        recoveredBlock450Block457Step = 483 ifTrue: [
            recoveredBlock450Block457Stack0 := (recoveredBlock450Block457Stack0) at: (recoveredBlock450Block457Stack1) ifAbsent: (recoveredBlock450Block457Stack2).
            recoveredBlock450Block457PC := 487.
        ].
        recoveredBlock450Block457Step = 487 ifTrue: [
            recoveredBlock450Block457Result := recoveredBlock450Block457Stack0.
            recoveredBlock450Block457Done := true.
        ].
    ].
    recoveredBlock450Block457Result
].
    recoveredBlock450Value2 := (recoveredBlock450Value0) printBlock: (recoveredBlock450Value1).
    recoveredBlock450Value2
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack2 := 'queryType'.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := 'queryTypeLabel'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack3 := [:recoveredBlock522Arg1 | 
    | recoveredBlock522Value0 recoveredBlock522Value1 recoveredBlock522Value2 recoveredBlock522Value3 recoveredBlock522Value4 recoveredBlock522Value5 recoveredBlock522Value6 recoveredBlock522Value7 |
    recoveredBlock522Value0 := recoveredBlock522Arg1.
    recoveredBlock522Value1 := recoveredBlock522Value0.
    (recoveredBlock522Value1) x: (21).
    recoveredBlock522Value2 := recoveredBlock522Value0.
    recoveredBlock522Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock522Value2) alignment: (recoveredBlock522Value3).
    recoveredBlock522Value4 := recoveredBlock522Value0.
    (recoveredBlock522Value4) labelString: ('Select what you are looking for...').
    recoveredBlock522Value5 := recoveredBlock522Value0.
    (recoveredBlock522Value5) y: (86).
    recoveredBlock522Value6 := (self) defaultLabelBlue.
    recoveredBlock522Value7 := (recoveredBlock522Value0) foregroundColor: (recoveredBlock522Value6).
    recoveredBlock522Value7
].
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := 'queryTypeLabel'.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := [:recoveredBlock588Arg1 | 
    | recoveredBlock588Value0 recoveredBlock588Value1 recoveredBlock588Value2 |
    recoveredBlock588Value0 := recoveredBlock588Arg1.
    recoveredBlock588Value1 := recoveredLocal8.
    recoveredBlock588Value2 := (recoveredBlock588Value0) workWindow: (recoveredBlock588Value1).
    recoveredBlock588Value2
].
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack2 := [:recoveredBlock612Arg1 | 
    | recoveredBlock612Value0 recoveredBlock612Value1 recoveredBlock612Value2 recoveredBlock612Value3 recoveredBlock612Value4 |
    recoveredBlock612Value0 := recoveredBlock612Arg1.
    recoveredBlock612Value1 := recoveredBlock612Value0.
    recoveredBlock612Value2 := recoveredLocal7.
    (recoveredBlock612Value1) cancelButton: (recoveredBlock612Value2).
    recoveredBlock612Value3 := recoveredLocal5.
    recoveredBlock612Value4 := (recoveredBlock612Value0) defaultButton: (recoveredBlock612Value3).
    recoveredBlock612Value4
].
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := [:recoveredBlock644Arg1 | 
    | recoveredBlock644Value0 recoveredBlock644Value1 recoveredBlock644Value2 recoveredBlock644Value3 recoveredBlock644Value4 recoveredBlock644Value5 recoveredBlock644Value6 recoveredBlock644Value7 recoveredBlock644Value8 |
    recoveredBlock644Value0 := recoveredBlock644Arg1.
    recoveredBlock644Value1 := recoveredBlock644Value0.
    recoveredBlock644Value2 := XmATTACHWIDGET.
    (recoveredBlock644Value1) topAttachment: (recoveredBlock644Value2).
    recoveredBlock644Value3 := recoveredBlock644Value0.
    recoveredBlock644Value4 := recoveredLocal5.
    (recoveredBlock644Value3) topWidget: (recoveredBlock644Value4).
    recoveredBlock644Value5 := recoveredBlock644Value0.
    (recoveredBlock644Value5) topOffset: (10).
    recoveredBlock644Value6 := recoveredBlock644Value0.
    recoveredBlock644Value7 := XmATTACHFORM.
    (recoveredBlock644Value6) rightAttachment: (recoveredBlock644Value7).
    recoveredBlock644Value8 := (recoveredBlock644Value0) rightOffset: (5).
    recoveredBlock644Value8
].
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := [:recoveredBlock698Arg1 | 
    | recoveredBlock698Value0 recoveredBlock698Value1 recoveredBlock698Value2 recoveredBlock698Value3 recoveredBlock698Value4 recoveredBlock698Value5 recoveredBlock698Value6 recoveredBlock698Value7 recoveredBlock698Value8 recoveredBlock698Value9 recoveredBlock698Value10 recoveredBlock698Value11 |
    recoveredBlock698Value0 := recoveredBlock698Arg1.
    recoveredBlock698Value1 := recoveredBlock698Value0.
    recoveredBlock698Value2 := XmATTACHFORM.
    (recoveredBlock698Value1) bottomAttachment: (recoveredBlock698Value2).
    recoveredBlock698Value3 := recoveredBlock698Value0.
    (recoveredBlock698Value3) bottomOffset: (5).
    recoveredBlock698Value4 := recoveredBlock698Value0.
    recoveredBlock698Value5 := XmATTACHFORM.
    (recoveredBlock698Value4) topAttachment: (recoveredBlock698Value5).
    recoveredBlock698Value6 := recoveredBlock698Value0.
    (recoveredBlock698Value6) topOffset: (5).
    recoveredBlock698Value7 := recoveredBlock698Value0.
    recoveredBlock698Value8 := XmATTACHWIDGET.
    (recoveredBlock698Value7) rightAttachment: (recoveredBlock698Value8).
    recoveredBlock698Value9 := recoveredBlock698Value0.
    recoveredBlock698Value10 := recoveredLocal5.
    (recoveredBlock698Value9) rightWidget: (recoveredBlock698Value10).
    recoveredBlock698Value11 := (recoveredBlock698Value0) rightOffset: (10).
    recoveredBlock698Value11
].
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack2 := [:block281275e8Arg1 | 
    | block281275e8Value0 block281275e8Value1 block281275e8Value2 block281275e8Value3 block281275e8Value4 block281275e8Value5 block281275e8Value6 |
    block281275e8Value0 := block281275e8Arg1.
    block281275e8Value1 := block281275e8Value0.
    block281275e8Value2 := XmATTACHFORM.
    (block281275e8Value1) topAttachment: (block281275e8Value2).
    block281275e8Value3 := block281275e8Value0.
    (block281275e8Value3) topOffset: (5).
    block281275e8Value4 := block281275e8Value0.
    block281275e8Value5 := XmATTACHFORM.
    (block281275e8Value4) rightAttachment: (block281275e8Value5).
    block281275e8Value6 := (block281275e8Value0) rightOffset: (5).
    block281275e8Value6
].
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := [:recoveredBlock814Arg1 | 
    | recoveredBlock814Value0 recoveredBlock814Value1 recoveredBlock814Value2 recoveredBlock814Value3 recoveredBlock814Value4 recoveredBlock814Value5 recoveredBlock814Value6 recoveredBlock814Value7 recoveredBlock814Value8 recoveredBlock814Value9 recoveredBlock814Value10 recoveredBlock814Value11 |
    recoveredBlock814Value0 := recoveredBlock814Arg1.
    recoveredBlock814Value1 := recoveredBlock814Value0.
    recoveredBlock814Value2 := XmATTACHFORM.
    (recoveredBlock814Value1) topAttachment: (recoveredBlock814Value2).
    recoveredBlock814Value3 := recoveredBlock814Value0.
    (recoveredBlock814Value3) topOffset: (5).
    recoveredBlock814Value4 := recoveredBlock814Value0.
    recoveredBlock814Value5 := XmATTACHFORM.
    (recoveredBlock814Value4) leftAttachment: (recoveredBlock814Value5).
    recoveredBlock814Value6 := recoveredBlock814Value0.
    (recoveredBlock814Value6) leftOffset: (5).
    recoveredBlock814Value7 := recoveredBlock814Value0.
    recoveredBlock814Value8 := XmATTACHWIDGET.
    (recoveredBlock814Value7) rightAttachment: (recoveredBlock814Value8).
    recoveredBlock814Value9 := recoveredBlock814Value0.
    recoveredBlock814Value10 := recoveredLocal6.
    (recoveredBlock814Value9) rightWidget: (recoveredBlock814Value10).
    recoveredBlock814Value11 := (recoveredBlock814Value0) rightOffset: (10).
    recoveredBlock814Value11
].
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack2 := [:recoveredBlock882Arg1 | 
    | recoveredBlock882Value0 recoveredBlock882Value1 recoveredBlock882Value2 recoveredBlock882Value3 recoveredBlock882Value4 recoveredBlock882Value5 recoveredBlock882Value6 recoveredBlock882Value7 recoveredBlock882Value8 recoveredBlock882Value9 recoveredBlock882Value10 recoveredBlock882Value11 recoveredBlock882Value12 recoveredBlock882Value13 |
    recoveredBlock882Value0 := recoveredBlock882Arg1.
    recoveredBlock882Value1 := recoveredBlock882Value0.
    recoveredBlock882Value2 := XmATTACHWIDGET.
    (recoveredBlock882Value1) topAttachment: (recoveredBlock882Value2).
    recoveredBlock882Value3 := recoveredBlock882Value0.
    recoveredBlock882Value4 := recoveredLocal4.
    (recoveredBlock882Value3) topWidget: (recoveredBlock882Value4).
    recoveredBlock882Value5 := recoveredBlock882Value0.
    (recoveredBlock882Value5) topOffset: (5).
    recoveredBlock882Value6 := recoveredBlock882Value0.
    recoveredBlock882Value7 := XmATTACHFORM.
    (recoveredBlock882Value6) leftAttachment: (recoveredBlock882Value7).
    recoveredBlock882Value8 := recoveredBlock882Value0.
    (recoveredBlock882Value8) leftOffset: (5).
    recoveredBlock882Value9 := recoveredBlock882Value0.
    recoveredBlock882Value10 := XmATTACHWIDGET.
    (recoveredBlock882Value9) rightAttachment: (recoveredBlock882Value10).
    recoveredBlock882Value11 := recoveredBlock882Value0.
    recoveredBlock882Value12 := recoveredLocal6.
    (recoveredBlock882Value11) rightWidget: (recoveredBlock882Value12).
    recoveredBlock882Value13 := (recoveredBlock882Value0) rightOffset: (10).
    recoveredBlock882Value13
].
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack2 := [:recoveredBlock958Arg1 | 
    | recoveredBlock958Value0 recoveredBlock958Value1 recoveredBlock958Value2 recoveredBlock958Value3 recoveredBlock958Value4 recoveredBlock958Value5 recoveredBlock958Value6 recoveredBlock958Value7 recoveredBlock958Value8 recoveredBlock958Value9 recoveredBlock958Value10 recoveredBlock958Value11 recoveredBlock958Value12 recoveredBlock958Value13 |
    recoveredBlock958Value0 := recoveredBlock958Arg1.
    recoveredBlock958Value1 := recoveredBlock958Value0.
    recoveredBlock958Value2 := XmATTACHWIDGET.
    (recoveredBlock958Value1) topAttachment: (recoveredBlock958Value2).
    recoveredBlock958Value3 := recoveredBlock958Value0.
    recoveredBlock958Value4 := recoveredLocal3.
    (recoveredBlock958Value3) topWidget: (recoveredBlock958Value4).
    recoveredBlock958Value5 := recoveredBlock958Value0.
    (recoveredBlock958Value5) topOffset: (15).
    recoveredBlock958Value6 := recoveredBlock958Value0.
    recoveredBlock958Value7 := XmATTACHFORM.
    (recoveredBlock958Value6) leftAttachment: (recoveredBlock958Value7).
    recoveredBlock958Value8 := recoveredBlock958Value0.
    (recoveredBlock958Value8) leftOffset: (5).
    recoveredBlock958Value9 := recoveredBlock958Value0.
    recoveredBlock958Value10 := XmATTACHWIDGET.
    (recoveredBlock958Value9) rightAttachment: (recoveredBlock958Value10).
    recoveredBlock958Value11 := recoveredBlock958Value0.
    recoveredBlock958Value12 := recoveredLocal6.
    (recoveredBlock958Value11) rightWidget: (recoveredBlock958Value12).
    recoveredBlock958Value13 := (recoveredBlock958Value0) rightOffset: (10).
    recoveredBlock958Value13
].
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack2 := [:recoveredBlock1034Arg1 | 
    | recoveredBlock1034Value0 recoveredBlock1034Value1 recoveredBlock1034Value2 recoveredBlock1034Value3 recoveredBlock1034Value4 recoveredBlock1034Value5 recoveredBlock1034Value6 recoveredBlock1034Value7 recoveredBlock1034Value8 recoveredBlock1034Value9 recoveredBlock1034Value10 recoveredBlock1034Value11 recoveredBlock1034Value12 recoveredBlock1034Value13 |
    recoveredBlock1034Value0 := recoveredBlock1034Arg1.
    recoveredBlock1034Value1 := recoveredBlock1034Value0.
    recoveredBlock1034Value2 := XmATTACHWIDGET.
    (recoveredBlock1034Value1) topAttachment: (recoveredBlock1034Value2).
    recoveredBlock1034Value3 := recoveredBlock1034Value0.
    recoveredBlock1034Value4 := recoveredLocal1.
    (recoveredBlock1034Value3) topWidget: (recoveredBlock1034Value4).
    recoveredBlock1034Value5 := recoveredBlock1034Value0.
    (recoveredBlock1034Value5) topOffset: (5).
    recoveredBlock1034Value6 := recoveredBlock1034Value0.
    recoveredBlock1034Value7 := XmATTACHFORM.
    (recoveredBlock1034Value6) leftAttachment: (recoveredBlock1034Value7).
    recoveredBlock1034Value8 := recoveredBlock1034Value0.
    (recoveredBlock1034Value8) leftOffset: (5).
    recoveredBlock1034Value9 := recoveredBlock1034Value0.
    recoveredBlock1034Value10 := XmATTACHWIDGET.
    (recoveredBlock1034Value9) rightAttachment: (recoveredBlock1034Value10).
    recoveredBlock1034Value11 := recoveredBlock1034Value0.
    recoveredBlock1034Value12 := recoveredLocal6.
    (recoveredBlock1034Value11) rightWidget: (recoveredBlock1034Value12).
    recoveredBlock1034Value13 := (recoveredBlock1034Value0) rightOffset: (10).
    recoveredBlock1034Value13
].
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

