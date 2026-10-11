"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200023cc; bytecode file offset 0x7e594"
!CwPrinterPrompter methodsFor: 'recovered'!
form
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := shell.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := (recoveredValue1) first.
    ^recoveredValue2
! !

"winsys.ic method 0x200031b8; bytecode file offset 0x7f418"
!CwPrinterPrompter methodsFor: 'recovered'!
displayName
    | recoveredValue0 |
    recoveredValue0 := displayName.
    ^recoveredValue0
! !

"winsys.ic method 0x20003370; bytecode file offset 0x7f5b8"
!CwPrinterPrompter methodsFor: 'recovered'!
jobAttributes
    | recoveredValue0 |
    recoveredValue0 := jobAttributes.
    ^recoveredValue0
! !

"winsys.ic method 0x20003560; bytecode file offset 0x7f720"
!CwPrinterPrompter methodsFor: 'recovered'!
shell
    | recoveredValue0 |
    recoveredValue0 := shell.
    ^recoveredValue0
! !

"winsys.ic method 0x20003670; bytecode file offset 0x7f878"
!CwPrinterPrompter methodsFor: 'recovered'!
selectedPosition
    | recoveredValue0 |
    recoveredValue0 := selectedPosition.
    ^recoveredValue0
! !

"winsys.ic method 0x20003830; bytecode file offset 0x7fac0"
!CwPrinterPrompter methodsFor: 'recovered'!
displayInfo
    | recoveredValue0 |
    recoveredValue0 := displayInfo.
    ^recoveredValue0
! !

"winsys.ic method 0x20004e1c; bytecode file offset 0x80ff4"
!CwPrinterPrompter methodsFor: 'recovered'!
cancel: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) form.
    (recoveredValue0) unmanageChild.
    ^self
! !

"winsys.ic method 0x20007774; bytecode file offset 0x83a6c"
!CwPrinterPrompter methodsFor: 'recovered'!
displayName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007950; bytecode file offset 0x83bb0"
!CwPrinterPrompter methodsFor: 'recovered'!
jobAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    jobAttributes := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007a18; bytecode file offset 0x83ce8"
!CwPrinterPrompter methodsFor: 'recovered'!
shell: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shell := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007b90; bytecode file offset 0x83df0"
!CwPrinterPrompter methodsFor: 'recovered'!
selectedPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedPosition := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007d40; bytecode file offset 0x83f98"
!CwPrinterPrompter methodsFor: 'recovered'!
displayInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayInfo := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000b05c; bytecode file offset 0x87228"
!CwPrinterPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    (self) updateAttributes.
    resultOK := true.
    recoveredValue0 := (self) form.
    (recoveredValue0) unmanageChild.
    ^self
! !

"winsys.ic method 0x2000b674; bytecode file offset 0x8785c"
!CwPrinterPrompter methodsFor: 'recovered'!
addUnmapCallback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) form.
    recoveredValue1 := XmNunmapCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('unmap:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2000bae4; bytecode file offset 0x87cc4"
!CwPrinterPrompter methodsFor: 'recovered'!
unmap: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) destroyWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000d784; bytecode file offset 0x89950"
!CwPrinterPrompter methodsFor: 'recovered'!
setup: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    (recoveredValue0) sensitive: (false).
    (self) promptForAttributes.
    recoveredValue1 := (self) shell.
    (recoveredValue1) sensitive: (true).
    ^self
! !

"winsys.ic method 0x2000e248; bytecode file offset 0x8a414"
!CwPrinterPrompter methodsFor: 'recovered'!
promptForAttributes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgPrintJobAttributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultForPrompter: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) jobAttributes: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20010340; bytecode file offset 0x8c518"
!CwPrinterPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := NlsCatCPsWin.
    recoveredValue1 := (recoveredValue0) residentMsg: ('MxCPsWin3').
    cwTitle := recoveredValue1.
    (self) initializeDisplayInfo.
    ^self
! !

