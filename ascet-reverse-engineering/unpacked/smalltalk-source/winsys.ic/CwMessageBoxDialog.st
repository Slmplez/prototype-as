"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000068; bytecode file offset 0x7c350"
!CwMessageBoxDialog methodsFor: 'recovered'!
configureMessageBoxChildren
    ^self
! !

"winsys.ic method 0x20000328; bytecode file offset 0x7c6d8"
!CwMessageBoxDialog methodsFor: 'recovered'!
messageBoxParent
    | recoveredValue0 |
    recoveredValue0 := (self) shell.
    ^recoveredValue0
! !

"winsys.ic method 0x200003b8; bytecode file offset 0x7c6d8"
!CwMessageBoxDialog methodsFor: 'recovered'!
initialMessageString
    | recoveredValue0 |
    recoveredValue0 := (self) messageString.
    ^recoveredValue0
! !

"winsys.ic method 0x200036a0; bytecode file offset 0x7f878"
!CwMessageBoxDialog methodsFor: 'recovered'!
dialogType
    | recoveredValue0 |
    recoveredValue0 := dialogType.
    ^recoveredValue0
! !

"winsys.ic method 0x200037f0; bytecode file offset 0x7f9b8"
!CwMessageBoxDialog methodsFor: 'recovered'!
messageString
    | recoveredValue0 |
    recoveredValue0 := messageString.
    ^recoveredValue0
! !

"winsys.ic method 0x20005d30; bytecode file offset 0x81f28"
!CwMessageBoxDialog methodsFor: 'recovered'!
createChildren
    (self) createMessageBox.
    (self) configureMessageBoxChildren.
    ^self
! !

"winsys.ic method 0x200093c0; bytecode file offset 0x85590"
!CwMessageBoxDialog methodsFor: 'recovered'!
createMessageBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) messageBoxParent.
    recoveredValue1 := (self) messageBoxCreateArgBlock.
    (recoveredValue0) createMessageBox: ('messageBox') argBlock: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2000a55c; bytecode file offset 0x86724"
!CwMessageBoxDialog methodsFor: 'recovered'!
dialogType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    dialogType := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) updateMessageBox: ('dialogType:') value: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2000a58c; bytecode file offset 0x86754"
!CwMessageBoxDialog methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    messageString := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) updateMessageBox: ('messageString:') value: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2000b6d8; bytecode file offset 0x878b0"
!CwMessageBoxDialog methodsFor: 'recovered'!
messageBox
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageBoxParent.
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
            recoveredStack0 := (recoveredStack0) messageBoxParent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) childAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000ea70; bytecode file offset 0x8ac48"
!CwMessageBoxDialog methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := XmDIALOGINFORMATION.
    (self) dialogType: (recoveredValue0).
    (self) messageString: ('').
    ^self
! !

"winsys.ic method 0x20010104; bytecode file offset 0x8c2d4"
!CwMessageBoxDialog methodsFor: 'recovered'!
messageBoxCreateArgBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredBlock4Value2 := (self) dialogType.
    (recoveredBlock4Value1) dialogType: (recoveredBlock4Value2).
    recoveredBlock4Value3 := (self) messageString.
    recoveredBlock4Value4 := (recoveredBlock4Value0) messageString: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    ^recoveredValue0
! !

"winsys.ic method 0x2001e9e8; bytecode file offset 0x9abc0"
!CwMessageBoxDialog methodsFor: 'recovered'!
updateMessageBox: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageBox.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := (self) messageBox.
    recoveredBlock20Value1 := recoveredBlock20Value0.
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := recoveredArg2.
    (recoveredBlock20Value1) perform: (recoveredBlock20Value2) with: (recoveredBlock20Value3).
    recoveredBlock20Value4 := (recoveredBlock20Value0) updateWidget.
    recoveredBlock20Value4
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) critical.
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

