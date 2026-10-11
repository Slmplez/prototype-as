"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006d290; bytecode file offset 0x969c04"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
calls
    | recoveredValue0 |
    recoveredValue0 := calls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074b1c; bytecode file offset 0x9757c8"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x200775cc; bytecode file offset 0x9757c8"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
isCodeList
    ^true
! !

"ASDBase.ic method 0x20084780; bytecode file offset 0x981ca4"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
removeChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) removeChildrenList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008490c; bytecode file offset 0x981ca4"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
addChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addChildrenList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009046c; bytecode file offset 0x98cd90"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tag.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) listHash.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200da3b4; bytecode file offset 0x9d6c74"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
reductionInCodeSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outlineStrategy.
    recoveredValue1 := (self) codeSize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) reductionInCodeSize: (recoveredValue1) calls: (recoveredValue2) for: (self).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e4964; bytecode file offset 0x9e1240"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
reductionInCodeSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outlineStrategy.
    recoveredValue1 := (self) codeSize.
    recoveredValue2 := (self) calls.
    recoveredValue3 := (recoveredValue0) reductionInCodeSize: (recoveredValue1) calls: (recoveredValue2) for: (self).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e497c; bytecode file offset 0x9e1240"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
modelReductionInCodeSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outlineStrategy.
    recoveredValue1 := (self) codeSize.
    recoveredValue2 := (self) calls.
    recoveredValue3 := (recoveredValue0) modelReductionInCodeSize: (recoveredValue1) calls: (recoveredValue2) for: (self).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010c4dc; bytecode file offset 0xa08da0"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGSmInlinedCodeList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) duplicateListFor: (recoveredValue1).
    recoveredValue3 := (self) outlineStrategy.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue0) create: (recoveredValue2) outlineStrategy: (recoveredValue3) method: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20140630; bytecode file offset 0xa3cef4"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    method := recoveredValue1.
    calls := 0.
    ^self
! !

