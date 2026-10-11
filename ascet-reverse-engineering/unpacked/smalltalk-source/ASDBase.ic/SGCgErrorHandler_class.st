"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012aec; bytecode file offset 0x912098"
!SGCgErrorHandler class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028fd4; bytecode file offset 0x934580"
!SGCgErrorHandler class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cc98; bytecode file offset 0x93bf94"
!SGCgErrorHandler class methodsFor: 'recovered'!
hwcMessagesTitle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodegenCompileLinkErrorDummy.
    recoveredValue1 := (recoveredValue0) hwcMessagesTitle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d558; bytecode file offset 0x93bf94"
!SGCgErrorHandler class methodsFor: 'recovered'!
codegenMessagesTitle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodegenCompileLinkErrorDummy.
    recoveredValue1 := (recoveredValue0) codegenMessagesTitle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f588; bytecode file offset 0x93bf94"
!SGCgErrorHandler class methodsFor: 'recovered'!
compileLinkMessagesTitle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodegenCompileLinkErrorDummy.
    recoveredValue1 := (recoveredValue0) compileLinkMessagesTitle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059338; bytecode file offset 0x956284"
!SGCgErrorHandler class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) title: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064664; bytecode file offset 0x961970"
!SGCgErrorHandler class methodsFor: 'recovered'!
resetCurrent
    | recoveredValue0 |
    recoveredValue0 := (self) current.
    (recoveredValue0) reset.
    ^self
! !

"ASDBase.ic method 0x20082b6c; bytecode file offset 0x97f488"
!SGCgErrorHandler class methodsFor: 'recovered'!
createCurrentInstance: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredValue2 := (self) current: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200893d8; bytecode file offset 0x985cfc"
!SGCgErrorHandler class methodsFor: 'recovered'!
resetHaltConditions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    HaltConditions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20094238; bytecode file offset 0x990b08"
!SGCgErrorHandler class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    recoveredValue1 := Current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ec298; bytecode file offset 0x9e8b8c"
!SGCgErrorHandler class methodsFor: 'recovered'!
atInfo: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) messages.
    recoveredValue1 := (recoveredValue0) at: ('Infos').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ec2b0; bytecode file offset 0x9e8b8c"
!SGCgErrorHandler class methodsFor: 'recovered'!
atWarning: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) messages.
    recoveredValue1 := (recoveredValue0) at: ('Warnings').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ec2c8; bytecode file offset 0x9e8b8c"
!SGCgErrorHandler class methodsFor: 'recovered'!
atError: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) messages.
    recoveredValue1 := (recoveredValue0) at: ('Errors').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201050f0; bytecode file offset 0xa019ac"
!SGCgErrorHandler class methodsFor: 'recovered'!
hasHaltConditions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HaltConditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := HaltConditions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128528; bytecode file offset 0xa24eb0"
!SGCgErrorHandler class methodsFor: 'recovered'!
categories
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Categories.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Categories := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Categories.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20163f64; bytecode file offset 0xa60828"
!SGCgErrorHandler class methodsFor: 'recovered'!
addHaltCondition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HaltConditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            HaltConditions := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := HaltConditions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20228a24; bytecode file offset 0xb252e8"
!SGCgErrorHandler class methodsFor: 'recovered'!
messageIdentifierDefined: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoMessages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) warningMessages.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) errorMessages.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202da08c; bytecode file offset 0xbd6950"
!SGCgErrorHandler class methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := $I.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) atInfo: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := $W.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) atWarning: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) atError: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203520ec; bytecode file offset 0xc4e9cc"
!SGCgErrorHandler class methodsFor: 'recovered'!
messages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Messages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Messages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Messages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Errors'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [
    | block280ef244Value0 block280ef244Value1 |
    block280ef244Value0 := LookupTable.
    block280ef244Value1 := (block280ef244Value0) new.
    block280ef244Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := Messages.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'Warnings'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    | block280ef268Value0 block280ef268Value1 |
    block280ef268Value0 := LookupTable.
    block280ef268Value1 := (block280ef268Value0) new.
    block280ef268Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := Messages.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Infos'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [
    | block280ef28cValue0 block280ef28cValue1 |
    block280ef28cValue0 := LookupTable.
    block280ef28cValue1 := (block280ef28cValue0) new.
    block280ef28cValue1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := Messages.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203a3048; bytecode file offset 0xc9f918"
