"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ea8; bytecode file offset 0x8ffcfc"
!EtasScintillaText methodsFor: 'recovered'!
addHyperlinkStyle
    ^self
! !

"ASDBase.ic method 0x20002a80; bytecode file offset 0x8ffcfc"
!EtasScintillaText methodsFor: 'recovered'!
addMarkerInfoStyle
    ^self
! !

"ASDBase.ic method 0x20003018; bytecode file offset 0x8ffcfc"
!EtasScintillaText methodsFor: 'recovered'!
addMarkerWarningStyle
    ^self
! !

"ASDBase.ic method 0x20003378; bytecode file offset 0x8ffcfc"
!EtasScintillaText methodsFor: 'recovered'!
addMarkerErrorStyle
    ^self
! !

"ASDBase.ic method 0x20006254; bytecode file offset 0x902de8"
!EtasScintillaText methodsFor: 'recovered'!
textLosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006bcc; bytecode file offset 0x908be4"
!EtasScintillaText methodsFor: 'recovered'!
cursorPosition
    | recoveredValue0 |
    recoveredValue0 := (self) sciGetCurrentPos.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200150e4; bytecode file offset 0x912098"
!EtasScintillaText methodsFor: 'recovered'!
osWidgetClass
    | recoveredValue0 |
    recoveredValue0 := OSScintillaTextEdit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003f810; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
tabSpacing
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_GETTABWIDTH.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f820; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciGetLineCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_GETLINECOUNT.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f860; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciDeleteBack
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_DELETEBACK.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f870; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciCharLeft
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_CHARLEFT.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f930; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciGetModify
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_GETMODIFY.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f940; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciUndo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_UNDO.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f990; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciEmptyUndoBuffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_EMPTYUNDOBUFFER.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f9f0; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciRedo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_REDO.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fa30; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciGetModEventMask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_GETMODEVENTMASK.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fae0; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciSetSavePoint
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_SETSAVEPOINT.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fb80; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciGetXOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_GETXOFFSET.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fb90; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciGetCurrentPos
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_GETCURRENTPOS.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fc50; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
sciCharRight
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_CHARRIGHT.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fda0; bytecode file offset 0x93c75c"
!EtasScintillaText methodsFor: 'recovered'!
indent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_GETINDENT.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004987c; bytecode file offset 0x947128"
!EtasScintillaText methodsFor: 'recovered'!
sciGetCurrentColumn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sciGetCurrentPos.
    recoveredValue1 := (self) sciGetColumn: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049f8c; bytecode file offset 0x947128"
!EtasScintillaText methodsFor: 'recovered'!
sciLineFromCurrentPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sciGetCurrentPos.
    recoveredValue1 := (self) sciLineFromPosition: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a51c; bytecode file offset 0x947128"
!EtasScintillaText methodsFor: 'recovered'!
sciGetCurrentLineColumn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sciGetCurrentPos.
    recoveredValue1 := (self) sciGetLineColumn: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f7c4; bytecode file offset 0x94d048"
!EtasScintillaText methodsFor: 'recovered'!
changed
    (self) updateAutoCompletion.
    ^self
! !

"ASDBase.ic method 0x2005d10c; bytecode file offset 0x9599f4"
!EtasScintillaText methodsFor: 'recovered'!
sciCanUndo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_CANUNDO.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asBoolean.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d120; bytecode file offset 0x9599f4"
!EtasScintillaText methodsFor: 'recovered'!
sciCanRedo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_CANREDO.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asBoolean.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007173c; bytecode file offset 0x96e010"
!EtasScintillaText methodsFor: 'recovered'!
parentEditor
    | recoveredValue0 |
    recoveredValue0 := parentEditor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200717a4; bytecode file offset 0x96e058"
!EtasScintillaText methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200717c0; bytecode file offset 0x96e07c"
!EtasScintillaText methodsFor: 'recovered'!
bgcolor
    | recoveredValue0 |
    recoveredValue0 := bgcolor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074644; bytecode file offset 0x970f98"
!EtasScintillaText methodsFor: 'recovered'!
markerSyntaxError
    ^10
! !

"ASDBase.ic method 0x20074768; bytecode file offset 0x97102c"
!EtasScintillaText methodsFor: 'recovered'!
markerChanges
    ^11
! !

"ASDBase.ic method 0x200772b4; bytecode file offset 0x9757c8"
!EtasScintillaText methodsFor: 'recovered'!
isScintillaWidget
    ^true
! !

"ASDBase.ic method 0x20082a7c; bytecode file offset 0x97f488"
!EtasScintillaText methodsFor: 'recovered'!
sciGoToLine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sciPositionFromLine: (recoveredValue0).
    recoveredValue2 := (self) sciGoToPosition: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082bbc; bytecode file offset 0x97f488"
!EtasScintillaText methodsFor: 'recovered'!
sciGoToPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sciPositionFromPoint: (recoveredValue0).
    recoveredValue2 := (self) sciGoToPosition: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091d24; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciSetScrollWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_SETSCROLLWIDTH.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091d54; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciLineFromPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_LINEFROMPOSITION.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091d64; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciSetCurrentPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_SETEMPTYSELECTION.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091d84; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciLineLength: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_LINELENGTH.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091dc4; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciPositionBefore: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_POSITIONBEFORE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091de4; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciSetModEventMask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_SETMODEVENTMASK.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091e34; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
useTabs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_SETUSETABS.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091e74; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciGoToPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_GOTOPOS.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091e84; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciPositionFromLine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_POSITIONFROMLINE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091e94; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciGetColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_GETCOLUMN.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091eb4; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciPositionAfter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_POSITIONAFTER.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091ec4; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciGetLineIndentation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_GETLINEINDENTATION.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091ed4; bytecode file offset 0x98e790"
!EtasScintillaText methodsFor: 'recovered'!
sciGetLineEndPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_GETLINEENDPOSITION.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ba9c; bytecode file offset 0x998370"
!EtasScintillaText methodsFor: 'recovered'!
removeAllSyntaxErrorMarkers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_MARKERDELETEALL.
    recoveredValue1 := (self) markerSyntaxError.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009bab0; bytecode file offset 0x998370"
!EtasScintillaText methodsFor: 'recovered'!
removeAllChangeMarkers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_MARKERDELETEALL.
    recoveredValue1 := (self) markerChanges.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ce7c; bytecode file offset 0x999738"
