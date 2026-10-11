"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b3c0; bytecode file offset 0x908be4"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
autostartBehavior
    | recoveredValue0 |
    recoveredValue0 := (self) autostartBehaviorEnum.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020420; bytecode file offset 0x92209c"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
autostartBehaviorEnums
    ^#('LAST_ACTIVE_PAGE' 'ALWAYS_WP' 'ALWAYS_RP')
! !

"ASDBase.ic method 0x2004af38; bytecode file offset 0x947a60"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b2e8; bytecode file offset 0x947d20"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
mailbox
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b548; bytecode file offset 0x947ec0"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
autostartBehaviorEnum
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b73c; bytecode file offset 0x948384"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
workingPage
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004be88; bytecode file offset 0x94877c"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
referencePage
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a4f58; bytecode file offset 0x9a1ad4"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
getAutostartBehavior: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    (self) autostartBehavior: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5d4c; bytecode file offset 0x9a27f0"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a60f8; bytecode file offset 0x9a2a28"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
mailbox: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a62b4; bytecode file offset 0x9a2b84"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
autostartBehaviorEnum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6548; bytecode file offset 0x9a2f38"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
workingPage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a69e0; bytecode file offset 0x9a32e0"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
referencePage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6b14; bytecode file offset 0x9d3600"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putParameterIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d9240; bytecode file offset 0x9d5b4c"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getVersion: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parseStruct: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201011ec; bytecode file offset 0x9fdf08"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
putIn: recoveredArg1 referencePage: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencePage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencePage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010138c; bytecode file offset 0x9fdf08"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
putIn: recoveredArg1 mailbox: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mailbox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mailbox.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201014fc; bytecode file offset 0x9fdf08"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
putIn: recoveredArg1 workingPage: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingPage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingPage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012611c; bytecode file offset 0xa22bf0"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
getReferencePage: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2ReferencePage.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) referencePage: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012626c; bytecode file offset 0xa22bf0"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
getMailbox: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2MailBox.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) mailbox: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012629c; bytecode file offset 0xa22bf0"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
getWorkingPage: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2WorkingPage.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) workingPage: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2015078c; bytecode file offset 0xa4d050"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
autostartBehaviorString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autostartBehaviorEnum.
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
            recoveredStack0 := (recoveredStack0) autostartBehaviorEnums.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) autostartBehaviorEnum.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20191da0; bytecode file offset 0xa8e668"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyWord.
    (self) putIn: (recoveredValue1) string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putVersionIn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201f9db8; bytecode file offset 0xaf6684"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
autostartBehavior: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) autostartBehaviorEnums.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) autostartBehaviorEnum: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'Unknown autostartBehavior '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
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

"ASDBase.ic method 0x20299930; bytecode file offset 0xb961f8"
!ASAP2PageSwitchMethod methodsFor: 'recovered'!
putIn: recoveredArg1 autostartBehavior: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) autostartBehaviorString.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredArg1.
    (self) putNewLineIn: (recoveredBlock5Value0).
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    (self) putIn: (recoveredBlock5Value1) string: (recoveredBlock5Value2).
    recoveredBlock5Value3 := recoveredArg1.
    (self) putSeparatorIn: (recoveredBlock5Value3).
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    recoveredBlock5Value6 := (self) putIn: (recoveredBlock5Value4) string: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

