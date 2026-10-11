"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006a7c; bytecode file offset 0x908be4"
!SGReferenceDialog methodsFor: 'recovered'!
cancel
    | recoveredValue0 |
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001074c; bytecode file offset 0x90d208"
!SGReferenceDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200108cc; bytecode file offset 0x90d208"
!SGReferenceDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044ecc; bytecode file offset 0x9451f8"
!SGReferenceDialog methodsFor: 'recovered'!
cancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004600c; bytecode file offset 0x9451f8"
!SGReferenceDialog methodsFor: 'recovered'!
okButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ok').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070584; bytecode file offset 0x96ce40"
!SGReferenceDialog methodsFor: 'recovered'!
items
    | recoveredValue0 |
    recoveredValue0 := items.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200705b8; bytecode file offset 0x96d06c"
!SGReferenceDialog methodsFor: 'recovered'!
button1Name
    | recoveredValue0 |
    recoveredValue0 := button1Name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200708a4; bytecode file offset 0x96d218"
!SGReferenceDialog methodsFor: 'recovered'!
button2Sensitive
    | recoveredValue0 |
    recoveredValue0 := button2Sensitive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070b00; bytecode file offset 0x96d3ec"
!SGReferenceDialog methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009ada4; bytecode file offset 0x9976c0"
!SGReferenceDialog methodsFor: 'recovered'!
basicItemsbrowseSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    (self) updateRefList: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b26ac; bytecode file offset 0x9aef68"
!SGReferenceDialog methodsFor: 'recovered'!
ok
    (self) result: (self).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200c6888; bytecode file offset 0x9c3164"
!SGReferenceDialog methodsFor: 'recovered'!
libCtrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    libCtrl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c68ec; bytecode file offset 0x9c3470"
!SGReferenceDialog methodsFor: 'recovered'!
items: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    items := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6d40; bytecode file offset 0x9c36ec"
!SGReferenceDialog methodsFor: 'recovered'!
button1Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button1Name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c700c; bytecode file offset 0x9c38d8"
!SGReferenceDialog methodsFor: 'recovered'!
button2Sensitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button2Sensitive := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c70e8; bytecode file offset 0x9c3a8c"
!SGReferenceDialog methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c72d4; bytecode file offset 0x9c3c10"
!SGReferenceDialog methodsFor: 'recovered'!
referenceDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    referenceDictionary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201483c8; bytecode file offset 0xa44cac"
!SGReferenceDialog methodsFor: 'recovered'!
basicItemsvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280cc7a4Arg1 | 
    | block280cc7a4Value0 |
    block280cc7a4Value0 := block280cc7a4Arg1.
    block280cc7a4Value0
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) getObjectIfUndefined: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) referenceLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201483e4; bytecode file offset 0xa44cac"
!SGReferenceDialog methodsFor: 'recovered'!
refItemsvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280cc7c8Arg1 | 
    | block280cc7c8Value0 |
    block280cc7c8Value0 := block280cc7c8Arg1.
    block280cc7c8Value0
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) getObjectIfUndefined: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) referenceLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201505e0; bytecode file offset 0xa4cea8"
!SGReferenceDialog methodsFor: 'recovered'!
setDefaultSelection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'basicItems'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x201830ac; bytecode file offset 0xa7f96c"
!SGReferenceDialog methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    libCtrl := nil.
    item := nil.
    recoveredValue0 := EtButtonOk.
    button1Name := recoveredValue0.
    button2Sensitive := true.
    ^self
! !

"ASDBase.ic method 0x2020bd1c; bytecode file offset 0xb085ec"
!SGReferenceDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtReferences.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 30.
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
            recoveredStack1 := EtReferencesTo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
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

"ASDBase.ic method 0x20270400; bytecode file offset 0xb6ccf4"
!SGReferenceDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'basicItems'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := (self) widgetAt: ('basicItems').
    recoveredBlock17Value1 := recoveredLocal1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) first.
    recoveredBlock17Value3 := (recoveredBlock17Value0) selectItem: (recoveredBlock17Value2) notify: (true).
    recoveredBlock17Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277f28; bytecode file offset 0xb747fc"
