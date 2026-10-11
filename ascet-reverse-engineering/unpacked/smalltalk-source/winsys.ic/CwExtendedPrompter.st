"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000340; bytecode file offset 0x7c6d8"
!CwExtendedPrompter methodsFor: 'recovered'!
createChildren
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x2000037c; bytecode file offset 0x7c6d8"
!CwExtendedPrompter methodsFor: 'recovered'!
createBulletinBoard
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x200007d0; bytecode file offset 0x7cc7c"
!CwExtendedPrompter methodsFor: 'recovered'!
defaultTitle
    | recoveredValue0 |
    recoveredValue0 := MxESTa2.
    ^recoveredValue0
! !

"winsys.ic method 0x20000e34; bytecode file offset 0x7d33c"
!CwExtendedPrompter methodsFor: 'recovered'!
shellName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) printString.
    ^recoveredValue1
! !

"winsys.ic method 0x20002020; bytecode file offset 0x7e1f8"
!CwExtendedPrompter methodsFor: 'recovered'!
createWorkRegion
    | recoveredValue0 |
    (self) createBulletinBoard.
    recoveredValue0 := (self) createChildren.
    ^recoveredValue0
! !

"winsys.ic method 0x20002030; bytecode file offset 0x7e1f8"
!CwExtendedPrompter methodsFor: 'recovered'!
createWindow
    | recoveredValue0 |
    (self) createShell.
    recoveredValue0 := (self) createWorkRegion.
    ^recoveredValue0
! !

"winsys.ic method 0x20002420; bytecode file offset 0x7e608"
!CwExtendedPrompter methodsFor: 'recovered'!
setDestroyedResult
    (self) result: (nil).
    ^self
! !

"winsys.ic method 0x2000242c; bytecode file offset 0x7e608"
!CwExtendedPrompter methodsFor: 'recovered'!
clearFocus
    (self) focusWidget: (nil).
    ^self
! !

"winsys.ic method 0x20002804; bytecode file offset 0x7ea1c"
!CwExtendedPrompter methodsFor: 'recovered'!
openPrompter
    | recoveredValue0 |
    recoveredValue0 := (self) bulletinBoardWidget.
    (recoveredValue0) manageChild.
    ^self
! !

"winsys.ic method 0x20002a08; bytecode file offset 0x7ed00"
!CwExtendedPrompter methodsFor: 'recovered'!
shell
    | recoveredValue0 |
    recoveredValue0 := shell.
    ^recoveredValue0
! !

"winsys.ic method 0x20002ba8; bytecode file offset 0x7efc0"
!CwExtendedPrompter methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"winsys.ic method 0x20002fd0; bytecode file offset 0x7f220"
!CwExtendedPrompter methodsFor: 'recovered'!
dialogStyle
    | recoveredValue0 |
    recoveredValue0 := dialogStyle.
    ^recoveredValue0
! !

"winsys.ic method 0x20003160; bytecode file offset 0x7f418"
!CwExtendedPrompter methodsFor: 'recovered'!
hasShadowParent
    | recoveredValue0 |
    recoveredValue0 := hasShadowParent.
    ^recoveredValue0
! !

"winsys.ic method 0x200032c8; bytecode file offset 0x7f5b8"
!CwExtendedPrompter methodsFor: 'recovered'!
done
    | recoveredValue0 |
    recoveredValue0 := done.
    ^recoveredValue0
! !

"winsys.ic method 0x200034d0; bytecode file offset 0x7f720"
!CwExtendedPrompter methodsFor: 'recovered'!
result
    | recoveredValue0 |
    recoveredValue0 := result.
    ^recoveredValue0
! !

"winsys.ic method 0x20003740; bytecode file offset 0x7f9b8"
!CwExtendedPrompter methodsFor: 'recovered'!
bulletinBoardWidget
    | recoveredValue0 |
    recoveredValue0 := bulletinBoardWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20003850; bytecode file offset 0x7fac0"
