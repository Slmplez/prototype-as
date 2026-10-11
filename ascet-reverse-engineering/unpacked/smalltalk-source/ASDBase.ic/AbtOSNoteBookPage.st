"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065d84; bytecode file offset 0x963428"
!AbtOSNoteBookPage methodsFor: 'recovered'!
statusText
    | recoveredValue0 |
    recoveredValue0 := statusText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066bcc; bytecode file offset 0x9646f8"
!AbtOSNoteBookPage methodsFor: 'recovered'!
tabContents
    | recoveredValue0 |
    recoveredValue0 := tabContents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068a14; bytecode file offset 0x965b90"
!AbtOSNoteBookPage methodsFor: 'recovered'!
pageId
    | recoveredValue0 |
    recoveredValue0 := pageID.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200694e8; bytecode file offset 0x966bdc"
!AbtOSNoteBookPage methodsFor: 'recovered'!
pageStyle
    | recoveredValue0 |
    recoveredValue0 := pageStyle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ac94; bytecode file offset 0x967a18"
!AbtOSNoteBookPage methodsFor: 'recovered'!
notebook
    | recoveredValue0 |
    recoveredValue0 := notebook.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b3c8; bytecode file offset 0x96873c"
!AbtOSNoteBookPage methodsFor: 'recovered'!
tabMnemonic
    | recoveredValue0 |
    recoveredValue0 := tabMnemonic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c434; bytecode file offset 0x9692b0"
!AbtOSNoteBookPage methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cab0; bytecode file offset 0x969c04"
!AbtOSNoteBookPage methodsFor: 'recovered'!
pageWidget
    | recoveredValue0 |
    recoveredValue0 := pageWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0224; bytecode file offset 0x9bd228"
!AbtOSNoteBookPage methodsFor: 'recovered'!
pageId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pageID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1420; bytecode file offset 0x9bdf14"
!AbtOSNoteBookPage methodsFor: 'recovered'!
pageStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pageStyle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c21c4; bytecode file offset 0x9beac8"
!AbtOSNoteBookPage methodsFor: 'recovered'!
notebook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    notebook := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c323c; bytecode file offset 0x9bfde0"
!AbtOSNoteBookPage methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b98; bytecode file offset 0x9c058c"
!AbtOSNoteBookPage methodsFor: 'recovered'!
pageWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pageWidget := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d85e4; bytecode file offset 0x9d4ea0"
!AbtOSNoteBookPage methodsFor: 'recovered'!
tabMnemonic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    tabMnemonic := recoveredValue0.
    recoveredValue1 := (self) tabContents.
    (self) tabContents: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201309d8; bytecode file offset 0xa2d29c"
!AbtOSNoteBookPage methodsFor: 'recovered'!
notebookDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := notebook.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := notebook.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013b278; bytecode file offset 0xa37b30"
!AbtOSNoteBookPage methodsFor: 'recovered'!
tabList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pageWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := pageWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) tabList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20174e64; bytecode file offset 0xa71720"
!AbtOSNoteBookPage methodsFor: 'recovered'!
statusText: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    statusText := recoveredValue0.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) pageStatusText: (self).
    recoveredBlock7Value1
].
    (self) notebookDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20174e8c; bytecode file offset 0xa71748"
!AbtOSNoteBookPage methodsFor: 'recovered'!
tabContents: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    tabContents := recoveredValue0.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) pageTabContents: (self).
    recoveredBlock7Value1
].
    (self) notebookDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2038a5cc; bytecode file offset 0xc86ea8"
!AbtOSNoteBookPage methodsFor: 'recovered'!
osStyle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := pageStyle.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := ABTOSxMAJOR.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ABTOSxMAJOR.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := BkaMajor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := pageStyle.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := ABTOSxMINOR.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := ABTOSxMINOR.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := BkaMinor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := pageStyle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := ABTOSxAUTOPAGESIZE.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := ABTOSxAUTOPAGESIZE.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := BkaAutopagesize.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := pageStyle.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := ABTOSxSTATUSTEXTON.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := ABTOSxSTATUSTEXTON.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := BkaStatustexton.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

