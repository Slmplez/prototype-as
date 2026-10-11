"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003388; bytecode file offset 0x8ffcfc"
!ASDListFilterWidget methodsFor: 'recovered'!
initializeAfterCreate
    ^self
! !

"ASDBase.ic method 0x2004442c; bytecode file offset 0x9451f8"
!ASDListFilterWidget methodsFor: 'recovered'!
widgetFilterButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('GeneralFilter').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046eac; bytecode file offset 0x9451f8"
!ASDListFilterWidget methodsFor: 'recovered'!
widgetTypeFilterButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ElementTypeFilterButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ae6c; bytecode file offset 0x957a6c"
!ASDListFilterWidget methodsFor: 'recovered'!
elementTypeSelected: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) openFilter.
    ^self
! !

"ASDBase.ic method 0x2005ebb0; bytecode file offset 0x95b484"
!ASDListFilterWidget methodsFor: 'recovered'!
widgetSeachNameField
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('seachNameField').
    recoveredValue1 := (recoveredValue0) getInputField.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e018; bytecode file offset 0x96a9dc"
!ASDListFilterWidget methodsFor: 'recovered'!
informWidget
    | recoveredValue0 |
    recoveredValue0 := informWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e294; bytecode file offset 0x96af48"
!ASDListFilterWidget methodsFor: 'recovered'!
searchName
    | recoveredValue0 |
    recoveredValue0 := searchName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ec1c; bytecode file offset 0x96b8a0"
!ASDListFilterWidget methodsFor: 'recovered'!
filter
    | recoveredValue0 |
    recoveredValue0 := filter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f098; bytecode file offset 0x96bc1c"
!ASDListFilterWidget methodsFor: 'recovered'!
isFilterOn
    | recoveredValue0 |
    recoveredValue0 := isFilterOn.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083104; bytecode file offset 0x97f9c0"
!ASDListFilterWidget methodsFor: 'recovered'!
filter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    filter := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c46d0; bytecode file offset 0x9c11bc"
!ASDListFilterWidget methodsFor: 'recovered'!
informWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    informWidget := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b3c; bytecode file offset 0x9c16b0"
!ASDListFilterWidget methodsFor: 'recovered'!
searchName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    searchName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c591c; bytecode file offset 0x9c22c8"
!ASDListFilterWidget methodsFor: 'recovered'!
isFilterOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isFilterOn := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc6f4; bytecode file offset 0x9c8fd0"
!ASDListFilterWidget methodsFor: 'recovered'!
promptFilter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGenericFilterDialog.
    recoveredValue1 := (self) getUserInterface.
    recoveredValue2 := (self) filter.
    (recoveredValue0) promptWithParent: (recoveredValue1) filter: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e2a54; bytecode file offset 0x9df430"
!ASDListFilterWidget methodsFor: 'recovered'!
hasFilter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFilterName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSelection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f282c; bytecode file offset 0x9ef148"
!ASDListFilterWidget methodsFor: 'recovered'!
hasSelection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) filter.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) filter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSelection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107d40; bytecode file offset 0xa045fc"
!ASDListFilterWidget methodsFor: 'recovered'!
hasFilterName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013d770; bytecode file offset 0xa3a038"
!ASDListFilterWidget methodsFor: 'recovered'!
openFilter
    | recoveredValue0 |
    (self) promptFilter.
    (self) updateTypeFilterButton.
    (self) updateFilterButtonForFilter.
    recoveredValue0 := (self) informWidget.
    (recoveredValue0) filterChanged: (self).
    ^self
! !

"ASDBase.ic method 0x20140974; bytecode file offset 0xa3d23c"
!ASDListFilterWidget methodsFor: 'recovered'!
initialize
    super initialize.
    (self) searchName: ('').
    (self) isFilterOn: (false).
    ^self
! !

