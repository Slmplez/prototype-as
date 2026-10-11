"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x200000d8; bytecode file offset 0x5538"
!CwDropTransfer methodsFor: 'recovered'!
initializeResources
    delete := false.
    ^self
! !

"drgdrp.ic method 0x200002e0; bytecode file offset 0x5748"
!CwDropTransfer methodsFor: 'recovered'!
dropTransfers
    | recoveredValue0 |
    recoveredValue0 := cwDropTransfers.
    ^recoveredValue0
! !

"drgdrp.ic method 0x2000030c; bytecode file offset 0x576c"
!CwDropTransfer methodsFor: 'recovered'!
transferProc
    | recoveredValue0 |
    recoveredValue0 := xmNtransferProc.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000338; bytecode file offset 0x57a8"
!CwDropTransfer methodsFor: 'recovered'!
transferStatus
    | recoveredValue0 |
    recoveredValue0 := cwTransferStatus.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000374; bytecode file offset 0x57e4"
!CwDropTransfer methodsFor: 'recovered'!
currentClientData
    | recoveredValue0 |
    recoveredValue0 := currentClientData.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000398; bytecode file offset 0x5808"
!CwDropTransfer methodsFor: 'recovered'!
delete
    | recoveredValue0 |
    recoveredValue0 := delete.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000464; bytecode file offset 0x58c8"
!CwDropTransfer methodsFor: 'recovered'!
dropTransferAdd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) convertAndTransfer: (recoveredValue0).
    ^self
! !

"drgdrp.ic method 0x200005a0; bytecode file offset 0x5a04"
!CwDropTransfer methodsFor: 'recovered'!
transferProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNtransferProc := recoveredValue0.
    (self) updateTransferProc.
    ^self
! !

"drgdrp.ic method 0x20000668; bytecode file offset 0x5ad0"
!CwDropTransfer methodsFor: 'recovered'!
dropTransfers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwDropTransfers := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x200006c0; bytecode file offset 0x5b30"
!CwDropTransfer methodsFor: 'recovered'!
transferStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwTransferStatus := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x200006f4; bytecode file offset 0x5b6c"
!CwDropTransfer methodsFor: 'recovered'!
currentClientData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentClientData := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x2000087c; bytecode file offset 0x5d04"
!CwDropTransfer methodsFor: 'recovered'!
updateTransferProc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := cwWidget.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := OSxTransferProc.
    (recoveredValue1) replace: (recoveredValue2) with: ('callTransferProc:').
    ^self
! !

"drgdrp.ic method 0x20000c58; bytecode file offset 0x60cc"
!CwDropTransfer methodsFor: 'recovered'!
osCreateWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) transferStatus.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := XmTRANSFERFAILURE.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dropTransfers.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) convertAndTransfer: (recoveredBlock12Value0).
    recoveredBlock12Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"drgdrp.ic method 0x200010d8; bytecode file offset 0x6560"
!CwDropTransfer methodsFor: 'recovered'!
convertAndTransfer: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'DELETE'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            delete := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) transferClientData.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) currentClientData: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CwTargetTypeManager.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) idForTargetType: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := CwDropSite.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentPlatformObject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) transferTargetType: (recoveredStack1) platformObject: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"drgdrp.ic method 0x20001428; bytecode file offset 0x68c0"
!CwDropTransfer methodsFor: 'recovered'!
callTransferProc: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := CwTransferProcCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := XmCRTRANSFERMESSAGE.
    (recoveredValue3) reason: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := CwTargetTypeManager.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) target.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) platformObject.
    recoveredValue11 := (recoveredValue6) targetTypeForID: (recoveredValue8) platformSpecificObject: (recoveredValue10).
    recoveredValue12 := recoveredValue11.
    recoveredLocal1 := recoveredValue12.
    (recoveredValue5) target: (recoveredValue11).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := (self) currentClientData.
    (recoveredValue13) transferClientData: (recoveredValue14).
    recoveredValue15 := CwTargetTypeManager.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) platformObject.
    recoveredValue19 := (recoveredValue15) unconvert: (recoveredValue16) platformSpecificObject: (recoveredValue18).
    (recoveredValue1) value: (recoveredValue19).
    recoveredValue20 := xmNtransferProc.
    recoveredValue21 := recoveredLocal2.
    (self) callProc: (recoveredValue20) callData: (recoveredValue21).
    ^self
! !

