"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068f4c; bytecode file offset 0x965b90"
!MSRDOCSiUnit methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0254; bytecode file offset 0x9bd228"
!MSRDOCSiUnit methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20187970; bytecode file offset 0xa8433c"
!MSRDOCSiUnit methodsFor: 'recovered'!
putIn: recoveredArg1 win: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBeginKeyWord.
    (self) putIn: (recoveredValue0) string: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) value.
    (self) putIn: (recoveredValue2) string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) getEndKeyWord.
    (self) putIn: (recoveredValue4) string: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2025ddbc; bytecode file offset 0xb5a680"
!MSRDOCSiUnit methodsFor: 'recovered'!
getSiUnit: recoveredArg1 win: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBeginKeyWord: (recoveredStack1) win: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := $<.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) upTo: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) getEndKeyWord: (recoveredStack1).
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

"ASDBase.ic method 0x202aed50; bytecode file offset 0xbabe9c"
!MSRDOCSiUnit methodsFor: 'recovered'!
getBeginKeyWord: recoveredArg1 win: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $<.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextKeywordBySeparators.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBeginKeyWord.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'Element '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBeginKeyWord.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := ' is missing!!'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) error: (recoveredStack2) win: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