!EtasScintillaText methodsFor: 'recovered'!
useTabs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_GETUSETABS.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) = (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a02c4; bytecode file offset 0x99cb7c"
!EtasScintillaText methodsFor: 'recovered'!
sciColourise
    | recoveredValue0 |
    recoveredValue0 := (self) sciColouriseStart: (1) end: (-1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a2678; bytecode file offset 0x99f064"
!EtasScintillaText methodsFor: 'recovered'!
indent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_SETINDENT.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2738; bytecode file offset 0x99f064"
!EtasScintillaText methodsFor: 'recovered'!
tabSpacing: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_SETTABWIDTH.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a27c4; bytecode file offset 0x99f084"
!EtasScintillaText methodsFor: 'recovered'!
sciSetScrollWidthTracking: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_SETSCROLLWIDTHTRACKING.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asBoolean.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aaa0c; bytecode file offset 0x9a72e0"
!EtasScintillaText methodsFor: 'recovered'!
sciGetLineColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sciLineFromPosition: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) sciGetColumn: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) @ (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b2170; bytecode file offset 0x9aea94"
!EtasScintillaText methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rnz') == ('EHI_87458').
    recoveredValue1 := (self) sciGetText.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b21ac; bytecode file offset 0x9aea94"
!EtasScintillaText methodsFor: 'recovered'!
getSelection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rnz') == ('EHI_81376').
    recoveredValue1 := (self) sciGetSelText.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b49d4; bytecode file offset 0x9b1290"
!EtasScintillaText methodsFor: 'recovered'!
cursorLineColumnPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sciGetCurrentLineColumn.
    recoveredValue1 := (1) @ (1).
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7ac4; bytecode file offset 0x9b4380"
!EtasScintillaText methodsFor: 'recovered'!
sciPointYFromPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_POINTYFROMPOSITION.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (nil) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7b70; bytecode file offset 0x9c442c"
!EtasScintillaText methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7b94; bytecode file offset 0x9c4448"
!EtasScintillaText methodsFor: 'recovered'!
bgcolor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bgcolor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7bcc; bytecode file offset 0x9c4498"
!EtasScintillaText methodsFor: 'recovered'!
sciAddText: recoveredArg1 length: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_ADDTEXT.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7bdc; bytecode file offset 0x9c4498"
!EtasScintillaText methodsFor: 'recovered'!
sciFindColumn: recoveredArg1 line: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_FINDCOLUMN.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7bf8; bytecode file offset 0x9c44e4"
!EtasScintillaText methodsFor: 'recovered'!
sciColouriseStart: recoveredArg1 end: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_COLOURISE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7c08; bytecode file offset 0x9c44e4"
!EtasScintillaText methodsFor: 'recovered'!
sciSetLineIndentation: recoveredArg1 indent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_SETLINEINDENTATION.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7c18; bytecode file offset 0x9c44e4"
!EtasScintillaText methodsFor: 'recovered'!
sciGetLine: recoveredArg1 buffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_GETLINE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7c28; bytecode file offset 0x9c44e4"
!EtasScintillaText methodsFor: 'recovered'!
sciAssignCmdKey: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_ASSIGNCMDKEY.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8e5c; bytecode file offset 0x9c5738"
!EtasScintillaText methodsFor: 'recovered'!
scintillaCommand: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cabfc; bytecode file offset 0x9c74c0"
!EtasScintillaText methodsFor: 'recovered'!
sciGetCharAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_GETCHARAT.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asUInt8.
    recoveredValue4 := (recoveredValue3) asCharacter.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d6f8c; bytecode file offset 0x9d3848"
!EtasScintillaText methodsFor: 'recovered'!
sciPointXFromPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_POINTXFROMPOSITION.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue0) with: (0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d7078; bytecode file offset 0x9d3960"
!EtasScintillaText methodsFor: 'recovered'!
markSyntaxError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_MARKERADD.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) markerSyntaxError.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d708c; bytecode file offset 0x9d3960"
!EtasScintillaText methodsFor: 'recovered'!
removeSyntaxError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_MARKERDELETE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) markerSyntaxError.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d70a0; bytecode file offset 0x9d3960"
!EtasScintillaText methodsFor: 'recovered'!
markChanges: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_MARKERADD.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) markerChanges.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d71d4; bytecode file offset 0x9d3a94"
!EtasScintillaText methodsFor: 'recovered'!
sciAddText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_ADDTEXT.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d8e70; bytecode file offset 0x9d5728"
!EtasScintillaText methodsFor: 'recovered'!
scintillaCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) scintillaCommand: (recoveredValue0) with: (0) with: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200daf7c; bytecode file offset 0x9d783c"
!EtasScintillaText methodsFor: 'recovered'!
sciSetKeywords: recoveredArg1 forSet: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_SETKEYWORDS.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200db6cc; bytecode file offset 0x9d7fa8"
!EtasScintillaText methodsFor: 'recovered'!
sciDefineMarker: recoveredArg1 symbol: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_MARKERDEFINE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200db6dc; bytecode file offset 0x9d7fa8"
!EtasScintillaText methodsFor: 'recovered'!
sciSetStyleColours: recoveredArg1 foreground: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_STYLESETFORE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200db6ec; bytecode file offset 0x9d7fa8"
!EtasScintillaText methodsFor: 'recovered'!
sciSetStyleColours: recoveredArg1 background: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SCI_STYLESETBACK.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e1894; bytecode file offset 0x9de1b8"
!EtasScintillaText methodsFor: 'recovered'!
sciGetSelectionStart
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rnz') == ('EHI_81376').
    recoveredValue1 := SCI_GETSELECTIONSTART.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e18c4; bytecode file offset 0x9de1b8"
!EtasScintillaText methodsFor: 'recovered'!
sciGetLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rnz') == ('EHI_87458').
    recoveredValue1 := SCI_GETLENGTH.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e18dc; bytecode file offset 0x9de1b8"
!EtasScintillaText methodsFor: 'recovered'!
sciGetSelectionEnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rnz') == ('EHI_81376').
    recoveredValue1 := SCI_GETSELECTIONEND.
    recoveredValue2 := (self) scintillaCommand: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e6dbc; bytecode file offset 0x9e367c"
!EtasScintillaText methodsFor: 'recovered'!
sciReplaceSel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SCI_REPLACESEL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e6ec8; bytecode file offset 0x9e3784"
!EtasScintillaText methodsFor: 'recovered'!
sciSetStyleBold: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SCI_STYLESETBOLD.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (1).
    ^self
! !

"ASDBase.ic method 0x200e6ee8; bytecode file offset 0x9e37ac"
!EtasScintillaText methodsFor: 'recovered'!
sciPositionFromPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SCI_POSITIONFROMPOINT.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) y.
    recoveredValue5 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e877c; bytecode file offset 0x9e5038"
!EtasScintillaText methodsFor: 'recovered'!
parentEditor: recoveredArg1
    | recoveredValue0 |
    (self) stopObservingParent.
    recoveredValue0 := recoveredArg1.
    parentEditor := recoveredValue0.
    (self) startObservingParent.
    ^self
! !

"ASDBase.ic method 0x200eb204; bytecode file offset 0x9e7ac4"
!EtasScintillaText methodsFor: 'recovered'!
sciSetProperty: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SCI_SETPROPERTY.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f1ffc; bytecode file offset 0x9ee8bc"
!EtasScintillaText methodsFor: 'recovered'!
isModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rnz') == ('EHI_79121').
    recoveredValue1 := (self) sciGetModify.
    recoveredValue2 := (recoveredValue1) == (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20107ee0; bytecode file offset 0xa0479c"
!EtasScintillaText methodsFor: 'recovered'!
updateHorizontalScrollbar
    | recoveredValue0 |
    scrollWidth := nil.
    recoveredValue0 := (self) sciGetLineCount.
    (self) updateHorizontalScrollbarForLines: (1) to: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20134634; bytecode file offset 0xa30ef8"
!EtasScintillaText methodsFor: 'recovered'!
sciGetText: recoveredArg1 buffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Rnz') == ('EHI_87458').
    recoveredValue1 := SCI_GETTEXT.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) scintillaCommand: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2015255c; bytecode file offset 0xa4ee18"
