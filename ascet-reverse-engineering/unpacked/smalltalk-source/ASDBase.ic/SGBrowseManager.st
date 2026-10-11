"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003d1f8; bytecode file offset 0x93bf94"
!SGBrowseManager methodsFor: 'recovered'!
itemWithSpecClassNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBTopFolder.
    recoveredValue1 := (recoveredValue0) itemWithSpecClassNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ea38; bytecode file offset 0x93bf94"
!SGBrowseManager methodsFor: 'recovered'!
itemClassNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBTopFolder.
    recoveredValue1 := (recoveredValue0) itemClassNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049c5c; bytecode file offset 0x947128"
!SGBrowseManager methodsFor: 'recovered'!
readKeysForItemWithSpecClassNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) itemWithSpecClassNames.
    recoveredValue1 := (self) readKeysForItemWithClassNames: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066334; bytecode file offset 0x963428"
!SGBrowseManager methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200673c4; bytecode file offset 0x9646f8"
!SGBrowseManager methodsFor: 'recovered'!
monitor
    | recoveredValue0 |
    recoveredValue0 := monitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200685ac; bytecode file offset 0x965b90"
!SGBrowseManager methodsFor: 'recovered'!
caseSensitive
    | recoveredValue0 |
    recoveredValue0 := caseSensitive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073bd0; bytecode file offset 0x970b34"
!SGBrowseManager methodsFor: 'recovered'!
checkOnlyItemsInList
    ^nil
! !

"ASDBase.ic method 0x20082ed4; bytecode file offset 0x97f798"
!SGBrowseManager methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    owner := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f58; bytecode file offset 0x97f81c"
!SGBrowseManager methodsFor: 'recovered'!
monitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    monitor := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a52dc; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseDefinerOfElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseDefinerOfElementParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a534c; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseMethodElements: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseMethodElementsParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a538c; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseReferencesToItem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseReferencesToItemParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a539c; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseReceiverOfMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseReceiverOfMessageParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a53bc; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseItem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseItemsParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a53cc; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseMethodsParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a548c; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseSendersOfMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseSendersOfMethodParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a54ac; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseSenderOfMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseSenderOfMessageParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a54bc; bytecode file offset 0x9a1dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuBrowseUserOfElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (self) browseUserOfElementParentWindow: (recoveredValue0) browseString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200af9ec; bytecode file offset 0x9ac2ac"
!SGBrowseManager methodsFor: 'recovered'!
readKeysClassNames: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) library.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryExactForClassNames: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) search.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bfe14; bytecode file offset 0x9bd228"
!SGBrowseManager methodsFor: 'recovered'!
caseSensitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    caseSensitive := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e039c; bytecode file offset 0x9dcc60"
!SGBrowseManager methodsFor: 'recovered'!
menuFind
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGFindReplaceWindow.
    recoveredValue1 := (recoveredValue0) createFor: (self) replaceEnabled: (false).
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) openWithParent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e040c; bytecode file offset 0x9dccd0"
!SGBrowseManager methodsFor: 'recovered'!
menuReplace
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGFindReplaceWindow.
    recoveredValue1 := (recoveredValue0) createFor: (self) replaceEnabled: (true).
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) openWithParent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e6198; bytecode file offset 0x9e2abc"
!SGBrowseManager methodsFor: 'recovered'!
initialize
    super initialize.
    (self) caseSensitive: (false).
    ^self
! !

"ASDBase.ic method 0x20117420; bytecode file offset 0xa13cec"
!SGBrowseManager methodsFor: 'recovered'!
initialProgressMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) lf.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('Searched 0 components.') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('Found 0 exact matches, 0 wildcard matches.        ').
    ^recoveredValue4
! !

"ASDBase.ic method 0x201572e4; bytecode file offset 0xa53ba4"
!SGBrowseManager methodsFor: 'recovered'!
findString: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) caseSensitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161558; bytecode file offset 0xa5de1c"
!SGBrowseManager methodsFor: 'recovered'!
menuClassReferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) owner.
    recoveredBlock5Value1 := (recoveredBlock5Value0) uiController.
    recoveredBlock5Value2 := (recoveredBlock5Value1) showReferencesBrowseManager: (self).
    recoveredBlock5Value2
].
    (recoveredValue0) execShortOperation: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20186b5c; bytecode file offset 0xa83420"
!SGBrowseManager methodsFor: 'recovered'!
readKeysForItemWithClassNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_57428').
    recoveredValue1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (self) readKeysClassNames: (recoveredBlock10Value0).
    recoveredBlock10Value1
].
    recoveredValue2 := (recoveredValue1) critical.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018a4fc; bytecode file offset 0xa86dc8"
!SGBrowseManager methodsFor: 'recovered'!
menuFind: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGFindReplaceWindow.
    recoveredValue1 := (recoveredValue0) createFor: (self) replaceEnabled: (false).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) getFindStrings.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) owner.
    recoveredValue7 := (recoveredValue5) openWithParent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20206d00; bytecode file offset 0xb035dc"
!SGBrowseManager methodsFor: 'recovered'!
browseReferencesToItem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGItemBrowserContainer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) dbObject.
    recoveredValue3 := (recoveredValue0) createFor: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := SGListReferencesWindow.
    recoveredValue5 := (self) owner.
    recoveredValue6 := Array.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (recoveredValue4) createForOwner: (recoveredValue5) title: ('Browse References To...') items: (recoveredValue8).
    recoveredValue10 := (self) owner.
    (recoveredValue9) openWithParent: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2029c9d0; bytecode file offset 0xb992dc"
!SGBrowseManager methodsFor: 'recovered'!
browseItemsParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectItemsBrowseString: (recoveredStack1).
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGListWindow.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Browse Items...'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029ca00; bytecode file offset 0xb992dc"
!SGBrowseManager methodsFor: 'recovered'!
browseReferencesToItemParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectItemsBrowseString: (recoveredStack1).
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGListReferencesWindow.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Browse References To...'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e79c; bytecode file offset 0xb9b0d8"
!SGBrowseManager methodsFor: 'recovered'!
browseMethodsParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectMethodsBrowseString: (recoveredStack1).
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGListWindow.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Browse Methods...'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e7cc; bytecode file offset 0xb9b0d8"
!SGBrowseManager methodsFor: 'recovered'!
browseMethodElementsParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectMethodElementsBrowseString: (recoveredStack1).
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGListWindow.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Browse Method Elements...'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e7fc; bytecode file offset 0xb9b0d8"
!SGBrowseManager methodsFor: 'recovered'!
browseSendersOfMethodParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectMethodsBrowseString: (recoveredStack1).
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGListReferencesWindow.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Browse Senders Of...'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f1d44; bytecode file offset 0xbee624"
!SGBrowseManager methodsFor: 'recovered'!
browseUserOfElementParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e8158Arg1 | 
    true
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectElements: (recoveredStack1) browseString: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := SGListWindow.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'Browse Elements...'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
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

"ASDBase.ic method 0x20303aa4; bytecode file offset 0xc0037c"
!SGBrowseManager methodsFor: 'recovered'!
getLineNumberDictionaryCode: recoveredArg1 searchString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203121d8; bytecode file offset 0xc0eac4"
!SGBrowseManager methodsFor: 'recovered'!
browseDefinerOfElementParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280ea924Arg1 | 
    | block280ea924Value0 block280ea924Value1 block280ea924Value2 block280ea924Value3 block280ea924Value4 |
    block280ea924Value0 := block280ea924Arg1.
    block280ea924Value1 := (block280ea924Value0) isExported.
    block280ea924Value2 := block280ea924Arg1.
    block280ea924Value3 := (block280ea924Value2) isLocal.
    block280ea924Value4 := (block280ea924Value1) | (block280ea924Value3).
    block280ea924Value4
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectElements: (recoveredStack1) browseString: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := SGListWindow.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'Browse Elements...'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20331990; bytecode file offset 0xc2e2b4"
!SGBrowseManager methodsFor: 'recovered'!
browseSenderOfMessageParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280ece68Arg1 | 
    | block280ece68Stack0 block280ece68Stack1 block280ece68Stack2 block280ece68Stack3 block280ece68PC block280ece68Step block280ece68Done block280ece68Result |
    block280ece68Stack0 := self.
    block280ece68PC := 4.
    block280ece68Done := false.
    [block280ece68Done not] whileTrue: [
        block280ece68Step := block280ece68PC.
        block280ece68Step = 4 ifTrue: [
            block280ece68Stack1 := false.
            block280ece68PC := 5.
        ].
        block280ece68Step = 5 ifTrue: [
            block280ece68Stack2 := block280ece68Arg1.
            block280ece68PC := 6.
        ].
        block280ece68Step = 6 ifTrue: [
            block280ece68Stack2 := (block280ece68Stack2) isMessage.
            block280ece68PC := 7.
        ].
        block280ece68Step = 7 ifTrue: [
            (block280ece68Stack2) ifTrue: [block280ece68PC := 10] ifFalse: [block280ece68PC := 13].
        ].
        block280ece68Step = 10 ifTrue: [
            block280ece68PC := 11.
        ].
        block280ece68Step = 11 ifTrue: [
            block280ece68Stack1 := block280ece68Arg1.
            block280ece68PC := 12.
        ].
        block280ece68Step = 12 ifTrue: [
            block280ece68Stack1 := (block280ece68Stack1) isSend.
            block280ece68PC := 13.
        ].
        block280ece68Step = 13 ifTrue: [
            block280ece68Result := block280ece68Stack1.
            block280ece68Done := true.
        ].
    ].
    block280ece68Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectElements: (recoveredStack1) browseString: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := SGListWindow.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Browse Sender Of Message...'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203319cc; bytecode file offset 0xc2e2b4"
!SGBrowseManager methodsFor: 'recovered'!
browseReceiverOfMessageParentWindow: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280ece8cArg1 | 
    | block280ece8cStack0 block280ece8cStack1 block280ece8cStack2 block280ece8cStack3 block280ece8cPC block280ece8cStep block280ece8cDone block280ece8cResult |
    block280ece8cStack0 := self.
    block280ece8cPC := 4.
    block280ece8cDone := false.
    [block280ece8cDone not] whileTrue: [
        block280ece8cStep := block280ece8cPC.
        block280ece8cStep = 4 ifTrue: [
            block280ece8cStack1 := false.
            block280ece8cPC := 5.
        ].
        block280ece8cStep = 5 ifTrue: [
            block280ece8cStack2 := block280ece8cArg1.
            block280ece8cPC := 6.
        ].
        block280ece8cStep = 6 ifTrue: [
            block280ece8cStack2 := (block280ece8cStack2) isMessage.
            block280ece8cPC := 7.
        ].
        block280ece8cStep = 7 ifTrue: [
            (block280ece8cStack2) ifTrue: [block280ece8cPC := 10] ifFalse: [block280ece8cPC := 13].
        ].
        block280ece8cStep = 10 ifTrue: [
            block280ece8cPC := 11.
        ].
        block280ece8cStep = 11 ifTrue: [
            block280ece8cStack1 := block280ece8cArg1.
            block280ece8cPC := 12.
        ].
        block280ece8cStep = 12 ifTrue: [
            block280ece8cStack1 := (block280ece8cStack1) isReceive.
            block280ece8cPC := 13.
        ].
        block280ece8cStep = 13 ifTrue: [
            block280ece8cResult := block280ece8cStack1.
            block280ece8cDone := true.
        ].
    ].
    block280ece8cResult
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAndCollectElements: (recoveredStack1) browseString: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'No item exists'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := SGListWindow.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Browse Receiver Of Message...'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForOwner: (recoveredStack1) title: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203458b4; bytecode file offset 0xc42194"
!SGBrowseManager methodsFor: 'recovered'!
recreateLogicModelsForItemsUsingComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) readKeysForItemWithSpecClassNames.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := [:block280ee1acArg1 | 
    nil
].
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getObjectIfUndefined: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack3.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 53] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local2.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isValidObject.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 34] ifFalse: [recoveredBlock5PC := 53].
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack1 := Set.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local2.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) monitor.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Local1.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) recreateLogicModelsForItemsUsingComponent: (recoveredBlock5Stack2) logIn: (recoveredBlock5Stack3) visitColl: (recoveredBlock5Stack4).
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) library.
    (recoveredValue2) garbageCollect.
    ^self
! !