!SGCgErrorHandler class methodsFor: 'recovered'!
warningMessages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) messages.
    recoveredValue3 := (recoveredValue2) at: ('Warnings').
    recoveredValue4 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := recoveredBlock15Arg2.
    recoveredBlock15Value3 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := (self) messages.
    recoveredValue6 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := 1.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3).
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            recoveredBlock34Stack3 := $W.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 54] ifFalse: [recoveredBlock34PC := 70].
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack3 := 'Warnings'.
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) ~= (recoveredBlock34Stack3).
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 62] ifFalse: [recoveredBlock34PC := 70].
        ].
        recoveredBlock34Step = 62 ifTrue: [
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal1.
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg2.
            recoveredBlock34PC := 68.
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) at: (recoveredBlock34Stack2) put: (recoveredBlock34Stack3).
            recoveredBlock34PC := 70.
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x203a30bc; bytecode file offset 0xc9f98c"
!SGCgErrorHandler class methodsFor: 'recovered'!
infoMessages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) messages.
    recoveredValue3 := (recoveredValue2) at: ('Infos').
    recoveredValue4 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := recoveredBlock15Arg2.
    recoveredBlock15Value3 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := (self) messages.
    recoveredValue6 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := 1.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3).
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            recoveredBlock34Stack3 := $I.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 54] ifFalse: [recoveredBlock34PC := 70].
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack3 := 'Infos'.
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) ~= (recoveredBlock34Stack3).
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 62] ifFalse: [recoveredBlock34PC := 70].
        ].
        recoveredBlock34Step = 62 ifTrue: [
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal1.
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg2.
            recoveredBlock34PC := 68.
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) at: (recoveredBlock34Stack2) put: (recoveredBlock34Stack3).
            recoveredBlock34PC := 70.
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x203d04a0; bytecode file offset 0xcccd78"
!SGCgErrorHandler class methodsFor: 'recovered'!
readTargetMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 :recoveredBlock5Arg3 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := 'fatal'.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg3.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) atError: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := 'error'.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 36] ifFalse: [recoveredBlock5PC := 44].
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg3.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) atError: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack2 := 'warning'.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 52] ifFalse: [recoveredBlock5PC := 60].
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg3.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) atWarning: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            recoveredBlock5Stack2 := 'info'.
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 64.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 68] ifFalse: [recoveredBlock5PC := 76].
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 70.
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg3.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) atInfo: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 77.
        ].
        recoveredBlock5Step = 77 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg3.
            recoveredBlock5PC := 79.
        ].
        recoveredBlock5Step = 79 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 81 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (self) readTargetMessages: (recoveredValue0) executionBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x203e5ed4; bytecode file offset 0xce27a4"
!SGCgErrorHandler class methodsFor: 'recovered'!
errorMessages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) messages.
    recoveredValue3 := (recoveredValue2) at: ('Errors').
    recoveredValue4 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := recoveredBlock15Arg2.
    recoveredBlock15Value3 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := (self) messages.
    recoveredValue6 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := 1.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3).
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            recoveredBlock34Stack3 := $W.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 82] ifFalse: [recoveredBlock34PC := 54].
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack3 := 1.
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3).
            recoveredBlock34PC := 59.
        ].
        recoveredBlock34Step = 59 ifTrue: [
            recoveredBlock34Stack3 := $I.
            recoveredBlock34PC := 62.
        ].
        recoveredBlock34Step = 62 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 82] ifFalse: [recoveredBlock34PC := 66].
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            recoveredBlock34Stack3 := 'Errors'.
            recoveredBlock34PC := 69.
        ].
        recoveredBlock34Step = 69 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) ~= (recoveredBlock34Stack3).
            recoveredBlock34PC := 70.
        ].
        recoveredBlock34Step = 70 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 74] ifFalse: [recoveredBlock34PC := 82].
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34PC := 75.
        ].
        recoveredBlock34Step = 75 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal1.
            recoveredBlock34PC := 78.
        ].
        recoveredBlock34Step = 78 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 79 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg2.
            recoveredBlock34PC := 80.
        ].
        recoveredBlock34Step = 80 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) at: (recoveredBlock34Stack2) put: (recoveredBlock34Stack3).
            recoveredBlock34PC := 82.
        ].
        recoveredBlock34Step = 82 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2055f414; bytecode file offset 0xe5bd40"