!SGReferenceDialog methodsFor: 'recovered'!
updateRefList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := 'refItems'.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetAt: (recoveredBlock4Stack1).
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := referenceDictionary.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2).
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := [:block280e0f94Arg1 :block280e0f94Arg2 | 
    | block280e0f94Value0 block280e0f94Value1 block280e0f94Value2 block280e0f94Value3 block280e0f94Value4 |
    block280e0f94Value0 := block280e0f94Arg1.
    block280e0f94Value1 := (block280e0f94Value0) label.
    block280e0f94Value2 := block280e0f94Arg2.
    block280e0f94Value3 := (block280e0f94Value2) label.
    block280e0f94Value4 := (block280e0f94Value1) < (block280e0f94Value3).
    block280e0f94Value4
].
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asSortedCollection: (recoveredBlock4Stack2).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) items: (recoveredBlock4Stack1).
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2028b918; bytecode file offset 0xb881f8"
!SGReferenceDialog methodsFor: 'recovered'!
updateLists
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'basicItems'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := referenceDictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block280e1f9cArg1 :block280e1f9cArg2 | 
    | block280e1f9cValue0 block280e1f9cValue1 block280e1f9cValue2 block280e1f9cValue3 block280e1f9cValue4 |
    block280e1f9cValue0 := block280e1f9cArg1.
    block280e1f9cValue1 := (block280e1f9cValue0) referenceLabel.
    block280e1f9cValue2 := block280e1f9cArg2.
    block280e1f9cValue3 := (block280e1f9cValue2) referenceLabel.
    block280e1f9cValue4 := (block280e1f9cValue1) < (block280e1f9cValue3).
    block280e1f9cValue4
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'refItems'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setDefaultSelection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e411c; bytecode file offset 0xbe0a00"
!SGReferenceDialog methodsFor: 'recovered'!
updateActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('hw') == ('call_89333').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) sensitive: (false).
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := (self) library.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) updateDataStorageReferencesProgressWindow: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    recoveredValue3 := SCEtas.
    recoveredValue4 := (self) defaultExecLongOperationPriority.
    (self) execLongOperation: (recoveredValue2) message: ('Update references in database...') allowCancel: (true) showProgress: (true) title: (recoveredValue3) priority: (recoveredValue4).
    recoveredValue5 := libCtrl.
    recoveredValue6 := (self) items.
    recoveredValue7 := (recoveredValue5) collectReferencesWithChildrenTo: (recoveredValue6).
    referenceDictionary := recoveredValue7.
    (self) updateLists.
    ^self
! !

