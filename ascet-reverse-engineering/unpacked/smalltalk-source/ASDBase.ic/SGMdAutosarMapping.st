"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200279c8; bytecode file offset 0x9242d4"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlTargetMissing
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toVarDeclList.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200287a4; bytecode file offset 0x934580"
!SGMdAutosarMapping methodsFor: 'recovered'!
toReceiverVarDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toVarDeclList.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028d44; bytecode file offset 0x934580"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fromVarDecl.
    recoveredValue1 := (recoveredValue0) mdlClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200292e4; bytecode file offset 0x934580"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlRecordMapping
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlDestClass.
    recoveredValue1 := (recoveredValue0) isMdlRecordType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ce64; bytecode file offset 0x934580"
!SGMdAutosarMapping methodsFor: 'recovered'!
toVarDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toVarDeclList.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e3b4; bytecode file offset 0x934580"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toVarDecl.
    recoveredValue1 := (recoveredValue0) mdlName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051448; bytecode file offset 0x94f0e0"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlDestClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toVarDeclList.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) mdlClass.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054bac; bytecode file offset 0x952a9c"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAutosarMapping: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005f054; bytecode file offset 0x95c4f4"
!SGMdAutosarMapping methodsFor: 'recovered'!
errLabelToVarDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toVarDecl.
    recoveredValue1 := (recoveredValue0) errLabelKind.
    recoveredValue2 := (self) errLabelToVarDecl: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006dc68; bytecode file offset 0x96a9dc"
!SGMdAutosarMapping methodsFor: 'recovered'!
toVarDeclList
    | recoveredValue0 |
    recoveredValue0 := toVarDeclList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e1a4; bytecode file offset 0x96af48"
!SGMdAutosarMapping methodsFor: 'recovered'!
messageUsage
    | recoveredValue0 |
    recoveredValue0 := messageUsage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077e9c; bytecode file offset 0x9757c8"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlAutosarMapping
    ^true
! !

"ASDBase.ic method 0x200b4478; bytecode file offset 0x9b0db4"
!SGMdAutosarMapping methodsFor: 'recovered'!
updateMdlClassSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fromVarDecl.
    recoveredValue1 := (self) toVarDecl.
    recoveredValue2 := (recoveredValue1) mdlClass.
    (recoveredValue0) mdlClass: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c47b0; bytecode file offset 0x9c11bc"
!SGMdAutosarMapping methodsFor: 'recovered'!
toVarDeclList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toVarDeclList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4bbc; bytecode file offset 0x9c16b0"
!SGMdAutosarMapping methodsFor: 'recovered'!
messageUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messageUsage := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8a54; bytecode file offset 0x9c5380"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlSemErrInvalidMapping: recoveredArg1 supported: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) mdlSemErrInvalidMapping: (recoveredValue0) supported: (recoveredValue1) withMultiSource: ('').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f2704; bytecode file offset 0x9eeff0"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlTargetMissing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMarkedInvalid.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f27bc; bytecode file offset 0x9ef148"
!SGMdAutosarMapping methodsFor: 'recovered'!
hasMultipleWriteMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondaryMapping.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondaryMapping.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlValid.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107c80; bytecode file offset 0xa0458c"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlRequirePort
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlTargetMissing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRequirePort.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107cb0; bytecode file offset 0xa0458c"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlProvidePort
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlTargetMissing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlProvidePort.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107cc8; bytecode file offset 0xa0458c"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdInternalMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlTargetMissing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlARInterrunnableVarDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117ca8; bytecode file offset 0xa1456c"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdExternalMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlTargetMissing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlARInterrunnableVarDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012e858; bytecode file offset 0xa2b124"
!SGMdAutosarMapping methodsFor: 'recovered'!
errLabelFromVarDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) fromVarDecl.
    recoveredValue1 := (recoveredValue0) errLabelKind.
    recoveredValue2 := (recoveredValue1) , (' "').
    recoveredValue3 := (self) fromVarDecl.
    recoveredValue4 := (recoveredValue3) errLabel.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('"').
    ^recoveredValue6
! !

"ASDBase.ic method 0x20166a8c; bytecode file offset 0xa63360"
!SGMdAutosarMapping methodsFor: 'recovered'!
printMappingOn: recoveredArg1
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
            super printMappingOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) printMappingOn: (recoveredStack1).
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

