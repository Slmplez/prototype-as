"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x200000b4; bytecode file offset 0xf43c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
isCaseSensitiveFileSystem
    | recoveredValue0 |
    recoveredValue0 := (self) isPosixSystem.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000388; bytecode file offset 0xf70c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
rootDirectoryFromSearchPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) searchPath.
    recoveredValue1 := (self) rootDirectoryFromDirectoryString: (recoveredValue0).
    ^recoveredValue1
! !

"abtdau.ic method 0x20000398; bytecode file offset 0xf70c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
getDirectoryTopLevelItemsForSearchPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootDirectoryFromSearchPath.
    recoveredValue1 := (self) getDirectoryItemsUnder: (recoveredValue0).
    ^recoveredValue1
! !

"abtdau.ic method 0x2000052c; bytecode file offset 0xf8a8"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTextGainingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) selectAllDirectoryText.
    ^self
! !

"abtdau.ic method 0x200008c0; bytecode file offset 0xfc34"
!AbtDirectoryPrompter methodsFor: 'recovered'!
saveToComboBox
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar14.
    ^recoveredXValue0
! !

"abtdau.ic method 0x200008dc; bytecode file offset 0xfc48"
!AbtDirectoryPrompter methodsFor: 'recovered'!
newDirectoryButton
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar15.
    ^recoveredXValue0
! !

"abtdau.ic method 0x200008f0; bytecode file offset 0xfc5c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTree
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar16.
    ^recoveredXValue0
! !

"abtdau.ic method 0x2000090c; bytecode file offset 0xfc78"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryText
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar17.
    ^recoveredXValue0
! !

"abtdau.ic method 0x20000920; bytecode file offset 0xfc8c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryIcon
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar18.
    ^recoveredXValue0
! !

"abtdau.ic method 0x20000934; bytecode file offset 0xfca0"
!AbtDirectoryPrompter methodsFor: 'recovered'!
searchPath
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar19.
    ^recoveredXValue0
! !

"abtdau.ic method 0x20000948; bytecode file offset 0xfcb4"
!AbtDirectoryPrompter methodsFor: 'recovered'!
allowedDrives
    | recoveredXValue0 |
    recoveredXValue0 := recoveredLegacyIvar20.
    ^recoveredXValue0
! !

"abtdau.ic method 0x20000b18; bytecode file offset 0xfe9c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
updateDirectoryTreeSelectedItemFromSearchPath
    | recoveredValue0 |
    recoveredValue0 := (self) searchPath.
    (self) updateDirectoryTreeSelectedItemFromPath: (recoveredValue0).
    ^self
! !

"abtdau.ic method 0x20000b28; bytecode file offset 0xfe9c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
updateDirectoryTreeHierarchyFromSearchPath
    | recoveredValue0 |
    recoveredValue0 := (self) searchPath.
    (self) updateDirectoryTreeHierarchyFromPath: (recoveredValue0).
    ^self
! !

"abtdau.ic method 0x20000d10; bytecode file offset 0x100b0"
!AbtDirectoryPrompter methodsFor: 'recovered'!
updateDirectoryTreeItemsFromSearchPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) directoryTree.
    recoveredValue1 := (self) getDirectoryTopLevelItemsForSearchPath.
    (recoveredValue0) items: (recoveredValue1).
    ^self
! !

"abtdau.ic method 0x20000d24; bytecode file offset 0x100b0"
!AbtDirectoryPrompter methodsFor: 'recovered'!
updateDirectoryTextFromSearchPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) directoryText.
    recoveredValue1 := (self) searchPath.
    (recoveredValue0) setString: (recoveredValue1).
    ^self
! !

"abtdau.ic method 0x20000d38; bytecode file offset 0x100b0"
!AbtDirectoryPrompter methodsFor: 'recovered'!
updateSaveToComboBoxFromSearchPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) saveToComboBox.
    recoveredValue1 := (self) rootDirectoryFromSearchPath.
    (recoveredValue0) setString: (recoveredValue1).
    ^self
! !

"abtdau.ic method 0x20000d58; bytecode file offset 0x100d0"
!AbtDirectoryPrompter methodsFor: 'recovered'!
checkDirectoryExists: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Swapper.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stat: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) isCfsError.
    recoveredValue4 := (recoveredValue3) not.
    ^recoveredValue4
! !