!SGCgErrorHandler class methodsFor: 'recovered'!
readTargetMessages: recoveredArg1 executionBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := EtasOptionsDOMDocument.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := [
    ^self
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) parseStream: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Parsing of XML document failed'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Local1 recoveredBlock75Local2 recoveredBlock75Local3 recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75Stack5 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) name.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack3 := 'Message'.
            recoveredBlock75PC := 88.
        ].
        recoveredBlock75Step = 88 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) = (recoveredBlock75Stack3).
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 92] ifFalse: [recoveredBlock75PC := 229].
        ].
        recoveredBlock75Step = 92 ifTrue: [
            recoveredBlock75PC := 93.
        ].
        recoveredBlock75Step = 93 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 94.
        ].
        recoveredBlock75Step = 94 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) contents.
            recoveredBlock75PC := 96.
        ].
        recoveredBlock75Step = 96 ifTrue: [
            recoveredBlock75Stack2 := [:block28110674Arg1 | 
    | block28110674Value0 block28110674Value1 block28110674Value2 |
    block28110674Value0 := block28110674Arg1.
    block28110674Value1 := (block28110674Value0) name.
    block28110674Value2 := (block28110674Value1) = ('ID').
    block28110674Value2
].
            recoveredBlock75PC := 98.
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            recoveredBlock75Stack3 := [].
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) detect: (recoveredBlock75Stack2) ifNone: (recoveredBlock75Stack3).
            recoveredBlock75PC := 113.
        ].
        recoveredBlock75Step = 113 ifTrue: [
            recoveredBlock75Local3 := recoveredBlock75Stack1.
            recoveredBlock75PC := 114.
        ].
        recoveredBlock75Step = 114 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 115.
        ].
        recoveredBlock75Step = 115 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) contents.
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            recoveredBlock75Stack2 := [:block28110698Arg1 | 
    | block28110698Value0 block28110698Value1 block28110698Value2 |
    block28110698Value0 := block28110698Arg1.
    block28110698Value1 := (block28110698Value0) name.
    block28110698Value2 := (block28110698Value1) = ('category').
    block28110698Value2
].
            recoveredBlock75PC := 119.
        ].
        recoveredBlock75Step = 119 ifTrue: [
            recoveredBlock75PC := 129.
        ].
        recoveredBlock75Step = 129 ifTrue: [
            recoveredBlock75Stack3 := [].
            recoveredBlock75PC := 131.
        ].
        recoveredBlock75Step = 131 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) detect: (recoveredBlock75Stack2) ifNone: (recoveredBlock75Stack3).
            recoveredBlock75PC := 133.
        ].
        recoveredBlock75Step = 133 ifTrue: [
            recoveredBlock75Local2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 134.
        ].
        recoveredBlock75Step = 134 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 135.
        ].
        recoveredBlock75Step = 135 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) contents.
            recoveredBlock75PC := 137.
        ].
        recoveredBlock75Step = 137 ifTrue: [
            recoveredBlock75Stack2 := [:block281106bcArg1 | 
    | block281106bcValue0 block281106bcValue1 block281106bcValue2 |
    block281106bcValue0 := block281106bcArg1.
    block281106bcValue1 := (block281106bcValue0) name.
    block281106bcValue2 := (block281106bcValue1) = ('text').
    block281106bcValue2
].
            recoveredBlock75PC := 139.
        ].
        recoveredBlock75Step = 139 ifTrue: [
            recoveredBlock75PC := 149.
        ].
        recoveredBlock75Step = 149 ifTrue: [
            recoveredBlock75Stack3 := [].
            recoveredBlock75PC := 151.
        ].
        recoveredBlock75Step = 151 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) detect: (recoveredBlock75Stack2) ifNone: (recoveredBlock75Stack3).
            recoveredBlock75PC := 153.
        ].
        recoveredBlock75Step = 153 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 154.
        ].
        recoveredBlock75Step = 154 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 155.
        ].
        recoveredBlock75Step = 155 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local3.
            recoveredBlock75PC := 156.
        ].
        recoveredBlock75Step = 156 ifTrue: [
            (recoveredBlock75Stack2 == nil) ifTrue: [recoveredBlock75PC := 223] ifFalse: [recoveredBlock75PC := 160].
        ].
        recoveredBlock75Step = 160 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local2.
            recoveredBlock75PC := 161.
        ].
        recoveredBlock75Step = 161 ifTrue: [
            (recoveredBlock75Stack2 == nil) ifTrue: [recoveredBlock75PC := 223] ifFalse: [recoveredBlock75PC := 164].
        ].
        recoveredBlock75Step = 164 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local1.
            recoveredBlock75PC := 165.
        ].
        recoveredBlock75Step = 165 ifTrue: [
            (recoveredBlock75Stack2 == nil) ifTrue: [recoveredBlock75PC := 223] ifFalse: [recoveredBlock75PC := 168].
        ].
        recoveredBlock75Step = 168 ifTrue: [
            recoveredBlock75PC := 169.
        ].
        recoveredBlock75Step = 169 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Local3.
            recoveredBlock75PC := 170.
        ].
        recoveredBlock75Step = 170 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) getContentText.
            recoveredBlock75PC := 172.
        ].
        recoveredBlock75Step = 172 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) data.
            recoveredBlock75PC := 174.
        ].
        recoveredBlock75Step = 174 ifTrue: [
            recoveredBlock75Local3 := recoveredBlock75Stack1.
            recoveredBlock75PC := 175.
        ].
        recoveredBlock75Step = 175 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Local2.
            recoveredBlock75PC := 176.
        ].
        recoveredBlock75Step = 176 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) getContentText.
            recoveredBlock75PC := 178.
        ].
        recoveredBlock75Step = 178 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) data.
            recoveredBlock75PC := 180.
        ].
        recoveredBlock75Step = 180 ifTrue: [
            recoveredBlock75Local2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 181.
        ].
        recoveredBlock75Step = 181 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Local1.
            recoveredBlock75PC := 182.
        ].
        recoveredBlock75Step = 182 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) getContentText.
            recoveredBlock75PC := 184.
        ].
        recoveredBlock75Step = 184 ifTrue: [
            (recoveredBlock75Stack1 ~~ nil) ifTrue: [recoveredBlock75PC := 208] ifFalse: [recoveredBlock75PC := 188].
        ].
        recoveredBlock75Step = 188 ifTrue: [
            recoveredBlock75Stack1 := self.
            recoveredBlock75PC := 189.
        ].
        recoveredBlock75Step = 189 ifTrue: [
            recoveredBlock75Stack2 := false.
            recoveredBlock75PC := 190.
        ].
        recoveredBlock75Step = 190 ifTrue: [
            recoveredBlock75Stack3 := 'FATAL: missing error text in message declaration file: '.
            recoveredBlock75PC := 192.
        ].
        recoveredBlock75Step = 192 ifTrue: [
            recoveredBlock75Stack4 := recoveredArg1.
            recoveredBlock75PC := 195.
        ].
        recoveredBlock75Step = 195 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) , (recoveredBlock75Stack4).
            recoveredBlock75PC := 197.
        ].
        recoveredBlock75Step = 197 ifTrue: [
            (recoveredBlock75Stack1) runtimeAssert: (recoveredBlock75Stack2) additionalInfo: (recoveredBlock75Stack3).
            recoveredBlock75PC := 199.
        ].
        recoveredBlock75Step = 199 ifTrue: [
            recoveredBlock75Stack1 := 'missing error text for: '.
            recoveredBlock75PC := 201.
        ].
        recoveredBlock75Step = 201 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local3.
            recoveredBlock75PC := 202.
        ].
        recoveredBlock75Step = 202 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) , (recoveredBlock75Stack2).
            recoveredBlock75PC := 204.
        ].
        recoveredBlock75Step = 204 ifTrue: [
            recoveredBlock75PC := 213.
        ].
        recoveredBlock75Step = 208 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Local1.
            recoveredBlock75PC := 209.
        ].
        recoveredBlock75Step = 209 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) getContentText.
            recoveredBlock75PC := 211.
        ].
        recoveredBlock75Step = 211 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) data.
            recoveredBlock75PC := 213.
        ].
        recoveredBlock75Step = 213 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 214.
        ].
        recoveredBlock75Step = 214 ifTrue: [
            recoveredBlock75Stack1 := recoveredArg2.
            recoveredBlock75PC := 217.
        ].
        recoveredBlock75Step = 217 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local2.
            recoveredBlock75PC := 218.
        ].
        recoveredBlock75Step = 218 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Local3.
            recoveredBlock75PC := 219.
        ].
        recoveredBlock75Step = 219 ifTrue: [
            recoveredBlock75Stack4 := recoveredBlock75Local1.
            recoveredBlock75PC := 220.
        ].
        recoveredBlock75Step = 220 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) value: (recoveredBlock75Stack2) value: (recoveredBlock75Stack3) value: (recoveredBlock75Stack4).
            recoveredBlock75PC := 223.
        ].
        recoveredBlock75Step = 223 ifTrue: [
            recoveredBlock75Stack2 := nil.
            recoveredBlock75PC := 224.
        ].
        recoveredBlock75Step = 224 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Stack2.
            recoveredBlock75PC := 225.
        ].
        recoveredBlock75Step = 225 ifTrue: [
            recoveredBlock75Local3 := recoveredBlock75Stack3.
            recoveredBlock75PC := 226.
        ].
        recoveredBlock75Step = 226 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Stack2.
            recoveredBlock75PC := 227.
        ].
        recoveredBlock75Step = 227 ifTrue: [
            recoveredBlock75Local2 := recoveredBlock75Stack3.
            recoveredBlock75PC := 228.
        ].
        recoveredBlock75Step = 228 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack2.
            recoveredBlock75PC := 229.
        ].
        recoveredBlock75Step = 229 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