!EtasScintillaText methodsFor: 'recovered'!
words
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := words.
    recoveredValue1 := [
    ^''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := words.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015ab70; bytecode file offset 0xa57430"
!EtasScintillaText methodsFor: 'recovered'!
suspendNotifications: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sciGetModEventMask.
    recoveredLocal1 := recoveredValue0.
    (self) sciSetModEventMask: (0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) value.
    recoveredValue2 := recoveredLocal1.
    (self) sciSetModEventMask: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201634c8; bytecode file offset 0xa5fd88"
!EtasScintillaText methodsFor: 'recovered'!
autocompletionDict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := autocompletionDict.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := Dictionary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    ^recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := autocompletionDict.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20164054; bytecode file offset 0xa6091c"
!EtasScintillaText methodsFor: 'recovered'!
sciSetLexer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SCI_SETLEXER.
    recoveredValue1 := recoveredArg1.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1).
    recoveredValue2 := SCI_SETSTYLEBITS.
    recoveredValue3 := SCI_GETSTYLEBITS.
    recoveredValue4 := (self) scintillaCommand: (recoveredValue3).
    (self) scintillaCommand: (recoveredValue2) with: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20167df4; bytecode file offset 0xa646b0"
!EtasScintillaText methodsFor: 'recovered'!
setSelection: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) selection: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201695d0; bytecode file offset 0xa65e90"
!EtasScintillaText methodsFor: 'recovered'!
sciSetStyleColours: recoveredArg1 foreground: recoveredArg2 background: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SCI_STYLESETFORE.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) scintillaCommand: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue3 := SCI_STYLESETBACK.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    (self) scintillaCommand: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20174654; bytecode file offset 0xa70f20"
!EtasScintillaText methodsFor: 'recovered'!
sciSetText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('Rnz') == ('EHI_87458').
    recoveredValue1 := SCI_SETTEXT.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) replaceCrWithCrLf.
    recoveredValue4 := (recoveredValue3) asPSZ.
    recoveredValue5 := (self) scintillaCommand: (recoveredValue1) with: (0) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201a7ae4; bytecode file offset 0xaa43a8"
!EtasScintillaText methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := ('Rnz') == ('EHI_87458').
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (self) sciSetText: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) doWithEnabledWidget: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201f0218; bytecode file offset 0xaecae8"
!EtasScintillaText methodsFor: 'recovered'!
sciSetSelectionColorsFromOS
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SCI_SETSELFORE.
    recoveredValue1 := CgRGBColor.
    recoveredValue2 := (recoveredValue1) selectionForeground.
    recoveredValue3 := (recoveredValue2) asOSRGB.
    (self) scintillaCommand: (recoveredValue0) with: (1) with: (recoveredValue3).
    recoveredValue4 := SCI_SETSELBACK.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) selectionBackground.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    (self) scintillaCommand: (recoveredValue4) with: (1) with: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201f2230; bytecode file offset 0xaeeb0c"
!EtasScintillaText methodsFor: 'recovered'!
stopObservingParent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parentEditor.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) uiController.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 |
    recoveredBlock5Block14Value0 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value1 := (recoveredBlock5Block14Value0) removeDependent: (self).
    recoveredBlock5Block14Value1
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f2248; bytecode file offset 0xaeeb0c"
!EtasScintillaText methodsFor: 'recovered'!
startObservingParent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parentEditor.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) uiController.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 |
    recoveredBlock5Block14Value0 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value1 := (recoveredBlock5Block14Value0) addDependent: (self).
    recoveredBlock5Block14Value1
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f4718; bytecode file offset 0xaf0fe4"
!EtasScintillaText methodsFor: 'recovered'!
updateBgColor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) bgColorEditable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) asOSRGB.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) bgcolor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) bgColorNonEditable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) asOSRGB.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) bgcolor: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) updateStyles.
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

"ASDBase.ic method 0x20209cb8; bytecode file offset 0xb06594"
!EtasScintillaText methodsFor: 'recovered'!
updateStyles
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := STYLE_DEFAULT.
    recoveredValue1 := (self) bgcolor.
    (self) sciSetStyleColours: (recoveredValue0) background: (recoveredValue1).
    recoveredValue2 := SCI_STYLECLEARALL.
    (self) scintillaCommand: (recoveredValue2).
    (self) addHyperlinkStyle.
    (self) addMarkerErrorStyle.
    (self) addMarkerWarningStyle.
    (self) addMarkerInfoStyle.
    (self) sciSetSelectionColorsFromOS.
    ^self
! !

"ASDBase.ic method 0x2022e40c; bytecode file offset 0xb2acd8"
!EtasScintillaText methodsFor: 'recovered'!
sciGetProperty: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SCI_GETPROPERTY.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) scintillaCommand: (recoveredValue0) with: (recoveredValue2) with: (0).
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := String.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) new: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := SCI_GETPROPERTY.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) asPSZ.
    recoveredValue11 := recoveredLocal2.
    (self) scintillaCommand: (recoveredValue8) with: (recoveredValue10) with: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue12) trimNull.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2022e730; bytecode file offset 0xb2b004"
!EtasScintillaText methodsFor: 'recovered'!
addAutocompletionEntryFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) autocompletionDict.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    | block280dcd34Value0 block280dcd34Value1 |
    block280dcd34Value0 := OrderedCollection.
    block280dcd34Value1 := (block280dcd34Value0) new.
    block280dcd34Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023fd10; bytecode file offset 0xb3c5e0"
!EtasScintillaText methodsFor: 'recovered'!
setString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := ('Rnz') == ('EHI_87806').
    recoveredBlock4Value1 := recoveredArg1.
    (self) sciSetText: (recoveredBlock4Value1).
    recoveredBlock4Value2 := ('Kli') == ('Call_2010401073').
    recoveredBlock4Value3 := (self) callValueChangedCallback: (nil).
    recoveredBlock4Value3
].
    (self) doWithEnabledWidget: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2026dcc8; bytecode file offset 0xb6a58c"
!EtasScintillaText methodsFor: 'recovered'!
doWithEnabledWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) editable.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 14] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack0) editable: (recoveredBlock4Stack1).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) editable: (recoveredBlock4Stack1).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) suspendNotifications: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2026f070; bytecode file offset 0xb6b934"
!EtasScintillaText methodsFor: 'recovered'!
scintillaCommand: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) handle.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 recoveredBlock5Block14Value2 recoveredBlock5Block14Value3 recoveredBlock5Block14Value4 |
    recoveredBlock5Block14Value0 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value1 := recoveredArg1.
    recoveredBlock5Block14Value2 := recoveredArg2.
    recoveredBlock5Block14Value3 := recoveredArg3.
    recoveredBlock5Block14Value4 := (recoveredBlock5Block14Value0) sendMessage: (recoveredBlock5Block14Value1) wParam: (recoveredBlock5Block14Value2) lParam: (recoveredBlock5Block14Value3).
    ^recoveredBlock5Block14Value4
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x202dee6c; bytecode file offset 0xbdb744"
!EtasScintillaText methodsFor: 'recovered'!
sciGetSelText
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_81376'.
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
            recoveredStack0 := (recoveredStack0) sciGetSelectionEnd.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciGetSelectionStart.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
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
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := SCI_GETSELTEXT.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) scintillaCommand: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimNull.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e77b4; bytecode file offset 0xbe407c"
!EtasScintillaText methodsFor: 'recovered'!
setText: recoveredArg1 notify: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) osWidget.
    recoveredBlock4Value1 := [:recoveredBlock4Block11Arg1 | 
    | recoveredBlock4Block11Value0 recoveredBlock4Block11Value1 recoveredBlock4Block11Value2 |
    recoveredBlock4Block11Value0 := recoveredBlock4Block11Arg1.
    recoveredBlock4Block11Value1 := recoveredArg1.
    recoveredBlock4Block11Value2 := (recoveredBlock4Block11Value0) setText: (recoveredBlock4Block11Value1).
    recoveredBlock4Block11Value2
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) ifNotNil: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) suspendNotifications: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f9c28; bytecode file offset 0xbf64fc"
!EtasScintillaText methodsFor: 'recovered'!
sciGetText
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ('Rnz') == ('EHI_87458').
    recoveredValue1 := (self) sciGetLength.
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [
    ^nil
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := String.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue4) new: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) + (1).
    recoveredValue10 := recoveredLocal1.
    (self) sciGetText: (recoveredValue9) buffer: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) trimNull.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202fd6e8; bytecode file offset 0xbf9fbc"