!CwExtendedPrompter methodsFor: 'recovered'!
focusWidget
    | recoveredValue0 |
    recoveredValue0 := focusWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x200048b0; bytecode file offset 0x80a78"
!CwExtendedPrompter methodsFor: 'recovered'!
marginWidth
    ^15
! !

"winsys.ic method 0x200048b8; bytecode file offset 0x80a78"
!CwExtendedPrompter methodsFor: 'recovered'!
marginHeight
    ^15
! !

"winsys.ic method 0x20004de0; bytecode file offset 0x80fb0"
!CwExtendedPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) done: (true).
    ^self
! !

"winsys.ic method 0x20007284; bytecode file offset 0x8346c"
!CwExtendedPrompter methodsFor: 'recovered'!
shell: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shell := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000745c; bytecode file offset 0x836b4"
!CwExtendedPrompter methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007534; bytecode file offset 0x838d4"
!CwExtendedPrompter methodsFor: 'recovered'!
dialogStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dialogStyle := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007844; bytecode file offset 0x83a6c"
!CwExtendedPrompter methodsFor: 'recovered'!
hasShadowParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hasShadowParent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007978; bytecode file offset 0x83bb0"
!CwExtendedPrompter methodsFor: 'recovered'!
done: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    done := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007a48; bytecode file offset 0x83ce8"
!CwExtendedPrompter methodsFor: 'recovered'!
result: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    result := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007bf8; bytecode file offset 0x83df0"
!CwExtendedPrompter methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007ce0; bytecode file offset 0x83ed0"
!CwExtendedPrompter methodsFor: 'recovered'!
bulletinBoardWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bulletinBoardWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007d60; bytecode file offset 0x83f98"
!CwExtendedPrompter methodsFor: 'recovered'!
focusWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    focusWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20009bd4; bytecode file offset 0x85d9c"
!CwExtendedPrompter methodsFor: 'recovered'!
cancel: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) result: (nil).
    (self) done: (true).
    ^self
! !

"winsys.ic method 0x2000a240; bytecode file offset 0x86418"
!CwExtendedPrompter methodsFor: 'recovered'!
setFocus
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000b5f8; bytecode file offset 0x877c0"
!CwExtendedPrompter methodsFor: 'recovered'!
shellArgs
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) title.
    recoveredBlock4Value2 := (recoveredBlock4Value0) title: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    ^recoveredValue0
! !

"winsys.ic method 0x2000dbe8; bytecode file offset 0x89dac"
!CwExtendedPrompter methodsFor: 'recovered'!
title
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := title.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultTitle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := title.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2001133c; bytecode file offset 0x8d510"
!CwExtendedPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    (self) done: (false).
    (self) result: (nil).
    (self) hasShadowParent: (false).
    recoveredValue0 := XmDIALOGFULLAPPLICATIONMODAL.
    (self) dialogStyle: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20011370; bytecode file offset 0x8d54c"
!CwExtendedPrompter methodsFor: 'recovered'!
createShell
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) checkParent.
    recoveredValue0 := (self) parent.
    recoveredValue1 := (self) shellName.
    recoveredValue2 := (self) shellArgs.
    recoveredValue3 := (recoveredValue0) createDialogShell: (recoveredValue1) argBlock: (recoveredValue2).
    (self) shell: (recoveredValue3).
    (self) addShellCallbacks.
    ^self
! !

"winsys.ic method 0x20014398; bytecode file offset 0x90570"
!CwExtendedPrompter methodsFor: 'recovered'!
addShellCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNwindowCloseCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('cancel:clientData:callData:') clientData: (nil).
    recoveredValue3 := XmNfocusCallback.
    (recoveredValue0) addCallback: (recoveredValue3) receiver: (self) selector: ('focus:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x20015984; bytecode file offset 0x91b5c"
!CwExtendedPrompter methodsFor: 'recovered'!
bulletinBoardArgs
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredBlock4Value2 := (self) marginWidth.
    (recoveredBlock4Value1) marginWidth: (recoveredBlock4Value2).
    recoveredBlock4Value3 := recoveredBlock4Value0.
    recoveredBlock4Value4 := (self) marginHeight.
    (recoveredBlock4Value3) marginHeight: (recoveredBlock4Value4).
    recoveredBlock4Value5 := (self) dialogStyle.
    recoveredBlock4Value6 := (recoveredBlock4Value0) dialogStyle: (recoveredBlock4Value5).
    recoveredBlock4Value6
].
    ^recoveredValue0