"abtdau.ic method 0x2000104c; bytecode file offset 0x103c0"
!AbtDirectoryPrompter methodsFor: 'recovered'!
saveToComboBox: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar14 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x20001078; bytecode file offset 0x103e4"
!AbtDirectoryPrompter methodsFor: 'recovered'!
newDirectoryButton: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar15 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x2000108c; bytecode file offset 0x10400"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTree: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar16 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x200010a8; bytecode file offset 0x1041c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryText: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar17 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x200010c4; bytecode file offset 0x10440"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryIcon: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar18 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x200010e8; bytecode file offset 0x10454"
!AbtDirectoryPrompter methodsFor: 'recovered'!
searchPath: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar19 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x200010fc; bytecode file offset 0x10470"
!AbtDirectoryPrompter methodsFor: 'recovered'!
allowedDrives: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar20 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x20001118; bytecode file offset 0x1048c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
disallowedDrivesWithReasons: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar21 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x20001134; bytecode file offset 0x104a8"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryCreationAllowed: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar22 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x20001158; bytecode file offset 0x104c4"
!AbtDirectoryPrompter methodsFor: 'recovered'!
verifyDirectory: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar23 := recoveredXValue0.
    ^self
! !

"abtdau.ic method 0x200011c0; bytecode file offset 0x10538"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTreeChildren: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getDirectoryItemsUnder: (recoveredValue2).
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"abtdau.ic method 0x2000122c; bytecode file offset 0x105a8"
!AbtDirectoryPrompter methodsFor: 'recovered'!
isPosixSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsImageStartUp.
    recoveredValue1 := (recoveredValue0) subsystemType: ('CFS').
    recoveredValue2 := (recoveredValue1) = ('POSIX').
    ^recoveredValue2
! !

"abtdau.ic method 0x200014d0; bytecode file offset 0x1084c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
initialize
    | recoveredXValue0 recoveredXValue1 |
    super initialize.
    recoveredXValue0 := (self) class.
    recoveredXValue1 := (recoveredXValue0) defaultSearchPath.
    recoveredLegacyIvar19 := recoveredXValue1.
    ^self
! !

"abtdau.ic method 0x200015b0; bytecode file offset 0x1091c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryCreationAllowed
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar22.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 13] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := true.
            recoveredXPC := 11.
        ].
        recoveredXStep = 11 ifTrue: [
            recoveredLegacyIvar22 := recoveredXStack1.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar22.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"abtdau.ic method 0x200015c8; bytecode file offset 0x10934"
!AbtDirectoryPrompter methodsFor: 'recovered'!
verifyDirectory
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar23.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 13] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := true.
            recoveredXPC := 11.
        ].
        recoveredXStep = 11 ifTrue: [
            recoveredLegacyIvar23 := recoveredXStack1.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar23.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"abtdau.ic method 0x2000162c; bytecode file offset 0x109ac"
!AbtDirectoryPrompter methodsFor: 'recovered'!
selectAllDirectoryText
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) directoryText.
    recoveredValue1 := (self) directoryText.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"abtdau.ic method 0x2000187c; bytecode file offset 0x10bf4"
!AbtDirectoryPrompter methodsFor: 'recovered'!
setResult
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryCreationAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) setResultCreationAllowed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) setResultCreationDisallowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200019b8; bytecode file offset 0x10d2c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
disallowedDrivesWithReasons
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar21.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 15] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := SystemExceptions.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) new.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredLegacyIvar21 := recoveredXStack1.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar21.
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"abtdau.ic method 0x200019dc; bytecode file offset 0x10d50"
!AbtDirectoryPrompter methodsFor: 'recovered'!
rememberedPaths
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar24.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 15] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := SystemExceptions.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) new.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredLegacyIvar24 := recoveredXStack1.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar24.
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"abtdau.ic method 0x20001bd0; bytecode file offset 0x10f48"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTreeItemSelected: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) updateDirectoryTextFromSearchPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002044; bytecode file offset 0x113d0"
!AbtDirectoryPrompter methodsFor: 'recovered'!
showError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwListSelectionPrompter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) messageString: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := XKkanaYA.
    (recoveredValue4) buttonType: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := XKfemalesymbol.
    (recoveredValue6) iconType: (recoveredValue7).
    (recoveredValue1) prompt.
    ^self
! !

