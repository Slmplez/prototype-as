"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006788; bytecode file offset 0x908be4"
!Block methodsFor: 'recovered'!
ctCritical
    | recoveredValue0 |
    recoveredValue0 := (self) critical.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003b480; bytecode file offset 0x938608"
!Block methodsFor: 'recovered'!
progressValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) value: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200461cc; bytecode file offset 0x9451f8"
!Block methodsFor: 'recovered'!
abtWhileFalse
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) whileFalse: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200476ec; bytecode file offset 0x9451f8"
!Block methodsFor: 'recovered'!
abtWhileTrue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) whileTrue: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004eee8; bytecode file offset 0x94d048"
!Block methodsFor: 'recovered'!
value
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fdac; bytecode file offset 0x94d048"
!Block methodsFor: 'recovered'!
argumentCount
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053934; bytecode file offset 0x9505d0"
!Block methodsFor: 'recovered'!
value: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200778ac; bytecode file offset 0x9757c8"
!Block methodsFor: 'recovered'!
wbIsBlock
    ^true
! !

"ASDBase.ic method 0x200829e4; bytecode file offset 0x97f29c"
!Block methodsFor: 'recovered'!
valueIfFail: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) handleExceptionsIn: (self) ifFail: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009c504; bytecode file offset 0x998e50"
!Block methodsFor: 'recovered'!
abtDefer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) asyncExecInUI: (self).
    ^self
! !

"ASDBase.ic method 0x2009c590; bytecode file offset 0x998e50"
!Block methodsFor: 'recovered'!
abtDeferFirst
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) asyncExecFirstInUI: (self).
    ^self
! !

"ASDBase.ic method 0x200aad50; bytecode file offset 0x9a7610"
!Block methodsFor: 'recovered'!
forkWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) newProcess.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) resume.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011f834; bytecode file offset 0xa1c100"
!Block methodsFor: 'recovered'!
wbEvaluateWithErrors: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbEvaluateWithoutErrors.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201212b8; bytecode file offset 0xa1db78"
!Block methodsFor: 'recovered'!
valueZeroOrOneArg: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) argumentCount.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20139b20; bytecode file offset 0xa363e4"
!Block methodsFor: 'recovered'!
wbEvaluateWithoutErrors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cb3d0Arg1 | 
    | block280cb3d0Value0 block280cb3d0Value1 |
    block280cb3d0Value0 := block280cb3d0Arg1.
    block280cb3d0Value1 := (block280cb3d0Value0) exitWith: (nil).
    block280cb3d0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f1558; bytecode file offset 0xaede24"
!Block methodsFor: 'recovered'!
lockProcess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := Processor.
    (recoveredBlock4Value0) disableProcessSwitches.
    recoveredBlock4Value1 := (self) value.
    recoveredBlock4Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | block280d7d78Value0 block280d7d78Value1 |
    block280d7d78Value0 := Processor.
    block280d7d78Value1 := (block280d7d78Value0) enableProcessSwitches.
    block280d7d78Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c4434; bytecode file offset 0xbc0cfc"
!Block methodsFor: 'recovered'!
wbNumberOfArguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'value'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSelector: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'value:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSelector: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'value:value:'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSelector: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f27c0; bytecode file offset 0xbef090"
!Block methodsFor: 'recovered'!
exWhenUndefinedKeyOrValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ExCLDTKeyNotFound.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := ('Rnz') == ('ToDo').
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value2) value.
    recoveredBlock6Value4 := (recoveredBlock6Value1) exitWith: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    recoveredValue2 := ExUndefinedObjectDoesNotUnderstand.
    recoveredValue3 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 |
    recoveredBlock28Value0 := ('Rnz') == ('ToDo').
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := recoveredArg1.
    recoveredBlock28Value3 := (recoveredBlock28Value2) value.
    recoveredBlock28Value4 := (recoveredBlock28Value1) exitWith: (recoveredBlock28Value3).
    recoveredBlock28Value4
].
    recoveredValue4 := (self) when: (recoveredValue0) do: (recoveredValue1) when: (recoveredValue2) do: (recoveredValue3).
    ^recoveredValue4
! !