!EtasScintillaText methodsFor: 'recovered'!
selectLine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Kli') == ('Call_100823').
    recoveredValue1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) >= (0).
    recoveredBlock10Value1
].
    (self) runtimeAssert: (recoveredValue1) additionalInfo: ('Negative line number detected. Please check error source').
    (self) removeAllSyntaxErrorMarkers.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredValue4 := (recoveredValue3) max: (0).
    (self) markSyntaxError: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (recoveredValue6) max: (0).
    (self) sciGoToLine: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2033c18c; bytecode file offset 0xc38a54"
!EtasScintillaText methodsFor: 'recovered'!
updateHorizontalScrollbarForLines: recoveredArg1 to: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1000.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Local1 recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := Time.
    recoveredBlock18Value1 := [
    | recoveredBlock18Block26Value0 recoveredBlock18Block26Value1 recoveredBlock18Block26Value2 |
    recoveredBlock18Block26Value0 := recoveredArg1.
    recoveredBlock18Block26Value1 := recoveredArg2.
    recoveredBlock18Block26Value2 := (self) _updateHorizontalScrollbarForLines: (recoveredBlock18Block26Value0) to: (recoveredBlock18Block26Value1).
    recoveredBlock18Block26Value2
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) millisecondsToRun: (recoveredBlock18Value1).
    recoveredBlock18Value3 := recoveredBlock18Value2.
    recoveredBlock18Local1 := recoveredBlock18Value3.
    recoveredBlock18Value2
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'Scintilla Scrollbar Update'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) forkNamed: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) _updateHorizontalScrollbarForLines: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033fba4; bytecode file offset 0xc3c474"
!EtasScintillaText methodsFor: 'recovered'!
getLine: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) sciLineLength: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) sciGetLine: (recoveredStack1) buffer: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a5730; bytecode file offset 0xca2014"
!EtasScintillaText methodsFor: 'recovered'!
autocompletionForCharacter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) autocompletionDict.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := WriteStream.
    recoveredValue5 := String.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := (recoveredValue4) on: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) asSet.
    recoveredValue10 := (recoveredValue9) asSortedCollection.
    recoveredValue11 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredLocal1.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) nextPutAll: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
    recoveredValue12 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) nextPut: ($ ).
    recoveredBlock53Value1
].
    (recoveredValue10) do: (recoveredValue11) andBetweenDo: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) contents.
    ^recoveredValue14
! !