"abtdau.ic method 0x200020b8; bytecode file offset 0x11440"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTextDefaultAction: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsImageStartUp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CW'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'MOTIF'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) button1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) click.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200021ac; bytecode file offset 0x11530"
!AbtDirectoryPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) setResult.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super ok: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchPath.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) defaultSearchPath: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002770; bytecode file offset 0x11af8"
!AbtDirectoryPrompter methodsFor: 'recovered'!
bulletinBoardArgs
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredBlock4Value2 := (self) marginWidth.
    (recoveredBlock4Value1) marginWidth: (recoveredBlock4Value2).
    recoveredBlock4Value3 := recoveredBlock4Value0.
    recoveredBlock4Value4 := (self) marginHeight.
    (recoveredBlock4Value3) marginHeight: (recoveredBlock4Value4).
    recoveredBlock4Value5 := recoveredBlock4Value0.
    recoveredBlock4Value6 := (self) dialogStyle.
    (recoveredBlock4Value5) dialogStyle: (recoveredBlock4Value6).
    recoveredBlock4Value7 := (recoveredBlock4Value0) autoUnmanage: (false).
    recoveredBlock4Value7
].
    ^recoveredValue0
! !

"abtdau.ic method 0x20002940; bytecode file offset 0x11cd4"
!AbtDirectoryPrompter methodsFor: 'recovered'!
verifyNewDirectory: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwListSelectionPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := MxABTpwui8.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := XKRight.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) iconType: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := EswShadowClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mkdir: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200029dc; bytecode file offset 0x11d74"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTreeVisualInfo: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) directoryIcon.
    (recoveredValue1) icon: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) item.
    recoveredValue6 := EswShadowClass.
    recoveredValue7 := (recoveredValue6) pathSeparator.
    recoveredValue8 := (recoveredValue5) subStrings: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) last.
    (recoveredValue3) label: (recoveredValue9).
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (recoveredValue10) item.
    recoveredValue12 := (self) getDirectoryItemsUnder: (recoveredValue11).
    recoveredValue13 := (recoveredValue12) isEmpty.
    recoveredValue14 := (recoveredValue13) not.
    (recoveredValue0) hasChildren: (recoveredValue14).
    ^self
! !

"abtdau.ic method 0x20002a34; bytecode file offset 0x11dc4"
!AbtDirectoryPrompter methodsFor: 'recovered'!
rootDirectoryFromDirectoryString: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := EswShadowClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPosixSystem.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EswShadowClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathSeparatorString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002dcc; bytecode file offset 0x12154"
!AbtDirectoryPrompter methodsFor: 'recovered'!
getTreeItemMatchingDirectoryText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) directoryTree.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) directoryText.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) getString.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) isCaseSensitiveFileSystem.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack5 := 1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) indexOf: (recoveredBlock5Stack3) matchCase: (recoveredBlock5Stack4) startingAt: (recoveredBlock5Stack5).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isEmpty.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 33] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) itemsDo: (recoveredValue1).
    ^nil
! !

"abtdau.ic method 0x2000320c; bytecode file offset 0x125a8"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directoryTreeExpandedOrCollapsed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := XmCRBEGINEDIT.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPath.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOfSubCollection: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) == (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootDirectoryFromSearchPath.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := EswShadowClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathSeparatorString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) updateDirectoryTextFromSearchPath.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200033c4; bytecode file offset 0x1276c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
setResultCreationDisallowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyDirectory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryText.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkDirectoryExists: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CwListSelectionPrompter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := MxABTpwui10.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) directoryText.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := XKfemalesymbol.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) iconType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := XKkanaYA.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) buttonType: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryText.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 50.
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

"abtdau.ic method 0x20003580; bytecode file offset 0x12908"
!AbtDirectoryPrompter methodsFor: 'recovered'!
updateDirectoryTreeHierarchyFromPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) directoryTree.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) directory: (recoveredBlock5Stack1) isParentDirectoryOf: (recoveredBlock5Stack2).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 34].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) directoryTree.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) directoryTree.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) indexOf: (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := true.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) expandPos: (recoveredBlock5Stack1) notify: (recoveredBlock5Stack2).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) directoryTree.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) directoryTree.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) indexOf: (recoveredBlock5Stack2).
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := true.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) collapsePos: (recoveredBlock5Stack1) notify: (recoveredBlock5Stack2).
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) itemsDo: (recoveredValue1).
    recoveredValue2 := (self) directoryTree.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) selectItem: (recoveredValue3) notify: (false).
    ^self
! !

"abtdau.ic method 0x20003b70; bytecode file offset 0x12f28"
!AbtDirectoryPrompter methodsFor: 'recovered'!
newDirectoryButtonPressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtSettableExtendedTextPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := MxABTpwui4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) searchPath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) answerString: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := EswShadowClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mkdir: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := MxABTpwui5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) updateSaveToComboBoxFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) updateDirectoryTreeItemsFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) updateDirectoryTreeHierarchyFromSearchPath.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) updateDirectoryTextFromSearchPath.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20003e00; bytecode file offset 0x13180"
!AbtDirectoryPrompter methodsFor: 'recovered'!
updateDirectoryTreeSelectedItemFromPath: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCaseSensitiveFileSystem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryTree.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryTree.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) asUppercase.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) asUppercase.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) = (recoveredBlock22Stack3).
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 40] ifFalse: [recoveredBlock22PC := 46].
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) itemsDo: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryTree.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
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

