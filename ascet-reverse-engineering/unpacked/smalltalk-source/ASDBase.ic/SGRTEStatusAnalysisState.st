"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003a244; bytecode file offset 0x938608"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mergeUnion: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c14c; bytecode file offset 0x938b78"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
merge: recoveredArg1 condition: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) merge: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200699a8; bytecode file offset 0x966bdc"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
visibleRteCalls
    | recoveredValue0 |
    recoveredValue0 := visibleRteCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab94; bytecode file offset 0x967a18"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
visibleDReadCalls
    | recoveredValue0 |
    recoveredValue0 := visibleDReadCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0a88; bytecode file offset 0x9bdf14"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
visibleRteCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleRteCalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c21bc; bytecode file offset 0x9beac8"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
visibleDReadCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleDReadCalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201519b0; bytecode file offset 0xa4e274"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    visibleRteCalls := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    visibleDReadCalls := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201729d4; bytecode file offset 0xa6f2a0"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) visibleRteCalls.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue1) visibleRteCalls: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) visibleDReadCalls.
    recoveredValue6 := (recoveredValue5) copy.
    (recoveredValue4) visibleDReadCalls: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2023e718; bytecode file offset 0xb3afdc"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
visibleRteCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRteDRead.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            visibleDReadCalls := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            visibleRteCalls := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            visibleDReadCalls := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            visibleRteCalls := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b7d00; bytecode file offset 0xbb45dc"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
sourceWithDReadInfo: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleDReadCalls.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleDReadCalls.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280e50f8Arg1 | 
    | block280e50f8Value0 block280e50f8Value1 |
    block280e50f8Value0 := block280e50f8Arg1.
    block280e50f8Value1 := (block280e50f8Value0) source.
    block280e50f8Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) visibleDReadCalls.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:block280e511cArg1 | 
    | block280e511cValue0 block280e511cValue1 block280e511cValue2 |
    block280e511cValue0 := block280e511cArg1.
    block280e511cValue1 := (block280e511cValue0) errLabel.
    block280e511cValue2 := ('Explicit read is generated as a Rte_DRead macro and does not return a status: ') , (block280e511cValue1).
    block280e511cValue2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMultiSource: (recoveredStack1) labels: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b50f4; bytecode file offset 0xcb19cc"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('Visible RTE calls:').
    (recoveredValue1) cr.
    recoveredValue3 := (self) visibleRteCalls.
    recoveredValue4 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    (recoveredBlock24Value0) printOn: (recoveredBlock24Value1).
    recoveredBlock24Value2 := recoveredArg1.
    recoveredBlock24Value3 := (recoveredBlock24Value2) cr.
    recoveredBlock24Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('Visible RTE DRead calls:').
    (recoveredValue5) cr.
    recoveredValue7 := (self) visibleDReadCalls.
    recoveredValue8 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := recoveredArg1.
    (recoveredBlock57Value0) printOn: (recoveredBlock57Value1).
    recoveredBlock57Value2 := recoveredArg1.
    recoveredBlock57Value3 := (recoveredBlock57Value2) cr.
    recoveredBlock57Value3
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x204337a0; bytecode file offset 0xd30094"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
checkRteStatus: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleRteCalls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleRteCalls.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) mdlRteMacro: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleDReadCalls.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceWithDReadInfo: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1191.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceWithDReadInfo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleRteCalls.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 1192.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 1191.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) visibleRteCalls.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := [:block280fd8c0Arg1 | 
    | block280fd8c0Value0 block280fd8c0Value1 |
    block280fd8c0Value0 := block280fd8c0Arg1.
    block280fd8c0Value1 := (block280fd8c0Value0) source.
    block280fd8c0Value1
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := (recoveredStack4) visibleRteCalls.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := [:block280fd8e4Arg1 | 
    | block280fd8e4Value0 block280fd8e4Value1 |
    block280fd8e4Value0 := block280fd8e4Arg1.
    block280fd8e4Value1 := (block280fd8e4Value0) errLabel.
    block280fd8e4Value1
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMultiSource: (recoveredStack3) labels: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20458c10; bytecode file offset 0xd554e8"
!SGRTEStatusAnalysisState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) visibleRteCalls.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) visibleRteCalls.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) visibleRteCalls.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := [:recoveredBlock13Block23Arg1 | 
    | recoveredBlock13Block23Value0 recoveredBlock13Block23Value1 recoveredBlock13Block23Value2 |
    recoveredBlock13Block23Value0 := recoveredBlock13Arg1.
    recoveredBlock13Block23Value1 := recoveredBlock13Block23Arg1.
    recoveredBlock13Block23Value2 := (recoveredBlock13Block23Value0) isSameRteStatus: (recoveredBlock13Block23Value1).
    recoveredBlock13Block23Value2
].
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) anySatisfy: (recoveredBlock13Stack3).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 49] ifFalse: [recoveredBlock13PC := 40].
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (self) visibleRteCalls: (recoveredValue5).
    recoveredValue6 := (self) visibleDReadCalls.
    recoveredValue7 := (recoveredValue6) copy.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) visibleDReadCalls.
    recoveredValue10 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70Stack4 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := nil.
            recoveredBlock70PC := 77.
        ].
        recoveredBlock70Step = 77 ifTrue: [
            recoveredBlock70Stack2 := self.
            recoveredBlock70PC := 78.
        ].
        recoveredBlock70Step = 78 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) visibleDReadCalls.
            recoveredBlock70PC := 80.
        ].
        recoveredBlock70Step = 80 ifTrue: [
            recoveredBlock70Stack3 := [:recoveredBlock70Block80Arg1 | 
    | recoveredBlock70Block80Value0 recoveredBlock70Block80Value1 recoveredBlock70Block80Value2 |
    recoveredBlock70Block80Value0 := recoveredBlock70Arg1.
    recoveredBlock70Block80Value1 := recoveredBlock70Block80Arg1.
    recoveredBlock70Block80Value2 := (recoveredBlock70Block80Value0) isSameRteStatus: (recoveredBlock70Block80Value1).
    recoveredBlock70Block80Value2
].
            recoveredBlock70PC := 92.
        ].
        recoveredBlock70Step = 92 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) anySatisfy: (recoveredBlock70Stack3).
            recoveredBlock70PC := 93.
        ].
        recoveredBlock70Step = 93 ifTrue: [
            (recoveredBlock70Stack2) ifTrue: [recoveredBlock70PC := 105] ifFalse: [recoveredBlock70PC := 96].
        ].
        recoveredBlock70Step = 96 ifTrue: [
            recoveredBlock70PC := 97.
        ].
        recoveredBlock70Step = 97 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal1.
            recoveredBlock70PC := 100.
        ].
        recoveredBlock70Step = 100 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 103.
        ].
        recoveredBlock70Step = 103 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) add: (recoveredBlock70Stack2).
            recoveredBlock70PC := 105.
        ].
        recoveredBlock70Step = 105 ifTrue: [
            recoveredBlock70Result := recoveredBlock70Stack1.
            recoveredBlock70Done := true.
        ].
    ].
    recoveredBlock70Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (self) visibleDReadCalls: (recoveredValue11).
    ^self
! !