"ASDBase.ic method 0x20449f24; bytecode file offset 0xd46824"
!EtasScintillaText methodsFor: 'recovered'!
autoCompletionForToken: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parentEditor.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Local2 recoveredBlock6Local3 recoveredBlock6Local4 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) parentEditor.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) uiController.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) item.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Local4 := recoveredBlock6Stack0.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local4.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) complexVariables.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block22Arg1 | 
    | recoveredBlock6Block22Value0 recoveredBlock6Block22Value1 recoveredBlock6Block22Value2 recoveredBlock6Block22Value3 |
    recoveredBlock6Block22Value0 := recoveredBlock6Block22Arg1.
    recoveredBlock6Block22Value1 := (recoveredBlock6Block22Value0) elementName.
    recoveredBlock6Block22Value2 := recoveredArg1.
    recoveredBlock6Block22Value3 := (recoveredBlock6Block22Value1) equals: (recoveredBlock6Block22Value2).
    recoveredBlock6Block22Value3
].
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack2 := [
    ^nil
].
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) detect: (recoveredBlock6Stack1) ifNone: (recoveredBlock6Stack2).
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Local3 := recoveredBlock6Stack0.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local3.
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) sgClass.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            (recoveredBlock6Stack0 ~~ nil) ifTrue: [recoveredBlock6PC := 66] ifFalse: [recoveredBlock6PC := 64].
        ].
        recoveredBlock6Step = 64 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack0 := ReadWriteStream.
            recoveredBlock6PC := 68.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6Stack1 := ''.
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) on: (recoveredBlock6Stack1).
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Local2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local1.
            recoveredBlock6PC := 78.
        ].
        recoveredBlock6Step = 78 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) allMethods.
            recoveredBlock6PC := 80.
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block80Arg1 | 
    | recoveredBlock6Block80Value0 recoveredBlock6Block80Value1 recoveredBlock6Block80Value2 recoveredBlock6Block80Value3 recoveredBlock6Block80Value4 |
    recoveredBlock6Block80Value0 := recoveredBlock6Local2.
    recoveredBlock6Block80Value1 := recoveredBlock6Block80Value0.
    recoveredBlock6Block80Value2 := recoveredBlock6Block80Arg1.
    recoveredBlock6Block80Value3 := (recoveredBlock6Block80Value2) methodName.
    (recoveredBlock6Block80Value1) nextPutAll: (recoveredBlock6Block80Value3).
    recoveredBlock6Block80Value4 := (recoveredBlock6Block80Value0) space.
    recoveredBlock6Block80Value4
].
            recoveredBlock6PC := 98.
        ].
        recoveredBlock6Step = 98 ifTrue: [
            (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 100 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local2.
            recoveredBlock6PC := 103.
        ].
        recoveredBlock6Step = 103 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) contents.
            recoveredBlock6PC := 105.
        ].
        recoveredBlock6Step = 105 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) trimBlanks.
            recoveredBlock6PC := 107.
        ].
        recoveredBlock6Step = 107 ifTrue: [
            ^recoveredBlock6Stack0
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2047788c; bytecode file offset 0xd74190"
!EtasScintillaText methodsFor: 'recovered'!
autoCompletionForToken: recoveredArg1 startsWith: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parentEditor.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Local2 recoveredBlock6Local3 recoveredBlock6Local4 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) parentEditor.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) uiController.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) item.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Local4 := recoveredBlock6Stack0.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local4.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) complexVariables.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block22Arg1 | 
    | recoveredBlock6Block22Value0 recoveredBlock6Block22Value1 recoveredBlock6Block22Value2 recoveredBlock6Block22Value3 |
    recoveredBlock6Block22Value0 := recoveredBlock6Block22Arg1.
    recoveredBlock6Block22Value1 := (recoveredBlock6Block22Value0) elementName.
    recoveredBlock6Block22Value2 := recoveredArg1.
    recoveredBlock6Block22Value3 := (recoveredBlock6Block22Value1) equals: (recoveredBlock6Block22Value2).
    recoveredBlock6Block22Value3
].
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack2 := [
    ^nil
].
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) detect: (recoveredBlock6Stack1) ifNone: (recoveredBlock6Stack2).
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Local3 := recoveredBlock6Stack0.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local3.
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) sgClass.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            (recoveredBlock6Stack0 ~~ nil) ifTrue: [recoveredBlock6PC := 66] ifFalse: [recoveredBlock6PC := 64].
        ].
        recoveredBlock6Step = 64 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack0 := ReadWriteStream.
            recoveredBlock6PC := 68.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6Stack1 := ''.
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) on: (recoveredBlock6Stack1).
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Local2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local1.
            recoveredBlock6PC := 78.
        ].
        recoveredBlock6Step = 78 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) allMethods.
            recoveredBlock6PC := 80.
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block80Arg1 | 
    | recoveredBlock6Block80Stack0 recoveredBlock6Block80Stack1 recoveredBlock6Block80Stack2 recoveredBlock6Block80Stack3 recoveredBlock6Block80Stack4 recoveredBlock6Block80PC recoveredBlock6Block80Step recoveredBlock6Block80Done recoveredBlock6Block80Result |
    recoveredBlock6Block80Stack0 := nil.
    recoveredBlock6Block80PC := 86.
    recoveredBlock6Block80Done := false.
    [recoveredBlock6Block80Done not] whileTrue: [
        recoveredBlock6Block80Step := recoveredBlock6Block80PC.
        recoveredBlock6Block80Step = 86 ifTrue: [
            recoveredBlock6Block80Stack1 := nil.
            recoveredBlock6Block80PC := 87.
        ].
        recoveredBlock6Block80Step = 87 ifTrue: [
            recoveredBlock6Block80Stack2 := recoveredBlock6Block80Arg1.
            recoveredBlock6Block80PC := 88.
        ].
        recoveredBlock6Block80Step = 88 ifTrue: [
            recoveredBlock6Block80Stack2 := (recoveredBlock6Block80Stack2) methodName.
            recoveredBlock6Block80PC := 90.
        ].
        recoveredBlock6Block80Step = 90 ifTrue: [
            recoveredBlock6Block80Stack3 := recoveredArg2.
            recoveredBlock6Block80PC := 93.
        ].
        recoveredBlock6Block80Step = 93 ifTrue: [
            recoveredBlock6Block80Stack2 := (recoveredBlock6Block80Stack2) startsWithIgnoreCase: (recoveredBlock6Block80Stack3).
            recoveredBlock6Block80PC := 95.
        ].
        recoveredBlock6Block80Step = 95 ifTrue: [
            (recoveredBlock6Block80Stack2) ifTrue: [recoveredBlock6Block80PC := 98] ifFalse: [recoveredBlock6Block80PC := 110].
        ].
        recoveredBlock6Block80Step = 98 ifTrue: [
            recoveredBlock6Block80PC := 99.
        ].
        recoveredBlock6Block80Step = 99 ifTrue: [
            recoveredBlock6Block80Stack1 := recoveredBlock6Local2.
            recoveredBlock6Block80PC := 102.
        ].
        recoveredBlock6Block80Step = 102 ifTrue: [
            recoveredBlock6Block80Stack2 := recoveredBlock6Block80Stack1.
            recoveredBlock6Block80PC := 103.
        ].
        recoveredBlock6Block80Step = 103 ifTrue: [
            recoveredBlock6Block80Stack3 := recoveredBlock6Block80Arg1.
            recoveredBlock6Block80PC := 104.
        ].
        recoveredBlock6Block80Step = 104 ifTrue: [
            recoveredBlock6Block80Stack3 := (recoveredBlock6Block80Stack3) methodName.
            recoveredBlock6Block80PC := 106.
        ].
        recoveredBlock6Block80Step = 106 ifTrue: [
            (recoveredBlock6Block80Stack2) nextPutAll: (recoveredBlock6Block80Stack3).
            recoveredBlock6Block80PC := 108.
        ].
        recoveredBlock6Block80Step = 108 ifTrue: [
            recoveredBlock6Block80Stack1 := (recoveredBlock6Block80Stack1) space.
            recoveredBlock6Block80PC := 110.
        ].
        recoveredBlock6Block80Step = 110 ifTrue: [
            recoveredBlock6Block80Result := recoveredBlock6Block80Stack1.
            recoveredBlock6Block80Done := true.
        ].
    ].
    recoveredBlock6Block80Result
].
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 113.
        ].
        recoveredBlock6Step = 113 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local2.
            recoveredBlock6PC := 116.
        ].
        recoveredBlock6Step = 116 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) contents.
            recoveredBlock6PC := 118.
        ].
        recoveredBlock6Step = 118 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) trimBlanks.
            recoveredBlock6PC := 120.
        ].
        recoveredBlock6Step = 120 ifTrue: [
            ^recoveredBlock6Stack0
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x204a99ec; bytecode file offset 0xda62bc"
!EtasScintillaText methodsFor: 'recovered'!
_updateHorizontalScrollbarForLines: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := scrollWidthUpdating.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            scrollWidthUpdating := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) sciGetXOffset.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            scrollWidthUpdating := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciGetLineEndPosition: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciPointXFromPosition: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) voYieldToNextLowerPriority.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 36] ifFalse: [recoveredLocal3 := nil. recoveredPC := 91]] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            scrollWidthUpdating := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := scrollWidth.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := scrollWidth.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            scrollWidth := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := scrollWidth.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) sciSetScrollWidth: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            scrollWidthUpdating := recoveredStack0.
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

