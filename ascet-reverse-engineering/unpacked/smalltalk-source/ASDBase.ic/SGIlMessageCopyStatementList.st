"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002e904; bytecode file offset 0x934580"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
isReceiveDirection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) direction.
    recoveredValue1 := (recoveredValue0) isReceiveDirection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200367c4; bytecode file offset 0x934580"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
isSendDirection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) direction.
    recoveredValue1 := (recoveredValue0) isSendDirection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056028; bytecode file offset 0x952a9c"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) messageCopyStatementList: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b378; bytecode file offset 0x96873c"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
scopeLabel
    | recoveredValue0 |
    recoveredValue0 := scopeLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a8750; bytecode file offset 0x9a502c"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
scopeLabel: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    scopeLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200b351c; bytecode file offset 0x9afe54"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
setSendDirection
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := (self) direction.
    (recoveredValue0) setSendDirection.
    ^self
! !

"ASDBase.ic method 0x200b3594; bytecode file offset 0x9afe54"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
setReceiveDirection
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := (self) direction.
    (recoveredValue0) setReceiveDirection.
    ^self
! !

"ASDBase.ic method 0x20129b2c; bytecode file offset 0xa26468"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
direction
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := direction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgMsgFlowDirection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            direction := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := direction.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20158658; bytecode file offset 0xa54f34"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
initializeSource: recoveredArg1 comments: recoveredArg2 stmntList: recoveredArg3 direction: recoveredArg4 scopeLabel: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg4.
    direction := recoveredValue0.
    recoveredValue1 := recoveredArg5.
    scopeLabel := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super initializeSource: (recoveredValue2) comments: (recoveredValue3) stmntList: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202039a8; bytecode file offset 0xb00278"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
createWithChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (self) scopeLabel.
    recoveredBlock7Value3 := (self) direction.
    recoveredBlock7Value4 := (recoveredBlock7Value3) copy.
    recoveredBlock7Value5 := (recoveredBlock7Value0) messageCopyStatementList: (recoveredBlock7Value1) scopeLabel: (recoveredBlock7Value2) direction: (recoveredBlock7Value4).
    recoveredBlock7Value5
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020d840; bytecode file offset 0xb0a114"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
createNoOpStmntList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmntList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) direction.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) copy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) scopeLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) stmntList: (recoveredStack3) direction: (recoveredStack4) scopeLabel: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020d888; bytecode file offset 0xb0a15c"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
createNoOpComments: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) stmntList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) direction.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) copy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) scopeLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) stmntList: (recoveredStack3) direction: (recoveredStack4) scopeLabel: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020d8d0; bytecode file offset 0xb0a1a4"
!SGIlMessageCopyStatementList methodsFor: 'recovered'!
createNoOpSource: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) stmntList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) direction.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) copy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) scopeLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2) stmntList: (recoveredStack3) direction: (recoveredStack4) scopeLabel: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

