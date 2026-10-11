"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000090; bytecode file offset 0x153a14"
!PlatformWidgets class methodsFor: 'recovered'!
_PRAGMA_PlatformWidgetsConstants
    ^self
! !

"psupp.ic method 0x20000efc; bytecode file offset 0x154794"
!PlatformWidgets class methodsFor: 'recovered'!
restart
    StaleWidgets := nil.
    ^self
! !

"psupp.ic method 0x20008134; bytecode file offset 0x15b9e4"
!PlatformWidgets class methodsFor: 'recovered'!
clearCacheMessage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ClearCacheMessage := recoveredValue0.
    ^self
! !

"psupp.ic method 0x20009224; bytecode file offset 0x15cb60"
!PlatformWidgets class methodsFor: 'recovered'!
postExiting
    | recoveredValue0 |
    recoveredValue0 := OSWidget.
    (recoveredValue0) stopRun.
    ^self
! !

"psupp.ic method 0x2001dd70; bytecode file offset 0x171610"
!PlatformWidgets class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := OSWidget.
    (recoveredValue0) initializeEventTable.
    (self) initializeOSWidgetClasses.
    ^self
! !

"psupp.ic method 0x2001ec9c; bytecode file offset 0x17253c"
!PlatformWidgets class methodsFor: 'recovered'!
startRun
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSWidget.
    (recoveredValue0) startRun.
    recoveredValue1 := OSShell.
    (recoveredValue1) startRun.
    ^self
! !

"psupp.ic method 0x20025144; bytecode file offset 0x1789ec"
!PlatformWidgets class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatCWc.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := OSWidget.
    (recoveredValue2) initializeStrings.
    ^self
! !

"psupp.ic method 0x20028be4; bytecode file offset 0x17c480"
!PlatformWidgets class methodsFor: 'recovered'!
clearCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ClearCacheMessage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ClearCacheMessage.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) send.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20028f14; bytecode file offset 0x17c7b8"
!PlatformWidgets class methodsFor: 'recovered'!
loaded
    (self) localize.
    (self) initializeOSWidgetStyles.
    (self) initializeOSWidgetHooks.
    (self) initializeOSWidgetConstants.
    ^self
! !

"psupp.ic method 0x2002ec28; bytecode file offset 0x1824d0"
!PlatformWidgets class methodsFor: 'recovered'!
initializeOSWidgetClasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSTextEdit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            OSxSmallText := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := IsWinNT.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OSTextEdit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            OSxLargeText := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OSLargeText.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            OSxLargeText := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002ece0; bytecode file offset 0x182590"
!PlatformWidgets class methodsFor: 'recovered'!
saving
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            StaleWidgets := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OSWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block28020e08Arg1 | 
    | block28020e08Value0 block28020e08Value1 block28020e08Value2 |
    block28020e08Value0 := StaleWidgets.
    block28020e08Value1 := block28020e08Arg1.
    block28020e08Value2 := (block28020e08Value0) add: (block28020e08Value1).
    block28020e08Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) widgetsDo: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x200313a4; bytecode file offset 0x184c48"
!PlatformWidgets class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := StaleWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := StaleWidgets.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block28020f94Arg1 | 
    | block28020f94Value0 block28020f94Value1 |
    block28020f94Value0 := block28020f94Arg1.
    block28020f94Value1 := (block28020f94Value0) handle: (nil).
    block28020f94Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            StaleWidgets := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20032514; bytecode file offset 0x185dc4"
!PlatformWidgets class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('AppModalWidgets') inClassNamed: ('OSShell').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilClassVariable: ('ClearCacheMessage') inClassNamed: ('PlatformWidgets').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeToNilClassVariable: ('InactiveWidgets') inClassNamed: ('OSShell').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) initializeToNilClassVariable: ('SavedCursor') inClassNamed: ('OSShell').
    ^self
! !