"ASDBase.ic method 0x20320828; bytecode file offset 0xc1d304"
!SGReferenceDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x203ba0e8; bytecode file offset 0xcb69e8"
!SGReferenceDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateWindowLabel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'title'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'aLabel1'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'status'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabelBlue.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'ok'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) button1Name.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) button2Sensitive.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'cancel'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'title'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := EtItem.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'status'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := EtNoticeInfoSometimesNotCorrect.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) updateLists.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20691c38; bytecode file offset 0xf8e6b8"
!SGReferenceDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal16 := recoveredStack1.
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
            recoveredStack3 := [:block2812b62cArg1 | 
    | block2812b62cValue0 block2812b62cValue1 block2812b62cValue2 block2812b62cValue3 block2812b62cValue4 block2812b62cValue5 block2812b62cValue6 block2812b62cValue7 block2812b62cValue8 block2812b62cValue9 block2812b62cValue10 block2812b62cValue11 |
    block2812b62cValue0 := block2812b62cArg1.
    block2812b62cValue1 := block2812b62cValue0.
    block2812b62cValue2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812b62cValue1) mwmInputMode: (block2812b62cValue2).
    block2812b62cValue3 := block2812b62cValue0.
    (block2812b62cValue3) title: ('AAA').
    block2812b62cValue4 := block2812b62cValue0.
    block2812b62cValue5 := MWMDECORALL.
    block2812b62cValue6 := MWMDECORMINIMIZE.
    block2812b62cValue7 := (block2812b62cValue5) | (block2812b62cValue6).
    block2812b62cValue8 := MWMDECORMAXIMIZE.
    block2812b62cValue9 := (block2812b62cValue7) | (block2812b62cValue8).
    (block2812b62cValue4) mwmDecorations: (block2812b62cValue9).
    block2812b62cValue10 := block2812b62cValue0.
    (block2812b62cValue10) height: (276).
    block2812b62cValue11 := (block2812b62cValue0) width: (450).
    block2812b62cValue11
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal15.
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aForm1'.
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
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block2812b650Arg1 | 
    | block2812b650Value0 block2812b650Value1 block2812b650Value2 block2812b650Value3 block2812b650Value4 block2812b650Value5 block2812b650Value6 block2812b650Value7 block2812b650Value8 block2812b650Value9 block2812b650Value10 |
    block2812b650Value0 := block2812b650Arg1.
    block2812b650Value1 := block2812b650Value0.
    (block2812b650Value1) x: (362).
    block2812b650Value2 := block2812b650Value0.
    (block2812b650Value2) marginRight: (10).
    block2812b650Value3 := block2812b650Value0.
    block2812b650Value4 := EtMenuCancel.
    (block2812b650Value3) labelString: (block2812b650Value4).
    block2812b650Value5 := block2812b650Value0.
    (block2812b650Value5) marginWidth: (0).
    block2812b650Value6 := block2812b650Value0.
    (block2812b650Value6) marginHeight: (0).
    block2812b650Value7 := block2812b650Value0.
    (block2812b650Value7) y: (50).
    block2812b650Value8 := block2812b650Value0.
    (block2812b650Value8) height: (30).
    block2812b650Value9 := block2812b650Value0.
    (block2812b650Value9) marginBottom: (10).
    block2812b650Value10 := (block2812b650Value0) width: (100).
    block2812b650Value10
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := [:block2812b674Arg1 | 
    | block2812b674Value0 block2812b674Value1 block2812b674Value2 block2812b674Value3 block2812b674Value4 block2812b674Value5 block2812b674Value6 block2812b674Value7 block2812b674Value8 |
    block2812b674Value0 := block2812b674Arg1.
    block2812b674Value1 := block2812b674Value0.
    (block2812b674Value1) x: (482).
    block2812b674Value2 := block2812b674Value0.
    block2812b674Value3 := XmSINGLELINE.
    (block2812b674Value2) separatorType: (block2812b674Value3).
    block2812b674Value4 := block2812b674Value0.
    block2812b674Value5 := XmVERTICAL.
    (block2812b674Value4) orientation: (block2812b674Value5).
    block2812b674Value6 := block2812b674Value0.
    (block2812b674Value6) y: (35).
    block2812b674Value7 := block2812b674Value0.
    (block2812b674Value7) height: (370).
    block2812b674Value8 := (block2812b674Value0) width: (1).
    block2812b674Value8
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := [:block2812b698Arg1 | 
    | block2812b698Value0 block2812b698Value1 block2812b698Value2 block2812b698Value3 block2812b698Value4 block2812b698Value5 block2812b698Value6 block2812b698Value7 block2812b698Value8 block2812b698Value9 block2812b698Value10 |
    block2812b698Value0 := block2812b698Arg1.
    block2812b698Value1 := block2812b698Value0.
    (block2812b698Value1) x: (349).
    block2812b698Value2 := block2812b698Value0.
    (block2812b698Value2) marginRight: (10).
    block2812b698Value3 := block2812b698Value0.
    block2812b698Value4 := EtButtonOk.
    (block2812b698Value3) labelString: (block2812b698Value4).
    block2812b698Value5 := block2812b698Value0.
    (block2812b698Value5) marginWidth: (0).
    block2812b698Value6 := block2812b698Value0.
    (block2812b698Value6) marginHeight: (0).
    block2812b698Value7 := block2812b698Value0.
    (block2812b698Value7) y: (5).
    block2812b698Value8 := block2812b698Value0.
    (block2812b698Value8) height: (30).
    block2812b698Value9 := block2812b698Value0.
    (block2812b698Value9) marginBottom: (10).
    block2812b698Value10 := (block2812b698Value0) width: (100).
    block2812b698Value10
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 recoveredBlock335Value5 recoveredBlock335Value6 recoveredBlock335Value7 recoveredBlock335Value8 recoveredBlock335Value9 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    recoveredBlock335Value1 := recoveredBlock335Value0.
    (recoveredBlock335Value1) x: (10).
    recoveredBlock335Value2 := recoveredBlock335Value0.
    recoveredBlock335Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock335Value2) alignment: (recoveredBlock335Value3).
    recoveredBlock335Value4 := recoveredBlock335Value0.
    recoveredBlock335Value5 := EtReferencedBy.
    (recoveredBlock335Value4) labelString: (recoveredBlock335Value5).
    recoveredBlock335Value6 := recoveredBlock335Value0.
    (recoveredBlock335Value6) y: (132).
    recoveredBlock335Value7 := recoveredBlock335Value0.
    (recoveredBlock335Value7) width: (174).
    recoveredBlock335Value8 := (self) defaultLabelBlue.
    recoveredBlock335Value9 := (recoveredBlock335Value0) foregroundColor: (recoveredBlock335Value8).
    recoveredBlock335Value9
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := 'update'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := [:block2812b6bcArg1 | 
    | block2812b6bcValue0 block2812b6bcValue1 block2812b6bcValue2 block2812b6bcValue3 block2812b6bcValue4 block2812b6bcValue5 block2812b6bcValue6 block2812b6bcValue7 block2812b6bcValue8 block2812b6bcValue9 block2812b6bcValue10 |
    block2812b6bcValue0 := block2812b6bcArg1.
    block2812b6bcValue1 := block2812b6bcValue0.
    (block2812b6bcValue1) x: (380).
    block2812b6bcValue2 := block2812b6bcValue0.
    (block2812b6bcValue2) marginRight: (10).
    block2812b6bcValue3 := block2812b6bcValue0.
    block2812b6bcValue4 := EtUpdateReferences.
    (block2812b6bcValue3) labelString: (block2812b6bcValue4).
    block2812b6bcValue5 := block2812b6bcValue0.
    (block2812b6bcValue5) marginWidth: (0).
    block2812b6bcValue6 := block2812b6bcValue0.
    (block2812b6bcValue6) marginHeight: (0).
    block2812b6bcValue7 := block2812b6bcValue0.
    (block2812b6bcValue7) y: (241).
    block2812b6bcValue8 := block2812b6bcValue0.
    (block2812b6bcValue8) height: (30).
    block2812b6bcValue9 := block2812b6bcValue0.
    (block2812b6bcValue9) marginBottom: (10).
    block2812b6bcValue10 := (block2812b6bcValue0) width: (100).
    block2812b6bcValue10
].
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack2 := 'update'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := 'title'.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack3 := [:recoveredBlock486Arg1 | 
    | recoveredBlock486Value0 recoveredBlock486Value1 recoveredBlock486Value2 recoveredBlock486Value3 recoveredBlock486Value4 recoveredBlock486Value5 recoveredBlock486Value6 recoveredBlock486Value7 recoveredBlock486Value8 |
    recoveredBlock486Value0 := recoveredBlock486Arg1.
    recoveredBlock486Value1 := recoveredBlock486Value0.
    (recoveredBlock486Value1) x: (10).
    recoveredBlock486Value2 := recoveredBlock486Value0.
    recoveredBlock486Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock486Value2) alignment: (recoveredBlock486Value3).
    recoveredBlock486Value4 := recoveredBlock486Value0.
    (recoveredBlock486Value4) labelString: ('Options').
    recoveredBlock486Value5 := recoveredBlock486Value0.
    (recoveredBlock486Value5) y: (10).
    recoveredBlock486Value6 := recoveredBlock486Value0.
    (recoveredBlock486Value6) width: (174).
    recoveredBlock486Value7 := (self) defaultLabelBlue.
    recoveredBlock486Value8 := (recoveredBlock486Value0) foregroundColor: (recoveredBlock486Value7).
    recoveredBlock486Value8
].
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := 'title'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := 'basicItems'.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := 'aScrolledIconList1'.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := 'basicItems'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := 'refItems'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := 'aScrolledIconList2'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack2 := 'refItems'.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := 'status'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack3 := [:recoveredBlock654Arg1 | 
    | recoveredBlock654Value0 recoveredBlock654Value1 recoveredBlock654Value2 recoveredBlock654Value3 recoveredBlock654Value4 recoveredBlock654Value5 recoveredBlock654Value6 |
    recoveredBlock654Value0 := recoveredBlock654Arg1.
    recoveredBlock654Value1 := recoveredBlock654Value0.
    (recoveredBlock654Value1) editable: (false).
    recoveredBlock654Value2 := recoveredBlock654Value0.
    (recoveredBlock654Value2) wordWrap: (true).
    recoveredBlock654Value3 := recoveredBlock654Value0.
    recoveredBlock654Value4 := XmMULTILINEEDIT.
    (recoveredBlock654Value3) editMode: (recoveredBlock654Value4).
    recoveredBlock654Value5 := (self) defaultLabelBlue.
    recoveredBlock654Value6 := (recoveredBlock654Value0) foregroundColor: (recoveredBlock654Value5).
    recoveredBlock654Value6
].
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack2 := 'status'.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack2 := [:recoveredBlock732Arg1 | 
    | recoveredBlock732Value0 recoveredBlock732Value1 recoveredBlock732Value2 |
    recoveredBlock732Value0 := recoveredBlock732Arg1.
    recoveredBlock732Value1 := recoveredLocal13.
    recoveredBlock732Value2 := (recoveredBlock732Value0) workWindow: (recoveredBlock732Value1).
    recoveredBlock732Value2
].
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack2 := [:block2812b6e0Arg1 | 
    | block2812b6e0Value0 block2812b6e0Value1 block2812b6e0Value2 block2812b6e0Value3 |
    block2812b6e0Value0 := block2812b6e0Arg1.
    block2812b6e0Value1 := block2812b6e0Value0.
    block2812b6e0Value2 := XmATTACHFORM.
    (block2812b6e0Value1) rightAttachment: (block2812b6e0Value2).
    block2812b6e0Value3 := (block2812b6e0Value0) rightOffset: (5).
    block2812b6e0Value3
].
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := [:recoveredBlock790Arg1 | 
    | recoveredBlock790Value0 recoveredBlock790Value1 recoveredBlock790Value2 recoveredBlock790Value3 recoveredBlock790Value4 recoveredBlock790Value5 recoveredBlock790Value6 recoveredBlock790Value7 recoveredBlock790Value8 recoveredBlock790Value9 recoveredBlock790Value10 recoveredBlock790Value11 |
    recoveredBlock790Value0 := recoveredBlock790Arg1.
    recoveredBlock790Value1 := recoveredBlock790Value0.
    recoveredBlock790Value2 := XmATTACHFORM.
    (recoveredBlock790Value1) bottomAttachment: (recoveredBlock790Value2).
    recoveredBlock790Value3 := recoveredBlock790Value0.
    (recoveredBlock790Value3) bottomOffset: (10).
    recoveredBlock790Value4 := recoveredBlock790Value0.
    recoveredBlock790Value5 := XmATTACHFORM.
    (recoveredBlock790Value4) topAttachment: (recoveredBlock790Value5).
    recoveredBlock790Value6 := recoveredBlock790Value0.
    (recoveredBlock790Value6) topOffset: (10).
    recoveredBlock790Value7 := recoveredBlock790Value0.
    recoveredBlock790Value8 := XmATTACHWIDGET.
    (recoveredBlock790Value7) rightAttachment: (recoveredBlock790Value8).
    recoveredBlock790Value9 := recoveredBlock790Value0.
    recoveredBlock790Value10 := recoveredLocal10.
    (recoveredBlock790Value9) rightWidget: (recoveredBlock790Value10).
    recoveredBlock790Value11 := (recoveredBlock790Value0) rightOffset: (10).
    recoveredBlock790Value11
].
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack2 := [:block2812b704Arg1 | 
    | block2812b704Value0 block2812b704Value1 block2812b704Value2 block2812b704Value3 block2812b704Value4 block2812b704Value5 block2812b704Value6 |
    block2812b704Value0 := block2812b704Arg1.
    block2812b704Value1 := block2812b704Value0.
    block2812b704Value2 := XmATTACHFORM.
    (block2812b704Value1) topAttachment: (block2812b704Value2).
    block2812b704Value3 := block2812b704Value0.
    (block2812b704Value3) topOffset: (5).
    block2812b704Value4 := block2812b704Value0.
    block2812b704Value5 := XmATTACHFORM.
    (block2812b704Value4) rightAttachment: (block2812b704Value5).
    block2812b704Value6 := (block2812b704Value0) rightOffset: (5).
    block2812b704Value6
].
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack2 := [:recoveredBlock906Arg1 | 
    | recoveredBlock906Value0 recoveredBlock906Value1 recoveredBlock906Value2 recoveredBlock906Value3 recoveredBlock906Value4 recoveredBlock906Value5 recoveredBlock906Value6 recoveredBlock906Value7 recoveredBlock906Value8 recoveredBlock906Value9 recoveredBlock906Value10 recoveredBlock906Value11 recoveredBlock906Value12 recoveredBlock906Value13 |
    recoveredBlock906Value0 := recoveredBlock906Arg1.
    recoveredBlock906Value1 := recoveredBlock906Value0.
    recoveredBlock906Value2 := XmATTACHFORM.
    (recoveredBlock906Value1) topAttachment: (recoveredBlock906Value2).
    recoveredBlock906Value3 := recoveredBlock906Value0.
    (recoveredBlock906Value3) topOffset: (5).
    recoveredBlock906Value4 := recoveredBlock906Value0.
    recoveredBlock906Value5 := XmATTACHWIDGET.
    (recoveredBlock906Value4) leftAttachment: (recoveredBlock906Value5).
    recoveredBlock906Value6 := recoveredBlock906Value0.
    recoveredBlock906Value7 := recoveredLocal7.
    (recoveredBlock906Value6) leftWidget: (recoveredBlock906Value7).
    recoveredBlock906Value8 := recoveredBlock906Value0.
    (recoveredBlock906Value8) leftOffset: (5).
    recoveredBlock906Value9 := recoveredBlock906Value0.
    recoveredBlock906Value10 := XmATTACHWIDGET.
    (recoveredBlock906Value9) rightAttachment: (recoveredBlock906Value10).
    recoveredBlock906Value11 := recoveredBlock906Value0.
    recoveredBlock906Value12 := recoveredLocal11.
    (recoveredBlock906Value11) rightWidget: (recoveredBlock906Value12).
    recoveredBlock906Value13 := (recoveredBlock906Value0) rightOffset: (5).
    recoveredBlock906Value13
].
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack2 := [:recoveredBlock982Arg1 | 
    | recoveredBlock982Value0 recoveredBlock982Value1 recoveredBlock982Value2 recoveredBlock982Value3 recoveredBlock982Value4 recoveredBlock982Value5 recoveredBlock982Value6 recoveredBlock982Value7 |
    recoveredBlock982Value0 := recoveredBlock982Arg1.
    recoveredBlock982Value1 := recoveredBlock982Value0.
    recoveredBlock982Value2 := XmATTACHFORM.
    (recoveredBlock982Value1) bottomAttachment: (recoveredBlock982Value2).
    recoveredBlock982Value3 := recoveredBlock982Value0.
    (recoveredBlock982Value3) bottomOffset: (5).
    recoveredBlock982Value4 := recoveredBlock982Value0.
    recoveredBlock982Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock982Value4) rightAttachment: (recoveredBlock982Value5).
    recoveredBlock982Value6 := recoveredLocal10.
    recoveredBlock982Value7 := (recoveredBlock982Value0) rightWidget: (recoveredBlock982Value6).
    recoveredBlock982Value7
].
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack2 := [:block2812b728Arg1 | 
    | block2812b728Value0 block2812b728Value1 block2812b728Value2 block2812b728Value3 block2812b728Value4 block2812b728Value5 block2812b728Value6 block2812b728Value7 block2812b728Value8 block2812b728Value9 |
    block2812b728Value0 := block2812b728Arg1.
    block2812b728Value1 := block2812b728Value0.
    block2812b728Value2 := XmATTACHFORM.
    (block2812b728Value1) topAttachment: (block2812b728Value2).
    block2812b728Value3 := block2812b728Value0.
    (block2812b728Value3) topOffset: (5).
    block2812b728Value4 := block2812b728Value0.
    block2812b728Value5 := XmATTACHFORM.
    (block2812b728Value4) leftAttachment: (block2812b728Value5).
    block2812b728Value6 := block2812b728Value0.
    (block2812b728Value6) leftOffset: (5).
    block2812b728Value7 := block2812b728Value0.
    block2812b728Value8 := XmATTACHPOSITION.
    (block2812b728Value7) rightAttachment: (block2812b728Value8).
    block2812b728Value9 := (block2812b728Value0) rightPosition: (35).
    block2812b728Value9
].
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack2 := [:recoveredBlock1092Arg1 | 
    | recoveredBlock1092Value0 recoveredBlock1092Value1 recoveredBlock1092Value2 recoveredBlock1092Value3 recoveredBlock1092Value4 recoveredBlock1092Value5 recoveredBlock1092Value6 recoveredBlock1092Value7 recoveredBlock1092Value8 recoveredBlock1092Value9 recoveredBlock1092Value10 recoveredBlock1092Value11 recoveredBlock1092Value12 recoveredBlock1092Value13 recoveredBlock1092Value14 recoveredBlock1092Value15 recoveredBlock1092Value16 recoveredBlock1092Value17 recoveredBlock1092Value18 recoveredBlock1092Value19 recoveredBlock1092Value20 recoveredBlock1092Value21 recoveredBlock1092Value22 |
    recoveredBlock1092Value0 := recoveredBlock1092Arg1.
    recoveredBlock1092Value1 := recoveredBlock1092Value0.
    recoveredBlock1092Value2 := XmATTACHWIDGET.
    (recoveredBlock1092Value1) bottomAttachment: (recoveredBlock1092Value2).
    recoveredBlock1092Value3 := recoveredBlock1092Value0.
    recoveredBlock1092Value4 := recoveredLocal2.
    (recoveredBlock1092Value3) bottomWidget: (recoveredBlock1092Value4).
    recoveredBlock1092Value5 := recoveredBlock1092Value0.
    (recoveredBlock1092Value5) bottomOffset: (5).
    recoveredBlock1092Value6 := recoveredBlock1092Value0.
    recoveredBlock1092Value7 := XmATTACHWIDGET.
    (recoveredBlock1092Value6) topAttachment: (recoveredBlock1092Value7).
    recoveredBlock1092Value8 := recoveredBlock1092Value0.
    recoveredBlock1092Value9 := recoveredLocal7.
    (recoveredBlock1092Value8) topWidget: (recoveredBlock1092Value9).
    recoveredBlock1092Value10 := recoveredBlock1092Value0.
    recoveredBlock1092Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1092Value10) leftAttachment: (recoveredBlock1092Value11).
    recoveredBlock1092Value12 := recoveredBlock1092Value0.
    recoveredBlock1092Value13 := recoveredLocal7.
    (recoveredBlock1092Value12) leftWidget: (recoveredBlock1092Value13).
    recoveredBlock1092Value14 := recoveredBlock1092Value0.
    recoveredBlock1092Value15 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1092Value14) rightAttachment: (recoveredBlock1092Value15).
    recoveredBlock1092Value16 := recoveredBlock1092Value0.
    recoveredBlock1092Value17 := recoveredLocal7.
    (recoveredBlock1092Value16) rightWidget: (recoveredBlock1092Value17).
    recoveredBlock1092Value18 := recoveredBlock1092Value0.
    (recoveredBlock1092Value18) rightOffset: (5).
    recoveredBlock1092Value19 := recoveredBlock1092Value0.
    (recoveredBlock1092Value19) x: (10).
    recoveredBlock1092Value20 := recoveredBlock1092Value0.
    (recoveredBlock1092Value20) y: (35).
    recoveredBlock1092Value21 := recoveredBlock1092Value0.
    (recoveredBlock1092Value21) height: (204).
    recoveredBlock1092Value22 := (recoveredBlock1092Value0) width: (75).
    recoveredBlock1092Value22
].
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack2 := [:recoveredBlock1206Arg1 | 
    | recoveredBlock1206Value0 recoveredBlock1206Value1 recoveredBlock1206Value2 recoveredBlock1206Value3 recoveredBlock1206Value4 recoveredBlock1206Value5 recoveredBlock1206Value6 recoveredBlock1206Value7 recoveredBlock1206Value8 recoveredBlock1206Value9 recoveredBlock1206Value10 recoveredBlock1206Value11 recoveredBlock1206Value12 recoveredBlock1206Value13 recoveredBlock1206Value14 recoveredBlock1206Value15 recoveredBlock1206Value16 recoveredBlock1206Value17 recoveredBlock1206Value18 recoveredBlock1206Value19 recoveredBlock1206Value20 recoveredBlock1206Value21 recoveredBlock1206Value22 recoveredBlock1206Value23 |
    recoveredBlock1206Value0 := recoveredBlock1206Arg1.
    recoveredBlock1206Value1 := recoveredBlock1206Value0.
    recoveredBlock1206Value2 := XmATTACHWIDGET.
    (recoveredBlock1206Value1) bottomAttachment: (recoveredBlock1206Value2).
    recoveredBlock1206Value3 := recoveredBlock1206Value0.
    recoveredBlock1206Value4 := recoveredLocal2.
    (recoveredBlock1206Value3) bottomWidget: (recoveredBlock1206Value4).
    recoveredBlock1206Value5 := recoveredBlock1206Value0.
    (recoveredBlock1206Value5) bottomOffset: (5).
    recoveredBlock1206Value6 := recoveredBlock1206Value0.
    recoveredBlock1206Value7 := XmATTACHWIDGET.
    (recoveredBlock1206Value6) topAttachment: (recoveredBlock1206Value7).
    recoveredBlock1206Value8 := recoveredBlock1206Value0.
    recoveredBlock1206Value9 := recoveredLocal9.
    (recoveredBlock1206Value8) topWidget: (recoveredBlock1206Value9).
    recoveredBlock1206Value10 := recoveredBlock1206Value0.
    recoveredBlock1206Value11 := XmATTACHWIDGET.
    (recoveredBlock1206Value10) leftAttachment: (recoveredBlock1206Value11).
    recoveredBlock1206Value12 := recoveredBlock1206Value0.
    recoveredBlock1206Value13 := recoveredLocal6.
    (recoveredBlock1206Value12) leftWidget: (recoveredBlock1206Value13).
    recoveredBlock1206Value14 := recoveredBlock1206Value0.
    (recoveredBlock1206Value14) leftOffset: (5).
    recoveredBlock1206Value15 := recoveredBlock1206Value0.
    recoveredBlock1206Value16 := XmATTACHWIDGET.
    (recoveredBlock1206Value15) rightAttachment: (recoveredBlock1206Value16).
    recoveredBlock1206Value17 := recoveredBlock1206Value0.
    recoveredBlock1206Value18 := recoveredLocal11.
    (recoveredBlock1206Value17) rightWidget: (recoveredBlock1206Value18).
    recoveredBlock1206Value19 := recoveredBlock1206Value0.
    (recoveredBlock1206Value19) rightOffset: (5).
    recoveredBlock1206Value20 := recoveredBlock1206Value0.
    (recoveredBlock1206Value20) x: (102).
    recoveredBlock1206Value21 := recoveredBlock1206Value0.
    (recoveredBlock1206Value21) y: (35).
    recoveredBlock1206Value22 := recoveredBlock1206Value0.
    (recoveredBlock1206Value22) height: (90).
    recoveredBlock1206Value23 := (recoveredBlock1206Value0) width: (174).
    recoveredBlock1206Value23
].
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack2 := [:recoveredBlock1328Arg1 | 
    | recoveredBlock1328Value0 recoveredBlock1328Value1 recoveredBlock1328Value2 recoveredBlock1328Value3 recoveredBlock1328Value4 recoveredBlock1328Value5 recoveredBlock1328Value6 recoveredBlock1328Value7 recoveredBlock1328Value8 recoveredBlock1328Value9 recoveredBlock1328Value10 recoveredBlock1328Value11 recoveredBlock1328Value12 recoveredBlock1328Value13 recoveredBlock1328Value14 recoveredBlock1328Value15 recoveredBlock1328Value16 recoveredBlock1328Value17 |
    recoveredBlock1328Value0 := recoveredBlock1328Arg1.
    recoveredBlock1328Value1 := recoveredBlock1328Value0.
    recoveredBlock1328Value2 := XmATTACHFORM.
    (recoveredBlock1328Value1) bottomAttachment: (recoveredBlock1328Value2).
    recoveredBlock1328Value3 := recoveredBlock1328Value0.
    (recoveredBlock1328Value3) bottomOffset: (5).
    recoveredBlock1328Value4 := recoveredBlock1328Value0.
    recoveredBlock1328Value5 := XmATTACHFORM.
    (recoveredBlock1328Value4) leftAttachment: (recoveredBlock1328Value5).
    recoveredBlock1328Value6 := recoveredBlock1328Value0.
    (recoveredBlock1328Value6) leftOffset: (5).
    recoveredBlock1328Value7 := recoveredBlock1328Value0.
    recoveredBlock1328Value8 := XmATTACHWIDGET.
    (recoveredBlock1328Value7) rightAttachment: (recoveredBlock1328Value8).
    recoveredBlock1328Value9 := recoveredBlock1328Value0.
    recoveredBlock1328Value10 := recoveredLocal11.
    (recoveredBlock1328Value9) rightWidget: (recoveredBlock1328Value10).
    recoveredBlock1328Value11 := recoveredBlock1328Value0.
    (recoveredBlock1328Value11) rightOffset: (5).
    recoveredBlock1328Value12 := recoveredBlock1328Value0.
    (recoveredBlock1328Value12) x: (10).
    recoveredBlock1328Value13 := recoveredBlock1328Value0.
    (recoveredBlock1328Value13) y: (296).
    recoveredBlock1328Value14 := recoveredBlock1328Value0.
    (recoveredBlock1328Value14) height: (55).
    recoveredBlock1328Value15 := recoveredBlock1328Value0.
    (recoveredBlock1328Value15) width: (174).
    recoveredBlock1328Value16 := (self) defaultLabelBlue.
    recoveredBlock1328Value17 := (recoveredBlock1328Value0) foregroundColor: (recoveredBlock1328Value16).
    recoveredBlock1328Value17
].
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1429.
        ].
        recoveredStep = 1429 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1433.
        ].
        recoveredStep = 1433 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1437.
        ].
        recoveredStep = 1437 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1440.
        ].
        recoveredStep = 1440 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1444.
        ].
        recoveredStep = 1444 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1448.
        ].
        recoveredStep = 1448 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1461.
        ].
        recoveredStep = 1461 ifTrue: [
            recoveredStack4 := 'updateActivate:clientData:callData:'.
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            recoveredStack4 := 'basicItemsbrowseSelectionCallback:clientData:callData:'.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1492.
        ].
        recoveredStep = 1492 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack4 := 'basicItemsvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1497.
        ].
        recoveredStep = 1497 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1504.
        ].
        recoveredStep = 1504 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1508.
        ].
        recoveredStep = 1508 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            recoveredStack4 := 'refItemsvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1513.
        ].
        recoveredStep = 1513 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1536.
        ].
        recoveredStep = 1536 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1541.
        ].
        recoveredStep = 1541 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1549.
        ].
        recoveredStep = 1549 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1552.
        ].
        recoveredStep = 1552 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1571.
        ].
        recoveredStep = 1571 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