"ASDBase.ic method 0x20150054; bytecode file offset 0xa4c91c"
!ASDListFilterWidget methodsFor: 'recovered'!
updateFilterButtonForFilter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetFilterButton.
    recoveredValue1 := (self) hasFilter.
    (recoveredValue0) isSet: (recoveredValue1) notify: (false).
    recoveredValue2 := (self) hasFilter.
    (self) isFilterOn: (recoveredValue2).
    (self) updateFilterButton.
    ^self
! !

"ASDBase.ic method 0x2017d998; bytecode file offset 0xa7a25c"
!ASDListFilterWidget methodsFor: 'recovered'!
filterOnOffSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) isFilterOn: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aaae8; bytecode file offset 0xaa73b0"
!ASDListFilterWidget methodsFor: 'recovered'!
searchNameIsEmpty
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSeachNameField.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'filter...'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalsIgnoringCase: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020be68; bytecode file offset 0xb08734"
!ASDListFilterWidget methodsFor: 'recovered'!
updateFilterButton
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'GeneralFilterChecked'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterButton.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'GeneralFilter'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025845c; bytecode file offset 0xb54d2c"
!ASDListFilterWidget methodsFor: 'recovered'!
focusFilterInput: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) setString: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e7a54; bytecode file offset 0xbe4330"
!ASDListFilterWidget methodsFor: 'recovered'!
filterFieldKeyReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := KeyRelease.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := XKReturn.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetFilterButton.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) set.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) filterListString: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) updateFilterButtonForFilter.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e83cc; bytecode file offset 0xbe4ca8"
!ASDListFilterWidget methodsFor: 'recovered'!
updateTypeFilterButton
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTypeFilterButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) widgetTypeFilterButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Pulldown'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPopupMenu: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) filter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSelection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTypeFilterButton.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Elements'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'GeneralOverlayActive'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon: (recoveredStack2) overlayedWith: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTypeFilterButton.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'Elements'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030aef4; bytecode file offset 0xc077c8"
!ASDListFilterWidget methodsFor: 'recovered'!
filterListString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateFilterButton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterButton.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSet.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'Filter...'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) searchName: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) informWidget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) filterChanged: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) searchName: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) informWidget.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) filterChanged: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034c044; bytecode file offset 0xc48928"
!ASDListFilterWidget methodsFor: 'recovered'!
losingFocusFilterInput: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'filter...'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalsIgnoringCase: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) filterListString: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) lightGray.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'Filter...'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) filterListString: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20571038; bytecode file offset 0xe6d9ac"
!ASDListFilterWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            widgetDictionary := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'searchForm'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block28111d3cArg1 | 
    | block28111d3cValue0 block28111d3cValue1 block28111d3cValue2 block28111d3cValue3 block28111d3cValue4 |
    block28111d3cValue0 := block28111d3cArg1.
    block28111d3cValue1 := block28111d3cValue0.
    (block28111d3cValue1) y: (0).
    block28111d3cValue2 := block28111d3cValue0.
    (block28111d3cValue2) x: (0).
    block28111d3cValue3 := block28111d3cValue0.
    (block28111d3cValue3) height: (24).
    block28111d3cValue4 := (block28111d3cValue0) width: (300).
    block28111d3cValue4
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'searchForm'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'toolBarDockingArea'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:block28111d60Arg1 | 
    | block28111d60Value0 block28111d60Value1 |
    block28111d60Value0 := block28111d60Arg1.
    block28111d60Value1 := (block28111d60Value0) barsFixed.
    block28111d60Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTobTBDockingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'toolBarDockingArea'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 'toolBar'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [:block28111d84Arg1 | 
    | block28111d84Value0 block28111d84Value1 block28111d84Value2 block28111d84Value3 block28111d84Value4 block28111d84Value5 block28111d84Value6 |
    block28111d84Value0 := block28111d84Arg1.
    block28111d84Value1 := block28111d84Value0.
    (block28111d84Value1) uniformWidth: (false).
    block28111d84Value2 := block28111d84Value0.
    (block28111d84Value2) height: (24).
    block28111d84Value3 := EwSystemColors.
    block28111d84Value4 := (block28111d84Value3) new.
    block28111d84Value5 := (block28111d84Value4) buttonFace.
    block28111d84Value6 := (block28111d84Value0) backgroundColor: (block28111d84Value5).
    block28111d84Value6
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTobTBBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'filterToolBar'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) informWidget.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) createSearchGroupFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:block28111da8Arg1 | 
    | block28111da8Value0 block28111da8Value1 block28111da8Value2 block28111da8Value3 block28111da8Value4 block28111da8Value5 block28111da8Value6 block28111da8Value7 block28111da8Value8 block28111da8Value9 |
    block28111da8Value0 := block28111da8Arg1.
    block28111da8Value1 := block28111da8Value0.
    block28111da8Value2 := XmATTACHFORM.
    (block28111da8Value1) topAttachment: (block28111da8Value2).
    block28111da8Value3 := block28111da8Value0.
    (block28111da8Value3) topOffset: (0).
    block28111da8Value4 := block28111da8Value0.
    block28111da8Value5 := XmATTACHFORM.
    (block28111da8Value4) leftAttachment: (block28111da8Value5).
    block28111da8Value6 := block28111da8Value0.
    (block28111da8Value6) leftOffset: (0).
    block28111da8Value7 := block28111da8Value0.
    block28111da8Value8 := XmATTACHFORM.
    (block28111da8Value7) rightAttachment: (block28111da8Value8).
    block28111da8Value9 := (block28111da8Value0) rightOffset: (0).
    block28111da8Value9
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := [:block28111dccArg1 | 
    | block28111dccValue0 block28111dccValue1 block28111dccValue2 block28111dccValue3 block28111dccValue4 block28111dccValue5 block28111dccValue6 block28111dccValue7 block28111dccValue8 block28111dccValue9 block28111dccValue10 block28111dccValue11 block28111dccValue12 |
    block28111dccValue0 := block28111dccArg1.
    block28111dccValue1 := block28111dccValue0.
    block28111dccValue2 := XmATTACHFORM.
    (block28111dccValue1) topAttachment: (block28111dccValue2).
    block28111dccValue3 := block28111dccValue0.
    (block28111dccValue3) topOffset: (0).
    block28111dccValue4 := block28111dccValue0.
    block28111dccValue5 := XmATTACHFORM.
    (block28111dccValue4) bottomAttachment: (block28111dccValue5).
    block28111dccValue6 := block28111dccValue0.
    (block28111dccValue6) bottomOffset: (0).
    block28111dccValue7 := block28111dccValue0.
    block28111dccValue8 := XmATTACHFORM.
    (block28111dccValue7) rightAttachment: (block28111dccValue8).
    block28111dccValue9 := block28111dccValue0.
    (block28111dccValue9) rightOffset: (0).
    block28111dccValue10 := block28111dccValue0.
    block28111dccValue11 := XmATTACHFORM.
    (block28111dccValue10) leftAttachment: (block28111dccValue11).
    block28111dccValue12 := (block28111dccValue0) leftOffset: (0).
    block28111dccValue12
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := KeyReleaseMask.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := 'elementTypeSelected:clientData:callData:'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := [:block28111df0Arg1 | 
    | block28111df0Value0 block28111df0Value1 |
    block28111df0Value0 := block28111df0Arg1.
    block28111df0Value1 := (block28111df0Value0) manageChild.
    block28111df0Value1
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20577e50; bytecode file offset 0xe747a4"
!ASDListFilterWidget methodsFor: 'recovered'!
createSearchGroupFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) createSeparator.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    (recoveredBlock14Value1) height: (20).
    recoveredBlock14Value2 := recoveredBlock14Value0.
    (recoveredBlock14Value2) width: (100).
    recoveredBlock14Value3 := recoveredArg1.
    recoveredBlock14Value4 := (recoveredBlock14Value0) userData: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    recoveredValue3 := (recoveredValue1) createTobTBInput: ('inputField') argBlock: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := widgetDictionary.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) at: ('seachNameField') put: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := ('ElementTypeFilterButton') asString.
    recoveredValue8 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := recoveredBlock59Value0.
    (recoveredBlock59Value1) height: (20).
    recoveredBlock59Value2 := (self) returnIconWithName: ('Elements').
    recoveredBlock59Value3 := (recoveredBlock59Value0) image: (recoveredBlock59Value2).
    recoveredBlock59Value3
].
    recoveredValue9 := (recoveredValue6) createTobTBPushButton: (recoveredValue7) argBlock: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := widgetDictionary.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) at: ('ElementTypeFilterButton') put: (recoveredValue11).
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := ('GeneralFilter') asString.
    recoveredValue14 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 recoveredBlock101Value4 recoveredBlock101Value5 |
    recoveredBlock101Value0 := recoveredBlock101Arg1.
    recoveredBlock101Value1 := recoveredBlock101Value0.
    recoveredBlock101Value2 := (self) returnIconWithName: ('GeneralFilter').
    (recoveredBlock101Value1) image: (recoveredBlock101Value2).
    recoveredBlock101Value3 := recoveredBlock101Value0.
    recoveredBlock101Value4 := [
    | recoveredBlock101Block118Value0 recoveredBlock101Block118Value1 recoveredBlock101Block118Value2 recoveredBlock101Block118Value3 |
    recoveredBlock101Block118Value0 := recoveredLocal2.
    recoveredBlock101Block118Value1 := (recoveredBlock101Block118Value0) getInputField.
    recoveredBlock101Block118Value2 := (recoveredBlock101Block118Value1) getString.
    recoveredBlock101Block118Value3 := (self) filterListString: (recoveredBlock101Block118Value2).
    recoveredBlock101Block118Value3
].
    (recoveredBlock101Value3) userData: (recoveredBlock101Value4).
    recoveredBlock101Value5 := (recoveredBlock101Value0) toolTipText: ('Filter the list').
    recoveredBlock101Value5
].
    recoveredValue15 := (recoveredValue12) createTobTBToggleButton: (recoveredValue13) argBlock: (recoveredValue14).
    recoveredLocal3 := recoveredValue15.
    recoveredValue16 := widgetDictionary.
    recoveredValue17 := recoveredLocal3.
    (recoveredValue16) at: ('GeneralFilter') put: (recoveredValue17).
    recoveredValue18 := recoveredLocal3.
    (recoveredValue18) addCallback: ('valueChangedCallback') receiver: (self) selector: ('filterOnOffSelection:clientData:callData:') clientData: (nil).
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue19) getInputField.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := KeyReleaseMask.
    recoveredValue23 := recoveredArg1.
    (recoveredValue21) addEventHandler: (recoveredValue22) receiver: (self) selector: ('filterFieldKeyReleased:clientData:callData:') clientData: (recoveredValue23).
    recoveredValue24 := recoveredValue20.
    recoveredValue25 := XmNfocusCallback.
    (recoveredValue24) addCallback: (recoveredValue25) receiver: (self) selector: ('focusFilterInput:clientData:callData:') clientData: (nil).
    recoveredValue26 := XmNlosingFocusCallback.
    (recoveredValue20) addCallback: (recoveredValue26) receiver: (self) selector: ('losingFocusFilterInput:clientData:callData:') clientData: (false).
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := (recoveredValue27) getInputField.
    recoveredValue29 := recoveredValue28.
    (recoveredValue29) setString: ('Filter...').
    recoveredValue30 := recoveredValue28.
    recoveredValue31 := CgRGBColor.
    recoveredValue32 := (recoveredValue31) lightGray.
    (recoveredValue30) foregroundColor: (recoveredValue32).
    (recoveredValue28) manageChild.
    recoveredValue33 := recoveredLocal1.
    (recoveredValue33) addCallback: ('pressedCallback') receiver: (self) selector: ('elementTypeSelected:clientData:callData:') clientData: (nil).
    recoveredValue34 := recoveredLocal1.
    (recoveredValue34) manageChild.
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) addTabGroup.
    recoveredValue36 := recoveredLocal1.
    (recoveredValue36) addTabGroup.
    recoveredValue37 := recoveredLocal2.
    ^recoveredValue37
! !