"psupp.ic method 0x2003dbec; bytecode file offset 0x19150c"
!PlatformWidgets class methodsFor: 'recovered'!
initializeOSWidgetConstants
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := MbIconhand.
    OSxICONERROR := recoveredValue0.
    recoveredValue1 := MbIconasterisk.
    OSxICONINFO := recoveredValue1.
    recoveredValue2 := MbIconquestion.
    OSxICONQUESTION := recoveredValue2.
    recoveredValue3 := OSxNULL.
    OSxNOICON := recoveredValue3.
    recoveredValue4 := MbIconexclamation.
    OSxICONWARNING := recoveredValue4.
    recoveredValue5 := MbIconasterisk.
    OSxICONWORKING := recoveredValue5.
    recoveredValue6 := MbOk.
    OSxOK := recoveredValue6.
    recoveredValue7 := MbOkcancel.
    OSxOKCANCEL := recoveredValue7.
    recoveredValue8 := MbRetrycancel.
    OSxRETRYCANCEL := recoveredValue8.
    recoveredValue9 := MbAbortretryignore.
    OSxABORTRETRYIGNORE := recoveredValue9.
    recoveredValue10 := MbYesno.
    OSxYESNO := recoveredValue10.
    recoveredValue11 := MbYesnocancel.
    OSxYESNOCANCEL := recoveredValue11.
    recoveredValue12 := MbDefbutton1.
    OSxDEFAULTBUTTON1 := recoveredValue12.
    recoveredValue13 := MbDefbutton2.
    OSxDEFAULTBUTTON2 := recoveredValue13.
    recoveredValue14 := MbDefbutton3.
    OSxDEFAULTBUTTON3 := recoveredValue14.
    recoveredValue15 := MbApplmodal.
    OSxPRIMARYAPPLICATIONMODAL := recoveredValue15.
    recoveredValue16 := MbTaskmodal.
    OSxFULLAPPLICATIONMODAL := recoveredValue16.
    recoveredValue17 := MbSystemmodal.
    OSxSYSTEMMODAL := recoveredValue17.
    ^self
! !

"psupp.ic method 0x20049f60; bytecode file offset 0x19d8b0"
!PlatformWidgets class methodsFor: 'recovered'!
initializeOSWidgetHooks
    OSxKeyDown := 1.
    OSxKeyUp := 2.
    OSxButton1Up := 3.
    OSxButton1Down := 4.
    OSxButton2Up := 5.
    OSxButton2Down := 6.
    OSxButton3Up := 7.
    OSxButton3Down := 8.
    OSxMouseMove := 9.
    OSxExpose := 10.
    OSxHelp := 11.
    OSxSetCursor := 12.
    OSxSetFocus := 13.
    OSxKillFocus := 14.
    OSxTraverse := 15.
    OSxMove := 16.
    OSxResize := 17.
    OSxClose := 18.
    OSxDestroy := 19.
    OSxSelect := 20.
    OSxDoubleSelect := 21.
    OSxShow := 22.
    OSxHide := 23.
    OSxModify := 24.
    OSxVerify := 25.
    OSxPosition := 26.
    OSxDrag := 27.
    OSxToBottom := 28.
    OSxIncrement := 29.
    OSxDecrement := 30.
    OSxPageIncrement := 31.
    OSxPageDecrement := 32.
    OSxToTop := 33.
    OSxPalette := 34.
    OSxTimer := 35.
    OSxIconify := 36.
    OSxCascade := 37.
    OSxArm := 38.
    OSxDisarm := 39.
    OSxActivate := 40.
    OSxDragDetect := 41.
    OSxConvertProc := 42.
    OSxTransferProc := 43.
    OSxDragProc := 44.
    OSxDropProc := 45.
    OSxMDIActivate := 46.
    OSxMaxEvent := 46.
    ^self
! !