"ASDBase.ic method 0x201b3ef8; bytecode file offset 0xab07e0"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCodeList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) tag.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) tag.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) listEquals: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202345b4; bytecode file offset 0xb30e74"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
addCall: recoveredArg1 method: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := calls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            calls := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := method.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := method.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := [
    0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            arguments := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20291c44; bytecode file offset 0xb8e50c"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
methods
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := method.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := method.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) at: (recoveredBlock12Stack3).
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := 0.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) ~= (recoveredBlock12Stack3).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) keysDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20542178; bytecode file offset 0xe3ea88"
!SGSmOutlinableCodeList methodsFor: 'recovered'!
arguments
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack1 ~~ nil) ifTrue: [recoveredBlock18PC := 62] ifFalse: [recoveredBlock18PC := 30].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := LookupTable.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) new.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) arguments.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block40Arg1 | 
    | recoveredBlock18Block40Value0 recoveredBlock18Block40Value1 recoveredBlock18Block40Value2 recoveredBlock18Block40Value3 recoveredBlock18Block40Value4 |
    recoveredBlock18Block40Value0 := recoveredLocal2.
    recoveredBlock18Block40Value1 := recoveredBlock18Block40Arg1.
    recoveredBlock18Block40Value2 := (recoveredBlock18Block40Value1) mdlLabel.
    recoveredBlock18Block40Value3 := recoveredBlock18Block40Arg1.
    recoveredBlock18Block40Value4 := (recoveredBlock18Block40Value0) at: (recoveredBlock18Block40Value2) put: (recoveredBlock18Block40Value3).
    recoveredBlock18Block40Value4
].
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18PC := 145.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack1 := OrderedCollection.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) new.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 68.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block71Arg1 | 
    | recoveredBlock18Block71Value0 recoveredBlock18Block71Value1 recoveredBlock18Block71Value2 recoveredBlock18Block71Value3 recoveredBlock18Block71Value4 recoveredBlock18Block71Value5 recoveredBlock18Block71Value6 |
    recoveredBlock18Block71Value0 := recoveredBlock18Arg1.
    recoveredBlock18Block71Value1 := (recoveredBlock18Block71Value0) arguments.
    recoveredBlock18Block71Value2 := [:recoveredBlock18Block71Block82Arg1 | 
    | recoveredBlock18Block71Block82Value0 recoveredBlock18Block71Block82Value1 recoveredBlock18Block71Block82Value2 recoveredBlock18Block71Block82Value3 |
    recoveredBlock18Block71Block82Value0 := recoveredBlock18Block71Block82Arg1.
    recoveredBlock18Block71Block82Value1 := (recoveredBlock18Block71Block82Value0) mdlLabel.
    recoveredBlock18Block71Block82Value2 := recoveredBlock18Block71Arg1.
    recoveredBlock18Block71Block82Value3 := (recoveredBlock18Block71Block82Value1) = (recoveredBlock18Block71Block82Value2).
    recoveredBlock18Block71Block82Value3
].
    recoveredBlock18Block71Value3 := [].
    recoveredBlock18Block71Value4 := (recoveredBlock18Block71Value1) detect: (recoveredBlock18Block71Value2) ifNone: (recoveredBlock18Block71Value3).
    recoveredBlock18Block71Value5 := [
    | recoveredBlock18Block71Block100Value0 recoveredBlock18Block71Block100Value1 recoveredBlock18Block71Block100Value2 |
    recoveredBlock18Block71Block100Value0 := recoveredBlock18Local1.
    recoveredBlock18Block71Block100Value1 := recoveredBlock18Block71Arg1.
    recoveredBlock18Block71Block100Value2 := (recoveredBlock18Block71Block100Value0) add: (recoveredBlock18Block71Block100Value1).
    recoveredBlock18Block71Block100Value2
].
    recoveredBlock18Block71Value6 := (recoveredBlock18Block71Value4) ifNil: (recoveredBlock18Block71Value5).
    recoveredBlock18Block71Value6
].
            recoveredBlock18PC := 118.
        ].
        recoveredBlock18Step = 118 ifTrue: [
            (recoveredBlock18Stack1) keysDo: (recoveredBlock18Stack2).
            recoveredBlock18PC := 120.
        ].
        recoveredBlock18Step = 120 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Local1.
            recoveredBlock18PC := 123.
        ].
        recoveredBlock18Step = 123 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block123Arg1 | 
    | recoveredBlock18Block123Value0 recoveredBlock18Block123Value1 recoveredBlock18Block123Value2 recoveredBlock18Block123Value3 |
    recoveredBlock18Block123Value0 := recoveredLocal2.
    recoveredBlock18Block123Value1 := recoveredBlock18Block123Arg1.
    recoveredBlock18Block123Value2 := [].
    recoveredBlock18Block123Value3 := (recoveredBlock18Block123Value0) removeKey: (recoveredBlock18Block123Value1) ifAbsent: (recoveredBlock18Block123Value2).
    recoveredBlock18Block123Value3
].
            recoveredBlock18PC := 139.
        ].
        recoveredBlock18Step = 139 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 141.
        ].
        recoveredBlock18Step = 141 ifTrue: [
            recoveredBlock18Stack2 := nil.
            recoveredBlock18PC := 142.
        ].
        recoveredBlock18Step = 142 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 145.
        ].
        recoveredBlock18Step = 145 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := [:block2810e490Arg1 :block2810e490Arg2 | 
    | block2810e490Value0 block2810e490Value1 block2810e490Value2 block2810e490Value3 block2810e490Value4 |
    block2810e490Value0 := block2810e490Arg1.
    block2810e490Value1 := (block2810e490Value0) mdlLabel.
    block2810e490Value2 := block2810e490Arg2.
    block2810e490Value3 := (block2810e490Value2) mdlLabel.
    block2810e490Value4 := (block2810e490Value1) > (block2810e490Value3).
    block2810e490Value4
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := [:recoveredBlock172Arg1 | 
    | recoveredBlock172Local1 recoveredBlock172Value0 recoveredBlock172Value1 recoveredBlock172Value2 recoveredBlock172Value3 recoveredBlock172Value4 recoveredBlock172Value5 recoveredBlock172Value6 recoveredBlock172Value7 recoveredBlock172Value8 recoveredBlock172Value9 recoveredBlock172Value10 recoveredBlock172Value11 |
    recoveredBlock172Value0 := SGLmMethodData.
    recoveredBlock172Value1 := recoveredBlock172Arg1.
    recoveredBlock172Value2 := (recoveredBlock172Value1) dataModelRef.
    recoveredBlock172Value3 := (recoveredBlock172Value0) createForArgument: (recoveredBlock172Value2).
    recoveredBlock172Local1 := recoveredBlock172Value3.
    recoveredBlock172Value4 := recoveredBlock172Local1.
    recoveredBlock172Value5 := (recoveredBlock172Value4) mdlName.
    recoveredBlock172Value6 := recoveredBlock172Local1.
    recoveredBlock172Value7 := (recoveredBlock172Value6) mdlName.
    recoveredBlock172Value8 := (recoveredBlock172Value7) label.
    (recoveredBlock172Value5) key: (recoveredBlock172Value8).
    recoveredBlock172Value9 := recoveredLocal1.
    recoveredBlock172Value10 := recoveredBlock172Local1.
    recoveredBlock172Value11 := (recoveredBlock172Value9) add: (recoveredBlock172Value10).
    recoveredBlock172Value11
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            arguments := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