"abtdau.ic method 0x20003f38; bytecode file offset 0x132dc"
!AbtDirectoryPrompter methodsFor: 'recovered'!
getDirectoryItemsUnder: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CldtConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := EswShadowClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := ENAMETOOLONG.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CldtConstants.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) dName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := EswShadowClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathSeparatorString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) dName.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) readdir.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) closedir.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x2000421c; bytecode file offset 0x135b4"
!AbtDirectoryPrompter methodsFor: 'recovered'!
directory: recoveredArg1 isParentDirectoryOf: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := EswShadowClass.
    recoveredValue2 := (recoveredValue1) pathSeparatorString.
    recoveredValue3 := (recoveredValue2) first.
    recoveredValue4 := (recoveredValue0) abtIndicesOf: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg2.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := 1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) + (-1).
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) copyFrom: (recoveredBlock12Stack2) to: (recoveredBlock12Stack3).
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := EsImageStartUp.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := 'CFS'.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) subsystemType: (recoveredBlock12Stack2).
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := 'POSIX'.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 40] ifFalse: [recoveredBlock12PC := 56].
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 50] ifFalse: [recoveredBlock12PC := 53].
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack1 := true.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12PC := 73.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 58.
        ].
        recoveredBlock12Step = 58 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) asUppercase.
            recoveredBlock12PC := 60.
        ].
        recoveredBlock12Step = 60 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg1.
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) asUppercase.
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 66.
        ].
        recoveredBlock12Step = 66 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 70] ifFalse: [recoveredBlock12PC := 73].
        ].
        recoveredBlock12Step = 70 ifTrue: [
            recoveredBlock12PC := 71.
        ].
        recoveredBlock12Step = 71 ifTrue: [
            recoveredBlock12Stack1 := true.
            recoveredBlock12PC := 72.
        ].
        recoveredBlock12Step = 72 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 73 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^false
! !

"abtdau.ic method 0x200042a0; bytecode file offset 0x13648"
!AbtDirectoryPrompter methodsFor: 'recovered'!
dropDownContents
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedDrives.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootSubdirectories.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedDrives.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := #(268443984 nil 44 8388611 nil nil).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := CldtConstants.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) disallowedDrivesWithReasons.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 recoveredBlock40Value6 recoveredBlock40Value7 recoveredBlock40Value8 |
    recoveredBlock40Value0 := recoveredLocal1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) key.
    recoveredBlock40Value3 := (recoveredBlock40Value2) abtRemoveTrailingDirectorySeparator.
    recoveredBlock40Value4 := (recoveredBlock40Value3) , ('   ').
    recoveredBlock40Value5 := recoveredBlock40Arg1.
    recoveredBlock40Value6 := (recoveredBlock40Value5) value.
    recoveredBlock40Value7 := (recoveredBlock40Value4) , (recoveredBlock40Value6).
    recoveredBlock40Value8 := (recoveredBlock40Value0) add: (recoveredBlock40Value7).
    recoveredBlock40Value8
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200048ec; bytecode file offset 0x13ca8"
!AbtDirectoryPrompter methodsFor: 'recovered'!
setResultCreationAllowed
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkDirectoryExists: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryText.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyDirectory.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := CwListSelectionPrompter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := MxABTpwui8.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) directoryText.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := XKRight.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) iconType: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := EswShadowClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryText.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdir: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := MxABTpwui9.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) directoryText.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryText.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200049a0; bytecode file offset 0x13d5c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
hookCallbacks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryTree.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := 'directoryTreeVisualInfo:clientData:callData:'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ButtonDrag.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 'directoryTreeChildren:clientData:callData:'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := XmDRAWSELECTION.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 'directoryTreeExpandedOrCollapsed:clientData:callData:'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := XKe.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'directoryTreeItemSelected:clientData:callData:'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryCreationAllowed.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDirectoryButton.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := XKByelorussianshortu.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'newDirectoryButtonPressed:clientData:callData:'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) saveToComboBox.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := XKe.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'saveToComboBoxItemSelected:clientData:callData:'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryText.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := XKByelorussianshortu.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := 'directoryTextDefaultAction:clientData:callData:'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := GrabFrozen.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 'directoryTextGainingFocus:clientData:callData:'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004b84; bytecode file offset 0x13f3c"
!AbtDirectoryPrompter methodsFor: 'recovered'!
verifyDirectoryText
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EswShadowClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) directoryText.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := ENAMETOOLONG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) directoryText.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) verifyNewDirectory: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := MxABTpwui7.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) updateDirectoryTextFromSearchPath.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) updateDirectoryTextFromSearchPath.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) directoryText.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) closedir.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) directoryText.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) updateSaveToComboBoxFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) updateDirectoryTreeItemsFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTreeItemMatchingDirectoryText.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) updateDirectoryTreeHierarchyFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) updateDirectoryTreeSelectedItemFromSearchPath.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) updateDirectoryTextFromSearchPath.
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