"psupp.ic method 0x2004fc90; bytecode file offset 0x1a3604"
!PlatformWidgets class methodsFor: 'recovered'!
initializeOSWidgetStyles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 |
    recoveredValue0 := ('PR') = ('1E4JO7Q').
    recoveredValue1 := ('PR') = ('1E4JPZW').
    OSxNULL := 0.
    recoveredValue2 := (1) bitShift: (1).
    OSxBAR := recoveredValue2.
    recoveredValue3 := (1) bitShift: (2).
    OSxPOPUP := recoveredValue3.
    recoveredValue4 := (1) bitShift: (1).
    OSxSEPARATOR := recoveredValue4.
    recoveredValue5 := (1) bitShift: (8).
    OSxTEXT := recoveredValue5.
    recoveredValue6 := (1) bitShift: (1).
    OSxARROW := recoveredValue6.
    recoveredValue7 := (1) bitShift: (2).
    OSxCHECK := recoveredValue7.
    recoveredValue8 := (1) bitShift: (3).
    OSxPUSH := recoveredValue8.
    recoveredValue9 := (1) bitShift: (4).
    OSxRADIO := recoveredValue9.
    recoveredValue10 := (1) bitShift: (5).
    OSxDEFAULT := recoveredValue10.
    recoveredValue11 := (1) bitShift: (6).
    OSxNOSHADOW := recoveredValue11.
    recoveredValue12 := (1) bitShift: (7).
    OSxBITMAP := recoveredValue12.
    recoveredValue13 := (1) bitShift: (9).
    OSxICON := recoveredValue13.
    recoveredValue14 := (1) bitShift: (17).
    OSxUP := recoveredValue14.
    recoveredValue15 := (1) bitShift: (18).
    OSxDOWN := recoveredValue15.
    recoveredValue16 := (1) bitShift: (19).
    OSxLEFT := recoveredValue16.
    recoveredValue17 := (1) bitShift: (20).
    OSxRIGHT := recoveredValue17.
    recoveredValue18 := (1) bitShift: (21).
    OSxCENTER := recoveredValue18.
    recoveredValue19 := (1) bitShift: (1).
    OSxMULTI := recoveredValue19.
    recoveredValue20 := (1) bitShift: (2).
    OSxSINGLE := recoveredValue20.
    recoveredValue21 := (1) bitShift: (6).
    OSxWRAP := recoveredValue21.
    recoveredValue22 := (1) bitShift: (3).
    OSxEXTENDED := recoveredValue22.
    recoveredValue23 := (1) bitShift: (1).
    OSxSIMPLE := recoveredValue23.
    recoveredValue24 := (1) bitShift: (2).
    OSxDROPDOWN := recoveredValue24.
    recoveredValue25 := (1) bitShift: (1).
    OSxSHADOWIN := recoveredValue25.
    recoveredValue26 := (1) bitShift: (2).
    OSxSHADOWOUT := recoveredValue26.
    recoveredValue27 := (1) bitShift: (3).
    OSxSHADOWETCHEDIN := recoveredValue27.
    recoveredValue28 := (1) bitShift: (4).
    OSxSHADOWETCHEDOUT := recoveredValue28.
    recoveredValue29 := (1) bitShift: (1).
    OSxROOT := recoveredValue29.
    recoveredValue30 := (1) bitShift: (2).
    OSxDIALOG := recoveredValue30.
    recoveredValue31 := (1) bitShift: (3).
    OSxNOTRIM := recoveredValue31.
    recoveredValue32 := (1) bitShift: (4).
    OSxRESIZE := recoveredValue32.
    recoveredValue33 := (1) bitShift: (5).
    OSxTITLE := recoveredValue33.
    recoveredValue34 := (1) bitShift: (6).
    OSxMENU := recoveredValue34.
    recoveredValue35 := (1) bitShift: (7).
    OSxMIN := recoveredValue35.
    recoveredValue36 := (1) bitShift: (8).
    OSxHSCROLL := recoveredValue36.
    recoveredValue37 := (1) bitShift: (9).
    OSxVSCROLL := recoveredValue37.
    recoveredValue38 := (1) bitShift: (10).
    OSxMAX := recoveredValue38.
    recoveredValue39 := (1) bitShift: (11).
    OSxBORDER := recoveredValue39.
    recoveredValue40 := (1) bitShift: (12).
    OSxCLIPCHILDREN := recoveredValue40.
    recoveredValue41 := (1) bitShift: (13).
    OSxCLIPSIBLINGS := recoveredValue41.
    recoveredValue42 := (1) bitShift: (14).
    OSxONTOP := recoveredValue42.
    recoveredValue43 := (1) bitShift: (15).
    OSxDBCS := recoveredValue43.
    recoveredValue44 := (1) bitShift: (16).
    OSxNOBACKGROUND := recoveredValue44.
    recoveredValue45 := (1) bitShift: (1).
    OSxMOVE := recoveredValue45.
    recoveredValue46 := (1) bitShift: (2).
    OSxCOPY := recoveredValue46.
    recoveredValue47 := (1) bitShift: (3).
    OSxLINK := recoveredValue47.
    recoveredValue48 := (1) bitShift: (4).
    OSxNOOP := recoveredValue48.
    recoveredValue49 := (1) bitShift: (17).
    OSxALPHA := recoveredValue49.
    recoveredValue50 := (1) bitShift: (18).
    OSxNATIVE := recoveredValue50.
    recoveredValue51 := (1) bitShift: (19).
    OSxPHONETIC := recoveredValue51.
    recoveredValue52 := (1) bitShift: (20).
    OSxROMAN := recoveredValue52.
    ^self
! !