"ASDBase.ic method 0x204d148c; bytecode file offset 0xdcddb0"
!EtasScintillaText methodsFor: 'recovered'!
initializeScintillaParameters
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 |
    recoveredValue0 := SCI_USEPOPUP.
    (self) scintillaCommand: (recoveredValue0) with: (0).
    recoveredValue1 := EsString.
    recoveredValue2 := (recoveredValue1) platformLineDelimiter.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) == (2).
    (self) runtimeAssert: (recoveredValue4) additionalInfo: ('platform line delimiter is NOT Cr / Lf').
    recoveredValue5 := SCI_SETEOLMODE.
    recoveredValue6 := SC_EOL_CRLF.
    (self) scintillaCommand: (recoveredValue5) with: (recoveredValue6).
    recoveredValue7 := SCMOD_CTRL.
    recoveredValue8 := (recoveredValue7) << (16).
    recoveredValue9 := SCK_LEFT.
    recoveredValue10 := (recoveredValue8) + (recoveredValue9).
    recoveredValue11 := SCI_WORDLEFT.
    (self) sciAssignCmdKey: (recoveredValue10) to: (recoveredValue11).
    recoveredValue12 := SCMOD_CTRL.
    recoveredValue13 := (recoveredValue12) << (16).
    recoveredValue14 := SCK_RIGHT.
    recoveredValue15 := (recoveredValue13) + (recoveredValue14).
    recoveredValue16 := SCI_WORDRIGHT.
    (self) sciAssignCmdKey: (recoveredValue15) to: (recoveredValue16).
    recoveredValue17 := SCMOD_ALT.
    recoveredValue18 := (recoveredValue17) << (16).
    recoveredValue19 := SCK_LEFT.
    recoveredValue20 := (recoveredValue18) + (recoveredValue19).
    recoveredValue21 := SCI_WORDPARTLEFT.
    (self) sciAssignCmdKey: (recoveredValue20) to: (recoveredValue21).
    recoveredValue22 := SCMOD_ALT.
    recoveredValue23 := (recoveredValue22) << (16).
    recoveredValue24 := SCK_RIGHT.
    recoveredValue25 := (recoveredValue23) + (recoveredValue24).
    recoveredValue26 := SCI_WORDPARTRIGHT.
    (self) sciAssignCmdKey: (recoveredValue25) to: (recoveredValue26).
    recoveredValue27 := SCMOD_CTRL.
    recoveredValue28 := (recoveredValue27) << (16).
    recoveredValue29 := SCK_UP.
    recoveredValue30 := (recoveredValue28) + (recoveredValue29).
    recoveredValue31 := SCI_PARAUP.
    (self) sciAssignCmdKey: (recoveredValue30) to: (recoveredValue31).
    recoveredValue32 := SCMOD_CTRL.
    recoveredValue33 := (recoveredValue32) << (16).
    recoveredValue34 := SCK_DOWN.
    recoveredValue35 := (recoveredValue33) + (recoveredValue34).
    recoveredValue36 := SCI_PARADOWN.
    (self) sciAssignCmdKey: (recoveredValue35) to: (recoveredValue36).
    recoveredValue37 := SCMOD_CTRL.
    recoveredValue38 := SCMOD_SHIFT.
    recoveredValue39 := (recoveredValue37) + (recoveredValue38).
    recoveredValue40 := (recoveredValue39) << (16).
    recoveredValue41 := SCK_UP.
    recoveredValue42 := (recoveredValue40) + (recoveredValue41).
    recoveredValue43 := SCI_PARAUPEXTEND.
    (self) sciAssignCmdKey: (recoveredValue42) to: (recoveredValue43).
    recoveredValue44 := SCMOD_CTRL.
    recoveredValue45 := SCMOD_SHIFT.
    recoveredValue46 := (recoveredValue44) + (recoveredValue45).
    recoveredValue47 := (recoveredValue46) << (16).
    recoveredValue48 := SCK_DOWN.
    recoveredValue49 := (recoveredValue47) + (recoveredValue48).
    recoveredValue50 := SCI_PARADOWNEXTEND.
    (self) sciAssignCmdKey: (recoveredValue49) to: (recoveredValue50).
    (self) updateAutoCompletion.
    (self) updateHorizontalScrollbar.
    ^self
! !

