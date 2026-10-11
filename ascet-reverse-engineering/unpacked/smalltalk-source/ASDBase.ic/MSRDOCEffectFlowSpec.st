"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200681ac; bytecode file offset 0x965b90"
!MSRDOCEffectFlowSpec methodsFor: 'recovered'!
effectFlows
    | recoveredValue0 |
    recoveredValue0 := effectFlows.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bfde4; bytecode file offset 0x9bd228"
!MSRDOCEffectFlowSpec methodsFor: 'recovered'!
effectFlows: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    effectFlows := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2019da4c; bytecode file offset 0xa9a3a0"
!MSRDOCEffectFlowSpec methodsFor: 'recovered'!
getEffectFlow: recoveredArg1 win: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MSRDOCEffectFlow.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEffectFlow: (recoveredStack2) win: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cfd88; bytecode file offset 0xacc644"
!MSRDOCEffectFlowSpec methodsFor: 'recovered'!
putIn: recoveredArg1 effectFlows: recoveredArg2 win: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) putIn: (recoveredBlock7Value1) win: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f7258; bytecode file offset 0xaf3b24"
!MSRDOCEffectFlowSpec methodsFor: 'recovered'!
putIn: recoveredArg1 win: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBeginKeyWord.
    (self) putIn: (recoveredValue0) string: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) effectFlows.
    recoveredValue4 := recoveredArg2.
    (self) putIn: (recoveredValue2) effectFlows: (recoveredValue3) win: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) getEndKeyWord.
    (self) putIn: (recoveredValue5) string: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putInCR: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202157cc; bytecode file offset 0xb12258"
!MSRDOCEffectFlowSpec methodsFor: 'recovered'!
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
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 20].
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
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20439898; bytecode file offset 0xd36264"
!MSRDOCEffectFlowSpec methodsFor: 'recovered'!
getEffectFlowSpec: recoveredArg1 win: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBeginKeyWord: (recoveredStack1) win: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEndKeyWord.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            effectFlows := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEffectFlow: (recoveredStack1) win: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := $<.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) upTo: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) getEndKeyWord: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := effectFlows.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'Element '.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBeginKeyWord.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := ' is empty!!'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) error: (recoveredStack1) win: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := effectFlows.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := effectFlows.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