"ASDBase.ic method 0x20180cac; bytecode file offset 0xa7d56c"
!SGMdAutosarMapping methodsFor: 'recovered'!
hasOneOrMoreValidMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlValid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondaryMapping.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondaryMapping.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasOneOrMoreValidMappings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20181848; bytecode file offset 0xa7e110"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlValidAutosarPrimaryMapping
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageUsage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFlowDirectionSendReceive.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdInternalMapping.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdExternalMapping.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ce454; bytecode file offset 0xacad18"
!SGMdAutosarMapping methodsFor: 'recovered'!
printTargetOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toVarDeclList.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    (recoveredBlock5Value0) cr.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) printOn: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d7090; bytecode file offset 0xad395c"
!SGMdAutosarMapping methodsFor: 'recovered'!
tempVarErrLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMultipleWriteMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ' mapped to '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabelToVarDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023287c; bytecode file offset 0xb2f154"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlSemErrMissingPrimaryMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) markInvalid.
    recoveredValue0 := (self) fromVarDecl.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) fromVarDecl.
    recoveredValue4 := (recoveredValue3) errLabel.
    recoveredValue5 := (self) fromVarDecl.
    recoveredValue6 := (recoveredValue5) scope.
    recoveredValue7 := (recoveredValue6) errLabel.
    recoveredValue8 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue7) with: ('IRV element').
    recoveredValue9 := (self) source.
    recoveredValue10 := (recoveredValue0) mdlSemErrNo: (272) withArgs: (recoveredValue8) source: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20248a58; bytecode file offset 0xb45328"
!SGMdAutosarMapping methodsFor: 'recovered'!
isMdlValidAutosarSecondaryOnlyMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageUsage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFlowDirectionSendReceive.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageUsage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPureFlowDirectionSendReceive.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromVarDecl.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSendMessage.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlReceiveMessage.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d5568; bytecode file offset 0xbd1e2c"
!SGMdAutosarMapping methodsFor: 'recovered'!
isCompatibleMapping: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toVarDeclList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) toVarDeclList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) toVarDeclList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 46]] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034e240; bytecode file offset 0xc4ab10"
!SGMdAutosarMapping methodsFor: 'recovered'!
errLabelToVarDecl: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , (' "').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) toVarDeclList.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) errLabel.
    recoveredBlock14Value3 := (recoveredBlock14Value0) , (recoveredBlock14Value2).
    recoveredBlock14Value4 := recoveredBlock14Value3.
    recoveredLocal1 := recoveredBlock14Value4.
    recoveredBlock14Value3
].
    recoveredValue4 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := (recoveredBlock31Value0) , ('.').
    recoveredBlock31Value2 := recoveredBlock31Value1.
    recoveredLocal1 := recoveredBlock31Value2.
    recoveredBlock31Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) , ('"').
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20379a94; bytecode file offset 0xc76378"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlSemErrInvalidMapping: recoveredArg1 supported: recoveredArg2 withMultiSource: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromVarDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) fromVarDecl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWithArguments: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMultiSource: (recoveredStack1) labels: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) markInvalid.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 271.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) fromVarDecl.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) fromVarDecl.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) scope.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlSemErrNo: (recoveredStack1) withArgs: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d8a10; bytecode file offset 0xcd5300"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlSemErrMultipleMappings: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) with: (self) with: (recoveredValue5).
    recoveredValue7 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 |
    recoveredBlock24Value0 := recoveredLocal2.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) fromVarDecl.
    recoveredBlock24Value3 := (recoveredBlock24Value2) errLabel.
    recoveredBlock24Value4 := (recoveredBlock24Value3) , (' is mapped to ').
    recoveredBlock24Value5 := recoveredBlock24Arg1.
    recoveredBlock24Value6 := (recoveredBlock24Value5) errLabelToVarDecl.
    recoveredBlock24Value7 := (recoveredBlock24Value4) , (recoveredBlock24Value6).
    (recoveredBlock24Value0) add: (recoveredBlock24Value7).
    recoveredBlock24Value8 := recoveredLocal1.
    recoveredBlock24Value9 := recoveredBlock24Arg1.
    recoveredBlock24Value10 := (recoveredBlock24Value9) source.
    recoveredBlock24Value11 := (recoveredBlock24Value8) add: (recoveredBlock24Value10).
    recoveredBlock24Value11
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := (self) toVarDecl.
    recoveredValue9 := (recoveredValue8) errLabel.
    recoveredValue10 := (self) toVarDecl.
    recoveredValue11 := (recoveredValue10) source.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue11) createMultiSource: (recoveredValue12) labels: (recoveredValue13).
    recoveredValue15 := (self) mdlSemErrNo: (636) with: (recoveredValue9) source: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x2057b500; bytecode file offset 0xe77e24"