"ASDBase.ic method 0x20556cd8; bytecode file offset 0xe53640"
!EtasScintillaText methodsFor: 'recovered'!
sciGetNotificationName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SCN_STYLENEEDED.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'SCN_STYLENEEDED'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := SCN_CHARADDED.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'SCN_CHARADDED'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := SCN_SAVEPOINTREACHED.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'SCN_SAVEPOINTREACHED'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := SCN_SAVEPOINTLEFT.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'SCN_SAVEPOINTLEFT'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := SCN_MODIFYATTEMPTRO.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'SCN_MODIFYATTEMPTRO'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := SCN_KEY.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'SCN_KEY'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := SCN_DOUBLECLICK.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'SCN_DOUBLECLICK'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := SCN_UPDATEUI.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'SCN_UPDATEUI'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := SCN_MODIFIED.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'SCN_MODIFIED'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := SCN_MACRORECORD.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'SCN_MACRORECORD'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := SCN_MARGINCLICK.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 'SCN_MARGINCLICK'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := SCN_NEEDSHOWN.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := 'SCN_NEEDSHOWN'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := SCN_PAINTED.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := 'SCN_PAINTED'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := SCN_USERLISTSELECTION.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := 'SCN_USERLISTSELECTION'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := SCN_URIDROPPED.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 'SCN_URIDROPPED'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := SCN_DWELLSTART.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'SCN_DWELLSTART'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := SCN_DWELLEND.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 'SCN_DWELLEND'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := SCN_ZOOM.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 185].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 'SCN_ZOOM'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := SCN_HOTSPOTCLICK.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'SCN_HOTSPOTCLICK'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := SCN_HOTSPOTDOUBLECLICK.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 205].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := 'SCN_HOTSPOTDOUBLECLICK'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := SCN_CALLTIPCLICK.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := 'SCN_CALLTIPCLICK'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := SCN_AUTOCSELECTION.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 225].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := 'SCN_AUTOCSELECTION'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'Unknown'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2057f7d4; bytecode file offset 0xe7c10c"
!EtasScintillaText methodsFor: 'recovered'!
scintillaNotification: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := SCN_UPDATEUI.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentEditor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) updatePosition: (self) clientData: (nil) callData: (nil).
    recoveredBlock16Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 32.
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
            recoveredStack2 := (recoveredStack2) sciGetCurrentPos.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciPositionBefore: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciGetCharAt: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := '()[]{}'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := SCI_BRACEMATCH.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := INVALID_POSITION.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := SCI_BRACEHIGHLIGHT.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := SCI_GETCOLUMN.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := SCI_SETHIGHLIGHTGUIDE.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := SCI_BRACEBADLIGHT.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := SCI_BRACEBADLIGHT.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := INVALID_POSITION.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := SCI_SETHIGHLIGHTGUIDE.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) scintillaCommand: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentEditor.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := [:block28112f18Arg1 | 
    | block28112f18Value0 block28112f18Value1 |
    block28112f18Value0 := block28112f18Arg1.
    block28112f18Value1 := (block28112f18Value0) updateToolbarSensitive.
    block28112f18Value1
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := SCN_MODIFIED.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 245].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) modificationType.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := SC_MOD_INSERTTEXT.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := SC_MOD_INSERTTEXT.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 203].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciLineFromPosition: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) linesAdded.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) markChanges: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 174] ifFalse: [recoveredLocal3 := nil. recoveredPC := 192]] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := (recoveredStack4) linesAdded.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) updateHorizontalScrollbarForLines: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) modificationType.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := SC_MOD_DELETETEXT.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := SC_MOD_DELETETEXT.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 243].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) sciLineFromPosition: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) linesAdded.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) markChanges: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) updateHorizontalScrollbar.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := SCN_SAVEPOINTREACHED.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1) removeAllChangeMarkers.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20582628; bytecode file offset 0xe7ef58"
!EtasScintillaText methodsFor: 'recovered'!
updateAutoCompletion
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    autocompletionDict := recoveredValue1.
    recoveredValue2 := parentEditor.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := (self) parentEditor.
    recoveredBlock11Value1 := (recoveredBlock11Value0) uiController.
    recoveredBlock11Value2 := (recoveredBlock11Value1) item.
    recoveredBlock11Value3 := [:recoveredBlock11Block22Arg1 | 
    | recoveredBlock11Block22Stack0 recoveredBlock11Block22Stack1 recoveredBlock11Block22Stack2 recoveredBlock11Block22Stack3 recoveredBlock11Block22Stack4 recoveredBlock11Block22PC recoveredBlock11Block22Step recoveredBlock11Block22Done recoveredBlock11Block22Result |
    recoveredBlock11Block22Stack0 := self.
    recoveredBlock11Block22PC := 28.
    recoveredBlock11Block22Done := false.
    [recoveredBlock11Block22Done not] whileTrue: [
        recoveredBlock11Block22Step := recoveredBlock11Block22PC.
        recoveredBlock11Block22Step = 28 ifTrue: [
            recoveredBlock11Block22Stack1 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 29.
        ].
        recoveredBlock11Block22Step = 29 ifTrue: [
            recoveredBlock11Block22Stack1 := (recoveredBlock11Block22Stack1) complexVariables.
            recoveredBlock11Block22PC := 31.
        ].
        recoveredBlock11Block22Step = 31 ifTrue: [
            recoveredBlock11Block22Stack2 := [:recoveredBlock11Block22Block31Arg1 | 
    | recoveredBlock11Block22Block31Value0 recoveredBlock11Block22Block31Value1 |
    recoveredBlock11Block22Block31Value0 := recoveredBlock11Block22Block31Arg1.
    recoveredBlock11Block22Block31Value1 := (self) addAutocompletionEntryFor: (recoveredBlock11Block22Block31Value0).
    recoveredBlock11Block22Block31Value1
].
            recoveredBlock11Block22PC := 42.
        ].
        recoveredBlock11Block22Step = 42 ifTrue: [
            (recoveredBlock11Block22Stack1) keysDo: (recoveredBlock11Block22Stack2).
            recoveredBlock11Block22PC := 44.
        ].
        recoveredBlock11Block22Step = 44 ifTrue: [
            recoveredBlock11Block22Stack1 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 45.
        ].
        recoveredBlock11Block22Step = 45 ifTrue: [
            recoveredBlock11Block22Stack1 := (recoveredBlock11Block22Stack1) primitiveVariables.
            recoveredBlock11Block22PC := 47.
        ].
        recoveredBlock11Block22Step = 47 ifTrue: [
            recoveredBlock11Block22Stack2 := [:recoveredBlock11Block22Block47Arg1 | 
    | recoveredBlock11Block22Block47Value0 recoveredBlock11Block22Block47Value1 |
    recoveredBlock11Block22Block47Value0 := recoveredBlock11Block22Block47Arg1.
    recoveredBlock11Block22Block47Value1 := (self) addAutocompletionEntryFor: (recoveredBlock11Block22Block47Value0).
    recoveredBlock11Block22Block47Value1
].
            recoveredBlock11Block22PC := 58.
        ].
        recoveredBlock11Block22Step = 58 ifTrue: [
            (recoveredBlock11Block22Stack1) keysDo: (recoveredBlock11Block22Stack2).
            recoveredBlock11Block22PC := 60.
        ].
        recoveredBlock11Block22Step = 60 ifTrue: [
            recoveredBlock11Block22Stack1 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 61.
        ].
        recoveredBlock11Block22Step = 61 ifTrue: [
            recoveredBlock11Block22Stack1 := (recoveredBlock11Block22Stack1) methods.
            recoveredBlock11Block22PC := 63.
        ].
        recoveredBlock11Block22Step = 63 ifTrue: [
            recoveredBlock11Block22Stack2 := [:block28113134Arg1 | 
    | block28113134Value0 block28113134Value1 block28113134Value2 |
    block28113134Value0 := block28113134Arg1.
    block28113134Value1 := (block28113134Value0) isProcess.
    block28113134Value2 := (block28113134Value1) not.
    block28113134Value2
].
            recoveredBlock11Block22PC := 65.
        ].
        recoveredBlock11Block22Step = 65 ifTrue: [
            recoveredBlock11Block22PC := 73.
        ].
        recoveredBlock11Block22Step = 73 ifTrue: [
            recoveredBlock11Block22Stack1 := (recoveredBlock11Block22Stack1) select: (recoveredBlock11Block22Stack2).
            recoveredBlock11Block22PC := 75.
        ].
        recoveredBlock11Block22Step = 75 ifTrue: [
            recoveredBlock11Block22Stack2 := [:recoveredBlock11Block22Block75Arg1 | 
    | recoveredBlock11Block22Block75Value0 recoveredBlock11Block22Block75Value1 recoveredBlock11Block22Block75Value2 |
    recoveredBlock11Block22Block75Value0 := recoveredBlock11Block22Block75Arg1.
    recoveredBlock11Block22Block75Value1 := (recoveredBlock11Block22Block75Value0) methodName.
    recoveredBlock11Block22Block75Value2 := (self) addAutocompletionEntryFor: (recoveredBlock11Block22Block75Value1).
    recoveredBlock11Block22Block75Value2
].
            recoveredBlock11Block22PC := 88.
        ].
        recoveredBlock11Block22Step = 88 ifTrue: [
            (recoveredBlock11Block22Stack1) do: (recoveredBlock11Block22Stack2).
            recoveredBlock11Block22PC := 90.
        ].
        recoveredBlock11Block22Step = 90 ifTrue: [
            recoveredBlock11Block22Stack1 := nil.
            recoveredBlock11Block22PC := 91.
        ].
        recoveredBlock11Block22Step = 91 ifTrue: [
            recoveredBlock11Block22Stack2 := parentEditor.
            recoveredBlock11Block22PC := 93.
        ].
        recoveredBlock11Block22Step = 93 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) uiController.
            recoveredBlock11Block22PC := 94.
        ].
        recoveredBlock11Block22Step = 94 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) selectedMethod.
            recoveredBlock11Block22PC := 96.
        ].
        recoveredBlock11Block22Step = 96 ifTrue: [
            recoveredBlock11Block22Stack3 := recoveredBlock11Block22Stack2.
            recoveredBlock11Block22PC := 97.
        ].
        recoveredBlock11Block22Step = 97 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Block22Stack3.
            recoveredBlock11Block22PC := 100.
        ].
        recoveredBlock11Block22Step = 100 ifTrue: [
            (recoveredBlock11Block22Stack2 == nil) ifTrue: [recoveredBlock11Block22PC := 122] ifFalse: [recoveredBlock11Block22PC := 104].
        ].
        recoveredBlock11Block22Step = 104 ifTrue: [
            recoveredBlock11Block22PC := 105.
        ].
        recoveredBlock11Block22Step = 105 ifTrue: [
            recoveredBlock11Block22Stack1 := recoveredBlock11Local1.
            recoveredBlock11Block22PC := 108.
        ].
        recoveredBlock11Block22Step = 108 ifTrue: [
            recoveredBlock11Block22Stack2 := [:recoveredBlock11Block22Block108Arg1 | 
    | recoveredBlock11Block22Block108Value0 recoveredBlock11Block22Block108Value1 recoveredBlock11Block22Block108Value2 |
    recoveredBlock11Block22Block108Value0 := recoveredBlock11Block22Block108Arg1.
    recoveredBlock11Block22Block108Value1 := (recoveredBlock11Block22Block108Value0) elementName.
    recoveredBlock11Block22Block108Value2 := (self) addAutocompletionEntryFor: (recoveredBlock11Block22Block108Value1).
    recoveredBlock11Block22Block108Value2
].
            recoveredBlock11Block22PC := 120.
        ].
        recoveredBlock11Block22Step = 120 ifTrue: [
            recoveredBlock11Block22Stack1 := (recoveredBlock11Block22Stack1) allMethodElementsDo: (recoveredBlock11Block22Stack2).
            recoveredBlock11Block22PC := 122.
        ].
        recoveredBlock11Block22Step = 122 ifTrue: [
            recoveredBlock11Block22Result := recoveredBlock11Block22Stack1.
            recoveredBlock11Block22Done := true.
        ].
    ].
    recoveredBlock11Block22Result
].
    recoveredBlock11Value4 := (recoveredBlock11Value2) ifNotNil: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := WriteStream.
    recoveredValue5 := String.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := (recoveredValue4) on: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredLocal1 := true.
    recoveredValue8 := autocompletionDict.
    recoveredValue9 := [:recoveredBlock144Arg1 | 
    | recoveredBlock144Local1 recoveredBlock144Local2 recoveredBlock144Local3 recoveredBlock144Stack0 recoveredBlock144Stack1 recoveredBlock144Stack2 recoveredBlock144Stack3 recoveredBlock144Stack4 recoveredBlock144PC recoveredBlock144Step recoveredBlock144Done recoveredBlock144Result |
    recoveredBlock144Stack0 := self.
    recoveredBlock144PC := 150.
    recoveredBlock144Done := false.
    [recoveredBlock144Done not] whileTrue: [
        recoveredBlock144Step := recoveredBlock144PC.
        recoveredBlock144Step = 150 ifTrue: [
            recoveredBlock144Stack1 := autocompletionDict.
            recoveredBlock144PC := 152.
        ].
        recoveredBlock144Step = 152 ifTrue: [
            recoveredBlock144Stack2 := recoveredBlock144Arg1.
            recoveredBlock144PC := 155.
        ].
        recoveredBlock144Step = 155 ifTrue: [
            recoveredBlock144Stack1 := (recoveredBlock144Stack1) at: (recoveredBlock144Stack2).
            recoveredBlock144PC := 157.
        ].
        recoveredBlock144Step = 157 ifTrue: [
            recoveredBlock144Stack1 := (recoveredBlock144Stack1) asSet.
            recoveredBlock144PC := 159.
        ].
        recoveredBlock144Step = 159 ifTrue: [
            recoveredBlock144Stack1 := (recoveredBlock144Stack1) asSortedCollection.
            recoveredBlock144PC := 161.
        ].
        recoveredBlock144Step = 161 ifTrue: [
            recoveredBlock144Local3 := recoveredBlock144Stack1.
            recoveredBlock144PC := 164.
        ].
        recoveredBlock144Step = 164 ifTrue: [
            recoveredBlock144Stack1 := WriteStream.
            recoveredBlock144PC := 166.
        ].
        recoveredBlock144Step = 166 ifTrue: [
            recoveredBlock144Stack2 := String.
            recoveredBlock144PC := 168.
        ].
        recoveredBlock144Step = 168 ifTrue: [
            recoveredBlock144Stack2 := (recoveredBlock144Stack2) new.
            recoveredBlock144PC := 169.
        ].
        recoveredBlock144Step = 169 ifTrue: [
            recoveredBlock144Stack1 := (recoveredBlock144Stack1) on: (recoveredBlock144Stack2).
            recoveredBlock144PC := 171.
        ].
        recoveredBlock144Step = 171 ifTrue: [
            recoveredBlock144Local2 := recoveredBlock144Stack1.
            recoveredBlock144PC := 174.
        ].
        recoveredBlock144Step = 174 ifTrue: [
            recoveredBlock144Stack1 := recoveredBlock144Local3.
            recoveredBlock144PC := 177.
        ].
        recoveredBlock144Step = 177 ifTrue: [
            recoveredBlock144Stack2 := [:recoveredBlock144Block177Arg1 | 
    | recoveredBlock144Block177Value0 recoveredBlock144Block177Value1 recoveredBlock144Block177Value2 |
    recoveredBlock144Block177Value0 := recoveredBlock144Local2.
    recoveredBlock144Block177Value1 := recoveredBlock144Block177Arg1.
    recoveredBlock144Block177Value2 := (recoveredBlock144Block177Value0) nextPutAll: (recoveredBlock144Block177Value1).
    recoveredBlock144Block177Value2
].
            recoveredBlock144PC := 191.
        ].
        recoveredBlock144Step = 191 ifTrue: [
            recoveredBlock144Stack3 := [
    | recoveredBlock144Block191Value0 recoveredBlock144Block191Value1 |
    recoveredBlock144Block191Value0 := recoveredBlock144Local2.
    recoveredBlock144Block191Value1 := (recoveredBlock144Block191Value0) nextPut: ($ ).
    recoveredBlock144Block191Value1
].
            recoveredBlock144PC := 207.
        ].
        recoveredBlock144Step = 207 ifTrue: [
            (recoveredBlock144Stack1) do: (recoveredBlock144Stack2) andBetweenDo: (recoveredBlock144Stack3).
            recoveredBlock144PC := 209.
        ].
        recoveredBlock144Step = 209 ifTrue: [
            recoveredBlock144Stack1 := recoveredBlock144Local2.
            recoveredBlock144PC := 212.
        ].
        recoveredBlock144Step = 212 ifTrue: [
            recoveredBlock144Stack1 := (recoveredBlock144Stack1) contents.
            recoveredBlock144PC := 214.
        ].
        recoveredBlock144Step = 214 ifTrue: [
            recoveredBlock144Local1 := recoveredBlock144Stack1.
            recoveredBlock144PC := 217.
        ].
        recoveredBlock144Step = 217 ifTrue: [
            recoveredBlock144Stack1 := recoveredLocal1.
            recoveredBlock144PC := 220.
        ].
        recoveredBlock144Step = 220 ifTrue: [
            (recoveredBlock144Stack1) ifTrue: [recoveredBlock144PC := 232] ifFalse: [recoveredBlock144PC := 224].
        ].
        recoveredBlock144Step = 224 ifTrue: [
            recoveredBlock144Stack1 := recoveredLocal2.
            recoveredBlock144PC := 227.
        ].
        recoveredBlock144Step = 227 ifTrue: [
            recoveredBlock144Stack2 := $ .
            recoveredBlock144PC := 230.
        ].
        recoveredBlock144Step = 230 ifTrue: [
            (recoveredBlock144Stack1) nextPut: (recoveredBlock144Stack2).
            recoveredBlock144PC := 232.
        ].
        recoveredBlock144Step = 232 ifTrue: [
            recoveredBlock144Stack1 := false.
            recoveredBlock144PC := 233.
        ].
        recoveredBlock144Step = 233 ifTrue: [
            recoveredLocal1 := recoveredBlock144Stack1.
            recoveredBlock144PC := 236.
        ].
        recoveredBlock144Step = 236 ifTrue: [
            recoveredBlock144Stack1 := recoveredLocal2.
            recoveredBlock144PC := 239.
        ].
        recoveredBlock144Step = 239 ifTrue: [
            recoveredBlock144Stack2 := recoveredBlock144Local1.
            recoveredBlock144PC := 242.
        ].
        recoveredBlock144Step = 242 ifTrue: [
            recoveredBlock144Stack1 := (recoveredBlock144Stack1) nextPutAll: (recoveredBlock144Stack2).
            recoveredBlock144PC := 244.
        ].
        recoveredBlock144Step = 244 ifTrue: [
            recoveredBlock144Result := recoveredBlock144Stack1.
            recoveredBlock144Done := true.
        ].
    ].
    recoveredBlock144Result
].
    (recoveredValue8) keysDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) contents.
    words := recoveredValue11.
    recoveredValue12 := (self) words.
    (self) sciSetKeywords: (recoveredValue12) forSet: (1).
    ^self
! !

