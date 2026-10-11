"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004604c; bytecode file offset 0x9451f8"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
widgetSearchExpandedFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('searchExpandedFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004655c; bytecode file offset 0x9451f8"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
widgetMethodList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('methodList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046c6c; bytecode file offset 0x9451f8"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
widgetScrolledMethodList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledMethodList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047c2c; bytecode file offset 0x9451f8"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
widgetSearchAllToggle
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('searchAllToggle').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e9cc; bytecode file offset 0x94d048"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) expandCollapseExpandSearch.
    ^self
! !

"ASDBase.ic method 0x2005a9e0; bytecode file offset 0x957a6c"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
close: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200cfb58; bytecode file offset 0x9cc42c"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
disableReplace
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := disableReplace.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('disableReplace') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cfb6c; bytecode file offset 0x9cc42c"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
view
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := disableReplace.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('view') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e60e4; bytecode file offset 0x9e2abc"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
initialize
    super initialize.
    (self) disableReplace: (false).
    ^self
! !

"ASDBase.ic method 0x20111b30; bytecode file offset 0xa0e3f4"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
searchAllActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) set.
    (self) searchExpanded: (recoveredValue1).
    (self) expandCollapseExpandSearch.
    (self) searchInAllMethodsProcesses.
    ^self
! !

"ASDBase.ic method 0x2013bf38; bytecode file offset 0xa387f8"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
searchExpanded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := disableReplace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'searchExpanded'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015b3a4; bytecode file offset 0xa57c80"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
methodListDefault: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) view.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) selectSpecificationOrMethod: (recoveredValue3).
    (self) search: (nil) clientData: (nil) callData: (nil).
    ^self
! !

"ASDBase.ic method 0x20184378; bytecode file offset 0xa80c84"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
widgetDictionary: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := disableReplace.
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
            disableReplace := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := disableReplace.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'widgetDictionary'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20184390; bytecode file offset 0xa80c84"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
disableReplace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := disableReplace.
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
            disableReplace := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := disableReplace.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'disableReplace'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201843a8; bytecode file offset 0xa80c84"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
view: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := disableReplace.
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
            disableReplace := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := disableReplace.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'view'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201843c0; bytecode file offset 0xa80c84"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
searchExpanded: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := disableReplace.
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
            disableReplace := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := disableReplace.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'searchExpanded'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197e80; bytecode file offset 0xa94750"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
instanceListVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) view.
    recoveredValue4 := (recoveredValue3) uiController.
    recoveredValue5 := (recoveredValue4) item.
    recoveredValue6 := (recoveredValue2) visualCallBackStringForNavigation: (recoveredValue5).
    (recoveredValue0) label: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) view.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (recoveredValue9) item.
    recoveredValue11 := (recoveredValue8) getIconForSpecificationOrMethod: (recoveredValue10).
    (recoveredValue7) icon: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x201c7d10; bytecode file offset 0xac45d8"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
widgetDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := disableReplace.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := disableReplace.
    recoveredBlock8Value1 := Dictionary.
    recoveredBlock8Value2 := (recoveredBlock8Value1) new.
    recoveredBlock8Value3 := (recoveredBlock8Value0) at: ('widgetDictionary') put: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue2 := (recoveredValue0) at: ('widgetDictionary') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ce374; bytecode file offset 0xacac30"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
widgetAt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f1a50; bytecode file offset 0xaee30c"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
minSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 240.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 500.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 240.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 305.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f1768; bytecode file offset 0xbee03c"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
isSearchStringInMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) indicateSearching.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) view.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) procedureSourceStringMethod: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) caseOption.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) matchCase: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20377eb0; bytecode file offset 0xc7478c"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
expandCollapseExpandSearch
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSearchExpandedFrame.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSearchExpandedFrame.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) minSize.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20399bbc; bytecode file offset 0xc96498"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
selectText: recoveredArg1 text: recoveredArg2 initPosition: recoveredArg3 forward: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) caseOption.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfWithoutStarMatch: (recoveredStack2) matchCase: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) setSelection: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) showPosition: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20403bf8; bytecode file offset 0xd004dc"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
focus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XmCRFOCUS.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSelection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableReplace.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableReplace.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := focusDone.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoard.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            focusDone := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041a0ec; bytecode file offset 0xd169d0"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
search
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) indicateSearching.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) forwardDirection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchFor: (recoveredStack1) forward: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) indicateNotSearching.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) clearSelection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) indicateNotFound.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableReplace.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableReplace.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) indicateNotSearching.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204355cc; bytecode file offset 0xd31ed0"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
searchInAllMethodsProcesses
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := indicatorLabel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) view.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMethods.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) view.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMethods.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 :recoveredBlock43Arg2 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) isSearchStringInMethod: (recoveredBlock43Stack1).
            recoveredBlock43PC := 53.
        ].
        recoveredBlock43Step = 53 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 56] ifFalse: [recoveredBlock43PC := 62].
        ].
        recoveredBlock43Step = 56 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal3.
            recoveredBlock43PC := 59.
        ].
        recoveredBlock43Step = 59 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            (recoveredBlock43Stack0) add: (recoveredBlock43Stack1).
            recoveredBlock43PC := 62.
        ].
        recoveredBlock43Step = 62 ifTrue: [
            recoveredBlock43Stack0 := indicatorLabel.
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43Stack1 := 'Searching ('.
            recoveredBlock43PC := 66.
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg2.
            recoveredBlock43PC := 67.
        ].
        recoveredBlock43Step = 67 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) asString.
            recoveredBlock43PC := 69.
        ].
        recoveredBlock43Step = 69 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) , (recoveredBlock43Stack2).
            recoveredBlock43PC := 71.
        ].
        recoveredBlock43Step = 71 ifTrue: [
            recoveredBlock43Stack2 := '/'.
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) , (recoveredBlock43Stack2).
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal2.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) , (recoveredBlock43Stack2).
            recoveredBlock43PC := 80.
        ].
        recoveredBlock43Step = 80 ifTrue: [
            recoveredBlock43Stack2 := ')'.
            recoveredBlock43PC := 82.
        ].
        recoveredBlock43Step = 82 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) , (recoveredBlock43Stack2).
            recoveredBlock43PC := 84.
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) labelString: (recoveredBlock43Stack1).
            recoveredBlock43PC := 86.
        ].
        recoveredBlock43Step = 86 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack0.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := indicatorLabel.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMethodList.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045d7a0; bytecode file offset 0xd5a13c"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
createOccurrencesWidgetsInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'methodList'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block2810051cArg1 | 
    | block2810051cValue0 block2810051cValue1 block2810051cValue2 block2810051cValue3 |
    block2810051cValue0 := block2810051cArg1.
    block2810051cValue1 := block2810051cValue0.
    block2810051cValue2 := XmSINGLESELECT.
    (block2810051cValue1) selectionPolicy: (block2810051cValue2).
    block2810051cValue3 := block2810051cValue0.
    (block2810051cValue3) itemHeight: (18).
    block2810051cValue0
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'scrolledMethodList'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'methodList'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block28100540Arg1 | 
    | block28100540Value0 block28100540Value1 block28100540Value2 block28100540Value3 block28100540Value4 block28100540Value5 block28100540Value6 block28100540Value7 block28100540Value8 block28100540Value9 block28100540Value10 block28100540Value11 block28100540Value12 |
    block28100540Value0 := block28100540Arg1.
    block28100540Value1 := block28100540Value0.
    block28100540Value2 := XmATTACHFORM.
    (block28100540Value1) topAttachment: (block28100540Value2).
    block28100540Value3 := block28100540Value0.
    (block28100540Value3) topOffset: (5).
    block28100540Value4 := block28100540Value0.
    block28100540Value5 := XmATTACHFORM.
    (block28100540Value4) leftAttachment: (block28100540Value5).
    block28100540Value6 := block28100540Value0.
    (block28100540Value6) leftOffset: (5).
    block28100540Value7 := block28100540Value0.
    block28100540Value8 := XmATTACHFORM.
    (block28100540Value7) rightAttachment: (block28100540Value8).
    block28100540Value9 := block28100540Value0.
    (block28100540Value9) rightOffset: (5).
    block28100540Value10 := block28100540Value0.
    block28100540Value11 := XmATTACHFORM.
    (block28100540Value10) bottomAttachment: (block28100540Value11).
    block28100540Value12 := (block28100540Value0) bottomOffset: (5).
    block28100540Value12
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := 'instanceListVisual:clientData:callData:'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 'methodListDefault:clientData:callData:'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d7114; bytecode file offset 0xed3a38"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
replaceAllFull
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerText.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) indicateReplaceInProgress: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := searchText.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) caseOption.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfWithoutStarMatch: (recoveredStack1) matchCase: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := replaceText.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) indicateUpdating.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) removeTextCallback.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 recoveredBlock155Value4 |
    recoveredBlock155Value0 := recoveredLocal1.
    recoveredBlock155Value1 := recoveredBlock155Arg1.
    recoveredBlock155Value2 := (recoveredBlock155Value1) size.
    recoveredBlock155Value3 := (recoveredBlock155Value0) + (recoveredBlock155Value2).
    recoveredBlock155Value4 := recoveredBlock155Value3.
    recoveredLocal1 := recoveredBlock155Value4.
    recoveredBlock155Value3
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := replaceText.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := [:recoveredBlock217Arg1 | 
    | recoveredBlock217Stack0 recoveredBlock217Stack1 recoveredBlock217Stack2 recoveredBlock217Stack3 recoveredBlock217Stack4 recoveredBlock217Stack5 recoveredBlock217PC recoveredBlock217Step recoveredBlock217Done recoveredBlock217Result |
    recoveredBlock217Stack0 := self.
    recoveredBlock217PC := 224.
    recoveredBlock217Done := false.
    [recoveredBlock217Done not] whileTrue: [
        recoveredBlock217Step := recoveredBlock217PC.
        recoveredBlock217Step = 224 ifTrue: [
            recoveredBlock217Stack1 := recoveredBlock217Arg1.
            recoveredBlock217PC := 225.
        ].
        recoveredBlock217Step = 225 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) isEmpty.
            recoveredBlock217PC := 227.
        ].
        recoveredBlock217Step = 227 ifTrue: [
            (recoveredBlock217Stack1) ifTrue: [recoveredBlock217PC := 258] ifFalse: [recoveredBlock217PC := 230].
        ].
        recoveredBlock217Step = 230 ifTrue: [
            recoveredBlock217Stack1 := recoveredLocal6.
            recoveredBlock217PC := 233.
        ].
        recoveredBlock217Step = 233 ifTrue: [
            recoveredBlock217Stack2 := recoveredLocal5.
            recoveredBlock217PC := 236.
        ].
        recoveredBlock217Step = 236 ifTrue: [
            recoveredBlock217Stack3 := recoveredLocal5.
            recoveredBlock217PC := 239.
        ].
        recoveredBlock217Step = 239 ifTrue: [
            recoveredBlock217Stack4 := recoveredBlock217Arg1.
            recoveredBlock217PC := 240.
        ].
        recoveredBlock217Step = 240 ifTrue: [
            recoveredBlock217Stack4 := (recoveredBlock217Stack4) size.
            recoveredBlock217PC := 242.
        ].
        recoveredBlock217Step = 242 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) + (recoveredBlock217Stack4).
            recoveredBlock217PC := 243.
        ].
        recoveredBlock217Step = 243 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) + (-1).
            recoveredBlock217PC := 244.
        ].
        recoveredBlock217Step = 244 ifTrue: [
            recoveredBlock217Stack4 := recoveredBlock217Arg1.
            recoveredBlock217PC := 245.
        ].
        recoveredBlock217Step = 245 ifTrue: [
            (recoveredBlock217Stack1) replaceFrom: (recoveredBlock217Stack2) to: (recoveredBlock217Stack3) with: (recoveredBlock217Stack4).
            recoveredBlock217PC := 248.
        ].
        recoveredBlock217Step = 248 ifTrue: [
            recoveredBlock217Stack1 := recoveredLocal5.
            recoveredBlock217PC := 251.
        ].
        recoveredBlock217Step = 251 ifTrue: [
            recoveredBlock217Stack2 := recoveredBlock217Arg1.
            recoveredBlock217PC := 252.
        ].
        recoveredBlock217Step = 252 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) size.
            recoveredBlock217PC := 254.
        ].
        recoveredBlock217Step = 254 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) + (recoveredBlock217Stack2).
            recoveredBlock217PC := 255.
        ].
        recoveredBlock217Step = 255 ifTrue: [
            recoveredLocal5 := recoveredBlock217Stack1.
            recoveredBlock217PC := 258.
        ].
        recoveredBlock217Step = 258 ifTrue: [
            recoveredBlock217Stack1 := nil.
            recoveredBlock217PC := 259.
        ].
        recoveredBlock217Step = 259 ifTrue: [
            recoveredBlock217Stack2 := recoveredBlock217Arg1.
            recoveredBlock217PC := 260.
        ].
        recoveredBlock217Step = 260 ifTrue: [
            recoveredBlock217Stack3 := recoveredLocal2.
            recoveredBlock217PC := 263.
        ].
        recoveredBlock217Step = 263 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) last.
            recoveredBlock217PC := 265.
        ].
        recoveredBlock217Step = 265 ifTrue: [
            (recoveredBlock217Stack2 == recoveredBlock217Stack3) ifTrue: [recoveredBlock217PC := 304] ifFalse: [recoveredBlock217PC := 268].
        ].
        recoveredBlock217Step = 268 ifTrue: [
            recoveredBlock217PC := 269.
        ].
        recoveredBlock217Step = 269 ifTrue: [
            recoveredBlock217Stack1 := recoveredLocal6.
            recoveredBlock217PC := 272.
        ].
        recoveredBlock217Step = 272 ifTrue: [
            recoveredBlock217Stack2 := recoveredLocal5.
            recoveredBlock217PC := 275.
        ].
        recoveredBlock217Step = 275 ifTrue: [
            recoveredBlock217Stack3 := recoveredLocal5.
            recoveredBlock217PC := 278.
        ].
        recoveredBlock217Step = 278 ifTrue: [
            recoveredBlock217Stack4 := recoveredLocal3.
            recoveredBlock217PC := 281.
        ].
        recoveredBlock217Step = 281 ifTrue: [
            recoveredBlock217Stack4 := (recoveredBlock217Stack4) size.
            recoveredBlock217PC := 283.
        ].
        recoveredBlock217Step = 283 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) + (recoveredBlock217Stack4).
            recoveredBlock217PC := 284.
        ].
        recoveredBlock217Step = 284 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) + (-1).
            recoveredBlock217PC := 285.
        ].
        recoveredBlock217Step = 285 ifTrue: [
            recoveredBlock217Stack4 := recoveredLocal3.
            recoveredBlock217PC := 288.
        ].
        recoveredBlock217Step = 288 ifTrue: [
            (recoveredBlock217Stack1) replaceFrom: (recoveredBlock217Stack2) to: (recoveredBlock217Stack3) with: (recoveredBlock217Stack4).
            recoveredBlock217PC := 291.
        ].
        recoveredBlock217Step = 291 ifTrue: [
            recoveredBlock217Stack1 := recoveredLocal5.
            recoveredBlock217PC := 294.
        ].
        recoveredBlock217Step = 294 ifTrue: [
            recoveredBlock217Stack2 := recoveredLocal3.
            recoveredBlock217PC := 297.
        ].
        recoveredBlock217Step = 297 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) size.
            recoveredBlock217PC := 299.
        ].
        recoveredBlock217Step = 299 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) + (recoveredBlock217Stack2).
            recoveredBlock217PC := 300.
        ].
        recoveredBlock217Step = 300 ifTrue: [
            recoveredBlock217Stack2 := recoveredBlock217Stack1.
            recoveredBlock217PC := 301.
        ].
        recoveredBlock217Step = 301 ifTrue: [
            recoveredLocal5 := recoveredBlock217Stack2.
            recoveredBlock217PC := 304.
        ].
        recoveredBlock217Step = 304 ifTrue: [
            recoveredBlock217Result := recoveredBlock217Stack1.
            recoveredBlock217Done := true.
        ].
    ].
    recoveredBlock217Result
].
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) forwardDirection.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastPosition.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredPC := 343.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) ownerText: (recoveredStack1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) addTextCallback.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) indicateReplaced: (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062c6b4; bytecode file offset 0xf28ff8"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
replaceAllPartial
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectionPosition.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) forwardDirection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursorPosition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastPosition.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursorPosition.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerText.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) indicateReplaceInProgress: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := searchText.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) caseOption.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfWithoutStarMatch: (recoveredStack1) matchCase: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 201] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 592] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) removeTextCallback.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) indicateUpdating.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := replaceText.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Value0 recoveredBlock249Value1 recoveredBlock249Value2 recoveredBlock249Value3 recoveredBlock249Value4 |
    recoveredBlock249Value0 := recoveredLocal2.
    recoveredBlock249Value1 := recoveredBlock249Arg1.
    recoveredBlock249Value2 := (recoveredBlock249Value1) size.
    recoveredBlock249Value3 := (recoveredBlock249Value0) + (recoveredBlock249Value2).
    recoveredBlock249Value4 := recoveredBlock249Value3.
    recoveredLocal2 := recoveredBlock249Value4.
    recoveredBlock249Value3
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := replaceText.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBString.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBString.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := DBString.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredPC := 330.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := [:recoveredBlock338Arg1 | 
    | recoveredBlock338Stack0 recoveredBlock338Stack1 recoveredBlock338Stack2 recoveredBlock338Stack3 recoveredBlock338Stack4 recoveredBlock338Stack5 recoveredBlock338PC recoveredBlock338Step recoveredBlock338Done recoveredBlock338Result |
    recoveredBlock338Stack0 := self.
    recoveredBlock338PC := 344.
    recoveredBlock338Done := false.
    [recoveredBlock338Done not] whileTrue: [
        recoveredBlock338Step := recoveredBlock338PC.
        recoveredBlock338Step = 344 ifTrue: [
            recoveredBlock338Stack1 := recoveredBlock338Arg1.
            recoveredBlock338PC := 345.
        ].
        recoveredBlock338Step = 345 ifTrue: [
            recoveredBlock338Stack1 := (recoveredBlock338Stack1) isEmpty.
            recoveredBlock338PC := 347.
        ].
        recoveredBlock338Step = 347 ifTrue: [
            (recoveredBlock338Stack1) ifTrue: [recoveredBlock338PC := 378] ifFalse: [recoveredBlock338PC := 350].
        ].
        recoveredBlock338Step = 350 ifTrue: [
            recoveredBlock338Stack1 := recoveredLocal6.
            recoveredBlock338PC := 353.
        ].
        recoveredBlock338Step = 353 ifTrue: [
            recoveredBlock338Stack2 := recoveredLocal5.
            recoveredBlock338PC := 356.
        ].
        recoveredBlock338Step = 356 ifTrue: [
            recoveredBlock338Stack3 := recoveredLocal5.
            recoveredBlock338PC := 359.
        ].
        recoveredBlock338Step = 359 ifTrue: [
            recoveredBlock338Stack4 := recoveredBlock338Arg1.
            recoveredBlock338PC := 360.
        ].
        recoveredBlock338Step = 360 ifTrue: [
            recoveredBlock338Stack4 := (recoveredBlock338Stack4) size.
            recoveredBlock338PC := 362.
        ].
        recoveredBlock338Step = 362 ifTrue: [
            recoveredBlock338Stack3 := (recoveredBlock338Stack3) + (recoveredBlock338Stack4).
            recoveredBlock338PC := 363.
        ].
        recoveredBlock338Step = 363 ifTrue: [
            recoveredBlock338Stack3 := (recoveredBlock338Stack3) + (-1).
            recoveredBlock338PC := 364.
        ].
        recoveredBlock338Step = 364 ifTrue: [
            recoveredBlock338Stack4 := recoveredBlock338Arg1.
            recoveredBlock338PC := 365.
        ].
        recoveredBlock338Step = 365 ifTrue: [
            (recoveredBlock338Stack1) replaceFrom: (recoveredBlock338Stack2) to: (recoveredBlock338Stack3) with: (recoveredBlock338Stack4).
            recoveredBlock338PC := 368.
        ].
        recoveredBlock338Step = 368 ifTrue: [
            recoveredBlock338Stack1 := recoveredLocal5.
            recoveredBlock338PC := 371.
        ].
        recoveredBlock338Step = 371 ifTrue: [
            recoveredBlock338Stack2 := recoveredBlock338Arg1.
            recoveredBlock338PC := 372.
        ].
        recoveredBlock338Step = 372 ifTrue: [
            recoveredBlock338Stack2 := (recoveredBlock338Stack2) size.
            recoveredBlock338PC := 374.
        ].
        recoveredBlock338Step = 374 ifTrue: [
            recoveredBlock338Stack1 := (recoveredBlock338Stack1) + (recoveredBlock338Stack2).
            recoveredBlock338PC := 375.
        ].
        recoveredBlock338Step = 375 ifTrue: [
            recoveredLocal5 := recoveredBlock338Stack1.
            recoveredBlock338PC := 378.
        ].
        recoveredBlock338Step = 378 ifTrue: [
            recoveredBlock338Stack1 := nil.
            recoveredBlock338PC := 379.
        ].
        recoveredBlock338Step = 379 ifTrue: [
            recoveredBlock338Stack2 := recoveredBlock338Arg1.
            recoveredBlock338PC := 380.
        ].
        recoveredBlock338Step = 380 ifTrue: [
            recoveredBlock338Stack3 := recoveredLocal3.
            recoveredBlock338PC := 383.
        ].
        recoveredBlock338Step = 383 ifTrue: [
            recoveredBlock338Stack3 := (recoveredBlock338Stack3) last.
            recoveredBlock338PC := 385.
        ].
        recoveredBlock338Step = 385 ifTrue: [
            (recoveredBlock338Stack2 == recoveredBlock338Stack3) ifTrue: [recoveredBlock338PC := 424] ifFalse: [recoveredBlock338PC := 388].
        ].
        recoveredBlock338Step = 388 ifTrue: [
            recoveredBlock338PC := 389.
        ].
        recoveredBlock338Step = 389 ifTrue: [
            recoveredBlock338Stack1 := recoveredLocal6.
            recoveredBlock338PC := 392.
        ].
        recoveredBlock338Step = 392 ifTrue: [
            recoveredBlock338Stack2 := recoveredLocal5.
            recoveredBlock338PC := 395.
        ].
        recoveredBlock338Step = 395 ifTrue: [
            recoveredBlock338Stack3 := recoveredLocal5.
            recoveredBlock338PC := 398.
        ].
        recoveredBlock338Step = 398 ifTrue: [
            recoveredBlock338Stack4 := recoveredLocal8.
            recoveredBlock338PC := 401.
        ].
        recoveredBlock338Step = 401 ifTrue: [
            recoveredBlock338Stack4 := (recoveredBlock338Stack4) size.
            recoveredBlock338PC := 403.
        ].
        recoveredBlock338Step = 403 ifTrue: [
            recoveredBlock338Stack3 := (recoveredBlock338Stack3) + (recoveredBlock338Stack4).
            recoveredBlock338PC := 404.
        ].
        recoveredBlock338Step = 404 ifTrue: [
            recoveredBlock338Stack3 := (recoveredBlock338Stack3) + (-1).
            recoveredBlock338PC := 405.
        ].
        recoveredBlock338Step = 405 ifTrue: [
            recoveredBlock338Stack4 := recoveredLocal8.
            recoveredBlock338PC := 408.
        ].
        recoveredBlock338Step = 408 ifTrue: [
            (recoveredBlock338Stack1) replaceFrom: (recoveredBlock338Stack2) to: (recoveredBlock338Stack3) with: (recoveredBlock338Stack4).
            recoveredBlock338PC := 411.
        ].
        recoveredBlock338Step = 411 ifTrue: [
            recoveredBlock338Stack1 := recoveredLocal5.
            recoveredBlock338PC := 414.
        ].
        recoveredBlock338Step = 414 ifTrue: [
            recoveredBlock338Stack2 := recoveredLocal8.
            recoveredBlock338PC := 417.
        ].
        recoveredBlock338Step = 417 ifTrue: [
            recoveredBlock338Stack2 := (recoveredBlock338Stack2) size.
            recoveredBlock338PC := 419.
        ].
        recoveredBlock338Step = 419 ifTrue: [
            recoveredBlock338Stack1 := (recoveredBlock338Stack1) + (recoveredBlock338Stack2).
            recoveredBlock338PC := 420.
        ].
        recoveredBlock338Step = 420 ifTrue: [
            recoveredBlock338Stack2 := recoveredBlock338Stack1.
            recoveredBlock338PC := 421.
        ].
        recoveredBlock338Step = 421 ifTrue: [
            recoveredLocal5 := recoveredBlock338Stack2.
            recoveredBlock338PC := 424.
        ].
        recoveredBlock338Step = 424 ifTrue: [
            recoveredBlock338Result := recoveredBlock338Stack1.
            recoveredBlock338Done := true.
        ].
    ].
    recoveredBlock338Result
].
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := (recoveredStack0) forwardDirection.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerText.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack4 := (recoveredStack4) ownerText.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) ownerText: (recoveredStack1).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerText.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastPosition.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredPC := 589.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerText.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerText.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack3 := (recoveredStack3) ownerText.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack0) ownerText: (recoveredStack1).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerText.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack0) addTextCallback.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            (recoveredStack0) indicateReplaced: (recoveredStack1).
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206913dc; bytecode file offset 0xf8dec4"
!EtasCwTextSearchDialog methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ownerChanged: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'form'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block2812b260Arg1 | 
    | block2812b260Value0 block2812b260Value1 block2812b260Value2 block2812b260Value3 block2812b260Value4 |
    block2812b260Value0 := block2812b260Arg1.
    block2812b260Value1 := block2812b260Value0.
    (block2812b260Value1) autoUnmanage: (false).
    block2812b260Value2 := block2812b260Value0.
    (block2812b260Value2) marginWidth: (10).
    block2812b260Value3 := block2812b260Value0.
    (block2812b260Value3) marginHeight: (10).
    block2812b260Value4 := (block2812b260Value0) verticalSpacing: (10).
    block2812b260Value4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'label1'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:block2812b284Arg1 | 
    | block2812b284Value0 block2812b284Value1 block2812b284Value2 block2812b284Value3 block2812b284Value4 |
    block2812b284Value0 := block2812b284Arg1.
    block2812b284Value1 := block2812b284Value0.
    block2812b284Value2 := XmALIGNMENTCENTER.
    (block2812b284Value1) alignment: (block2812b284Value2).
    block2812b284Value3 := MxESTa26.
    block2812b284Value4 := (block2812b284Value0) labelString: (block2812b284Value3).
    block2812b284Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'searchReplaceStrings'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [:block2812b2a8Arg1 | 
    | block2812b2a8Value0 block2812b2a8Value1 block2812b2a8Value2 block2812b2a8Value3 block2812b2a8Value4 block2812b2a8Value5 block2812b2a8Value6 |
    block2812b2a8Value0 := block2812b2a8Arg1.
    block2812b2a8Value1 := block2812b2a8Value0.
    (block2812b2a8Value1) numColumns: (2).
    block2812b2a8Value2 := block2812b2a8Value0.
    (block2812b2a8Value2) adjustLast: (true).
    block2812b2a8Value3 := block2812b2a8Value0.
    block2812b2a8Value4 := XmPACKCOLUMN.
    (block2812b2a8Value3) packing: (block2812b2a8Value4).
    block2812b2a8Value5 := XmVERTICAL.
    block2812b2a8Value6 := (block2812b2a8Value0) orientation: (block2812b2a8Value5).
    block2812b2a8Value6
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'searchStatic'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:block2812b2ccArg1 | 
    | block2812b2ccValue0 block2812b2ccValue1 block2812b2ccValue2 |
    block2812b2ccValue0 := block2812b2ccArg1.
    block2812b2ccValue1 := MxESTa27.
    block2812b2ccValue2 := (block2812b2ccValue0) labelString: (block2812b2ccValue1).
    block2812b2ccValue2
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'replaceStatic'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := [:block2812b2f0Arg1 | 
    | block2812b2f0Value0 block2812b2f0Value1 block2812b2f0Value2 |
    block2812b2f0Value0 := block2812b2f0Arg1.
    block2812b2f0Value1 := MxESTa28.
    block2812b2f0Value2 := (block2812b2f0Value0) labelString: (block2812b2f0Value1).
    block2812b2f0Value2
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 'searchText'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := [:block2812b314Arg1 | 
    | block2812b314Value0 block2812b314Value1 block2812b314Value2 block2812b314Value3 |
    block2812b314Value0 := block2812b314Arg1.
    block2812b314Value1 := block2812b314Value0.
    (block2812b314Value1) columns: (1).
    block2812b314Value2 := XmSINGLELINEEDIT.
    block2812b314Value3 := (block2812b314Value0) editMode: (block2812b314Value2).
    block2812b314Value3
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) createText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            searchText := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'replaceText'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := [:block2812b338Arg1 | 
    | block2812b338Value0 block2812b338Value1 block2812b338Value2 block2812b338Value3 |
    block2812b338Value0 := block2812b338Arg1.
    block2812b338Value1 := block2812b338Value0.
    (block2812b338Value1) columns: (1).
    block2812b338Value2 := XmSINGLELINEEDIT.
    block2812b338Value3 := (block2812b338Value0) editMode: (block2812b338Value2).
    block2812b338Value3
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) createText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            replaceText := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := 'options'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [:block2812b35cArg1 | 
    | block2812b35cValue0 block2812b35cValue1 block2812b35cValue2 block2812b35cValue3 block2812b35cValue4 block2812b35cValue5 block2812b35cValue6 block2812b35cValue7 |
    block2812b35cValue0 := block2812b35cArg1.
    block2812b35cValue1 := block2812b35cValue0.
    (block2812b35cValue1) numColumns: (2).
    block2812b35cValue2 := block2812b35cValue0.
    (block2812b35cValue2) spacing: (10).
    block2812b35cValue3 := block2812b35cValue0.
    (block2812b35cValue3) adjustLast: (false).
    block2812b35cValue4 := block2812b35cValue0.
    block2812b35cValue5 := XmPACKCOLUMN.
    (block2812b35cValue4) packing: (block2812b35cValue5).
    block2812b35cValue6 := XmVERTICAL.
    block2812b35cValue7 := (block2812b35cValue0) orientation: (block2812b35cValue6).
    block2812b35cValue7
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := 'frameWidget'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := [:block2812b380Arg1 | 
    | block2812b380Value0 block2812b380Value1 block2812b380Value2 |
    block2812b380Value0 := block2812b380Arg1.
    block2812b380Value1 := MxESTa29.
    block2812b380Value2 := (block2812b380Value0) labelString: (block2812b380Value1).
    block2812b380Value2
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := 'directionBox'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := [:block2812b3a4Arg1 | 
    | block2812b3a4Value0 block2812b3a4Value1 block2812b3a4Value2 |
    block2812b3a4Value0 := block2812b3a4Arg1.
    block2812b3a4Value1 := XmVERTICAL.
    block2812b3a4Value2 := (block2812b3a4Value0) orientation: (block2812b3a4Value1).
    block2812b3a4Value2
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRadioBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 'forwardToggle'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := [:block2812b3c8Arg1 | 
    | block2812b3c8Value0 block2812b3c8Value1 block2812b3c8Value2 block2812b3c8Value3 |
    block2812b3c8Value0 := block2812b3c8Arg1.
    block2812b3c8Value1 := block2812b3c8Value0.
    block2812b3c8Value2 := MxESTa30.
    (block2812b3c8Value1) labelString: (block2812b3c8Value2).
    block2812b3c8Value3 := (block2812b3c8Value0) set: (true).
    block2812b3c8Value3
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            forwardToggle := recoveredStack0.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := 'backToggle'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := [:block2812b3ecArg1 | 
    | block2812b3ecValue0 block2812b3ecValue1 block2812b3ecValue2 |
    block2812b3ecValue0 := block2812b3ecArg1.
    block2812b3ecValue1 := MxESTa31.
    block2812b3ecValue2 := (block2812b3ecValue0) labelString: (block2812b3ecValue1).
    block2812b3ecValue2
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            backToggle := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := 'caseAndWrap'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := [:block2812b410Arg1 | 
    | block2812b410Value0 block2812b410Value1 block2812b410Value2 block2812b410Value3 block2812b410Value4 block2812b410Value5 block2812b410Value6 |
    block2812b410Value0 := block2812b410Arg1.
    block2812b410Value1 := block2812b410Value0.
    (block2812b410Value1) numColumns: (2).
    block2812b410Value2 := block2812b410Value0.
    block2812b410Value3 := XmPACKTIGHT.
    (block2812b410Value2) packing: (block2812b410Value3).
    block2812b410Value4 := block2812b410Value0.
    (block2812b410Value4) adjustLast: (false).
    block2812b410Value5 := XmVERTICAL.
    block2812b410Value6 := (block2812b410Value0) orientation: (block2812b410Value5).
    block2812b410Value6
].
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := 'caseToggle'.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := [:block2812b434Arg1 | 
    | block2812b434Value0 block2812b434Value1 block2812b434Value2 |
    block2812b434Value0 := block2812b434Arg1.
    block2812b434Value1 := MxESTa32.
    block2812b434Value2 := (block2812b434Value0) labelString: (block2812b434Value1).
    block2812b434Value2
].
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            caseToggle := recoveredStack0.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := 'wrapToggle'.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := [:block2812b458Arg1 | 
    | block2812b458Value0 block2812b458Value1 block2812b458Value2 |
    block2812b458Value0 := block2812b458Arg1.
    block2812b458Value1 := MxESTa33.
    block2812b458Value2 := (block2812b458Value0) labelString: (block2812b458Value1).
    block2812b458Value2
].
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            wrapToggle := recoveredStack0.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := 'buttons'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := [:block2812b47cArg1 | 
    | block2812b47cValue0 block2812b47cValue1 block2812b47cValue2 block2812b47cValue3 block2812b47cValue4 block2812b47cValue5 block2812b47cValue6 block2812b47cValue7 block2812b47cValue8 block2812b47cValue9 |
    block2812b47cValue0 := block2812b47cArg1.
    block2812b47cValue1 := block2812b47cValue0.
    (block2812b47cValue1) numColumns: (2).
    block2812b47cValue2 := block2812b47cValue0.
    (block2812b47cValue2) marginWidth: (0).
    block2812b47cValue3 := block2812b47cValue0.
    (block2812b47cValue3) marginHeight: (0).
    block2812b47cValue4 := block2812b47cValue0.
    (block2812b47cValue4) adjustLast: (false).
    block2812b47cValue5 := block2812b47cValue0.
    (block2812b47cValue5) spacing: (10).
    block2812b47cValue6 := block2812b47cValue0.
    block2812b47cValue7 := XmPACKCOLUMN.
    (block2812b47cValue6) packing: (block2812b47cValue7).
    block2812b47cValue8 := XmVERTICAL.
    block2812b47cValue9 := (block2812b47cValue0) orientation: (block2812b47cValue8).
    block2812b47cValue9
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := 'searchButton'.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := [:block2812b4a0Arg1 | 
    | block2812b4a0Value0 block2812b4a0Value1 block2812b4a0Value2 |
    block2812b4a0Value0 := block2812b4a0Arg1.
    block2812b4a0Value1 := MxESTa34.
    block2812b4a0Value2 := (block2812b4a0Value0) labelString: (block2812b4a0Value1).
    block2812b4a0Value2
].
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            searchButton := recoveredStack0.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := searchButton.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack4 := 'search:clientData:callData:'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := 'searchInAllMethodsProcesses'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := 'replaceButton'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := [:block2812b4c4Arg1 | 
    | block2812b4c4Value0 block2812b4c4Value1 block2812b4c4Value2 block2812b4c4Value3 |
    block2812b4c4Value0 := block2812b4c4Arg1.
    block2812b4c4Value1 := block2812b4c4Value0.
    (block2812b4c4Value1) sensitive: (false).
    block2812b4c4Value2 := MxESTa35.
    block2812b4c4Value3 := (block2812b4c4Value0) labelString: (block2812b4c4Value2).
    block2812b4c4Value3
].
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            replaceButton := recoveredStack0.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack3 := 'replace:clientData:callData:'.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := 'replaceSearchButton'.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := [:block2812b4e8Arg1 | 
    | block2812b4e8Value0 block2812b4e8Value1 block2812b4e8Value2 block2812b4e8Value3 |
    block2812b4e8Value0 := block2812b4e8Arg1.
    block2812b4e8Value1 := block2812b4e8Value0.
    (block2812b4e8Value1) sensitive: (false).
    block2812b4e8Value2 := MxESTa36.
    block2812b4e8Value3 := (block2812b4e8Value0) labelString: (block2812b4e8Value2).
    block2812b4e8Value3
].
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            replaceSearchButton := recoveredStack0.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := 'replaceSearch:clientData:callData:'.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := 'replaceAllButton'.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack2 := [:block2812b50cArg1 | 
    | block2812b50cValue0 block2812b50cValue1 block2812b50cValue2 |
    block2812b50cValue0 := block2812b50cArg1.
    block2812b50cValue1 := MxESTa37.
    block2812b50cValue2 := (block2812b50cValue0) labelString: (block2812b50cValue1).
    block2812b50cValue2
].
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            replaceAllButton := recoveredStack0.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := replaceAllButton.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack3 := 'replaceAll:clientData:callData:'.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := replaceAllButton.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack1 := (recoveredStack1) editable.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := 'searcheAllToggle'.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack2 := [:block2812b530Arg1 | 
    | block2812b530Value0 block2812b530Value1 |
    block2812b530Value0 := block2812b530Arg1.
    block2812b530Value1 := (block2812b530Value0) labelString: ('Search in All Methods/Processes').
    block2812b530Value1
].
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack3 := 'searchAllActivate:clientData:callData:'.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack1 := 'searchAllToggle'.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack1 := 'searchExpandedFrame'.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack2 := [:block2812b554Arg1 | 
    | block2812b554Value0 block2812b554Value1 |
    block2812b554Value0 := block2812b554Arg1.
    block2812b554Value1 := (block2812b554Value0) labelString: ('Occurrences').
    block2812b554Value1
].
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := 'searchExpandedFrame'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := 'searchExpandedForm'.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := 'searchExpandedForm'.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            (recoveredStack0) createOccurrencesWidgetsInForm: (recoveredStack1).
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack2 := [:block2812b578Arg1 | 
    | block2812b578Value0 block2812b578Value1 block2812b578Value2 |
    block2812b578Value0 := block2812b578Arg1.
    block2812b578Value1 := MxESTa38.
    block2812b578Value2 := (block2812b578Value0) labelString: (block2812b578Value1).
    block2812b578Value2
].
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            closeButton := recoveredStack0.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack0 := closeButton.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack3 := 'close:clientData:callData:'.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack1 := 'indicatorLabel'.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack2 := [:block2812b59cArg1 | 
    | block2812b59cValue0 block2812b59cValue1 block2812b59cValue2 block2812b59cValue3 block2812b59cValue4 |
    block2812b59cValue0 := block2812b59cArg1.
    block2812b59cValue1 := block2812b59cValue0.
    block2812b59cValue2 := XmALIGNMENTBEGINNING.
    (block2812b59cValue1) alignment: (block2812b59cValue2).
    block2812b59cValue3 := MxESTa39.
    block2812b59cValue4 := (block2812b59cValue0) labelString: (block2812b59cValue3).
    block2812b59cValue4
].
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            indicatorLabel := recoveredStack0.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack1 := [:block2812b5c0Arg1 | 
    | block2812b5c0Value0 block2812b5c0Value1 block2812b5c0Value2 block2812b5c0Value3 block2812b5c0Value4 block2812b5c0Value5 block2812b5c0Value6 |
    block2812b5c0Value0 := block2812b5c0Arg1.
    block2812b5c0Value1 := block2812b5c0Value0.
    block2812b5c0Value2 := XmATTACHFORM.
    (block2812b5c0Value1) topAttachment: (block2812b5c0Value2).
    block2812b5c0Value3 := block2812b5c0Value0.
    block2812b5c0Value4 := XmATTACHFORM.
    (block2812b5c0Value3) leftAttachment: (block2812b5c0Value4).
    block2812b5c0Value5 := XmATTACHFORM.
    block2812b5c0Value6 := (block2812b5c0Value0) rightAttachment: (block2812b5c0Value5).
    block2812b5c0Value6
].
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack1 := [:recoveredBlock952Arg1 | 
    | recoveredBlock952Value0 recoveredBlock952Value1 recoveredBlock952Value2 recoveredBlock952Value3 recoveredBlock952Value4 recoveredBlock952Value5 recoveredBlock952Value6 recoveredBlock952Value7 recoveredBlock952Value8 |
    recoveredBlock952Value0 := recoveredBlock952Arg1.
    recoveredBlock952Value1 := recoveredBlock952Value0.
    recoveredBlock952Value2 := XmATTACHWIDGET.
    (recoveredBlock952Value1) topAttachment: (recoveredBlock952Value2).
    recoveredBlock952Value3 := recoveredBlock952Value0.
    recoveredBlock952Value4 := recoveredLocal15.
    (recoveredBlock952Value3) topWidget: (recoveredBlock952Value4).
    recoveredBlock952Value5 := recoveredBlock952Value0.
    recoveredBlock952Value6 := XmATTACHFORM.
    (recoveredBlock952Value5) leftAttachment: (recoveredBlock952Value6).
    recoveredBlock952Value7 := XmATTACHFORM.
    recoveredBlock952Value8 := (recoveredBlock952Value0) rightAttachment: (recoveredBlock952Value7).
    recoveredBlock952Value8
].
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack1 := [:recoveredBlock1002Arg1 | 
    | recoveredBlock1002Value0 recoveredBlock1002Value1 recoveredBlock1002Value2 recoveredBlock1002Value3 recoveredBlock1002Value4 recoveredBlock1002Value5 recoveredBlock1002Value6 recoveredBlock1002Value7 recoveredBlock1002Value8 |
    recoveredBlock1002Value0 := recoveredBlock1002Arg1.
    recoveredBlock1002Value1 := recoveredBlock1002Value0.
    recoveredBlock1002Value2 := XmATTACHWIDGET.
    (recoveredBlock1002Value1) topAttachment: (recoveredBlock1002Value2).
    recoveredBlock1002Value3 := recoveredBlock1002Value0.
    recoveredBlock1002Value4 := recoveredLocal11.
    (recoveredBlock1002Value3) topWidget: (recoveredBlock1002Value4).
    recoveredBlock1002Value5 := recoveredBlock1002Value0.
    recoveredBlock1002Value6 := XmATTACHFORM.
    (recoveredBlock1002Value5) leftAttachment: (recoveredBlock1002Value6).
    recoveredBlock1002Value7 := XmATTACHFORM.
    recoveredBlock1002Value8 := (recoveredBlock1002Value0) rightAttachment: (recoveredBlock1002Value7).
    recoveredBlock1002Value8
].
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack1 := [:recoveredBlock1052Arg1 | 
    | recoveredBlock1052Value0 recoveredBlock1052Value1 recoveredBlock1052Value2 recoveredBlock1052Value3 recoveredBlock1052Value4 recoveredBlock1052Value5 recoveredBlock1052Value6 recoveredBlock1052Value7 recoveredBlock1052Value8 |
    recoveredBlock1052Value0 := recoveredBlock1052Arg1.
    recoveredBlock1052Value1 := recoveredBlock1052Value0.
    recoveredBlock1052Value2 := XmATTACHWIDGET.
    (recoveredBlock1052Value1) topAttachment: (recoveredBlock1052Value2).
    recoveredBlock1052Value3 := recoveredBlock1052Value0.
    recoveredBlock1052Value4 := recoveredLocal10.
    (recoveredBlock1052Value3) topWidget: (recoveredBlock1052Value4).
    recoveredBlock1052Value5 := recoveredBlock1052Value0.
    recoveredBlock1052Value6 := XmATTACHFORM.
    (recoveredBlock1052Value5) leftAttachment: (recoveredBlock1052Value6).
    recoveredBlock1052Value7 := XmATTACHFORM.
    recoveredBlock1052Value8 := (recoveredBlock1052Value0) rightAttachment: (recoveredBlock1052Value7).
    recoveredBlock1052Value8
].
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack1 := [:recoveredBlock1102Arg1 | 
    | recoveredBlock1102Value0 recoveredBlock1102Value1 recoveredBlock1102Value2 recoveredBlock1102Value3 recoveredBlock1102Value4 recoveredBlock1102Value5 recoveredBlock1102Value6 recoveredBlock1102Value7 recoveredBlock1102Value8 |
    recoveredBlock1102Value0 := recoveredBlock1102Arg1.
    recoveredBlock1102Value1 := recoveredBlock1102Value0.
    recoveredBlock1102Value2 := XmATTACHWIDGET.
    (recoveredBlock1102Value1) topAttachment: (recoveredBlock1102Value2).
    recoveredBlock1102Value3 := recoveredBlock1102Value0.
    recoveredBlock1102Value4 := recoveredLocal8.
    (recoveredBlock1102Value3) topWidget: (recoveredBlock1102Value4).
    recoveredBlock1102Value5 := recoveredBlock1102Value0.
    recoveredBlock1102Value6 := XmATTACHFORM.
    (recoveredBlock1102Value5) leftAttachment: (recoveredBlock1102Value6).
    recoveredBlock1102Value7 := XmATTACHFORM.
    recoveredBlock1102Value8 := (recoveredBlock1102Value0) rightAttachment: (recoveredBlock1102Value7).
    recoveredBlock1102Value8
].
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack1 := [:recoveredBlock1152Arg1 | 
    | recoveredBlock1152Value0 recoveredBlock1152Value1 recoveredBlock1152Value2 recoveredBlock1152Value3 recoveredBlock1152Value4 recoveredBlock1152Value5 recoveredBlock1152Value6 recoveredBlock1152Value7 recoveredBlock1152Value8 recoveredBlock1152Value9 recoveredBlock1152Value10 recoveredBlock1152Value11 recoveredBlock1152Value12 |
    recoveredBlock1152Value0 := recoveredBlock1152Arg1.
    recoveredBlock1152Value1 := recoveredBlock1152Value0.
    recoveredBlock1152Value2 := XmATTACHWIDGET.
    (recoveredBlock1152Value1) topAttachment: (recoveredBlock1152Value2).
    recoveredBlock1152Value3 := recoveredBlock1152Value0.
    recoveredBlock1152Value4 := recoveredLocal1.
    (recoveredBlock1152Value3) topWidget: (recoveredBlock1152Value4).
    recoveredBlock1152Value5 := recoveredBlock1152Value0.
    recoveredBlock1152Value6 := XmATTACHWIDGET.
    (recoveredBlock1152Value5) bottomAttachment: (recoveredBlock1152Value6).
    recoveredBlock1152Value7 := recoveredBlock1152Value0.
    recoveredBlock1152Value8 := closeButton.
    (recoveredBlock1152Value7) bottomWidget: (recoveredBlock1152Value8).
    recoveredBlock1152Value9 := recoveredBlock1152Value0.
    recoveredBlock1152Value10 := XmATTACHFORM.
    (recoveredBlock1152Value9) leftAttachment: (recoveredBlock1152Value10).
    recoveredBlock1152Value11 := XmATTACHFORM.
    recoveredBlock1152Value12 := (recoveredBlock1152Value0) rightAttachment: (recoveredBlock1152Value11).
    recoveredBlock1152Value12
].
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack0 := closeButton.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack1 := [:block2812b5e4Arg1 | 
    | block2812b5e4Value0 block2812b5e4Value1 block2812b5e4Value2 block2812b5e4Value3 block2812b5e4Value4 |
    block2812b5e4Value0 := block2812b5e4Arg1.
    block2812b5e4Value1 := block2812b5e4Value0.
    block2812b5e4Value2 := XmATTACHFORM.
    (block2812b5e4Value1) rightAttachment: (block2812b5e4Value2).
    block2812b5e4Value3 := XmATTACHFORM.
    block2812b5e4Value4 := (block2812b5e4Value0) bottomAttachment: (block2812b5e4Value3).
    block2812b5e4Value4
].
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack0 := indicatorLabel.
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredStack1 := [:recoveredBlock1249Arg1 | 
    | recoveredBlock1249Value0 recoveredBlock1249Value1 recoveredBlock1249Value2 recoveredBlock1249Value3 recoveredBlock1249Value4 recoveredBlock1249Value5 recoveredBlock1249Value6 recoveredBlock1249Value7 recoveredBlock1249Value8 |
    recoveredBlock1249Value0 := recoveredBlock1249Arg1.
    recoveredBlock1249Value1 := recoveredBlock1249Value0.
    recoveredBlock1249Value2 := XmATTACHFORM.
    (recoveredBlock1249Value1) leftAttachment: (recoveredBlock1249Value2).
    recoveredBlock1249Value3 := recoveredBlock1249Value0.
    recoveredBlock1249Value4 := XmATTACHWIDGET.
    (recoveredBlock1249Value3) rightAttachment: (recoveredBlock1249Value4).
    recoveredBlock1249Value5 := recoveredBlock1249Value0.
    recoveredBlock1249Value6 := closeButton.
    (recoveredBlock1249Value5) rightWidget: (recoveredBlock1249Value6).
    recoveredBlock1249Value7 := XmATTACHFORM.
    recoveredBlock1249Value8 := (recoveredBlock1249Value0) bottomAttachment: (recoveredBlock1249Value7).
    recoveredBlock1249Value8
].
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelection.
            recoveredPC := 1305.
        ].
        recoveredStep = 1305 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1349] ifFalse: [recoveredPC := 1312].
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 1331.
        ].
        recoveredStep = 1331 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1334] ifFalse: [recoveredPC := 1349].
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 1336.
        ].
        recoveredStep = 1336 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 1337.
        ].
        recoveredStep = 1337 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 1341.
        ].
        recoveredStep = 1341 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 1343.
        ].
        recoveredStep = 1343 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 1344.
        ].
        recoveredStep = 1344 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 1349.
        ].
        recoveredStep = 1349 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 1352.
        ].
        recoveredStep = 1352 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1357.
        ].
        recoveredStep = 1357 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1359.
        ].
        recoveredStep = 1359 ifTrue: [
            recoveredStack0 := searchText.
            recoveredPC := 1361.
        ].
        recoveredStep = 1361 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1363.
        ].
        recoveredStep = 1363 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            recoveredStack0 := replaceText.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            recoveredStack0 := forwardToggle.
            recoveredPC := 1374.
        ].
        recoveredStep = 1374 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            recoveredStack0 := backToggle.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1385.
        ].
        recoveredStep = 1385 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1388.
        ].
        recoveredStep = 1388 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1405.
        ].
        recoveredStep = 1405 ifTrue: [
            recoveredStack0 := caseToggle.
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            recoveredStack0 := wrapToggle.
            recoveredPC := 1411.
        ].
        recoveredStep = 1411 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            recoveredStack0 := searchButton.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1417.
        ].
        recoveredStep = 1417 ifTrue: [
            recoveredStack0 := replaceButton.
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            recoveredStack0 := replaceSearchButton.
            recoveredPC := 1423.
        ].
        recoveredStep = 1423 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1425.
        ].
        recoveredStep = 1425 ifTrue: [
            recoveredStack0 := replaceAllButton.
            recoveredPC := 1427.
        ].
        recoveredStep = 1427 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1429.
        ].
        recoveredStep = 1429 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1434.
        ].
        recoveredStep = 1434 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1437.
        ].
        recoveredStep = 1437 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 1441.
        ].
        recoveredStep = 1441 ifTrue: [
            recoveredStack0 := closeButton.
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            recoveredStack0 := indicatorLabel.
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            recoveredStack1 := searchButton.
            recoveredPC := 1454.
        ].
        recoveredStep = 1454 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 1459.
        ].
        recoveredStep = 1459 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredStack3 := 'ownerChanged:clientData:callData:'.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1478.
        ].
        recoveredStep = 1478 ifTrue: [
            recoveredStack0 := (recoveredStack0) disableReplace.
            recoveredPC := 1483.
        ].
        recoveredStep = 1483 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1486] ifFalse: [recoveredPC := 1501].
        ].
        recoveredStep = 1486 ifTrue: [
            recoveredStack0 := replaceAllButton.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack0 := replaceText.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1502.
        ].
        recoveredStep = 1502 ifTrue: [
            recoveredStack0 := (recoveredStack0) view.
            recoveredPC := 1507.
        ].
        recoveredStep = 1507 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 1517] ifFalse: [recoveredPC := 1510].
        ].
        recoveredStep = 1510 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1513.
        ].
        recoveredStep = 1513 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack0 := shell.
            recoveredPC := 1519.
        ].
        recoveredStep = 1519 ifTrue: [
            recoveredStack0 := (recoveredStack0) child.
            recoveredPC := 1523.
        ].
        recoveredStep = 1523 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 1527.
        ].
        recoveredStep = 1527 ifTrue: [
            recoveredStack1 := [:block2812b608Arg1 | 
    | block2812b608Value0 block2812b608Value1 block2812b608Value2 |
    block2812b608Value0 := block2812b608Arg1.
    block2812b608Value1 := (block2812b608Value0) name.
    block2812b608Value2 := (block2812b608Value1) = ('label1').
    block2812b608Value2
].
            recoveredPC := 1530.
        ].
        recoveredStep = 1530 ifTrue: [
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 1551.
        ].
        recoveredStep = 1551 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1552.
        ].
        recoveredStep = 1552 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1555.
        ].
        recoveredStep = 1555 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1566] ifFalse: [recoveredPC := 1558].
        ].
        recoveredStep = 1558 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 1564.
        ].
        recoveredStep = 1564 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1567.
        ].
        recoveredStep = 1567 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

