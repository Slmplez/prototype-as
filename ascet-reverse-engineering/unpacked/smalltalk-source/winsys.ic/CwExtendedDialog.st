"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200003ac; bytecode file offset 0x7c6d8"
!CwExtendedDialog methodsFor: 'recovered'!
shellName
    | recoveredValue0 |
    recoveredValue0 := (self) title.
    ^recoveredValue0
! !

"winsys.ic method 0x200004fc; bytecode file offset 0x7c6d8"
!CwExtendedDialog methodsFor: 'recovered'!
createChildren
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20002b30; bytecode file offset 0x7ed00"
!CwExtendedDialog methodsFor: 'recovered'!
shell
    | recoveredValue0 |
    recoveredValue0 := shell.
    ^recoveredValue0
! !

"winsys.ic method 0x20002da8; bytecode file offset 0x7efc0"
!CwExtendedDialog methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"winsys.ic method 0x20002fa8; bytecode file offset 0x7f220"
!CwExtendedDialog methodsFor: 'recovered'!
mwmInputMode
    | recoveredValue0 |
    recoveredValue0 := mwmInputMode.
    ^recoveredValue0
! !

"winsys.ic method 0x200031c8; bytecode file offset 0x7f418"
!CwExtendedDialog methodsFor: 'recovered'!
mwmDecorations
    | recoveredValue0 |
    recoveredValue0 := mwmDecorations.
    ^recoveredValue0
! !

"winsys.ic method 0x200032e0; bytecode file offset 0x7f5b8"
!CwExtendedDialog methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := shellTitle.
    ^recoveredValue0
! !

"winsys.ic method 0x20005d50; bytecode file offset 0x81f28"
!CwExtendedDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) hookUnmapCallback.
    (self) setMwmInputMode.
    ^self
! !

"winsys.ic method 0x20006364; bytecode file offset 0x82530"
!CwExtendedDialog methodsFor: 'recovered'!
setMwmInputMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) mwmInputMode.
    (recoveredValue0) mwmInputMode: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20007224; bytecode file offset 0x8346c"
!CwExtendedDialog methodsFor: 'recovered'!
shell: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shell := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200073bc; bytecode file offset 0x836b4"
!CwExtendedDialog methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000761c; bytecode file offset 0x838d4"
!CwExtendedDialog methodsFor: 'recovered'!
mwmInputMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mwmInputMode := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200077e4; bytecode file offset 0x83a6c"
!CwExtendedDialog methodsFor: 'recovered'!
mwmDecorations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mwmDecorations := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000b65c; bytecode file offset 0x8785c"
!CwExtendedDialog methodsFor: 'recovered'!
hookUnmapCallback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bulletinBoard.
    recoveredValue1 := XmNunmapCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('unmap:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2000baf8; bytecode file offset 0x87cc4"
!CwExtendedDialog methodsFor: 'recovered'!
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

"winsys.ic method 0x2000cd64; bytecode file offset 0x88f38"
!CwExtendedDialog methodsFor: 'recovered'!
open
    | recoveredValue0 |
    (self) createShell.
    (self) createChildren.
    (self) initializeAfterCreate.
    recoveredValue0 := (self) bulletinBoard.
    (recoveredValue0) manageChild.
    ^self
! !

"winsys.ic method 0x2000d324; bytecode file offset 0x894ec"
!CwExtendedDialog methodsFor: 'recovered'!
bulletinBoard
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
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
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) childAt: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000d3a4; bytecode file offset 0x89570"
!CwExtendedDialog methodsFor: 'recovered'!
close
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
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
            (recoveredStack0) destroyWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000dfe4; bytecode file offset 0x8a1ac"
!CwExtendedDialog methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            shellTitle := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200136a4; bytecode file offset 0x8f87c"
!CwExtendedDialog methodsFor: 'recovered'!
createShell
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (self) shellName.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (self) mwmDecorations.
    recoveredBlock8Value2 := (recoveredBlock8Value0) mwmDecorations: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue0) createDialogShell: (recoveredValue1) argBlock: (recoveredValue2).
    (self) shell: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x200187e8; bytecode file offset 0x949d4"
!CwExtendedDialog methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (self) mwmInputMode: (recoveredValue0).
    recoveredValue1 := MWMDECORMENU.
    recoveredValue2 := MWMDECORBORDER.
    recoveredValue3 := (recoveredValue1) | (recoveredValue2).
    recoveredValue4 := MWMDECORTITLE.
    recoveredValue5 := (recoveredValue3) | (recoveredValue4).
    (self) mwmDecorations: (recoveredValue5).
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) startUpClass.
    recoveredValue8 := (recoveredValue7) applicationName.
    (self) title: (recoveredValue8).
    ^self
! !