! !

"winsys.ic method 0x20017324; bytecode file offset 0x934fc"
!CwExtendedPrompter methodsFor: 'recovered'!
focus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) setFocus.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) clearFocus.
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

"winsys.ic method 0x2001acbc; bytecode file offset 0x96e94"
!CwExtendedPrompter methodsFor: 'recovered'!
setItems: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := (recoveredBlock4Value0) items: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredValue1 := ExError.
    recoveredValue2 := NlsCatESTa.
    recoveredValue3 := (recoveredValue2) indexedMsg: (4).
    recoveredValue4 := NlsCatESTa.
    recoveredValue5 := (recoveredValue4) indexedMsg: (5).
    recoveredValue6 := (recoveredValue5) addLineDelimiters.
    recoveredValue7 := (self) do: (recoveredValue0) trapException: (recoveredValue1) identifier: (recoveredValue3) errorMessage: (recoveredValue6).
    ^recoveredValue7
! !

"winsys.ic method 0x20020090; bytecode file offset 0x9c270"
!CwExtendedPrompter methodsFor: 'recovered'!
destroyPrompter
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasShadowParent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) destroyWidget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) destroyWidget.
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

"winsys.ic method 0x200271b4; bytecode file offset 0xa3398"
!CwExtendedPrompter methodsFor: 'recovered'!
do: recoveredArg1 trapException: recoveredArg2 identifier: recoveredArg3 errorMessage: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) value.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) argument.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg3.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) = (recoveredBlock18Stack2).
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 34] ifFalse: [recoveredBlock18PC := 54].
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := System.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) startUpClass.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            (recoveredBlock18Stack1) cleanUpBeforeWalkback.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack1 := System.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg4.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            (recoveredBlock18Stack1) errorMessage: (recoveredBlock18Stack2).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := nil.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) exitWith: (recoveredBlock18Stack2).
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) handlesByDefault.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002b030; bytecode file offset 0xa7234"
!CwExtendedPrompter methodsFor: 'recovered'!
prompt
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWindow.
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
            (recoveredStack0) openPrompter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) enable.
            recoveredPC := 18.
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
            (recoveredStack0) updateWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAndDispatch.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) sleep.
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
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) done.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) setDestroyedResult.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) destroyPrompter.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200308f4; bytecode file offset 0xacb08"
!CwExtendedPrompter methodsFor: 'recovered'!
checkParent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := CwWMShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusShell.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) hasShadowParent: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CgDisplay.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultScreen.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) shellName.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := '_parent'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 recoveredBlock73Value6 recoveredBlock73Value7 |
    recoveredBlock73Value0 := recoveredBlock73Arg1.
    recoveredBlock73Value1 := recoveredBlock73Value0.
    (recoveredBlock73Value1) width: (1).
    recoveredBlock73Value2 := recoveredBlock73Value0.
    (recoveredBlock73Value2) height: (1).
    recoveredBlock73Value3 := recoveredBlock73Value0.
    recoveredBlock73Value4 := recoveredLocal2.
    (recoveredBlock73Value3) x: (recoveredBlock73Value4).
    recoveredBlock73Value5 := recoveredBlock73Value0.
    recoveredBlock73Value6 := recoveredLocal1.
    (recoveredBlock73Value5) y: (recoveredBlock73Value6).
    recoveredBlock73Value7 := (recoveredBlock73Value0) mappedWhenManaged: (false).
    recoveredBlock73Value7
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizeWidget.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