"winsys.ic method 0x20010f04; bytecode file offset 0x8d0d0"
!CwPrinterPrompter methodsFor: 'recovered'!
select: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) selectedPosition: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := setupButton.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := setupButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20016114; bytecode file offset 0x922f8"
!CwPrinterPrompter methodsFor: 'recovered'!
printerNameList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28008d04Arg1 | 
    | block28008d04Value0 block28008d04Value1 block28008d04Value2 block28008d04Value3 block28008d04Value4 block28008d04Value5 block28008d04Value6 |
    block28008d04Value0 := NlsCatCPsWin.
    block28008d04Value1 := (block28008d04Value0) residentMsg: ('MxCPsWin1').
    block28008d04Value2 := block28008d04Arg1.
    block28008d04Value3 := (block28008d04Value2) deviceName.
    block28008d04Value4 := block28008d04Arg1.
    block28008d04Value5 := (block28008d04Value4) outputMedium.
    block28008d04Value6 := (block28008d04Value1) bindWith: (block28008d04Value3) with: (block28008d04Value5).
    block28008d04Value6
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20021c28; bytecode file offset 0x9de0c"
!CwPrinterPrompter methodsFor: 'recovered'!
setModalState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := XmSYSTEMMODAL.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setSysModal.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := XmFULLAPPLICATIONMODAL.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) setAppModal.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := XmPRIMARYAPPLICATIONMODAL.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
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
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) setPrimaryModal.
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

"winsys.ic method 0x20024fe0; bytecode file offset 0xa11c0"
!CwPrinterPrompter methodsFor: 'recovered'!
initializeDisplayInfo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CgWinPrinterServer.
    recoveredValue1 := (recoveredValue0) allPrinterScreenInfos.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) new: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredLocal1 := 0.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := recoveredLocal3.
    recoveredBlock29Value1 := recoveredLocal1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) + (1).
    recoveredBlock29Value3 := recoveredBlock29Value2.
    recoveredLocal1 := recoveredBlock29Value3.
    recoveredBlock29Value4 := recoveredBlock29Arg1.
    recoveredBlock29Value5 := (recoveredBlock29Value0) at: (recoveredBlock29Value2) put: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal3.
    (self) displayInfo: (recoveredValue8).
    ^self
! !

"winsys.ic method 0x20026c0c; bytecode file offset 0xa2e00"
!CwPrinterPrompter methodsFor: 'recovered'!
updateAttributes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedPosition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) jobAttributes.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentJobAttributes.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) jobAttributes: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) jobAttributes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) currentJobAttributes: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) concatenatedName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) displayName: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := CgWinPrinterServer.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayName.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) named: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20029584; bytecode file offset 0xa5784"
!CwPrinterPrompter methodsFor: 'recovered'!
prompt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            resultOK := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) validateDisplayName.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) createShell.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) createChildren.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addUnmapCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) setModalState.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAndDispatch.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) sleep.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := resultOK.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayName.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002aa78; bytecode file offset 0xa6c5c"
!CwPrinterPrompter methodsFor: 'recovered'!
validateDisplayName
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) concatenatedName.
    recoveredBlock16Value2 := recoveredLocal4.
    recoveredBlock16Value3 := (recoveredBlock16Value1) sameAs: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirst: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) concatenatedName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) selectedPosition: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) displayName: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20031140; bytecode file offset 0xad364"
