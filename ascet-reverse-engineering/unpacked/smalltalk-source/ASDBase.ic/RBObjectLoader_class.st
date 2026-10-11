"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012b28; bytecode file offset 0x912098"
!RBObjectLoader class methodsFor: 'recovered'!
RBDBRestoreInstVarClasses
    | recoveredValue0 |
    recoveredValue0 := RBDBRestoreInstVarClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013a70; bytecode file offset 0x912098"
!RBObjectLoader class methodsFor: 'recovered'!
RBDBMutateClasses
    | recoveredValue0 |
    recoveredValue0 := RBDBMutateClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053e7c; bytecode file offset 0x951190"
!RBObjectLoader class methodsFor: 'recovered'!
RBDBMutateClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    RBDBMutateClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054590; bytecode file offset 0x951190"
!RBObjectLoader class methodsFor: 'recovered'!
RBDBRestoreInstVarClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    RBDBRestoreInstVarClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200850bc; bytecode file offset 0x981ca4"
!RBObjectLoader class methodsFor: 'recovered'!
initializeMutate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) initializeClassMapping: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d2770; bytecode file offset 0x9cf02c"
!RBObjectLoader class methodsFor: 'recovered'!
resetClass
    (self) RBDBMutateClasses: (nil).
    (self) RBDBRestoreInstVarClasses: (nil).
    ^self
! !

"ASDBase.ic method 0x2011516c; bytecode file offset 0xa11a2c"
!RBObjectLoader class methodsFor: 'recovered'!
initClassVarsDone
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) RBDBMutateClasses.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016c1ac; bytecode file offset 0xa68a90"
!RBObjectLoader class methodsFor: 'recovered'!
restoreInstVarClasses: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280ce844Arg1 | 
    | block280ce844Value0 block280ce844Value1 |
    block280ce844Value0 := block280ce844Arg1.
    block280ce844Value1 := (block280ce844Value0) canUnderstand: ('restoreInstVars').
    block280ce844Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20183e8c; bytecode file offset 0xa80770"
!RBObjectLoader class methodsFor: 'recovered'!
addRestoreInstVarClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBDBRestoreInstVarClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := RBDBRestoreInstVarClasses.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            RBDBRestoreInstVarClasses := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20364804; bytecode file offset 0xc610fc"
!RBObjectLoader class methodsFor: 'recovered'!
initializeRestoring: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) initializeMutate: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) restoreInstVarClasses: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) RBDBRestoreInstVarClasses: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := RBDBRestoreInstVarClasses.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280f0b94Arg1 | 
    | block280f0b94Value0 block280f0b94Value1 block280f0b94Value2 block280f0b94Value3 block280f0b94Value4 block280f0b94Value5 |
    block280f0b94Value0 := block280f0b94Arg1.
    block280f0b94Value1 := (block280f0b94Value0) class.
    block280f0b94Value2 := (block280f0b94Value1) name.
    block280f0b94Value3 := (block280f0b94Value2) asString.
    block280f0b94Value4 := (block280f0b94Value3) copyFrom: (1) to: (2).
    block280f0b94Value5 := (block280f0b94Value4) = ('DB').
    block280f0b94Value5
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := RBDBRestoreInstVarClasses.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:block280f0bb8Arg1 | 
    | block280f0bb8Value0 block280f0bb8Value1 block280f0bb8Value2 |
    block280f0bb8Value0 := RBDBRestoreInstVarClasses.
    block280f0bb8Value1 := block280f0bb8Arg1.
    block280f0bb8Value2 := (block280f0bb8Value0) addFirst: (block280f0bb8Value1).
    block280f0bb8Value2
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := RBDBRestoreInstVarClasses.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042b40c; bytecode file offset 0xd27cf8"
!RBObjectLoader class methodsFor: 'recovered'!
initializeClassMapping: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280fd26cArg1 | 
    | block280fd26cValue0 block280fd26cValue1 |
    block280fd26cValue0 := block280fd26cArg1.
    block280fd26cValue1 := (block280fd26cValue0) includesSelector: ('OldClass').
    block280fd26cValue1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block280fd290Arg1 | 
    | block280fd290Value0 block280fd290Value1 |
    block280fd290Value0 := block280fd290Arg1.
    block280fd290Value1 := (block280fd290Value0) primaryInstance.
    block280fd290Value1
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) OldClass.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) isString.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 80] ifFalse: [recoveredBlock38PC := 54].
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) OldClass.
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack2 := [:recoveredBlock38Block58Arg1 | 
    | recoveredBlock38Block58Value0 recoveredBlock38Block58Value1 recoveredBlock38Block58Value2 recoveredBlock38Block58Value3 |
    recoveredBlock38Block58Value0 := recoveredLocal1.
    recoveredBlock38Block58Value1 := recoveredBlock38Block58Arg1.
    recoveredBlock38Block58Value2 := recoveredBlock38Arg1.
    recoveredBlock38Block58Value3 := (recoveredBlock38Block58Value0) at: (recoveredBlock38Block58Value1) put: (recoveredBlock38Block58Value2).
    recoveredBlock38Block58Value3
].
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) do: (recoveredBlock38Stack2).
            recoveredBlock38PC := 76.
        ].
        recoveredBlock38Step = 76 ifTrue: [
            recoveredBlock38PC := 92.
        ].
        recoveredBlock38Step = 80 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal1.
            recoveredBlock38PC := 83.
        ].
        recoveredBlock38Step = 83 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 86.
        ].
        recoveredBlock38Step = 86 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) OldClass.
            recoveredBlock38PC := 87.
        ].
        recoveredBlock38Step = 87 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Arg1.
            recoveredBlock38PC := 90.
        ].
        recoveredBlock38Step = 90 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) put: (recoveredBlock38Stack3).
            recoveredBlock38PC := 92.
        ].
        recoveredBlock38Step = 92 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) RBDBMutateClasses: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) RBDBMutateClasses.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