"abtdau.ic method 0x20005008; bytecode file offset 0x143c8"
!AbtDirectoryPrompter methodsFor: 'recovered'!
rootSubdirectories
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPosixSystem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EswShadowClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EswShadowClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparatorString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := ENAMETOOLONG.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := CldtConstants.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) dName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) dName.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := '..'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) dName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := Swapper.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := EswShadowClass.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootDirectories.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := #(268445700 nil 97 8388611 nil nil).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20005598; bytecode file offset 0x14988"
!AbtDirectoryPrompter methodsFor: 'recovered'!
saveToComboBoxItemSelected: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) disallowedDrivesWithReasons.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := (self) saveToComboBox.
    recoveredBlock6Value1 := (recoveredBlock6Value0) selectedItems.
    recoveredBlock6Value2 := (recoveredBlock6Value1) first.
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := (recoveredBlock6Value3) asUppercase.
    recoveredBlock6Value5 := (recoveredBlock6Value4) abtRemoveTrailingDirectorySeparator.
    recoveredBlock6Value6 := (recoveredBlock6Value2) indexOfSubCollection: (recoveredBlock6Value5) startingAt: (1).
    recoveredBlock6Value7 := (recoveredBlock6Value6) == (1).
    recoveredBlock6Value7
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := #(268446412 nil 86 3 nil nil).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) updateSaveToComboBoxFromSearchPath.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) rememberedPaths.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPath.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootDirectoryFromDirectoryString: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPath.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) rememberedPaths.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) saveToComboBox.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 |
    recoveredBlock73Value0 := (self) saveToComboBox.
    recoveredBlock73Value1 := (recoveredBlock73Value0) selectedItems.
    recoveredBlock73Value2 := (recoveredBlock73Value1) first.
    recoveredBlock73Value3 := EswShadowClass.
    recoveredBlock73Value4 := (recoveredBlock73Value3) pathSeparatorString.
    recoveredBlock73Value5 := (recoveredBlock73Value2) , (recoveredBlock73Value4).
    recoveredBlock73Value5
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := EswShadowClass.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := ENAMETOOLONG.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := MxABTpwui6.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) updateSaveToComboBoxFromSearchPath.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) updateDirectoryTreeItemsFromSearchPath.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) updateDirectoryTextFromSearchPath.
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