!CwPrinterPrompter methodsFor: 'recovered'!
createShell
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'tempShell'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block28009310Arg1 | 
    | block28009310Value0 block28009310Value1 |
    block28009310Value0 := block28009310Arg1.
    block28009310Value1 := (block28009310Value0) mappedWhenManaged: (false).
    block28009310Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) createApplicationShell: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) realizeWidget.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'PrompterDialogShell'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 recoveredBlock56Value6 recoveredBlock56Value7 recoveredBlock56Value8 |
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    recoveredBlock56Value1 := recoveredBlock56Value0.
    recoveredBlock56Value2 := (self) title.
    (recoveredBlock56Value1) title: (recoveredBlock56Value2).
    recoveredBlock56Value3 := MWMDECORBORDER.
    recoveredBlock56Value4 := MWMDECORTITLE.
    recoveredBlock56Value5 := (recoveredBlock56Value3) | (recoveredBlock56Value4).
    recoveredBlock56Value6 := MWMDECORMENU.
    recoveredBlock56Value7 := (recoveredBlock56Value5) | (recoveredBlock56Value6).
    recoveredBlock56Value8 := (recoveredBlock56Value0) mwmDecorations: (recoveredBlock56Value7).
    recoveredBlock56Value8
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) shell: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [:recoveredBlock97Arg1 :recoveredBlock97Arg2 :recoveredBlock97Arg3 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 |
    recoveredBlock97Value0 := recoveredLocal1.
    recoveredBlock97Value1 := (recoveredBlock97Value0) destroyWidget.
    recoveredBlock97Value1
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 'value:value:value:'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20047260; bytecode file offset 0xc352c"
!CwPrinterPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'form'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280096dcArg1 | 
    | block280096dcValue0 block280096dcValue1 block280096dcValue2 block280096dcValue3 block280096dcValue4 |
    block280096dcValue0 := block280096dcArg1.
    block280096dcValue1 := block280096dcValue0.
    (block280096dcValue1) autoUnmanage: (false).
    block280096dcValue2 := block280096dcValue0.
    (block280096dcValue2) marginWidth: (10).
    block280096dcValue3 := block280096dcValue0.
    (block280096dcValue3) marginHeight: (10).
    block280096dcValue4 := (block280096dcValue0) verticalSpacing: (5).
    block280096dcValue4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'PrintersLabel'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block28009700Arg1 | 
    | block28009700Value0 block28009700Value1 block28009700Value2 block28009700Value3 block28009700Value4 |
    block28009700Value0 := block28009700Arg1.
    block28009700Value1 := block28009700Value0.
    block28009700Value2 := MxCP1.
    (block28009700Value1) labelString: (block28009700Value2).
    block28009700Value3 := XmALIGNMENTBEGINNING.
    block28009700Value4 := (block28009700Value0) alignment: (block28009700Value3).
    block28009700Value4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'PrinterList'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) printerNameList.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) isEmpty.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            (recoveredBlock69Stack0) ifTrue: [recoveredBlock69PC := 84] ifFalse: [recoveredBlock69PC := 90].
        ].
        recoveredBlock69Step = 84 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 85.
        ].
        recoveredBlock69Step = 85 ifTrue: [
            recoveredBlock69Stack1 := 200.
            recoveredBlock69PC := 88.
        ].
        recoveredBlock69Step = 88 ifTrue: [
            (recoveredBlock69Stack0) width: (recoveredBlock69Stack1).
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Stack0.
            recoveredBlock69PC := 92.
        ].
        recoveredBlock69Step = 92 ifTrue: [
            recoveredBlock69Stack2 := XmSINGLESELECT.
            recoveredBlock69PC := 94.
        ].
        recoveredBlock69Step = 94 ifTrue: [
            (recoveredBlock69Stack1) selectionPolicy: (recoveredBlock69Stack2).
            recoveredBlock69Stack1 := recoveredBlock69Stack0.
            recoveredBlock69PC := 97.
        ].
        recoveredBlock69Step = 97 ifTrue: [
            recoveredBlock69Stack2 := 5.
            recoveredBlock69PC := 99.
        ].
        recoveredBlock69Step = 99 ifTrue: [
            (recoveredBlock69Stack1) visibleItemCount: (recoveredBlock69Stack2).
            recoveredBlock69PC := 101.
        ].
        recoveredBlock69Step = 101 ifTrue: [
            recoveredBlock69Stack1 := self.
            recoveredBlock69PC := 102.
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) printerNameList.
            recoveredBlock69PC := 104.
        ].
        recoveredBlock69Step = 104 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) items: (recoveredBlock69Stack1).
            recoveredBlock69PC := 106.
        ].
        recoveredBlock69Step = 106 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack0.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := 'ok:clientData:callData:'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := 'select:clientData:callData:'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedPosition.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 'buttons'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := [:block28009724Arg1 | 
    | block28009724Value0 block28009724Value1 block28009724Value2 block28009724Value3 block28009724Value4 block28009724Value5 block28009724Value6 block28009724Value7 block28009724Value8 |
    block28009724Value0 := block28009724Arg1.
    block28009724Value1 := block28009724Value0.
    (block28009724Value1) numColumns: (1).
    block28009724Value2 := block28009724Value0.
    (block28009724Value2) marginWidth: (10).
    block28009724Value3 := block28009724Value0.
    (block28009724Value3) marginHeight: (10).
    block28009724Value4 := block28009724Value0.
    (block28009724Value4) spacing: (10).
    block28009724Value5 := block28009724Value0.
    block28009724Value6 := XmPACKCOLUMN.
    (block28009724Value5) packing: (block28009724Value6).
    block28009724Value7 := XmVERTICAL.
    block28009724Value8 := (block28009724Value0) orientation: (block28009724Value7).
    block28009724Value8
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRowColumn: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := 'OK'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := [:block28009748Arg1 | 
    | block28009748Value0 block28009748Value1 block28009748Value2 |
    block28009748Value0 := block28009748Arg1.
    block28009748Value1 := MxCP2.
    block28009748Value2 := (block28009748Value0) labelString: (block28009748Value1).
    block28009748Value2
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := 'ok:clientData:callData:'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := 'Cancel'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := [:block2800976cArg1 | 
    | block2800976cValue0 block2800976cValue1 block2800976cValue2 |
    block2800976cValue0 := block2800976cArg1.
    block2800976cValue1 := MxCP3.
    block2800976cValue2 := (block2800976cValue0) labelString: (block2800976cValue1).
    block2800976cValue2
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := 'cancel:clientData:callData:'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := 'Setup'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := [:recoveredBlock270Arg1 | 
    | recoveredBlock270Stack0 recoveredBlock270Stack1 recoveredBlock270Stack2 recoveredBlock270Stack3 recoveredBlock270Stack4 recoveredBlock270Stack5 recoveredBlock270Stack6 recoveredBlock270PC recoveredBlock270Step recoveredBlock270Done recoveredBlock270Result |
    recoveredBlock270Stack0 := self.
    recoveredBlock270PC := 276.
    recoveredBlock270Done := false.
    [recoveredBlock270Done not] whileTrue: [
        recoveredBlock270Step := recoveredBlock270PC.
        recoveredBlock270Step = 276 ifTrue: [
            recoveredBlock270Stack1 := recoveredBlock270Arg1.
            recoveredBlock270PC := 277.
        ].
        recoveredBlock270Step = 277 ifTrue: [
            recoveredBlock270Stack2 := recoveredBlock270Stack1.
            recoveredBlock270PC := 278.
        ].
        recoveredBlock270Step = 278 ifTrue: [
            recoveredBlock270Stack3 := true.
            recoveredBlock270PC := 279.
        ].
        recoveredBlock270Step = 279 ifTrue: [
            recoveredBlock270Stack4 := recoveredLocal4.
            recoveredBlock270PC := 282.
        ].
        recoveredBlock270Step = 282 ifTrue: [
            recoveredBlock270Stack5 := 0.
            recoveredBlock270PC := 284.
        ].
        recoveredBlock270Step = 284 ifTrue: [
            recoveredBlock270Stack4 := (recoveredBlock270Stack4) > (recoveredBlock270Stack5).
            recoveredBlock270PC := 285.
        ].
        recoveredBlock270Step = 285 ifTrue: [
            (recoveredBlock270Stack4) ifTrue: [recoveredBlock270PC := 297] ifFalse: [recoveredBlock270PC := 288].
        ].
        recoveredBlock270Step = 288 ifTrue: [
            recoveredBlock270PC := 289.
        ].
        recoveredBlock270Step = 289 ifTrue: [
            recoveredBlock270Stack3 := self.
            recoveredBlock270PC := 290.
        ].
        recoveredBlock270Step = 290 ifTrue: [
            recoveredBlock270Stack3 := (recoveredBlock270Stack3) printerNameList.
            recoveredBlock270PC := 292.
        ].
        recoveredBlock270Step = 292 ifTrue: [
            recoveredBlock270Stack3 := (recoveredBlock270Stack3) size.
            recoveredBlock270PC := 294.
        ].
        recoveredBlock270Step = 294 ifTrue: [
            recoveredBlock270Stack4 := 0.
            recoveredBlock270PC := 296.
        ].
        recoveredBlock270Step = 296 ifTrue: [
            recoveredBlock270Stack3 := (recoveredBlock270Stack3) ~= (recoveredBlock270Stack4).
            recoveredBlock270PC := 297.
        ].
        recoveredBlock270Step = 297 ifTrue: [
            (recoveredBlock270Stack2) sensitive: (recoveredBlock270Stack3).
            recoveredBlock270PC := 299.
        ].
        recoveredBlock270Step = 299 ifTrue: [
            recoveredBlock270Stack2 := MxCP4.
            recoveredBlock270PC := 301.
        ].
        recoveredBlock270Step = 301 ifTrue: [
            recoveredBlock270Stack1 := (recoveredBlock270Stack1) labelString: (recoveredBlock270Stack2).
            recoveredBlock270PC := 303.
        ].
        recoveredBlock270Step = 303 ifTrue: [
            recoveredBlock270Result := recoveredBlock270Stack1.
            recoveredBlock270Done := true.
        ].
    ].
    recoveredBlock270Result
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            setupButton := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := setupButton.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := 'setup:clientData:callData:'.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := [:block28009790Arg1 | 
    | block28009790Value0 block28009790Value1 block28009790Value2 block28009790Value3 block28009790Value4 block28009790Value5 block28009790Value6 |
    block28009790Value0 := block28009790Arg1.
    block28009790Value1 := block28009790Value0.
    block28009790Value2 := XmATTACHFORM.
    (block28009790Value1) topAttachment: (block28009790Value2).
    block28009790Value3 := block28009790Value0.
    block28009790Value4 := XmATTACHFORM.
    (block28009790Value3) leftAttachment: (block28009790Value4).
    block28009790Value5 := XmATTACHFORM.
    block28009790Value6 := (block28009790Value0) rightAttachment: (block28009790Value5).
    block28009790Value6
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := [:recoveredBlock358Arg1 | 
    | recoveredBlock358Value0 recoveredBlock358Value1 recoveredBlock358Value2 recoveredBlock358Value3 recoveredBlock358Value4 recoveredBlock358Value5 recoveredBlock358Value6 recoveredBlock358Value7 recoveredBlock358Value8 recoveredBlock358Value9 recoveredBlock358Value10 recoveredBlock358Value11 recoveredBlock358Value12 |
    recoveredBlock358Value0 := recoveredBlock358Arg1.
    recoveredBlock358Value1 := recoveredBlock358Value0.
    recoveredBlock358Value2 := XmATTACHWIDGET.
    (recoveredBlock358Value1) topAttachment: (recoveredBlock358Value2).
    recoveredBlock358Value3 := recoveredBlock358Value0.
    recoveredBlock358Value4 := recoveredLocal7.
    (recoveredBlock358Value3) topWidget: (recoveredBlock358Value4).
    recoveredBlock358Value5 := recoveredBlock358Value0.
    recoveredBlock358Value6 := XmATTACHFORM.
    (recoveredBlock358Value5) bottomAttachment: (recoveredBlock358Value6).
    recoveredBlock358Value7 := recoveredBlock358Value0.
    recoveredBlock358Value8 := XmATTACHFORM.
    (recoveredBlock358Value7) leftAttachment: (recoveredBlock358Value8).
    recoveredBlock358Value9 := recoveredBlock358Value0.
    recoveredBlock358Value10 := XmATTACHWIDGET.
    (recoveredBlock358Value9) rightAttachment: (recoveredBlock358Value10).
    recoveredBlock358Value11 := recoveredLocal3.
    recoveredBlock358Value12 := (recoveredBlock358Value0) rightWidget: (recoveredBlock358Value11).
    recoveredBlock358Value12
].
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := [:recoveredBlock420Arg1 | 
    | recoveredBlock420Value0 recoveredBlock420Value1 recoveredBlock420Value2 recoveredBlock420Value3 recoveredBlock420Value4 recoveredBlock420Value5 recoveredBlock420Value6 recoveredBlock420Value7 recoveredBlock420Value8 |
    recoveredBlock420Value0 := recoveredBlock420Arg1.
    recoveredBlock420Value1 := recoveredBlock420Value0.
    recoveredBlock420Value2 := XmATTACHWIDGET.
    (recoveredBlock420Value1) topAttachment: (recoveredBlock420Value2).
    recoveredBlock420Value3 := recoveredBlock420Value0.
    recoveredBlock420Value4 := recoveredLocal7.
    (recoveredBlock420Value3) topWidget: (recoveredBlock420Value4).
    recoveredBlock420Value5 := recoveredBlock420Value0.
    recoveredBlock420Value6 := XmATTACHFORM.
    (recoveredBlock420Value5) rightAttachment: (recoveredBlock420Value6).
    recoveredBlock420Value7 := XmATTACHFORM.
    recoveredBlock420Value8 := (recoveredBlock420Value0) bottomAttachment: (recoveredBlock420Value7).
    recoveredBlock420Value8
].
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := setupButton.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

