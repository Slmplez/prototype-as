"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200078bc; bytecode file offset 0x908be4"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
errLabelImplInfoComment
    | recoveredValue0 |
    recoveredValue0 := (self) port.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003af04; bytecode file offset 0x938608"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
createNoOpArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createWithArgs: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055770; bytecode file offset 0x952a9c"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractRTEMacroCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b7a0; bytecode file offset 0x96873c"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
runnableEntity
    | recoveredValue0 |
    recoveredValue0 := runnableEntity.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bf34; bytecode file offset 0x9692b0"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
port
    | recoveredValue0 |
    recoveredValue0 := portName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c784; bytecode file offset 0x9692b0"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
portName
    | recoveredValue0 |
    recoveredValue0 := portName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076bcc; bytecode file offset 0x9757c8"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
isIleRteMacroCall
    ^true
! !

"ASDBase.ic method 0x2008c17c; bytecode file offset 0x988b68"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
ileIRVCopyKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) portName.
    recoveredValue1 := ('irv_') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009ed58; bytecode file offset 0x99b6b8"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
expandImplInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) source.
    recoveredValue1 := (self) errLabelImplInfoComment.
    recoveredValue2 := (self) expandImplInfoSource: (recoveredValue0) assignToErrLabel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a872c; bytecode file offset 0x9a502c"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
runnableEntity: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    runnableEntity := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200a881c; bytecode file offset 0x9a50f8"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
port: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    portName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d580c; bytecode file offset 0x9d21a8"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) portName.
    recoveredValue2 := (recoveredValue1) hash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201415e8; bytecode file offset 0xa3df70"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
scope
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) runnableEntity.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) scope.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20179ff0; bytecode file offset 0xa768dc"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 args: recoveredArg3 goalInterval: recoveredArg4 runnableEntity: recoveredArg5 portName: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg5.
    runnableEntity := recoveredValue0.
    recoveredValue1 := recoveredArg6.
    portName := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    super initializeSource: (recoveredValue2) type: (recoveredValue3) args: (recoveredValue4) goalInterval: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20201934; bytecode file offset 0xafe208"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) goalInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) runnableEntity.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) portName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) goalInterval: (recoveredStack4) runnableEntity: (recoveredStack5) portName: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021b454; bytecode file offset 0xb17d50"
!SGIlAbstractRTEMacroCall methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) goalInterval.
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
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) runnableEntity.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := (recoveredStack6) portName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) goalInterval: (recoveredStack4) runnableEntity: (recoveredStack5) portName: (recoveredStack6).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