"ASDBase.ic method 0x20472410; bytecode file offset 0xd6ed18"
!SGBrowseManager methodsFor: 'recovered'!
findNextInHeaderOf: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block2810171cArg1 | 
    | block2810171cValue0 block2810171cValue1 |
    block2810171cValue0 := block2810171cArg1.
    block2810171cValue1 := (block2810171cValue0) localHSource.
    block2810171cValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectCodeContainerCode: (recoveredStack1) searchString: (recoveredStack2) component: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 recoveredBlock34Value6 recoveredBlock34Value7 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (recoveredBlock34Value0) codeContainer.
    recoveredBlock34Value2 := (recoveredBlock34Value1) localHSource.
    recoveredBlock34Value3 := recoveredArg2.
    recoveredBlock34Value4 := (self) getLineNumberDictionaryCode: (recoveredBlock34Value2) searchString: (recoveredBlock34Value3).
    recoveredLocal2 := recoveredBlock34Value4.
    recoveredBlock34Value5 := recoveredLocal2.
    recoveredBlock34Value6 := [:recoveredBlock34Block57Arg1 | 
    | recoveredBlock34Block57Value0 recoveredBlock34Block57Value1 recoveredBlock34Block57Value2 recoveredBlock34Block57Value3 recoveredBlock34Block57Value4 recoveredBlock34Block57Value5 recoveredBlock34Block57Value6 recoveredBlock34Block57Value7 recoveredBlock34Block57Value8 recoveredBlock34Block57Value9 recoveredBlock34Block57Value10 recoveredBlock34Block57Value11 recoveredBlock34Block57Value12 recoveredBlock34Block57Value13 recoveredBlock34Block57Value14 recoveredBlock34Block57Value15 recoveredBlock34Block57Value16 recoveredBlock34Block57Value17 recoveredBlock34Block57Value18 recoveredBlock34Block57Value19 recoveredBlock34Block57Value20 |
    recoveredBlock34Block57Value0 := recoveredLocal1.
    recoveredBlock34Block57Value1 := SGFindResultHeaderCode.
    recoveredBlock34Block57Value2 := (recoveredBlock34Block57Value1) create.
    recoveredBlock34Block57Value3 := recoveredBlock34Block57Value2.
    recoveredBlock34Block57Value4 := recoveredArg1.
    (recoveredBlock34Block57Value3) component: (recoveredBlock34Block57Value4).
    recoveredBlock34Block57Value5 := recoveredBlock34Block57Value2.
    recoveredBlock34Block57Value6 := recoveredBlock34Arg1.
    recoveredBlock34Block57Value7 := (recoveredBlock34Block57Value6) codeContainer.
    (recoveredBlock34Block57Value5) codeContainer: (recoveredBlock34Block57Value7).
    recoveredBlock34Block57Value8 := recoveredBlock34Block57Value2.
    recoveredBlock34Block57Value9 := recoveredBlock34Arg1.
    recoveredBlock34Block57Value10 := (recoveredBlock34Block57Value9) implementation.
    (recoveredBlock34Block57Value8) implementation: (recoveredBlock34Block57Value10).
    recoveredBlock34Block57Value11 := recoveredBlock34Block57Value2.
    recoveredBlock34Block57Value12 := recoveredBlock34Block57Arg1.
    recoveredBlock34Block57Value13 := (recoveredBlock34Block57Value12) key.
    (recoveredBlock34Block57Value11) selectionBegin: (recoveredBlock34Block57Value13).
    recoveredBlock34Block57Value14 := recoveredBlock34Block57Value2.
    recoveredBlock34Block57Value15 := recoveredBlock34Block57Arg1.
    recoveredBlock34Block57Value16 := (recoveredBlock34Block57Value15) key.
    (recoveredBlock34Block57Value14) selectionEnd: (recoveredBlock34Block57Value16).
    recoveredBlock34Block57Value17 := recoveredBlock34Block57Value2.
    recoveredBlock34Block57Value18 := recoveredBlock34Block57Arg1.
    recoveredBlock34Block57Value19 := (recoveredBlock34Block57Value18) value.
    (recoveredBlock34Block57Value17) codeLine: (recoveredBlock34Block57Value19).
    recoveredBlock34Block57Value20 := (recoveredBlock34Block57Value0) add: (recoveredBlock34Block57Value2).
    recoveredBlock34Block57Value20
].
    recoveredBlock34Value7 := (recoveredBlock34Value5) associationsDo: (recoveredBlock34Value6).
    recoveredBlock34Value7
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047f6d4; bytecode file offset 0xd7bfec"
!SGBrowseManager methodsFor: 'recovered'!
replaceComponent: recoveredArg1 withComponent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceDependentForNewItem: (recoveredStack2) checkUniqueMapping: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemWithSpecClassNames.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ASDContainer.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) readKeysForItemWithClassNames: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Local1 recoveredBlock31Local2 recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31Stack6 recoveredBlock31Stack7 recoveredBlock31Stack8 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack3 := [:block28102508Arg1 | 
    nil
].
            recoveredBlock31PC := 42.
        ].
        recoveredBlock31Step = 42 ifTrue: [
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) getObjectIfUndefined: (recoveredBlock31Stack3).
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Stack2.
            recoveredBlock31PC := 51.
        ].
        recoveredBlock31Step = 51 ifTrue: [
            recoveredBlock31Local2 := recoveredBlock31Stack3.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            (recoveredBlock31Stack2 == nil) ifTrue: [recoveredBlock31PC := 117] ifFalse: [recoveredBlock31PC := 56].
        ].
        recoveredBlock31Step = 56 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Local2.
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) isValidObject.
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 62] ifFalse: [recoveredBlock31PC := 117].
        ].
        recoveredBlock31Step = 62 ifTrue: [
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31Stack1 := Set.
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) new.
            recoveredBlock31PC := 67.
        ].
        recoveredBlock31Step = 67 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Local2.
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) modifiable.
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 71 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 74] ifFalse: [recoveredBlock31PC := 98].
        ].
        recoveredBlock31Step = 74 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Local2.
            recoveredBlock31PC := 75.
        ].
        recoveredBlock31Step = 75 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 78 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) asRBDBReference.
            recoveredBlock31PC := 80.
        ].
        recoveredBlock31Step = 80 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg2.
            recoveredBlock31PC := 83.
        ].
        recoveredBlock31Step = 83 ifTrue: [
            recoveredBlock31Stack4 := self.
            recoveredBlock31PC := 84.
        ].
        recoveredBlock31Step = 84 ifTrue: [
            recoveredBlock31Stack4 := (recoveredBlock31Stack4) monitor.
            recoveredBlock31PC := 86.
        ].
        recoveredBlock31Step = 86 ifTrue: [
            recoveredBlock31Stack5 := recoveredBlock31Local1.
            recoveredBlock31PC := 87.
        ].
        recoveredBlock31Step = 87 ifTrue: [
            recoveredBlock31Stack6 := recoveredLocal1.
            recoveredBlock31PC := 90.
        ].
        recoveredBlock31Step = 90 ifTrue: [
            recoveredBlock31Stack7 := false.
            recoveredBlock31PC := 91.
        ].
        recoveredBlock31Step = 91 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) replaceComponentKey: (recoveredBlock31Stack2) with: (recoveredBlock31Stack3) logIn: (recoveredBlock31Stack4) visitColl: (recoveredBlock31Stack5) replaceInfo: (recoveredBlock31Stack6) recursive: (recoveredBlock31Stack7).
            recoveredBlock31PC := 94.
        ].
        recoveredBlock31Step = 94 ifTrue: [
            recoveredBlock31PC := 115.
        ].
        recoveredBlock31Step = 98 ifTrue: [
            recoveredBlock31Stack1 := SGMonitorStreamDummy.
            recoveredBlock31PC := 100.
        ].
        recoveredBlock31Step = 100 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) create.
            recoveredBlock31PC := 102.
        ].
        recoveredBlock31Step = 102 ifTrue: [
            recoveredBlock31Stack2 := 'Component '''.
            recoveredBlock31PC := 104.
        ].
        recoveredBlock31Step = 104 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Local2.
            recoveredBlock31PC := 105.
        ].
        recoveredBlock31Step = 105 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) label.
            recoveredBlock31PC := 107.
        ].
        recoveredBlock31Step = 107 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) , (recoveredBlock31Stack3).
            recoveredBlock31PC := 109.
        ].
        recoveredBlock31Step = 109 ifTrue: [
            recoveredBlock31Stack3 := ''' is write protected'.
            recoveredBlock31PC := 111.
        ].
        recoveredBlock31Step = 111 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) , (recoveredBlock31Stack3).
            recoveredBlock31PC := 113.
        ].
        recoveredBlock31Step = 113 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) addWarningText: (recoveredBlock31Stack2).
            recoveredBlock31PC := 115.
        ].
        recoveredBlock31Step = 115 ifTrue: [
            recoveredBlock31Stack2 := nil.
            recoveredBlock31PC := 116.
        ].
        recoveredBlock31Step = 116 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack2.
            recoveredBlock31PC := 117.
        ].
        recoveredBlock31Step = 117 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) garbageCollect.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a79e8; bytecode file offset 0xda42e4"
!SGBrowseManager methodsFor: 'recovered'!
selectCodeContainerCode: recoveredArg1 searchString: recoveredArg2 component: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) code.
    recoveredValue4 := (recoveredValue3) externalCCs.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15Stack6 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := self.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack3 := recoveredArg2.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack4 := recoveredArg1.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack5 := recoveredBlock15Arg1.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack4 := (recoveredBlock15Stack4) value: (recoveredBlock15Stack5).
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) findString: (recoveredBlock15Stack3) in: (recoveredBlock15Stack4).
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 38] ifFalse: [recoveredBlock15PC := 56].
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack2 := SGCodeContainerImplPair.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) create.
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Stack2.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack4 := recoveredBlock15Arg1.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            (recoveredBlock15Stack3) codeContainer: (recoveredBlock15Stack4).
            recoveredBlock15Stack3 := recoveredBlock15Stack2.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack4 := nil.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            (recoveredBlock15Stack3) implementation: (recoveredBlock15Stack4).
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) handwrittenImplCode.
    recoveredValue8 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := (recoveredBlock64Value0) value.
    recoveredBlock64Value2 := (recoveredBlock64Value1) externalCCs.
    recoveredBlock64Value3 := [:recoveredBlock64Block76Arg1 | 
    | recoveredBlock64Block76Stack0 recoveredBlock64Block76Stack1 recoveredBlock64Block76Stack2 recoveredBlock64Block76Stack3 recoveredBlock64Block76Stack4 recoveredBlock64Block76Stack5 recoveredBlock64Block76Stack6 recoveredBlock64Block76PC recoveredBlock64Block76Step recoveredBlock64Block76Done recoveredBlock64Block76Result |
    recoveredBlock64Block76Stack0 := self.
    recoveredBlock64Block76PC := 82.
    recoveredBlock64Block76Done := false.
    [recoveredBlock64Block76Done not] whileTrue: [
        recoveredBlock64Block76Step := recoveredBlock64Block76PC.
        recoveredBlock64Block76Step = 82 ifTrue: [
            recoveredBlock64Block76Stack1 := nil.
            recoveredBlock64Block76PC := 83.
        ].
        recoveredBlock64Block76Step = 83 ifTrue: [
            recoveredBlock64Block76Stack2 := self.
            recoveredBlock64Block76PC := 84.
        ].
        recoveredBlock64Block76Step = 84 ifTrue: [
            recoveredBlock64Block76Stack3 := recoveredArg2.
            recoveredBlock64Block76PC := 87.
        ].
        recoveredBlock64Block76Step = 87 ifTrue: [
            recoveredBlock64Block76Stack4 := recoveredArg1.
            recoveredBlock64Block76PC := 90.
        ].
        recoveredBlock64Block76Step = 90 ifTrue: [
            recoveredBlock64Block76Stack5 := recoveredBlock64Block76Arg1.
            recoveredBlock64Block76PC := 91.
        ].
        recoveredBlock64Block76Step = 91 ifTrue: [
            recoveredBlock64Block76Stack4 := (recoveredBlock64Block76Stack4) value: (recoveredBlock64Block76Stack5).
            recoveredBlock64Block76PC := 93.
        ].
        recoveredBlock64Block76Step = 93 ifTrue: [
            recoveredBlock64Block76Stack2 := (recoveredBlock64Block76Stack2) findString: (recoveredBlock64Block76Stack3) in: (recoveredBlock64Block76Stack4).
            recoveredBlock64Block76PC := 95.
        ].
        recoveredBlock64Block76Step = 95 ifTrue: [
            (recoveredBlock64Block76Stack2) ifTrue: [recoveredBlock64Block76PC := 98] ifFalse: [recoveredBlock64Block76PC := 130].
        ].
        recoveredBlock64Block76Step = 98 ifTrue: [
            recoveredBlock64Block76PC := 99.
        ].
        recoveredBlock64Block76Step = 99 ifTrue: [
            recoveredBlock64Block76Stack1 := recoveredLocal1.
            recoveredBlock64Block76PC := 102.
        ].
        recoveredBlock64Block76Step = 102 ifTrue: [
            recoveredBlock64Block76Stack2 := SGCodeContainerImplPair.
            recoveredBlock64Block76PC := 104.
        ].
        recoveredBlock64Block76Step = 104 ifTrue: [
            recoveredBlock64Block76Stack2 := (recoveredBlock64Block76Stack2) create.
            recoveredBlock64Block76PC := 106.
        ].
        recoveredBlock64Block76Step = 106 ifTrue: [
            recoveredBlock64Block76Stack3 := recoveredBlock64Block76Stack2.
            recoveredBlock64Block76PC := 107.
        ].
        recoveredBlock64Block76Step = 107 ifTrue: [
            recoveredBlock64Block76Stack4 := recoveredBlock64Block76Arg1.
            recoveredBlock64Block76PC := 108.
        ].
        recoveredBlock64Block76Step = 108 ifTrue: [
            (recoveredBlock64Block76Stack3) codeContainer: (recoveredBlock64Block76Stack4).
            recoveredBlock64Block76Stack3 := recoveredBlock64Block76Stack2.
            recoveredBlock64Block76PC := 111.
        ].
        recoveredBlock64Block76Step = 111 ifTrue: [
            recoveredBlock64Block76Stack4 := recoveredBlock64Arg1.
            recoveredBlock64Block76PC := 114.
        ].
        recoveredBlock64Block76Step = 114 ifTrue: [
            recoveredBlock64Block76Stack4 := (recoveredBlock64Block76Stack4) key.
            recoveredBlock64Block76PC := 116.
        ].
        recoveredBlock64Block76Step = 116 ifTrue: [
            recoveredBlock64Block76Stack5 := [:block28104e60Arg1 | 
    nil
].
            recoveredBlock64Block76PC := 118.
        ].
        recoveredBlock64Block76Step = 118 ifTrue: [
            recoveredBlock64Block76PC := 124.
        ].
        recoveredBlock64Block76Step = 124 ifTrue: [
            recoveredBlock64Block76Stack4 := (recoveredBlock64Block76Stack4) getObjectIfUndefined: (recoveredBlock64Block76Stack5).
            recoveredBlock64Block76PC := 126.
        ].
        recoveredBlock64Block76Step = 126 ifTrue: [
            (recoveredBlock64Block76Stack3) implementation: (recoveredBlock64Block76Stack4).
            recoveredBlock64Block76PC := 128.
        ].
        recoveredBlock64Block76Step = 128 ifTrue: [
            recoveredBlock64Block76Stack1 := (recoveredBlock64Block76Stack1) add: (recoveredBlock64Block76Stack2).
            recoveredBlock64Block76PC := 130.
        ].
        recoveredBlock64Block76Step = 130 ifTrue: [
            recoveredBlock64Block76Result := recoveredBlock64Block76Stack1.
            recoveredBlock64Block76Done := true.
        ].
    ].
    recoveredBlock64Block76Result
].
    recoveredBlock64Value4 := (recoveredBlock64Value2) do: (recoveredBlock64Value3).
    recoveredBlock64Value4
].
    (recoveredValue7) associationsDo: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x204d0a7c; bytecode file offset 0xdcd38c"
!SGBrowseManager methodsFor: 'recovered'!
findNextInMethodsOf: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) methods.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := [:recoveredBlock14Block20Arg1 | 
    | recoveredBlock14Block20Value0 recoveredBlock14Block20Value1 recoveredBlock14Block20Value2 recoveredBlock14Block20Value3 |
    recoveredBlock14Block20Value0 := recoveredBlock14Block20Arg1.
    recoveredBlock14Block20Value1 := recoveredBlock14Arg1.
    recoveredBlock14Block20Value2 := (recoveredBlock14Block20Value1) aliasName.
    recoveredBlock14Block20Value3 := (recoveredBlock14Block20Value0) procSourceAt: (recoveredBlock14Block20Value2).
    recoveredBlock14Block20Value3
].
    recoveredBlock14Value1 := recoveredArg2.
    recoveredBlock14Value2 := recoveredArg1.
    recoveredBlock14Value3 := (self) selectCodeContainerCode: (recoveredBlock14Value0) searchString: (recoveredBlock14Value1) component: (recoveredBlock14Value2).
    recoveredLocal4 := recoveredBlock14Value3.
    recoveredBlock14Value4 := recoveredLocal4.
    recoveredBlock14Value5 := [:recoveredBlock14Block49Arg1 | 
    | recoveredBlock14Block49Value0 recoveredBlock14Block49Value1 recoveredBlock14Block49Value2 recoveredBlock14Block49Value3 recoveredBlock14Block49Value4 recoveredBlock14Block49Value5 recoveredBlock14Block49Value6 recoveredBlock14Block49Value7 recoveredBlock14Block49Value8 recoveredBlock14Block49Value9 |
    recoveredBlock14Block49Value0 := recoveredBlock14Block49Arg1.
    recoveredBlock14Block49Value1 := (recoveredBlock14Block49Value0) codeContainer.
    recoveredBlock14Block49Value2 := recoveredBlock14Arg1.
    recoveredBlock14Block49Value3 := (recoveredBlock14Block49Value2) aliasName.
    recoveredBlock14Block49Value4 := (recoveredBlock14Block49Value1) procSourceAt: (recoveredBlock14Block49Value3).
    recoveredBlock14Block49Value5 := recoveredArg2.
    recoveredBlock14Block49Value6 := (self) getLineNumberDictionaryCode: (recoveredBlock14Block49Value4) searchString: (recoveredBlock14Block49Value5).
    recoveredLocal2 := recoveredBlock14Block49Value6.
    recoveredBlock14Block49Value7 := recoveredLocal2.
    recoveredBlock14Block49Value8 := [:recoveredBlock14Block49Block78Arg1 | 
    | recoveredBlock14Block49Block78Value0 recoveredBlock14Block49Block78Value1 recoveredBlock14Block49Block78Value2 recoveredBlock14Block49Block78Value3 recoveredBlock14Block49Block78Value4 recoveredBlock14Block49Block78Value5 recoveredBlock14Block49Block78Value6 recoveredBlock14Block49Block78Value7 recoveredBlock14Block49Block78Value8 recoveredBlock14Block49Block78Value9 recoveredBlock14Block49Block78Value10 recoveredBlock14Block49Block78Value11 recoveredBlock14Block49Block78Value12 recoveredBlock14Block49Block78Value13 recoveredBlock14Block49Block78Value14 recoveredBlock14Block49Block78Value15 recoveredBlock14Block49Block78Value16 recoveredBlock14Block49Block78Value17 recoveredBlock14Block49Block78Value18 recoveredBlock14Block49Block78Value19 recoveredBlock14Block49Block78Value20 recoveredBlock14Block49Block78Value21 recoveredBlock14Block49Block78Value22 |
    recoveredBlock14Block49Block78Value0 := recoveredLocal1.
    recoveredBlock14Block49Block78Value1 := SGFindResultMethodCode.
    recoveredBlock14Block49Block78Value2 := (recoveredBlock14Block49Block78Value1) create.
    recoveredBlock14Block49Block78Value3 := recoveredBlock14Block49Block78Value2.
    recoveredBlock14Block49Block78Value4 := recoveredArg1.
    (recoveredBlock14Block49Block78Value3) component: (recoveredBlock14Block49Block78Value4).
    recoveredBlock14Block49Block78Value5 := recoveredBlock14Block49Block78Value2.
    recoveredBlock14Block49Block78Value6 := recoveredBlock14Block49Arg1.
    recoveredBlock14Block49Block78Value7 := (recoveredBlock14Block49Block78Value6) codeContainer.
    (recoveredBlock14Block49Block78Value5) codeContainer: (recoveredBlock14Block49Block78Value7).
    recoveredBlock14Block49Block78Value8 := recoveredBlock14Block49Block78Value2.
    recoveredBlock14Block49Block78Value9 := recoveredBlock14Block49Arg1.
    recoveredBlock14Block49Block78Value10 := (recoveredBlock14Block49Block78Value9) implementation.
    (recoveredBlock14Block49Block78Value8) implementation: (recoveredBlock14Block49Block78Value10).
    recoveredBlock14Block49Block78Value11 := recoveredBlock14Block49Block78Value2.
    recoveredBlock14Block49Block78Value12 := recoveredBlock14Arg1.
    (recoveredBlock14Block49Block78Value11) method: (recoveredBlock14Block49Block78Value12).
    recoveredBlock14Block49Block78Value13 := recoveredBlock14Block49Block78Value2.
    recoveredBlock14Block49Block78Value14 := recoveredBlock14Block49Block78Arg1.
    recoveredBlock14Block49Block78Value15 := (recoveredBlock14Block49Block78Value14) key.
    (recoveredBlock14Block49Block78Value13) selectionBegin: (recoveredBlock14Block49Block78Value15).
    recoveredBlock14Block49Block78Value16 := recoveredBlock14Block49Block78Value2.
    recoveredBlock14Block49Block78Value17 := recoveredBlock14Block49Block78Arg1.
    recoveredBlock14Block49Block78Value18 := (recoveredBlock14Block49Block78Value17) key.
    (recoveredBlock14Block49Block78Value16) selectionEnd: (recoveredBlock14Block49Block78Value18).
    recoveredBlock14Block49Block78Value19 := recoveredBlock14Block49Block78Value2.
    recoveredBlock14Block49Block78Value20 := recoveredBlock14Block49Block78Arg1.
    recoveredBlock14Block49Block78Value21 := (recoveredBlock14Block49Block78Value20) value.
    (recoveredBlock14Block49Block78Value19) codeLine: (recoveredBlock14Block49Block78Value21).
    recoveredBlock14Block49Block78Value22 := (recoveredBlock14Block49Block78Value0) add: (recoveredBlock14Block49Block78Value2).
    recoveredBlock14Block49Block78Value22
].
    recoveredBlock14Block49Value9 := (recoveredBlock14Block49Value7) associationsDo: (recoveredBlock14Block49Value8).
    recoveredBlock14Block49Value9
].
    recoveredBlock14Value6 := (recoveredBlock14Value4) do: (recoveredBlock14Value5).
    recoveredBlock14Value6
].
    recoveredValue5 := (recoveredValue3) do: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x204ee1b0; bytecode file offset 0xdeaac8"
!SGBrowseManager methodsFor: 'recovered'!
findNextInExternalSourceOf: recoveredArg1 string: recoveredArg2 hCode: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block28109444Arg1 | 
    | block28109444Value0 block28109444Value1 block28109444Value2 |
    block28109444Value0 := block28109444Arg1.
    block28109444Value1 := (block28109444Value0) hSource.
    block28109444Value2 := (block28109444Value1) value.
    block28109444Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:block28109468Arg1 | 
    | block28109468Value0 block28109468Value1 block28109468Value2 |
    block28109468Value0 := block28109468Arg1.
    block28109468Value1 := (block28109468Value0) cSource.
    block28109468Value2 := (block28109468Value1) value.
    block28109468Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectCodeContainerCode: (recoveredStack1) searchString: (recoveredStack2) component: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 recoveredBlock67Value4 recoveredBlock67Value5 recoveredBlock67Value6 recoveredBlock67Value7 recoveredBlock67Value8 |
    recoveredBlock67Value0 := recoveredLocal2.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := (recoveredBlock67Value1) codeContainer.
    recoveredBlock67Value3 := (recoveredBlock67Value0) value: (recoveredBlock67Value2).
    recoveredBlock67Value4 := recoveredArg2.
    recoveredBlock67Value5 := (self) getLineNumberDictionaryCode: (recoveredBlock67Value3) searchString: (recoveredBlock67Value4).
    recoveredLocal3 := recoveredBlock67Value5.
    recoveredBlock67Value6 := recoveredLocal3.
    recoveredBlock67Value7 := [:recoveredBlock67Block95Arg1 | 
    | recoveredBlock67Block95Value0 recoveredBlock67Block95Value1 recoveredBlock67Block95Value2 recoveredBlock67Block95Value3 recoveredBlock67Block95Value4 recoveredBlock67Block95Value5 recoveredBlock67Block95Value6 recoveredBlock67Block95Value7 recoveredBlock67Block95Value8 recoveredBlock67Block95Value9 recoveredBlock67Block95Value10 recoveredBlock67Block95Value11 recoveredBlock67Block95Value12 recoveredBlock67Block95Value13 recoveredBlock67Block95Value14 recoveredBlock67Block95Value15 recoveredBlock67Block95Value16 recoveredBlock67Block95Value17 recoveredBlock67Block95Value18 recoveredBlock67Block95Value19 recoveredBlock67Block95Value20 recoveredBlock67Block95Value21 recoveredBlock67Block95Value22 |
    recoveredBlock67Block95Value0 := recoveredLocal1.
    recoveredBlock67Block95Value1 := SGFindResultExternalCode.
    recoveredBlock67Block95Value2 := (recoveredBlock67Block95Value1) create.
    recoveredBlock67Block95Value3 := recoveredBlock67Block95Value2.
    recoveredBlock67Block95Value4 := recoveredArg1.
    (recoveredBlock67Block95Value3) component: (recoveredBlock67Block95Value4).
    recoveredBlock67Block95Value5 := recoveredBlock67Block95Value2.
    recoveredBlock67Block95Value6 := recoveredBlock67Arg1.
    recoveredBlock67Block95Value7 := (recoveredBlock67Block95Value6) codeContainer.
    (recoveredBlock67Block95Value5) codeContainer: (recoveredBlock67Block95Value7).
    recoveredBlock67Block95Value8 := recoveredBlock67Block95Value2.
    recoveredBlock67Block95Value9 := recoveredBlock67Arg1.
    recoveredBlock67Block95Value10 := (recoveredBlock67Block95Value9) implementation.
    (recoveredBlock67Block95Value8) implementation: (recoveredBlock67Block95Value10).
    recoveredBlock67Block95Value11 := recoveredBlock67Block95Value2.
    recoveredBlock67Block95Value12 := recoveredArg3.
    (recoveredBlock67Block95Value11) hCode: (recoveredBlock67Block95Value12).
    recoveredBlock67Block95Value13 := recoveredBlock67Block95Value2.
    recoveredBlock67Block95Value14 := recoveredBlock67Block95Arg1.
    recoveredBlock67Block95Value15 := (recoveredBlock67Block95Value14) key.
    (recoveredBlock67Block95Value13) selectionBegin: (recoveredBlock67Block95Value15).
    recoveredBlock67Block95Value16 := recoveredBlock67Block95Value2.
    recoveredBlock67Block95Value17 := recoveredBlock67Block95Arg1.
    recoveredBlock67Block95Value18 := (recoveredBlock67Block95Value17) key.
    (recoveredBlock67Block95Value16) selectionEnd: (recoveredBlock67Block95Value18).
    recoveredBlock67Block95Value19 := recoveredBlock67Block95Value2.
    recoveredBlock67Block95Value20 := recoveredBlock67Block95Arg1.
    recoveredBlock67Block95Value21 := (recoveredBlock67Block95Value20) value.
    (recoveredBlock67Block95Value19) codeLine: (recoveredBlock67Block95Value21).
    recoveredBlock67Block95Value22 := (recoveredBlock67Block95Value0) add: (recoveredBlock67Block95Value2).
    recoveredBlock67Block95Value22
].
    recoveredBlock67Value8 := (recoveredBlock67Value6) associationsDo: (recoveredBlock67Value7).
    recoveredBlock67Value8
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055ca14; bytecode file offset 0xe59328"
!SGBrowseManager methodsFor: 'recovered'!
findNextItems: recoveredArg1 parentWindow: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_57428'.
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
            recoveredStack0 := (recoveredStack0) checkOnlyItemsInList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) readKeysForItemWithSpecClassNames.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block2811035cArg1 :block2811035cArg2 | 
    | block2811035cValue0 block2811035cValue1 block2811035cValue2 block2811035cValue3 block2811035cValue4 |
    block2811035cValue0 := block2811035cArg1.
    block2811035cValue1 := (block2811035cValue0) name.
    block2811035cValue2 := block2811035cArg2.
    block2811035cValue3 := (block2811035cValue2) name.
    block2811035cValue4 := (block2811035cValue1) < (block2811035cValue3).
    block2811035cValue4
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Local2 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32Stack5 recoveredBlock32Stack6 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
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
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack3 := [:block28110380Arg1 | 
    nil
].
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) getObjectIfUndefined: (recoveredBlock32Stack3).
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Local2 := recoveredBlock32Stack3.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 221] ifFalse: [recoveredBlock32PC := 56].
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isValidObject.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 62] ifFalse: [recoveredBlock32PC := 221].
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isContainer.
            recoveredBlock32PC := 65.
        ].
        recoveredBlock32Step = 65 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 221] ifFalse: [recoveredBlock32PC := 68].
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 88] ifFalse: [recoveredBlock32PC := 76].
        ].
        recoveredBlock32Step = 76 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 79.
        ].
        recoveredBlock32Step = 79 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local2.
            recoveredBlock32PC := 80.
        ].
        recoveredBlock32Step = 80 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) dbObject.
            recoveredBlock32PC := 82.
        ].
        recoveredBlock32Step = 82 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) includes: (recoveredBlock32Stack3).
            recoveredBlock32PC := 84.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 88] ifFalse: [recoveredBlock32PC := 221].
        ].
        recoveredBlock32Step = 88 ifTrue: [
            recoveredBlock32PC := 89.
        ].
        recoveredBlock32Step = 89 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isCClass.
            recoveredBlock32PC := 92.
        ].
        recoveredBlock32Step = 92 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 93.
        ].
        recoveredBlock32Step = 93 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isASDLClass.
            recoveredBlock32PC := 95.
        ].
        recoveredBlock32Step = 95 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) | (recoveredBlock32Stack2).
            recoveredBlock32PC := 97.
        ].
        recoveredBlock32Step = 97 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 100] ifFalse: [recoveredBlock32PC := 124].
        ].
        recoveredBlock32Step = 100 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 101.
        ].
        recoveredBlock32Step = 101 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 102.
        ].
        recoveredBlock32Step = 102 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg1.
            recoveredBlock32PC := 105.
        ].
        recoveredBlock32Step = 105 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) findNextInMethodsOf: (recoveredBlock32Stack2) string: (recoveredBlock32Stack3).
            recoveredBlock32PC := 107.
        ].
        recoveredBlock32Step = 107 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 108.
        ].
        recoveredBlock32Step = 108 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 109.
        ].
        recoveredBlock32Step = 109 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 124] ifFalse: [recoveredBlock32PC := 112].
        ].
        recoveredBlock32Step = 112 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 113.
        ].
        recoveredBlock32Step = 113 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) notEmpty.
            recoveredBlock32PC := 115.
        ].
        recoveredBlock32Step = 115 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 118] ifFalse: [recoveredBlock32PC := 124].
        ].
        recoveredBlock32Step = 118 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg2.
            recoveredBlock32PC := 121.
        ].
        recoveredBlock32Step = 121 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 122.
        ].
        recoveredBlock32Step = 122 ifTrue: [
            (recoveredBlock32Stack1) updateForFindResults: (recoveredBlock32Stack2).
            recoveredBlock32PC := 124.
        ].
        recoveredBlock32Step = 124 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 125.
        ].
        recoveredBlock32Step = 125 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isCClass.
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 127 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 130] ifFalse: [recoveredBlock32PC := 154].
        ].
        recoveredBlock32Step = 130 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 131.
        ].
        recoveredBlock32Step = 131 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 132.
        ].
        recoveredBlock32Step = 132 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg1.
            recoveredBlock32PC := 135.
        ].
        recoveredBlock32Step = 135 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) findNextInHeaderOf: (recoveredBlock32Stack2) string: (recoveredBlock32Stack3).
            recoveredBlock32PC := 137.
        ].
        recoveredBlock32Step = 137 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 138.
        ].
        recoveredBlock32Step = 138 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 139.
        ].
        recoveredBlock32Step = 139 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 154] ifFalse: [recoveredBlock32PC := 142].
        ].
        recoveredBlock32Step = 142 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 143.
        ].
        recoveredBlock32Step = 143 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) notEmpty.
            recoveredBlock32PC := 145.
        ].
        recoveredBlock32Step = 145 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 148] ifFalse: [recoveredBlock32PC := 154].
        ].
        recoveredBlock32Step = 148 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg2.
            recoveredBlock32PC := 151.
        ].
        recoveredBlock32Step = 151 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 152.
        ].
        recoveredBlock32Step = 152 ifTrue: [
            (recoveredBlock32Stack1) updateForFindResults: (recoveredBlock32Stack2).
            recoveredBlock32PC := 154.
        ].
        recoveredBlock32Step = 154 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 155.
        ].
        recoveredBlock32Step = 155 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 156.
        ].
        recoveredBlock32Step = 156 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isCClass.
            recoveredBlock32PC := 158.
        ].
        recoveredBlock32Step = 158 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 162] ifFalse: [recoveredBlock32PC := 219].
        ].
        recoveredBlock32Step = 162 ifTrue: [
            recoveredBlock32PC := 163.
        ].
        recoveredBlock32Step = 163 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 164.
        ].
        recoveredBlock32Step = 164 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local2.
            recoveredBlock32PC := 165.
        ].
        recoveredBlock32Step = 165 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg1.
            recoveredBlock32PC := 168.
        ].
        recoveredBlock32Step = 168 ifTrue: [
            recoveredBlock32Stack4 := false.
            recoveredBlock32PC := 169.
        ].
        recoveredBlock32Step = 169 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) findNextInExternalSourceOf: (recoveredBlock32Stack2) string: (recoveredBlock32Stack3) hCode: (recoveredBlock32Stack4).
            recoveredBlock32PC := 172.
        ].
        recoveredBlock32Step = 172 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 173.
        ].
        recoveredBlock32Step = 173 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 174.
        ].
        recoveredBlock32Step = 174 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 190] ifFalse: [recoveredBlock32PC := 178].
        ].
        recoveredBlock32Step = 178 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 179.
        ].
        recoveredBlock32Step = 179 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) notEmpty.
            recoveredBlock32PC := 181.
        ].
        recoveredBlock32Step = 181 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 184] ifFalse: [recoveredBlock32PC := 190].
        ].
        recoveredBlock32Step = 184 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg2.
            recoveredBlock32PC := 187.
        ].
        recoveredBlock32Step = 187 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 188.
        ].
        recoveredBlock32Step = 188 ifTrue: [
            (recoveredBlock32Stack1) updateForFindResults: (recoveredBlock32Stack2).
            recoveredBlock32PC := 190.
        ].
        recoveredBlock32Step = 190 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 191.
        ].
        recoveredBlock32Step = 191 ifTrue: [
            recoveredBlock32Stack2 := self.
            recoveredBlock32PC := 192.
        ].
        recoveredBlock32Step = 192 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Local2.
            recoveredBlock32PC := 193.
        ].
        recoveredBlock32Step = 193 ifTrue: [
            recoveredBlock32Stack4 := recoveredArg1.
            recoveredBlock32PC := 196.
        ].
        recoveredBlock32Step = 196 ifTrue: [
            recoveredBlock32Stack5 := true.
            recoveredBlock32PC := 197.
        ].
        recoveredBlock32Step = 197 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) findNextInExternalSourceOf: (recoveredBlock32Stack3) string: (recoveredBlock32Stack4) hCode: (recoveredBlock32Stack5).
            recoveredBlock32PC := 200.
        ].
        recoveredBlock32Step = 200 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 201.
        ].
        recoveredBlock32Step = 201 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack3.
            recoveredBlock32PC := 202.
        ].
        recoveredBlock32Step = 202 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 219] ifFalse: [recoveredBlock32PC := 206].
        ].
        recoveredBlock32Step = 206 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 207.
        ].
        recoveredBlock32Step = 207 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) notEmpty.
            recoveredBlock32PC := 209.
        ].
        recoveredBlock32Step = 209 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 212] ifFalse: [recoveredBlock32PC := 219].
        ].
        recoveredBlock32Step = 212 ifTrue: [
            recoveredBlock32PC := 213.
        ].
        recoveredBlock32Step = 213 ifTrue: [
            recoveredBlock32Stack1 := recoveredArg2.
            recoveredBlock32PC := 216.
        ].
        recoveredBlock32Step = 216 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 217.
        ].
        recoveredBlock32Step = 217 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) updateForFindResults: (recoveredBlock32Stack2).
            recoveredBlock32PC := 219.
        ].
        recoveredBlock32Step = 219 ifTrue: [
            recoveredBlock32Stack2 := nil.
            recoveredBlock32PC := 220.
        ].
        recoveredBlock32Step = 220 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 221.
        ].
        recoveredBlock32Step = 221 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) garbageCollect.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205661e4; bytecode file offset 0xe62b0c"
!SGBrowseManager methodsFor: 'recovered'!
promptAndCollectMethodsBrowseString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredLocal4 := recoveredBlock17Stack2.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 158] ifFalse: [recoveredBlock17PC := 36].
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack4 := recoveredLocal3.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack5 := recoveredLocal2.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack6 := [:recoveredBlock17Block49Arg1 :recoveredBlock17Block49Arg2 :recoveredBlock17Block49Arg3 | 
    | recoveredBlock17Block49Local1 recoveredBlock17Block49Stack0 recoveredBlock17Block49Stack1 recoveredBlock17Block49Stack2 recoveredBlock17Block49Stack3 recoveredBlock17Block49Stack4 recoveredBlock17Block49PC recoveredBlock17Block49Step recoveredBlock17Block49Done recoveredBlock17Block49Result |
    recoveredBlock17Block49Stack0 := nil.
    recoveredBlock17Block49PC := 56.
    recoveredBlock17Block49Done := false.
    [recoveredBlock17Block49Done not] whileTrue: [
        recoveredBlock17Block49Step := recoveredBlock17Block49PC.
        recoveredBlock17Block49Step = 56 ifTrue: [
            recoveredBlock17Block49Stack1 := nil.
            recoveredBlock17Block49PC := 57.
        ].
        recoveredBlock17Block49Step = 57 ifTrue: [
            recoveredBlock17Block49Stack2 := RBTopFolder.
            recoveredBlock17Block49PC := 59.
        ].
        recoveredBlock17Block49Step = 59 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) itemWithSpecClassNames.
            recoveredBlock17Block49PC := 61.
        ].
        recoveredBlock17Block49Step = 61 ifTrue: [
            recoveredBlock17Block49Stack3 := recoveredBlock17Block49Arg1.
            recoveredBlock17Block49PC := 64.
        ].
        recoveredBlock17Block49Step = 64 ifTrue: [
            recoveredBlock17Block49Stack3 := (recoveredBlock17Block49Stack3) className.
            recoveredBlock17Block49PC := 66.
        ].
        recoveredBlock17Block49Step = 66 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) includes: (recoveredBlock17Block49Stack3).
            recoveredBlock17Block49PC := 68.
        ].
        recoveredBlock17Block49Step = 68 ifTrue: [
            (recoveredBlock17Block49Stack2) ifTrue: [recoveredBlock17Block49PC := 72] ifFalse: [recoveredBlock17Block49PC := 154].
        ].
        recoveredBlock17Block49Step = 72 ifTrue: [
            recoveredBlock17Block49PC := 73.
        ].
        recoveredBlock17Block49Step = 73 ifTrue: [
            recoveredBlock17Block49Stack1 := nil.
            recoveredBlock17Block49PC := 74.
        ].
        recoveredBlock17Block49Step = 74 ifTrue: [
            recoveredBlock17Block49Stack2 := recoveredBlock17Block49Arg1.
            recoveredBlock17Block49PC := 77.
        ].
        recoveredBlock17Block49Step = 77 ifTrue: [
            recoveredBlock17Block49Stack3 := [:block281111d8Arg1 | 
    nil
].
            recoveredBlock17Block49PC := 79.
        ].
        recoveredBlock17Block49Step = 79 ifTrue: [
            recoveredBlock17Block49PC := 84.
        ].
        recoveredBlock17Block49Step = 84 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) getObjectIfUndefined: (recoveredBlock17Block49Stack3).
            recoveredBlock17Block49PC := 86.
        ].
        recoveredBlock17Block49Step = 86 ifTrue: [
            recoveredBlock17Block49Stack3 := recoveredBlock17Block49Stack2.
            recoveredBlock17Block49PC := 87.
        ].
        recoveredBlock17Block49Step = 87 ifTrue: [
            recoveredBlock17Block49Local1 := recoveredBlock17Block49Stack3.
            recoveredBlock17Block49PC := 90.
        ].
        recoveredBlock17Block49Step = 90 ifTrue: [
            (recoveredBlock17Block49Stack2 == nil) ifTrue: [recoveredBlock17Block49PC := 154] ifFalse: [recoveredBlock17Block49PC := 94].
        ].
        recoveredBlock17Block49Step = 94 ifTrue: [
            recoveredBlock17Block49PC := 95.
        ].
        recoveredBlock17Block49Step = 95 ifTrue: [
            recoveredBlock17Block49Stack1 := recoveredBlock17Block49Local1.
            recoveredBlock17Block49PC := 98.
        ].
        recoveredBlock17Block49Step = 98 ifTrue: [
            recoveredBlock17Block49Stack1 := (recoveredBlock17Block49Stack1) methods.
            recoveredBlock17Block49PC := 100.
        ].
        recoveredBlock17Block49Step = 100 ifTrue: [
            recoveredBlock17Block49Stack2 := [:recoveredBlock17Block49Block100Arg1 | 
    | recoveredBlock17Block49Block100Local1 recoveredBlock17Block49Block100Stack0 recoveredBlock17Block49Block100Stack1 recoveredBlock17Block49Block100Stack2 recoveredBlock17Block49Block100Stack3 recoveredBlock17Block49Block100Stack4 recoveredBlock17Block49Block100PC recoveredBlock17Block49Block100Step recoveredBlock17Block49Block100Done recoveredBlock17Block49Block100Result |
    recoveredBlock17Block49Block100Stack0 := nil.
    recoveredBlock17Block49Block100PC := 106.
    recoveredBlock17Block49Block100Done := false.
    [recoveredBlock17Block49Block100Done not] whileTrue: [
        recoveredBlock17Block49Block100Step := recoveredBlock17Block49Block100PC.
        recoveredBlock17Block49Block100Step = 106 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := recoveredBlock17Block49Block100Arg1.
            recoveredBlock17Block49Block100PC := 107.
        ].
        recoveredBlock17Block49Block100Step = 107 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := (recoveredBlock17Block49Block100Stack1) methodName.
            recoveredBlock17Block49Block100PC := 109.
        ].
        recoveredBlock17Block49Block100Step = 109 ifTrue: [
            recoveredBlock17Block49Block100Local1 := recoveredBlock17Block49Block100Stack1.
            recoveredBlock17Block49Block100PC := 110.
        ].
        recoveredBlock17Block49Block100Step = 110 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := recoveredArg1.
            recoveredBlock17Block49Block100PC := 113.
        ].
        recoveredBlock17Block49Block100Step = 113 ifTrue: [
            recoveredBlock17Block49Block100Stack2 := recoveredBlock17Block49Block100Local1.
            recoveredBlock17Block49Block100PC := 114.
        ].
        recoveredBlock17Block49Block100Step = 114 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := (recoveredBlock17Block49Block100Stack1) match: (recoveredBlock17Block49Block100Stack2).
            recoveredBlock17Block49Block100PC := 116.
        ].
        recoveredBlock17Block49Block100Step = 116 ifTrue: [
            (recoveredBlock17Block49Block100Stack1) ifTrue: [recoveredBlock17Block49Block100PC := 120] ifFalse: [recoveredBlock17Block49Block100PC := 126].
        ].
        recoveredBlock17Block49Block100Step = 120 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := recoveredBlock17Block49Arg2.
            recoveredBlock17Block49Block100PC := 123.
        ].
        recoveredBlock17Block49Block100Step = 123 ifTrue: [
            recoveredBlock17Block49Block100Stack2 := recoveredBlock17Block49Block100Arg1.
            recoveredBlock17Block49Block100PC := 124.
        ].
        recoveredBlock17Block49Block100Step = 124 ifTrue: [
            (recoveredBlock17Block49Block100Stack1) add: (recoveredBlock17Block49Block100Stack2).
            recoveredBlock17Block49Block100PC := 126.
        ].
        recoveredBlock17Block49Block100Step = 126 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := nil.
            recoveredBlock17Block49Block100PC := 127.
        ].
        recoveredBlock17Block49Block100Step = 127 ifTrue: [
            recoveredBlock17Block49Block100Stack2 := '*'.
            recoveredBlock17Block49Block100PC := 129.
        ].
        recoveredBlock17Block49Block100Step = 129 ifTrue: [
            recoveredBlock17Block49Block100Stack3 := recoveredArg1.
            recoveredBlock17Block49Block100PC := 132.
        ].
        recoveredBlock17Block49Block100Step = 132 ifTrue: [
            recoveredBlock17Block49Block100Stack2 := (recoveredBlock17Block49Block100Stack2) , (recoveredBlock17Block49Block100Stack3).
            recoveredBlock17Block49Block100PC := 134.
        ].
        recoveredBlock17Block49Block100Step = 134 ifTrue: [
            recoveredBlock17Block49Block100Stack3 := '*'.
            recoveredBlock17Block49Block100PC := 136.
        ].
        recoveredBlock17Block49Block100Step = 136 ifTrue: [
            recoveredBlock17Block49Block100Stack2 := (recoveredBlock17Block49Block100Stack2) , (recoveredBlock17Block49Block100Stack3).
            recoveredBlock17Block49Block100PC := 138.
        ].
        recoveredBlock17Block49Block100Step = 138 ifTrue: [
            recoveredBlock17Block49Block100Stack3 := recoveredBlock17Block49Block100Local1.
            recoveredBlock17Block49Block100PC := 139.
        ].
        recoveredBlock17Block49Block100Step = 139 ifTrue: [
            recoveredBlock17Block49Block100Stack2 := (recoveredBlock17Block49Block100Stack2) match: (recoveredBlock17Block49Block100Stack3).
            recoveredBlock17Block49Block100PC := 141.
        ].
        recoveredBlock17Block49Block100Step = 141 ifTrue: [
            (recoveredBlock17Block49Block100Stack2) ifTrue: [recoveredBlock17Block49Block100PC := 144] ifFalse: [recoveredBlock17Block49Block100PC := 151].
        ].
        recoveredBlock17Block49Block100Step = 144 ifTrue: [
            recoveredBlock17Block49Block100PC := 145.
        ].
        recoveredBlock17Block49Block100Step = 145 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := recoveredBlock17Block49Arg3.
            recoveredBlock17Block49Block100PC := 148.
        ].
        recoveredBlock17Block49Block100Step = 148 ifTrue: [
            recoveredBlock17Block49Block100Stack2 := recoveredBlock17Block49Block100Arg1.
            recoveredBlock17Block49Block100PC := 149.
        ].
        recoveredBlock17Block49Block100Step = 149 ifTrue: [
            recoveredBlock17Block49Block100Stack1 := (recoveredBlock17Block49Block100Stack1) add: (recoveredBlock17Block49Block100Stack2).
            recoveredBlock17Block49Block100PC := 151.
        ].
        recoveredBlock17Block49Block100Step = 151 ifTrue: [
            recoveredBlock17Block49Block100Result := recoveredBlock17Block49Block100Stack1.
            recoveredBlock17Block49Block100Done := true.
        ].
    ].
    recoveredBlock17Block49Block100Result
].
            recoveredBlock17Block49PC := 152.
        ].
        recoveredBlock17Block49Step = 152 ifTrue: [
            recoveredBlock17Block49Stack1 := (recoveredBlock17Block49Stack1) do: (recoveredBlock17Block49Stack2).
            recoveredBlock17Block49PC := 154.
        ].
        recoveredBlock17Block49Step = 154 ifTrue: [
            recoveredBlock17Block49Result := recoveredBlock17Block49Stack1.
            recoveredBlock17Block49Done := true.
        ].
    ].
    recoveredBlock17Block49Result
].
            recoveredBlock17PC := 155.
        ].
        recoveredBlock17Step = 155 ifTrue: [
            (recoveredBlock17Stack1) searchAllChildren: (recoveredBlock17Stack2) progress: (recoveredBlock17Stack3) exact: (recoveredBlock17Stack4) wild: (recoveredBlock17Stack5) itemBlock: (recoveredBlock17Stack6).
            recoveredBlock17PC := 158.
        ].
        recoveredBlock17Step = 158 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 159.
        ].
        recoveredBlock17Step = 159 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal3.
            recoveredBlock17PC := 162.
        ].
        recoveredBlock17Step = 162 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 163.
        ].
        recoveredBlock17Step = 163 ifTrue: [
            recoveredLocal5 := recoveredBlock17Stack3.
            recoveredBlock17PC := 166.
        ].
        recoveredBlock17Step = 166 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isEmpty.
            recoveredBlock17PC := 168.
        ].
        recoveredBlock17Step = 168 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 172] ifFalse: [recoveredBlock17PC := 180].
        ].
        recoveredBlock17Step = 172 ifTrue: [
            recoveredBlock17PC := 173.
        ].
        recoveredBlock17Step = 173 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 176.
        ].
        recoveredBlock17Step = 176 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 177.
        ].
        recoveredBlock17Step = 177 ifTrue: [
            recoveredLocal5 := recoveredBlock17Stack2.
            recoveredBlock17PC := 180.
        ].
        recoveredBlock17Step = 180 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) initialProgressMessage.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack5 := 'Search methods'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 203].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock205Stack0 recoveredBlock205Stack1 recoveredBlock205Stack2 recoveredBlock205Stack3 recoveredBlock205PC recoveredBlock205Step recoveredBlock205Done recoveredBlock205Result |
    recoveredBlock205Stack0 := self.
    recoveredBlock205PC := 212.
    recoveredBlock205Done := false.
    [recoveredBlock205Done not] whileTrue: [
        recoveredBlock205Step := recoveredBlock205PC.
        recoveredBlock205Step = 212 ifTrue: [
            recoveredBlock205Stack1 := recoveredLocal5.
            recoveredBlock205PC := 215.
        ].
        recoveredBlock205Step = 215 ifTrue: [
            recoveredBlock205Stack2 := [:block281111fcArg1 | 
    | block281111fcValue0 block281111fcValue1 block281111fcValue2 |
    block281111fcValue0 := SGMethodBrowserContainer.
    block281111fcValue1 := block281111fcArg1.
    block281111fcValue2 := (block281111fcValue0) createFor: (block281111fcValue1).
    block281111fcValue2
].
            recoveredBlock205PC := 217.
        ].
        recoveredBlock205Step = 217 ifTrue: [
            recoveredBlock205PC := 226.
        ].
        recoveredBlock205Step = 226 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) collect: (recoveredBlock205Stack2).
            recoveredBlock205PC := 228.
        ].
        recoveredBlock205Step = 228 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Stack1.
            recoveredBlock205PC := 229.
        ].
        recoveredBlock205Step = 229 ifTrue: [
            recoveredLocal1 := recoveredBlock205Stack2.
            recoveredBlock205PC := 232.
        ].
        recoveredBlock205Step = 232 ifTrue: [
            recoveredBlock205Result := recoveredBlock205Stack1.
            recoveredBlock205Done := true.
        ].
    ].
    recoveredBlock205Result
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057c6d8; bytecode file offset 0xe79004"
!SGBrowseManager methodsFor: 'recovered'!
promptAndCollectMethodElementsBrowseString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredLocal4 := recoveredBlock17Stack2.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 177] ifFalse: [recoveredBlock17PC := 36].
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack4 := recoveredLocal3.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack5 := recoveredLocal2.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack6 := [:recoveredBlock17Block49Arg1 :recoveredBlock17Block49Arg2 :recoveredBlock17Block49Arg3 | 
    | recoveredBlock17Block49Local1 recoveredBlock17Block49Stack0 recoveredBlock17Block49Stack1 recoveredBlock17Block49Stack2 recoveredBlock17Block49Stack3 recoveredBlock17Block49Stack4 recoveredBlock17Block49PC recoveredBlock17Block49Step recoveredBlock17Block49Done recoveredBlock17Block49Result |
    recoveredBlock17Block49Stack0 := nil.
    recoveredBlock17Block49PC := 56.
    recoveredBlock17Block49Done := false.
    [recoveredBlock17Block49Done not] whileTrue: [
        recoveredBlock17Block49Step := recoveredBlock17Block49PC.
        recoveredBlock17Block49Step = 56 ifTrue: [
            recoveredBlock17Block49Stack1 := nil.
            recoveredBlock17Block49PC := 57.
        ].
        recoveredBlock17Block49Step = 57 ifTrue: [
            recoveredBlock17Block49Stack2 := RBTopFolder.
            recoveredBlock17Block49PC := 59.
        ].
        recoveredBlock17Block49Step = 59 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) itemWithSpecClassNames.
            recoveredBlock17Block49PC := 61.
        ].
        recoveredBlock17Block49Step = 61 ifTrue: [
            recoveredBlock17Block49Stack3 := recoveredBlock17Block49Arg1.
            recoveredBlock17Block49PC := 64.
        ].
        recoveredBlock17Block49Step = 64 ifTrue: [
            recoveredBlock17Block49Stack3 := (recoveredBlock17Block49Stack3) className.
            recoveredBlock17Block49PC := 66.
        ].
        recoveredBlock17Block49Step = 66 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) includes: (recoveredBlock17Block49Stack3).
            recoveredBlock17Block49PC := 68.
        ].
        recoveredBlock17Block49Step = 68 ifTrue: [
            (recoveredBlock17Block49Stack2) ifTrue: [recoveredBlock17Block49PC := 72] ifFalse: [recoveredBlock17Block49PC := 173].
        ].
        recoveredBlock17Block49Step = 72 ifTrue: [
            recoveredBlock17Block49PC := 73.
        ].
        recoveredBlock17Block49Step = 73 ifTrue: [
            recoveredBlock17Block49Stack1 := nil.
            recoveredBlock17Block49PC := 74.
        ].
        recoveredBlock17Block49Step = 74 ifTrue: [
            recoveredBlock17Block49Stack2 := recoveredBlock17Block49Arg1.
            recoveredBlock17Block49PC := 77.
        ].
        recoveredBlock17Block49Step = 77 ifTrue: [
            recoveredBlock17Block49Stack3 := [:block28112a98Arg1 | 
    nil
].
            recoveredBlock17Block49PC := 79.
        ].
        recoveredBlock17Block49Step = 79 ifTrue: [
            recoveredBlock17Block49PC := 84.
        ].
        recoveredBlock17Block49Step = 84 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) getObjectIfUndefined: (recoveredBlock17Block49Stack3).
            recoveredBlock17Block49PC := 86.
        ].
        recoveredBlock17Block49Step = 86 ifTrue: [
            recoveredBlock17Block49Stack3 := recoveredBlock17Block49Stack2.
            recoveredBlock17Block49PC := 87.
        ].
        recoveredBlock17Block49Step = 87 ifTrue: [
            recoveredBlock17Block49Local1 := recoveredBlock17Block49Stack3.
            recoveredBlock17Block49PC := 90.
        ].
        recoveredBlock17Block49Step = 90 ifTrue: [
            (recoveredBlock17Block49Stack2 == nil) ifTrue: [recoveredBlock17Block49PC := 173] ifFalse: [recoveredBlock17Block49PC := 94].
        ].
        recoveredBlock17Block49Step = 94 ifTrue: [
            recoveredBlock17Block49PC := 95.
        ].
        recoveredBlock17Block49Step = 95 ifTrue: [
            recoveredBlock17Block49Stack1 := recoveredBlock17Block49Local1.
            recoveredBlock17Block49PC := 98.
        ].
        recoveredBlock17Block49Step = 98 ifTrue: [
            recoveredBlock17Block49Stack1 := (recoveredBlock17Block49Stack1) methods.
            recoveredBlock17Block49PC := 100.
        ].
        recoveredBlock17Block49Step = 100 ifTrue: [
            recoveredBlock17Block49Stack2 := [:recoveredBlock17Block49Block100Arg1 | 
    | recoveredBlock17Block49Block100Value0 recoveredBlock17Block49Block100Value1 recoveredBlock17Block49Block100Value2 recoveredBlock17Block49Block100Value3 |
    recoveredBlock17Block49Block100Value0 := recoveredBlock17Block49Block100Arg1.
    recoveredBlock17Block49Block100Value1 := (recoveredBlock17Block49Block100Value0) methodElements.
    recoveredBlock17Block49Block100Value2 := [:recoveredBlock17Block49Block100Block111Arg1 | 
    | recoveredBlock17Block49Block100Block111Local1 recoveredBlock17Block49Block100Block111Stack0 recoveredBlock17Block49Block100Block111Stack1 recoveredBlock17Block49Block100Block111Stack2 recoveredBlock17Block49Block100Block111Stack3 recoveredBlock17Block49Block100Block111Stack4 recoveredBlock17Block49Block100Block111PC recoveredBlock17Block49Block100Block111Step recoveredBlock17Block49Block100Block111Done recoveredBlock17Block49Block100Block111Result |
    recoveredBlock17Block49Block100Block111Stack0 := nil.
    recoveredBlock17Block49Block100Block111PC := 118.
    recoveredBlock17Block49Block100Block111Done := false.
    [recoveredBlock17Block49Block100Block111Done not] whileTrue: [
        recoveredBlock17Block49Block100Block111Step := recoveredBlock17Block49Block100Block111PC.
        recoveredBlock17Block49Block100Block111Step = 118 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := recoveredBlock17Block49Block100Block111Arg1.
            recoveredBlock17Block49Block100Block111PC := 119.
        ].
        recoveredBlock17Block49Block100Block111Step = 119 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := (recoveredBlock17Block49Block100Block111Stack1) elementName.
            recoveredBlock17Block49Block100Block111PC := 121.
        ].
        recoveredBlock17Block49Block100Block111Step = 121 ifTrue: [
            recoveredBlock17Block49Block100Block111Local1 := recoveredBlock17Block49Block100Block111Stack1.
            recoveredBlock17Block49Block100Block111PC := 122.
        ].
        recoveredBlock17Block49Block100Block111Step = 122 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := recoveredArg1.
            recoveredBlock17Block49Block100Block111PC := 125.
        ].
        recoveredBlock17Block49Block100Block111Step = 125 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack2 := recoveredBlock17Block49Block100Block111Local1.
            recoveredBlock17Block49Block100Block111PC := 126.
        ].
        recoveredBlock17Block49Block100Block111Step = 126 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := (recoveredBlock17Block49Block100Block111Stack1) match: (recoveredBlock17Block49Block100Block111Stack2).
            recoveredBlock17Block49Block100Block111PC := 128.
        ].
        recoveredBlock17Block49Block100Block111Step = 128 ifTrue: [
            (recoveredBlock17Block49Block100Block111Stack1) ifTrue: [recoveredBlock17Block49Block100Block111PC := 132] ifFalse: [recoveredBlock17Block49Block100Block111PC := 140].
        ].
        recoveredBlock17Block49Block100Block111Step = 132 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := recoveredBlock17Block49Arg2.
            recoveredBlock17Block49Block100Block111PC := 135.
        ].
        recoveredBlock17Block49Block100Block111Step = 135 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack2 := recoveredBlock17Block49Block100Arg1.
            recoveredBlock17Block49Block100Block111PC := 138.
        ].
        recoveredBlock17Block49Block100Block111Step = 138 ifTrue: [
            (recoveredBlock17Block49Block100Block111Stack1) add: (recoveredBlock17Block49Block100Block111Stack2).
            recoveredBlock17Block49Block100Block111PC := 140.
        ].
        recoveredBlock17Block49Block100Block111Step = 140 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := nil.
            recoveredBlock17Block49Block100Block111PC := 141.
        ].
        recoveredBlock17Block49Block100Block111Step = 141 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack2 := '*'.
            recoveredBlock17Block49Block100Block111PC := 143.
        ].
        recoveredBlock17Block49Block100Block111Step = 143 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack3 := recoveredArg1.
            recoveredBlock17Block49Block100Block111PC := 146.
        ].
        recoveredBlock17Block49Block100Block111Step = 146 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack2 := (recoveredBlock17Block49Block100Block111Stack2) , (recoveredBlock17Block49Block100Block111Stack3).
            recoveredBlock17Block49Block100Block111PC := 148.
        ].
        recoveredBlock17Block49Block100Block111Step = 148 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack3 := '*'.
            recoveredBlock17Block49Block100Block111PC := 150.
        ].
        recoveredBlock17Block49Block100Block111Step = 150 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack2 := (recoveredBlock17Block49Block100Block111Stack2) , (recoveredBlock17Block49Block100Block111Stack3).
            recoveredBlock17Block49Block100Block111PC := 152.
        ].
        recoveredBlock17Block49Block100Block111Step = 152 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack3 := recoveredBlock17Block49Block100Block111Local1.
            recoveredBlock17Block49Block100Block111PC := 153.
        ].
        recoveredBlock17Block49Block100Block111Step = 153 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack2 := (recoveredBlock17Block49Block100Block111Stack2) match: (recoveredBlock17Block49Block100Block111Stack3).
            recoveredBlock17Block49Block100Block111PC := 155.
        ].
        recoveredBlock17Block49Block100Block111Step = 155 ifTrue: [
            (recoveredBlock17Block49Block100Block111Stack2) ifTrue: [recoveredBlock17Block49Block100Block111PC := 158] ifFalse: [recoveredBlock17Block49Block100Block111PC := 167].
        ].
        recoveredBlock17Block49Block100Block111Step = 158 ifTrue: [
            recoveredBlock17Block49Block100Block111PC := 159.
        ].
        recoveredBlock17Block49Block100Block111Step = 159 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := recoveredBlock17Block49Arg3.
            recoveredBlock17Block49Block100Block111PC := 162.
        ].
        recoveredBlock17Block49Block100Block111Step = 162 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack2 := recoveredBlock17Block49Block100Arg1.
            recoveredBlock17Block49Block100Block111PC := 165.
        ].
        recoveredBlock17Block49Block100Block111Step = 165 ifTrue: [
            recoveredBlock17Block49Block100Block111Stack1 := (recoveredBlock17Block49Block100Block111Stack1) add: (recoveredBlock17Block49Block100Block111Stack2).
            recoveredBlock17Block49Block100Block111PC := 167.
        ].
        recoveredBlock17Block49Block100Block111Step = 167 ifTrue: [
            recoveredBlock17Block49Block100Block111Result := recoveredBlock17Block49Block100Block111Stack1.
            recoveredBlock17Block49Block100Block111Done := true.
        ].
    ].
    recoveredBlock17Block49Block100Block111Result
].
    recoveredBlock17Block49Block100Value3 := (recoveredBlock17Block49Block100Value1) do: (recoveredBlock17Block49Block100Value2).
    recoveredBlock17Block49Block100Value3
].
            recoveredBlock17Block49PC := 171.
        ].
        recoveredBlock17Block49Step = 171 ifTrue: [
            recoveredBlock17Block49Stack1 := (recoveredBlock17Block49Stack1) do: (recoveredBlock17Block49Stack2).
            recoveredBlock17Block49PC := 173.
        ].
        recoveredBlock17Block49Step = 173 ifTrue: [
            recoveredBlock17Block49Result := recoveredBlock17Block49Stack1.
            recoveredBlock17Block49Done := true.
        ].
    ].
    recoveredBlock17Block49Result
].
            recoveredBlock17PC := 174.
        ].
        recoveredBlock17Step = 174 ifTrue: [
            (recoveredBlock17Stack1) searchAllChildren: (recoveredBlock17Stack2) progress: (recoveredBlock17Stack3) exact: (recoveredBlock17Stack4) wild: (recoveredBlock17Stack5) itemBlock: (recoveredBlock17Stack6).
            recoveredBlock17PC := 177.
        ].
        recoveredBlock17Step = 177 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 178.
        ].
        recoveredBlock17Step = 178 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal3.
            recoveredBlock17PC := 181.
        ].
        recoveredBlock17Step = 181 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 182.
        ].
        recoveredBlock17Step = 182 ifTrue: [
            recoveredLocal5 := recoveredBlock17Stack3.
            recoveredBlock17PC := 185.
        ].
        recoveredBlock17Step = 185 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isEmpty.
            recoveredBlock17PC := 187.
        ].
        recoveredBlock17Step = 187 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 190] ifFalse: [recoveredBlock17PC := 198].
        ].
        recoveredBlock17Step = 190 ifTrue: [
            recoveredBlock17PC := 191.
        ].
        recoveredBlock17Step = 191 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 194.
        ].
        recoveredBlock17Step = 194 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 195.
        ].
        recoveredBlock17Step = 195 ifTrue: [
            recoveredLocal5 := recoveredBlock17Stack2.
            recoveredBlock17PC := 198.
        ].
        recoveredBlock17Step = 198 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) initialProgressMessage.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack5 := 'Search methods elements'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 221].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock223Stack0 recoveredBlock223Stack1 recoveredBlock223Stack2 recoveredBlock223Stack3 recoveredBlock223PC recoveredBlock223Step recoveredBlock223Done recoveredBlock223Result |
    recoveredBlock223Stack0 := self.
    recoveredBlock223PC := 230.
    recoveredBlock223Done := false.
    [recoveredBlock223Done not] whileTrue: [
        recoveredBlock223Step := recoveredBlock223PC.
        recoveredBlock223Step = 230 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal5.
            recoveredBlock223PC := 233.
        ].
        recoveredBlock223Step = 233 ifTrue: [
            recoveredBlock223Stack2 := [:block28112abcArg1 | 
    | block28112abcValue0 block28112abcValue1 block28112abcValue2 |
    block28112abcValue0 := SGMethodBrowserContainer.
    block28112abcValue1 := block28112abcArg1.
    block28112abcValue2 := (block28112abcValue0) createFor: (block28112abcValue1).
    block28112abcValue2
].
            recoveredBlock223PC := 235.
        ].
        recoveredBlock223Step = 235 ifTrue: [
            recoveredBlock223PC := 244.
        ].
        recoveredBlock223Step = 244 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) collect: (recoveredBlock223Stack2).
            recoveredBlock223PC := 246.
        ].
        recoveredBlock223Step = 246 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Stack1.
            recoveredBlock223PC := 247.
        ].
        recoveredBlock223Step = 247 ifTrue: [
            recoveredLocal1 := recoveredBlock223Stack2.
            recoveredBlock223PC := 250.
        ].
        recoveredBlock223Step = 250 ifTrue: [
            recoveredBlock223Result := recoveredBlock223Stack1.
            recoveredBlock223Done := true.
        ].
    ].
    recoveredBlock223Result
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057cb8c; bytecode file offset 0xe794b4"
!SGBrowseManager methodsFor: 'recovered'!
promptAndCollectElements: recoveredArg1 browseString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredLocal4 := recoveredBlock17Stack2.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 170] ifFalse: [recoveredBlock17PC := 36].
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg2.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack4 := recoveredLocal2.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack5 := recoveredLocal1.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack6 := [:recoveredBlock17Block49Arg1 :recoveredBlock17Block49Arg2 :recoveredBlock17Block49Arg3 | 
    | recoveredBlock17Block49Local1 recoveredBlock17Block49Stack0 recoveredBlock17Block49Stack1 recoveredBlock17Block49Stack2 recoveredBlock17Block49Stack3 recoveredBlock17Block49Stack4 recoveredBlock17Block49PC recoveredBlock17Block49Step recoveredBlock17Block49Done recoveredBlock17Block49Result |
    recoveredBlock17Block49Stack0 := nil.
    recoveredBlock17Block49PC := 56.
    recoveredBlock17Block49Done := false.
    [recoveredBlock17Block49Done not] whileTrue: [
        recoveredBlock17Block49Step := recoveredBlock17Block49PC.
        recoveredBlock17Block49Step = 56 ifTrue: [
            recoveredBlock17Block49Stack1 := nil.
            recoveredBlock17Block49PC := 57.
        ].
        recoveredBlock17Block49Step = 57 ifTrue: [
            recoveredBlock17Block49Stack2 := RBTopFolder.
            recoveredBlock17Block49PC := 59.
        ].
        recoveredBlock17Block49Step = 59 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) itemWithSpecClassNames.
            recoveredBlock17Block49PC := 61.
        ].
        recoveredBlock17Block49Step = 61 ifTrue: [
            recoveredBlock17Block49Stack3 := recoveredBlock17Block49Arg1.
            recoveredBlock17Block49PC := 64.
        ].
        recoveredBlock17Block49Step = 64 ifTrue: [
            recoveredBlock17Block49Stack3 := (recoveredBlock17Block49Stack3) className.
            recoveredBlock17Block49PC := 66.
        ].
        recoveredBlock17Block49Step = 66 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) includes: (recoveredBlock17Block49Stack3).
            recoveredBlock17Block49PC := 68.
        ].
        recoveredBlock17Block49Step = 68 ifTrue: [
            (recoveredBlock17Block49Stack2) ifTrue: [recoveredBlock17Block49PC := 72] ifFalse: [recoveredBlock17Block49PC := 166].
        ].
        recoveredBlock17Block49Step = 72 ifTrue: [
            recoveredBlock17Block49PC := 73.
        ].
        recoveredBlock17Block49Step = 73 ifTrue: [
            recoveredBlock17Block49Stack1 := nil.
            recoveredBlock17Block49PC := 74.
        ].
        recoveredBlock17Block49Step = 74 ifTrue: [
            recoveredBlock17Block49Stack2 := recoveredBlock17Block49Arg1.
            recoveredBlock17Block49PC := 77.
        ].
        recoveredBlock17Block49Step = 77 ifTrue: [
            recoveredBlock17Block49Stack3 := [:block28112b04Arg1 | 
    nil
].
            recoveredBlock17Block49PC := 79.
        ].
        recoveredBlock17Block49Step = 79 ifTrue: [
            recoveredBlock17Block49PC := 84.
        ].
        recoveredBlock17Block49Step = 84 ifTrue: [
            recoveredBlock17Block49Stack2 := (recoveredBlock17Block49Stack2) getObjectIfUndefined: (recoveredBlock17Block49Stack3).
            recoveredBlock17Block49PC := 86.
        ].
        recoveredBlock17Block49Step = 86 ifTrue: [
            recoveredBlock17Block49Stack3 := recoveredBlock17Block49Stack2.
            recoveredBlock17Block49PC := 87.
        ].
        recoveredBlock17Block49Step = 87 ifTrue: [
            recoveredBlock17Block49Local1 := recoveredBlock17Block49Stack3.
            recoveredBlock17Block49PC := 90.
        ].
        recoveredBlock17Block49Step = 90 ifTrue: [
            (recoveredBlock17Block49Stack2 == nil) ifTrue: [recoveredBlock17Block49PC := 166] ifFalse: [recoveredBlock17Block49PC := 94].
        ].
        recoveredBlock17Block49Step = 94 ifTrue: [
            recoveredBlock17Block49PC := 95.
        ].
        recoveredBlock17Block49Step = 95 ifTrue: [
            recoveredBlock17Block49Stack1 := recoveredBlock17Block49Local1.
            recoveredBlock17Block49PC := 98.
        ].
        recoveredBlock17Block49Step = 98 ifTrue: [
            recoveredBlock17Block49Stack2 := [:recoveredBlock17Block49Block98Arg1 | 
    | recoveredBlock17Block49Block98Local1 recoveredBlock17Block49Block98Stack0 recoveredBlock17Block49Block98Stack1 recoveredBlock17Block49Block98Stack2 recoveredBlock17Block49Block98Stack3 recoveredBlock17Block49Block98Stack4 recoveredBlock17Block49Block98PC recoveredBlock17Block49Block98Step recoveredBlock17Block49Block98Done recoveredBlock17Block49Block98Result |
    recoveredBlock17Block49Block98Stack0 := nil.
    recoveredBlock17Block49Block98PC := 104.
    recoveredBlock17Block49Block98Done := false.
    [recoveredBlock17Block49Block98Done not] whileTrue: [
        recoveredBlock17Block49Block98Step := recoveredBlock17Block49Block98PC.
        recoveredBlock17Block49Block98Step = 104 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := nil.
            recoveredBlock17Block49Block98PC := 105.
        ].
        recoveredBlock17Block49Block98Step = 105 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := recoveredArg1.
            recoveredBlock17Block49Block98PC := 108.
        ].
        recoveredBlock17Block49Block98Step = 108 ifTrue: [
            recoveredBlock17Block49Block98Stack3 := recoveredBlock17Block49Block98Arg1.
            recoveredBlock17Block49Block98PC := 109.
        ].
        recoveredBlock17Block49Block98Step = 109 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := (recoveredBlock17Block49Block98Stack2) value: (recoveredBlock17Block49Block98Stack3).
            recoveredBlock17Block49Block98PC := 111.
        ].
        recoveredBlock17Block49Block98Step = 111 ifTrue: [
            (recoveredBlock17Block49Block98Stack2) ifTrue: [recoveredBlock17Block49Block98PC := 114] ifFalse: [recoveredBlock17Block49Block98PC := 163].
        ].
        recoveredBlock17Block49Block98Step = 114 ifTrue: [
            recoveredBlock17Block49Block98PC := 115.
        ].
        recoveredBlock17Block49Block98Step = 115 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := recoveredBlock17Block49Block98Arg1.
            recoveredBlock17Block49Block98PC := 116.
        ].
        recoveredBlock17Block49Block98Step = 116 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := (recoveredBlock17Block49Block98Stack1) elementName.
            recoveredBlock17Block49Block98PC := 118.
        ].
        recoveredBlock17Block49Block98Step = 118 ifTrue: [
            recoveredBlock17Block49Block98Local1 := recoveredBlock17Block49Block98Stack1.
            recoveredBlock17Block49Block98PC := 119.
        ].
        recoveredBlock17Block49Block98Step = 119 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := recoveredArg2.
            recoveredBlock17Block49Block98PC := 122.
        ].
        recoveredBlock17Block49Block98Step = 122 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := recoveredBlock17Block49Block98Local1.
            recoveredBlock17Block49Block98PC := 123.
        ].
        recoveredBlock17Block49Block98Step = 123 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := (recoveredBlock17Block49Block98Stack1) match: (recoveredBlock17Block49Block98Stack2).
            recoveredBlock17Block49Block98PC := 125.
        ].
        recoveredBlock17Block49Block98Step = 125 ifTrue: [
            (recoveredBlock17Block49Block98Stack1) ifTrue: [recoveredBlock17Block49Block98PC := 128] ifFalse: [recoveredBlock17Block49Block98PC := 138].
        ].
        recoveredBlock17Block49Block98Step = 128 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := recoveredBlock17Block49Arg2.
            recoveredBlock17Block49Block98PC := 131.
        ].
        recoveredBlock17Block49Block98Step = 131 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := recoveredBlock17Block49Block98Arg1.
            recoveredBlock17Block49Block98PC := 132.
        ].
        recoveredBlock17Block49Block98Step = 132 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := (recoveredBlock17Block49Block98Stack1) add: (recoveredBlock17Block49Block98Stack2).
            recoveredBlock17Block49Block98PC := 134.
        ].
        recoveredBlock17Block49Block98Step = 134 ifTrue: [
            recoveredBlock17Block49Block98PC := 163.
        ].
        recoveredBlock17Block49Block98Step = 138 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := nil.
            recoveredBlock17Block49Block98PC := 139.
        ].
        recoveredBlock17Block49Block98Step = 139 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := '*'.
            recoveredBlock17Block49Block98PC := 141.
        ].
        recoveredBlock17Block49Block98Step = 141 ifTrue: [
            recoveredBlock17Block49Block98Stack3 := recoveredArg2.
            recoveredBlock17Block49Block98PC := 144.
        ].
        recoveredBlock17Block49Block98Step = 144 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := (recoveredBlock17Block49Block98Stack2) , (recoveredBlock17Block49Block98Stack3).
            recoveredBlock17Block49Block98PC := 146.
        ].
        recoveredBlock17Block49Block98Step = 146 ifTrue: [
            recoveredBlock17Block49Block98Stack3 := '*'.
            recoveredBlock17Block49Block98PC := 148.
        ].
        recoveredBlock17Block49Block98Step = 148 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := (recoveredBlock17Block49Block98Stack2) , (recoveredBlock17Block49Block98Stack3).
            recoveredBlock17Block49Block98PC := 150.
        ].
        recoveredBlock17Block49Block98Step = 150 ifTrue: [
            recoveredBlock17Block49Block98Stack3 := recoveredBlock17Block49Block98Local1.
            recoveredBlock17Block49Block98PC := 151.
        ].
        recoveredBlock17Block49Block98Step = 151 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := (recoveredBlock17Block49Block98Stack2) match: (recoveredBlock17Block49Block98Stack3).
            recoveredBlock17Block49Block98PC := 153.
        ].
        recoveredBlock17Block49Block98Step = 153 ifTrue: [
            (recoveredBlock17Block49Block98Stack2) ifTrue: [recoveredBlock17Block49Block98PC := 156] ifFalse: [recoveredBlock17Block49Block98PC := 163].
        ].
        recoveredBlock17Block49Block98Step = 156 ifTrue: [
            recoveredBlock17Block49Block98PC := 157.
        ].
        recoveredBlock17Block49Block98Step = 157 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := recoveredBlock17Block49Arg3.
            recoveredBlock17Block49Block98PC := 160.
        ].
        recoveredBlock17Block49Block98Step = 160 ifTrue: [
            recoveredBlock17Block49Block98Stack2 := recoveredBlock17Block49Block98Arg1.
            recoveredBlock17Block49Block98PC := 161.
        ].
        recoveredBlock17Block49Block98Step = 161 ifTrue: [
            recoveredBlock17Block49Block98Stack1 := (recoveredBlock17Block49Block98Stack1) add: (recoveredBlock17Block49Block98Stack2).
            recoveredBlock17Block49Block98PC := 163.
        ].
        recoveredBlock17Block49Block98Step = 163 ifTrue: [
            recoveredBlock17Block49Block98Result := recoveredBlock17Block49Block98Stack1.
            recoveredBlock17Block49Block98Done := true.
        ].
    ].
    recoveredBlock17Block49Block98Result
].
            recoveredBlock17Block49PC := 164.
        ].
        recoveredBlock17Block49Step = 164 ifTrue: [
            recoveredBlock17Block49Stack1 := (recoveredBlock17Block49Stack1) allVariablesDo: (recoveredBlock17Block49Stack2).
            recoveredBlock17Block49PC := 166.
        ].
        recoveredBlock17Block49Step = 166 ifTrue: [
            recoveredBlock17Block49Result := recoveredBlock17Block49Stack1.
            recoveredBlock17Block49Done := true.
        ].
    ].
    recoveredBlock17Block49Result
].
            recoveredBlock17PC := 167.
        ].
        recoveredBlock17Step = 167 ifTrue: [
            (recoveredBlock17Stack1) searchAllChildren: (recoveredBlock17Stack2) progress: (recoveredBlock17Stack3) exact: (recoveredBlock17Stack4) wild: (recoveredBlock17Stack5) itemBlock: (recoveredBlock17Stack6).
            recoveredBlock17PC := 170.
        ].
        recoveredBlock17Step = 170 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 171.
        ].
        recoveredBlock17Step = 171 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal2.
            recoveredBlock17PC := 174.
        ].
        recoveredBlock17Step = 174 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 175.
        ].
        recoveredBlock17Step = 175 ifTrue: [
            recoveredLocal5 := recoveredBlock17Stack3.
            recoveredBlock17PC := 178.
        ].
        recoveredBlock17Step = 178 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isEmpty.
            recoveredBlock17PC := 180.
        ].
        recoveredBlock17Step = 180 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 184] ifFalse: [recoveredBlock17PC := 192].
        ].
        recoveredBlock17Step = 184 ifTrue: [
            recoveredBlock17PC := 185.
        ].
        recoveredBlock17Step = 185 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 188.
        ].
        recoveredBlock17Step = 188 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 189.
        ].
        recoveredBlock17Step = 189 ifTrue: [
            recoveredLocal5 := recoveredBlock17Stack2.
            recoveredBlock17PC := 192.
        ].
        recoveredBlock17Step = 192 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) initialProgressMessage.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := 'Search elements'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 221].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock223Stack0 recoveredBlock223Stack1 recoveredBlock223Stack2 recoveredBlock223Stack3 recoveredBlock223PC recoveredBlock223Step recoveredBlock223Done recoveredBlock223Result |
    recoveredBlock223Stack0 := self.
    recoveredBlock223PC := 230.
    recoveredBlock223Done := false.
    [recoveredBlock223Done not] whileTrue: [
        recoveredBlock223Step := recoveredBlock223PC.
        recoveredBlock223Step = 230 ifTrue: [
            recoveredBlock223Stack1 := recoveredLocal5.
            recoveredBlock223PC := 233.
        ].
        recoveredBlock223Step = 233 ifTrue: [
            recoveredBlock223Stack2 := [:block28112b28Arg1 | 
    | block28112b28Value0 block28112b28Value1 block28112b28Value2 |
    block28112b28Value0 := SGElementBrowserContainer.
    block28112b28Value1 := block28112b28Arg1.
    block28112b28Value2 := (block28112b28Value0) createFor: (block28112b28Value1).
    block28112b28Value2
].
            recoveredBlock223PC := 235.
        ].
        recoveredBlock223Step = 235 ifTrue: [
            recoveredBlock223PC := 244.
        ].
        recoveredBlock223Step = 244 ifTrue: [
            recoveredBlock223Stack1 := (recoveredBlock223Stack1) collect: (recoveredBlock223Stack2).
            recoveredBlock223PC := 246.
        ].
        recoveredBlock223Step = 246 ifTrue: [
            recoveredBlock223Stack2 := recoveredBlock223Stack1.
            recoveredBlock223PC := 247.
        ].
        recoveredBlock223Step = 247 ifTrue: [
            recoveredLocal3 := recoveredBlock223Stack2.
            recoveredBlock223PC := 250.
        ].
        recoveredBlock223Step = 250 ifTrue: [
            recoveredBlock223Result := recoveredBlock223Stack1.
            recoveredBlock223Done := true.
        ].
    ].
    recoveredBlock223Result
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20587518; bytecode file offset 0xe83e40"
!SGBrowseManager methodsFor: 'recovered'!
promptAndCollectItemsBrowseString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41Stack5 recoveredBlock41Stack6 recoveredBlock41Stack7 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := SGDatabaseAccess.
            recoveredBlock41PC := 50.
        ].
        recoveredBlock41Step = 50 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) create.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredLocal5 := recoveredBlock41Stack2.
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            (recoveredBlock41Stack1 == nil) ifTrue: [recoveredBlock41PC := 183] ifFalse: [recoveredBlock41PC := 60].
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal5.
            recoveredBlock41PC := 63.
        ].
        recoveredBlock41Step = 63 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 66.
        ].
        recoveredBlock41Step = 66 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            recoveredBlock41Stack4 := recoveredLocal3.
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            recoveredBlock41Stack5 := recoveredLocal2.
            recoveredBlock41PC := 73.
        ].
        recoveredBlock41Step = 73 ifTrue: [
            recoveredBlock41Stack6 := [:recoveredBlock41Block73Arg1 :recoveredBlock41Block73Arg2 :recoveredBlock41Block73Arg3 | 
    | recoveredBlock41Block73Local1 recoveredBlock41Block73Stack0 recoveredBlock41Block73Stack1 recoveredBlock41Block73Stack2 recoveredBlock41Block73Stack3 recoveredBlock41Block73Stack4 recoveredBlock41Block73Stack5 recoveredBlock41Block73Stack6 recoveredBlock41Block73PC recoveredBlock41Block73Step recoveredBlock41Block73Done recoveredBlock41Block73Result |
    recoveredBlock41Block73Stack0 := nil.
    recoveredBlock41Block73PC := 80.
    recoveredBlock41Block73Done := false.
    [recoveredBlock41Block73Done not] whileTrue: [
        recoveredBlock41Block73Step := recoveredBlock41Block73PC.
        recoveredBlock41Block73Step = 80 ifTrue: [
            recoveredBlock41Block73Stack1 := recoveredLocal1.
            recoveredBlock41Block73PC := 83.
        ].
        recoveredBlock41Block73Step = 83 ifTrue: [
            recoveredBlock41Block73Stack2 := recoveredBlock41Block73Arg1.
            recoveredBlock41Block73PC := 84.
        ].
        recoveredBlock41Block73Step = 84 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) name.
            recoveredBlock41Block73PC := 86.
        ].
        recoveredBlock41Block73Step = 86 ifTrue: [
            recoveredBlock41Block73Stack3 := 1.
            recoveredBlock41Block73PC := 88.
        ].
        recoveredBlock41Block73Step = 88 ifTrue: [
            recoveredBlock41Block73Stack4 := 32.
            recoveredBlock41Block73PC := 90.
        ].
        recoveredBlock41Block73Step = 90 ifTrue: [
            recoveredBlock41Block73Stack5 := recoveredBlock41Block73Arg1.
            recoveredBlock41Block73PC := 91.
        ].
        recoveredBlock41Block73Step = 91 ifTrue: [
            recoveredBlock41Block73Stack5 := (recoveredBlock41Block73Stack5) name.
            recoveredBlock41Block73PC := 93.
        ].
        recoveredBlock41Block73Step = 93 ifTrue: [
            recoveredBlock41Block73Stack5 := (recoveredBlock41Block73Stack5) size.
            recoveredBlock41Block73PC := 94.
        ].
        recoveredBlock41Block73Step = 94 ifTrue: [
            recoveredBlock41Block73Stack4 := (recoveredBlock41Block73Stack4) min: (recoveredBlock41Block73Stack5).
            recoveredBlock41Block73PC := 95.
        ].
        recoveredBlock41Block73Step = 95 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) copyFrom: (recoveredBlock41Block73Stack3) to: (recoveredBlock41Block73Stack4).
            recoveredBlock41Block73PC := 97.
        ].
        recoveredBlock41Block73Step = 97 ifTrue: [
            recoveredBlock41Block73Stack1 := (recoveredBlock41Block73Stack1) match: (recoveredBlock41Block73Stack2).
            recoveredBlock41Block73PC := 99.
        ].
        recoveredBlock41Block73Step = 99 ifTrue: [
            (recoveredBlock41Block73Stack1) ifTrue: [recoveredBlock41Block73PC := 102] ifFalse: [recoveredBlock41Block73PC := 136].
        ].
        recoveredBlock41Block73Step = 102 ifTrue: [
            recoveredBlock41Block73Stack1 := recoveredBlock41Block73Arg1.
            recoveredBlock41Block73PC := 103.
        ].
        recoveredBlock41Block73Step = 103 ifTrue: [
            recoveredBlock41Block73Stack2 := [:block28113884Arg1 | 
    nil
].
            recoveredBlock41Block73PC := 105.
        ].
        recoveredBlock41Block73Step = 105 ifTrue: [
            recoveredBlock41Block73PC := 110.
        ].
        recoveredBlock41Block73Step = 110 ifTrue: [
            recoveredBlock41Block73Stack1 := (recoveredBlock41Block73Stack1) getObjectIfUndefined: (recoveredBlock41Block73Stack2).
            recoveredBlock41Block73PC := 112.
        ].
        recoveredBlock41Block73Step = 112 ifTrue: [
            recoveredBlock41Block73Stack2 := recoveredBlock41Block73Stack1.
            recoveredBlock41Block73PC := 113.
        ].
        recoveredBlock41Block73Step = 113 ifTrue: [
            recoveredBlock41Block73Local1 := recoveredBlock41Block73Stack2.
            recoveredBlock41Block73PC := 114.
        ].
        recoveredBlock41Block73Step = 114 ifTrue: [
            (recoveredBlock41Block73Stack1 == nil) ifTrue: [recoveredBlock41Block73PC := 136] ifFalse: [recoveredBlock41Block73PC := 118].
        ].
        recoveredBlock41Block73Step = 118 ifTrue: [
            recoveredBlock41Block73Stack1 := recoveredArg1.
            recoveredBlock41Block73PC := 121.
        ].
        recoveredBlock41Block73Step = 121 ifTrue: [
            recoveredBlock41Block73Stack2 := recoveredBlock41Block73Local1.
            recoveredBlock41Block73PC := 122.
        ].
        recoveredBlock41Block73Step = 122 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) dbObject.
            recoveredBlock41Block73PC := 124.
        ].
        recoveredBlock41Block73Step = 124 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) name.
            recoveredBlock41Block73PC := 126.
        ].
        recoveredBlock41Block73Step = 126 ifTrue: [
            recoveredBlock41Block73Stack1 := (recoveredBlock41Block73Stack1) match: (recoveredBlock41Block73Stack2).
            recoveredBlock41Block73PC := 128.
        ].
        recoveredBlock41Block73Step = 128 ifTrue: [
            (recoveredBlock41Block73Stack1) ifTrue: [recoveredBlock41Block73PC := 132] ifFalse: [recoveredBlock41Block73PC := 136].
        ].
        recoveredBlock41Block73Step = 132 ifTrue: [
            recoveredBlock41Block73Stack1 := recoveredBlock41Block73Arg2.
            recoveredBlock41Block73PC := 133.
        ].
        recoveredBlock41Block73Step = 133 ifTrue: [
            recoveredBlock41Block73Stack2 := recoveredBlock41Block73Local1.
            recoveredBlock41Block73PC := 134.
        ].
        recoveredBlock41Block73Step = 134 ifTrue: [
            (recoveredBlock41Block73Stack1) add: (recoveredBlock41Block73Stack2).
            recoveredBlock41Block73PC := 136.
        ].
        recoveredBlock41Block73Step = 136 ifTrue: [
            recoveredBlock41Block73Stack1 := nil.
            recoveredBlock41Block73PC := 137.
        ].
        recoveredBlock41Block73Step = 137 ifTrue: [
            recoveredBlock41Block73Stack2 := '*'.
            recoveredBlock41Block73PC := 139.
        ].
        recoveredBlock41Block73Step = 139 ifTrue: [
            recoveredBlock41Block73Stack3 := recoveredArg1.
            recoveredBlock41Block73PC := 142.
        ].
        recoveredBlock41Block73Step = 142 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) , (recoveredBlock41Block73Stack3).
            recoveredBlock41Block73PC := 144.
        ].
        recoveredBlock41Block73Step = 144 ifTrue: [
            recoveredBlock41Block73Stack3 := '*'.
            recoveredBlock41Block73PC := 146.
        ].
        recoveredBlock41Block73Step = 146 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) , (recoveredBlock41Block73Stack3).
            recoveredBlock41Block73PC := 148.
        ].
        recoveredBlock41Block73Step = 148 ifTrue: [
            recoveredBlock41Block73Stack3 := recoveredBlock41Block73Arg1.
            recoveredBlock41Block73PC := 149.
        ].
        recoveredBlock41Block73Step = 149 ifTrue: [
            recoveredBlock41Block73Stack3 := (recoveredBlock41Block73Stack3) name.
            recoveredBlock41Block73PC := 151.
        ].
        recoveredBlock41Block73Step = 151 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) match: (recoveredBlock41Block73Stack3).
            recoveredBlock41Block73PC := 153.
        ].
        recoveredBlock41Block73Step = 153 ifTrue: [
            (recoveredBlock41Block73Stack2) ifTrue: [recoveredBlock41Block73PC := 156] ifFalse: [recoveredBlock41Block73PC := 179].
        ].
        recoveredBlock41Block73Step = 156 ifTrue: [
            recoveredBlock41Block73PC := 157.
        ].
        recoveredBlock41Block73Step = 157 ifTrue: [
            recoveredBlock41Block73Stack1 := nil.
            recoveredBlock41Block73PC := 158.
        ].
        recoveredBlock41Block73Step = 158 ifTrue: [
            recoveredBlock41Block73Stack2 := recoveredBlock41Block73Arg1.
            recoveredBlock41Block73PC := 159.
        ].
        recoveredBlock41Block73Step = 159 ifTrue: [
            recoveredBlock41Block73Stack3 := [:block281138a8Arg1 | 
    nil
].
            recoveredBlock41Block73PC := 161.
        ].
        recoveredBlock41Block73Step = 161 ifTrue: [
            recoveredBlock41Block73PC := 166.
        ].
        recoveredBlock41Block73Step = 166 ifTrue: [
            recoveredBlock41Block73Stack2 := (recoveredBlock41Block73Stack2) getObjectIfUndefined: (recoveredBlock41Block73Stack3).
            recoveredBlock41Block73PC := 168.
        ].
        recoveredBlock41Block73Step = 168 ifTrue: [
            recoveredBlock41Block73Stack3 := recoveredBlock41Block73Stack2.
            recoveredBlock41Block73PC := 169.
        ].
        recoveredBlock41Block73Step = 169 ifTrue: [
            recoveredBlock41Block73Local1 := recoveredBlock41Block73Stack3.
            recoveredBlock41Block73PC := 170.
        ].
        recoveredBlock41Block73Step = 170 ifTrue: [
            (recoveredBlock41Block73Stack2 == nil) ifTrue: [recoveredBlock41Block73PC := 179] ifFalse: [recoveredBlock41Block73PC := 174].
        ].
        recoveredBlock41Block73Step = 174 ifTrue: [
            recoveredBlock41Block73PC := 175.
        ].
        recoveredBlock41Block73Step = 175 ifTrue: [
            recoveredBlock41Block73Stack1 := recoveredBlock41Block73Arg3.
            recoveredBlock41Block73PC := 176.
        ].
        recoveredBlock41Block73Step = 176 ifTrue: [
            recoveredBlock41Block73Stack2 := recoveredBlock41Block73Local1.
            recoveredBlock41Block73PC := 177.
        ].
        recoveredBlock41Block73Step = 177 ifTrue: [
            recoveredBlock41Block73Stack1 := (recoveredBlock41Block73Stack1) add: (recoveredBlock41Block73Stack2).
            recoveredBlock41Block73PC := 179.
        ].
        recoveredBlock41Block73Step = 179 ifTrue: [
            recoveredBlock41Block73Result := recoveredBlock41Block73Stack1.
            recoveredBlock41Block73Done := true.
        ].
    ].
    recoveredBlock41Block73Result
].
            recoveredBlock41PC := 180.
        ].
        recoveredBlock41Step = 180 ifTrue: [
            (recoveredBlock41Stack1) searchAllChildren: (recoveredBlock41Stack2) progress: (recoveredBlock41Stack3) exact: (recoveredBlock41Stack4) wild: (recoveredBlock41Stack5) itemBlock: (recoveredBlock41Stack6).
            recoveredBlock41PC := 183.
        ].
        recoveredBlock41Step = 183 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 184.
        ].
        recoveredBlock41Step = 184 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal3.
            recoveredBlock41PC := 187.
        ].
        recoveredBlock41Step = 187 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 188.
        ].
        recoveredBlock41Step = 188 ifTrue: [
            recoveredLocal4 := recoveredBlock41Stack3.
            recoveredBlock41PC := 191.
        ].
        recoveredBlock41Step = 191 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isEmpty.
            recoveredBlock41PC := 193.
        ].
        recoveredBlock41Step = 193 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 196] ifFalse: [recoveredBlock41PC := 204].
        ].
        recoveredBlock41Step = 196 ifTrue: [
            recoveredBlock41PC := 197.
        ].
        recoveredBlock41Step = 197 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 200.
        ].
        recoveredBlock41Step = 200 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 201.
        ].
        recoveredBlock41Step = 201 ifTrue: [
            recoveredLocal4 := recoveredBlock41Stack2.
            recoveredBlock41PC := 204.
        ].
        recoveredBlock41Step = 204 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) initialProgressMessage.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack5 := 'Search components'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock230Stack0 recoveredBlock230Stack1 recoveredBlock230Stack2 recoveredBlock230Stack3 recoveredBlock230PC recoveredBlock230Step recoveredBlock230Done recoveredBlock230Result |
    recoveredBlock230Stack0 := self.
    recoveredBlock230PC := 236.
    recoveredBlock230Done := false.
    [recoveredBlock230Done not] whileTrue: [
        recoveredBlock230Step := recoveredBlock230PC.
        recoveredBlock230Step = 236 ifTrue: [
            recoveredBlock230Stack1 := recoveredLocal4.
            recoveredBlock230PC := 239.
        ].
        recoveredBlock230Step = 239 ifTrue: [
            recoveredBlock230Stack1 := (recoveredBlock230Stack1) asArray.
            recoveredBlock230PC := 241.
        ].
        recoveredBlock230Step = 241 ifTrue: [
            recoveredBlock230Stack2 := [:block281138ccArg1 | 
    | block281138ccValue0 block281138ccValue1 block281138ccValue2 block281138ccValue3 |
    block281138ccValue0 := SGItemBrowserContainer.
    block281138ccValue1 := block281138ccArg1.
    block281138ccValue2 := (block281138ccValue1) dbObject.
    block281138ccValue3 := (block281138ccValue0) createFor: (block281138ccValue2).
    block281138ccValue3
].
            recoveredBlock230PC := 243.
        ].
        recoveredBlock230Step = 243 ifTrue: [
            recoveredBlock230PC := 254.
        ].
        recoveredBlock230Step = 254 ifTrue: [
            recoveredBlock230Stack1 := (recoveredBlock230Stack1) collect: (recoveredBlock230Stack2).
            recoveredBlock230PC := 256.
        ].
        recoveredBlock230Step = 256 ifTrue: [
            recoveredBlock230Stack2 := recoveredBlock230Stack1.
            recoveredBlock230PC := 257.
        ].
        recoveredBlock230Step = 257 ifTrue: [
            recoveredLocal6 := recoveredBlock230Stack2.
            recoveredBlock230PC := 260.
        ].
        recoveredBlock230Step = 260 ifTrue: [
            recoveredBlock230Result := recoveredBlock230Stack1.
            recoveredBlock230Done := true.
        ].
    ].
    recoveredBlock230Result
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