!SGMdAutosarMapping methodsFor: 'recovered'!
mdlSemAnaTypeMismatch: recoveredArg1 reason: recoveredArg2 warning: recoveredArg3 invalidMapping: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'map from '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelFromVarDecl.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := ', type: '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromVarDecl.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabelWithImpl.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromVarDecl.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCollection.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Local1 recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) isMdlTargetMissing.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 140] ifFalse: [recoveredBlock52PC := 66].
        ].
        recoveredBlock52Step = 66 ifTrue: [
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack1 := 'map to '.
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) errLabelToVarDecl.
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) , (recoveredBlock52Stack2).
            recoveredBlock52PC := 74.
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Stack2 := ', type: '.
            recoveredBlock52PC := 76.
        ].
        recoveredBlock52Step = 76 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) , (recoveredBlock52Stack2).
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 79.
        ].
        recoveredBlock52Step = 79 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) toVarDecl.
            recoveredBlock52PC := 81.
        ].
        recoveredBlock52Step = 81 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) mdlClass.
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) errLabelWithImpl.
            recoveredBlock52PC := 85.
        ].
        recoveredBlock52Step = 85 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) , (recoveredBlock52Stack2).
            recoveredBlock52PC := 87.
        ].
        recoveredBlock52Step = 87 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 88.
        ].
        recoveredBlock52Step = 88 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 89.
        ].
        recoveredBlock52Step = 89 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) mdlClass.
            recoveredBlock52PC := 91.
        ].
        recoveredBlock52Step = 91 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isCgLinearFixedPointType.
            recoveredBlock52PC := 93.
        ].
        recoveredBlock52Step = 93 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 96] ifFalse: [recoveredBlock52PC := 122].
        ].
        recoveredBlock52Step = 96 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 97.
        ].
        recoveredBlock52Step = 97 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) mdlDestClass.
            recoveredBlock52PC := 99.
        ].
        recoveredBlock52Step = 99 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isCgLinearFixedPointType.
            recoveredBlock52PC := 101.
        ].
        recoveredBlock52Step = 101 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 104] ifFalse: [recoveredBlock52PC := 122].
        ].
        recoveredBlock52Step = 104 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 105.
        ].
        recoveredBlock52Step = 105 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) mdlClass.
            recoveredBlock52PC := 107.
        ].
        recoveredBlock52Step = 107 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 108.
        ].
        recoveredBlock52Step = 108 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) mdlDestClass.
            recoveredBlock52PC := 110.
        ].
        recoveredBlock52Step = 110 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isLessPreciseThan: (recoveredBlock52Stack2).
            recoveredBlock52PC := 112.
        ].
        recoveredBlock52Step = 112 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 116] ifFalse: [recoveredBlock52PC := 122].
        ].
        recoveredBlock52Step = 116 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local1.
            recoveredBlock52PC := 117.
        ].
        recoveredBlock52Step = 117 ifTrue: [
            recoveredBlock52Stack2 := ', more precise than message type'.
            recoveredBlock52PC := 119.
        ].
        recoveredBlock52Step = 119 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) , (recoveredBlock52Stack2).
            recoveredBlock52PC := 121.
        ].
        recoveredBlock52Step = 121 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 122.
        ].
        recoveredBlock52Step = 122 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal5.
            recoveredBlock52PC := 125.
        ].
        recoveredBlock52Step = 125 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local1.
            recoveredBlock52PC := 126.
        ].
        recoveredBlock52Step = 126 ifTrue: [
            (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 128.
        ].
        recoveredBlock52Step = 128 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal4.
            recoveredBlock52PC := 131.
        ].
        recoveredBlock52Step = 131 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 132.
        ].
        recoveredBlock52Step = 132 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) toVarDecl.
            recoveredBlock52PC := 134.
        ].
        recoveredBlock52Step = 134 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) source.
            recoveredBlock52PC := 136.
        ].
        recoveredBlock52Step = 136 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 138.
        ].
        recoveredBlock52Step = 138 ifTrue: [
            recoveredBlock52Stack2 := nil.
            recoveredBlock52PC := 139.
        ].
        recoveredBlock52Step = 139 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack2.
            recoveredBlock52PC := 140.
        ].
        recoveredBlock52Step = 140 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabelWithImpl.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) toVarDecl.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabelWithImpl.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromVarDecl.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromVarDecl.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 635.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlWarningNo: (recoveredStack1) withArgs: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := 635.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlSemErrNo: (recoveredStack1) withArgs: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