"abtdau.ic method 0x200060e4; bytecode file offset 0x15594"
!AbtDirectoryPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super createChildren.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) plusIcon.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) minusIcon.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryIcon.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) directoryIcon: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 320.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'saveToLabel'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := #(268447858 nil 188 8388611 nil nil).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryCreationAllowed.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) bulletinBoardWidget.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'newDirectoryButton'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := #(268447858 nil 204 8388611 nil nil).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) newDirectoryButton: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDirectoryButton.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) bulletinBoardWidget.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'saveToComboBox'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Stack0 recoveredBlock109Stack1 recoveredBlock109Stack2 recoveredBlock109Stack3 recoveredBlock109Stack4 recoveredBlock109PC recoveredBlock109Step recoveredBlock109Done recoveredBlock109Result |
    recoveredBlock109Stack0 := self.
    recoveredBlock109PC := 116.
    recoveredBlock109Done := false.
    [recoveredBlock109Done not] whileTrue: [
        recoveredBlock109Step := recoveredBlock109PC.
        recoveredBlock109Step = 116 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Arg1.
            recoveredBlock109PC := 117.
        ].
        recoveredBlock109Step = 117 ifTrue: [
            recoveredBlock109Stack2 := recoveredBlock109Stack1.
            recoveredBlock109PC := 118.
        ].
        recoveredBlock109Step = 118 ifTrue: [
            recoveredBlock109Stack3 := self.
            recoveredBlock109PC := 119.
        ].
        recoveredBlock109Step = 119 ifTrue: [
            recoveredBlock109Stack3 := (recoveredBlock109Stack3) dropDownContents.
            recoveredBlock109PC := 121.
        ].
        recoveredBlock109Step = 121 ifTrue: [
            (recoveredBlock109Stack2) items: (recoveredBlock109Stack3).
            recoveredBlock109Stack2 := recoveredBlock109Stack1.
            recoveredBlock109PC := 124.
        ].
        recoveredBlock109Step = 124 ifTrue: [
            recoveredBlock109Stack3 := XKOcircumflex.
            recoveredBlock109PC := 126.
        ].
        recoveredBlock109Step = 126 ifTrue: [
            (recoveredBlock109Stack2) leftAttachment: (recoveredBlock109Stack3).
            recoveredBlock109Stack2 := recoveredBlock109Stack1.
            recoveredBlock109PC := 129.
        ].
        recoveredBlock109Step = 129 ifTrue: [
            recoveredBlock109Stack3 := recoveredLocal5.
            recoveredBlock109PC := 132.
        ].
        recoveredBlock109Step = 132 ifTrue: [
            (recoveredBlock109Stack2) leftWidget: (recoveredBlock109Stack3).
            recoveredBlock109PC := 134.
        ].
        recoveredBlock109Step = 134 ifTrue: [
            recoveredBlock109Stack2 := 5.
            recoveredBlock109PC := 136.
        ].
        recoveredBlock109Step = 136 ifTrue: [
            (recoveredBlock109Stack1) leftOffset: (recoveredBlock109Stack2).
            recoveredBlock109PC := 138.
        ].
        recoveredBlock109Step = 138 ifTrue: [
            recoveredBlock109Stack0 := (recoveredBlock109Stack0) directoryCreationAllowed.
            recoveredBlock109PC := 140.
        ].
        recoveredBlock109Step = 140 ifTrue: [
            (recoveredBlock109Stack0) ifTrue: [recoveredBlock109PC := 144] ifFalse: [recoveredBlock109PC := 164].
        ].
        recoveredBlock109Step = 144 ifTrue: [
            recoveredBlock109Stack0 := recoveredBlock109Arg1.
            recoveredBlock109PC := 145.
        ].
        recoveredBlock109Step = 145 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Stack0.
            recoveredBlock109PC := 146.
        ].
        recoveredBlock109Step = 146 ifTrue: [
            recoveredBlock109Stack2 := XKOcircumflex.
            recoveredBlock109PC := 148.
        ].
        recoveredBlock109Step = 148 ifTrue: [
            (recoveredBlock109Stack1) rightAttachment: (recoveredBlock109Stack2).
            recoveredBlock109Stack1 := recoveredBlock109Stack0.
            recoveredBlock109PC := 151.
        ].
        recoveredBlock109Step = 151 ifTrue: [
            recoveredBlock109Stack2 := self.
            recoveredBlock109PC := 152.
        ].
        recoveredBlock109Step = 152 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) newDirectoryButton.
            recoveredBlock109PC := 154.
        ].
        recoveredBlock109Step = 154 ifTrue: [
            (recoveredBlock109Stack1) rightWidget: (recoveredBlock109Stack2).
            recoveredBlock109PC := 156.
        ].
        recoveredBlock109Step = 156 ifTrue: [
            recoveredBlock109Stack1 := 5.
            recoveredBlock109PC := 158.
        ].
        recoveredBlock109Step = 158 ifTrue: [
            recoveredBlock109Stack0 := (recoveredBlock109Stack0) rightOffset: (recoveredBlock109Stack1).
            recoveredBlock109PC := 160.
        ].
        recoveredBlock109Step = 160 ifTrue: [
            recoveredBlock109PC := 169.
        ].
        recoveredBlock109Step = 164 ifTrue: [
            recoveredBlock109Stack0 := recoveredBlock109Arg1.
            recoveredBlock109PC := 165.
        ].
        recoveredBlock109Step = 165 ifTrue: [
            recoveredBlock109Stack1 := XmSINGLELINEEDIT.
            recoveredBlock109PC := 167.
        ].
        recoveredBlock109Step = 167 ifTrue: [
            recoveredBlock109Stack0 := (recoveredBlock109Stack0) rightAttachment: (recoveredBlock109Stack1).
            recoveredBlock109PC := 169.
        ].
        recoveredBlock109Step = 169 ifTrue: [
            recoveredBlock109Result := recoveredBlock109Stack0.
            recoveredBlock109Done := true.
        ].
    ].
    recoveredBlock109Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) createComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) saveToComboBox: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) saveToComboBox.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) bulletinBoardWidget.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := 'directoryTree'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Value0 recoveredBlock185Value1 recoveredBlock185Value2 recoveredBlock185Value3 recoveredBlock185Value4 recoveredBlock185Value5 recoveredBlock185Value6 recoveredBlock185Value7 recoveredBlock185Value8 recoveredBlock185Value9 recoveredBlock185Value10 recoveredBlock185Value11 recoveredBlock185Value12 recoveredBlock185Value13 recoveredBlock185Value14 recoveredBlock185Value15 recoveredBlock185Value16 recoveredBlock185Value17 recoveredBlock185Value18 recoveredBlock185Value19 recoveredBlock185Value20 recoveredBlock185Value21 recoveredBlock185Value22 recoveredBlock185Value23 recoveredBlock185Value24 recoveredBlock185Value25 recoveredBlock185Value26 recoveredBlock185Value27 recoveredBlock185Value28 recoveredBlock185Value29 recoveredBlock185Value30 recoveredBlock185Value31 recoveredBlock185Value32 recoveredBlock185Value33 recoveredBlock185Value34 recoveredBlock185Value35 |
    recoveredBlock185Value0 := recoveredBlock185Arg1.
    recoveredBlock185Value1 := recoveredBlock185Value0.
    recoveredBlock185Value2 := ClipboardTruncate.
    (recoveredBlock185Value1) selectionPolicy: (recoveredBlock185Value2).
    recoveredBlock185Value3 := recoveredBlock185Value0.
    recoveredBlock185Value4 := XmBYROW.
    (recoveredBlock185Value3) emphasisPolicy: (recoveredBlock185Value4).
    recoveredBlock185Value5 := recoveredBlock185Value0.
    recoveredBlock185Value6 := EwLiteralCharacter.
    recoveredBlock185Value7 := (recoveredBlock185Value6) new.
    recoveredBlock185Value8 := recoveredBlock185Value7.
    recoveredBlock185Value9 := recoveredLocal2.
    recoveredBlock185Value10 := (recoveredBlock185Value9) width.
    (recoveredBlock185Value8) width: (recoveredBlock185Value10).
    recoveredBlock185Value11 := recoveredBlock185Value7.
    recoveredBlock185Value12 := recoveredLocal2.
    recoveredBlock185Value13 := (recoveredBlock185Value12) height.
    (recoveredBlock185Value11) height: (recoveredBlock185Value13).
    recoveredBlock185Value14 := recoveredBlock185Value7.
    recoveredBlock185Value15 := recoveredLocal2.
    (recoveredBlock185Value14) expanded: (recoveredBlock185Value15).
    recoveredBlock185Value16 := recoveredBlock185Value7.
    recoveredBlock185Value17 := recoveredLocal3.
    (recoveredBlock185Value16) collapsed: (recoveredBlock185Value17).
    recoveredBlock185Value18 := recoveredBlock185Value7.
    recoveredBlock185Value19 := recoveredLocal3.
    (recoveredBlock185Value18) expandingUp: (recoveredBlock185Value19).
    recoveredBlock185Value20 := recoveredBlock185Value7.
    recoveredBlock185Value21 := recoveredLocal2.
    (recoveredBlock185Value20) collapsingUp: (recoveredBlock185Value21).
    recoveredBlock185Value22 := recoveredBlock185Value7.
    recoveredBlock185Value23 := recoveredLocal3.
    (recoveredBlock185Value22) expandingDown: (recoveredBlock185Value23).
    recoveredBlock185Value24 := recoveredLocal2.
    recoveredBlock185Value25 := (recoveredBlock185Value7) collapsingDown: (recoveredBlock185Value24).
    (recoveredBlock185Value5) hierarchyPolicy: (recoveredBlock185Value25).
    recoveredBlock185Value26 := recoveredBlock185Value0.
    recoveredBlock185Value27 := (self) directoryIcon.
    recoveredBlock185Value28 := (recoveredBlock185Value27) height.
    recoveredBlock185Value29 := recoveredBlock185Arg1.
    recoveredBlock185Value30 := (recoveredBlock185Value29) fontList.
    recoveredBlock185Value31 := (recoveredBlock185Value30) fontStruct.
    recoveredBlock185Value32 := (recoveredBlock185Value31) height.
    recoveredBlock185Value33 := (recoveredBlock185Value28) max: (recoveredBlock185Value32).
    recoveredBlock185Value34 := (recoveredBlock185Value33) + (2).
    (recoveredBlock185Value26) itemHeight: (recoveredBlock185Value34).
    recoveredBlock185Value35 := (recoveredBlock185Value0) height: (250).
    recoveredBlock185Value35
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledEwIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) directoryTree: (recoveredStack1).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryTree.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := 250.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := XKOcircumflex.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack1) topAttachment: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) topWidget: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) topOffset: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := XmSINGLELINEEDIT.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1) leftAttachment: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := XmSINGLELINEEDIT.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack0) rightAttachment: (recoveredStack1).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryTree.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := 'directoryLabel'.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := [:recoveredBlock356Arg1 | 
    | recoveredBlock356Value0 recoveredBlock356Value1 recoveredBlock356Value2 recoveredBlock356Value3 recoveredBlock356Value4 recoveredBlock356Value5 recoveredBlock356Value6 recoveredBlock356Value7 recoveredBlock356Value8 recoveredBlock356Value9 |
    recoveredBlock356Value0 := recoveredBlock356Arg1.
    recoveredBlock356Value1 := recoveredBlock356Value0.
    recoveredBlock356Value2 := MxABTpwui3.
    (recoveredBlock356Value1) labelString: (recoveredBlock356Value2).
    recoveredBlock356Value3 := recoveredBlock356Value0.
    recoveredBlock356Value4 := XmSINGLELINEEDIT.
    (recoveredBlock356Value3) leftAttachment: (recoveredBlock356Value4).
    recoveredBlock356Value5 := recoveredBlock356Value0.
    recoveredBlock356Value6 := XKOcircumflex.
    (recoveredBlock356Value5) topAttachment: (recoveredBlock356Value6).
    recoveredBlock356Value7 := recoveredBlock356Value0.
    recoveredBlock356Value8 := (self) directoryTree.
    (recoveredBlock356Value7) topWidget: (recoveredBlock356Value8).
    recoveredBlock356Value9 := (recoveredBlock356Value0) topOffset: (5).
    recoveredBlock356Value9
].
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) bulletinBoardWidget.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := 'directoryText'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := [:recoveredBlock416Arg1 | 
    | recoveredBlock416Value0 recoveredBlock416Value1 recoveredBlock416Value2 recoveredBlock416Value3 recoveredBlock416Value4 recoveredBlock416Value5 recoveredBlock416Value6 recoveredBlock416Value7 recoveredBlock416Value8 recoveredBlock416Value9 recoveredBlock416Value10 recoveredBlock416Value11 recoveredBlock416Value12 recoveredBlock416Value13 recoveredBlock416Value14 recoveredBlock416Value15 recoveredBlock416Value16 |
    recoveredBlock416Value0 := recoveredBlock416Arg1.
    recoveredBlock416Value1 := recoveredBlock416Value0.
    recoveredBlock416Value2 := XKhairspace.
    (recoveredBlock416Value1) topAttachment: (recoveredBlock416Value2).
    recoveredBlock416Value3 := recoveredBlock416Value0.
    recoveredBlock416Value4 := recoveredLocal4.
    (recoveredBlock416Value3) topWidget: (recoveredBlock416Value4).
    recoveredBlock416Value5 := recoveredBlock416Value0.
    recoveredBlock416Value6 := XKOcircumflex.
    (recoveredBlock416Value5) bottomAttachment: (recoveredBlock416Value6).
    recoveredBlock416Value7 := recoveredBlock416Value0.
    recoveredBlock416Value8 := (self) button1.
    (recoveredBlock416Value7) bottomWidget: (recoveredBlock416Value8).
    recoveredBlock416Value9 := recoveredBlock416Value0.
    (recoveredBlock416Value9) bottomOffset: (10).
    recoveredBlock416Value10 := recoveredBlock416Value0.
    recoveredBlock416Value11 := XKOcircumflex.
    (recoveredBlock416Value10) leftAttachment: (recoveredBlock416Value11).
    recoveredBlock416Value12 := recoveredBlock416Value0.
    recoveredBlock416Value13 := recoveredLocal4.
    (recoveredBlock416Value12) leftWidget: (recoveredBlock416Value13).
    recoveredBlock416Value14 := recoveredBlock416Value0.
    (recoveredBlock416Value14) leftOffset: (5).
    recoveredBlock416Value15 := XmSINGLELINEEDIT.
    recoveredBlock416Value16 := (recoveredBlock416Value0) rightAttachment: (recoveredBlock416Value15).
    recoveredBlock416Value16
].
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) directoryText: (recoveredStack1).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryText.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            (recoveredStack0) hookCallbacks.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack1) updateSaveToComboBoxFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack1) updateDirectoryTreeItemsFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) updateDirectoryTreeHierarchyFromSearchPath.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            (recoveredStack1) updateDirectoryTreeSelectedItemFromSearchPath.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack0) updateDirectoryTextFromSearchPath.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

