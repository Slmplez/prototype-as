"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040300; bytecode file offset 0x93d278"
!SGIlNodeLookupTable methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := delegate.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200404c8; bytecode file offset 0x93d278"
!SGIlNodeLookupTable methodsFor: 'recovered'!
notEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := delegate.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200405a0; bytecode file offset 0x93d278"
!SGIlNodeLookupTable methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := delegate.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066084; bytecode file offset 0x963428"
!SGIlNodeLookupTable methodsFor: 'recovered'!
delegate
    | recoveredValue0 |
    recoveredValue0 := delegate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067324; bytecode file offset 0x9646f8"
!SGIlNodeLookupTable methodsFor: 'recovered'!
wrapperClass
    | recoveredValue0 |
    recoveredValue0 := wrapperClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081a2c; bytecode file offset 0x97e554"
!SGIlNodeLookupTable methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := delegate.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b87d4; bytecode file offset 0x9b5094"
!SGIlNodeLookupTable methodsFor: 'recovered'!
includesKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := delegate.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) includesKey: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bda5c; bytecode file offset 0x9bb178"
!SGIlNodeLookupTable methodsFor: 'recovered'!
delegate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    delegate := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be8e8; bytecode file offset 0x9bc0b4"
!SGIlNodeLookupTable methodsFor: 'recovered'!
wrapperClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    wrapperClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d40dc; bytecode file offset 0x9d09a4"
!SGIlNodeLookupTable methodsFor: 'recovered'!
copyEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (recoveredValue0) createWrapper: (recoveredValue1) content: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d41e0; bytecode file offset 0x9d0aec"
!SGIlNodeLookupTable methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := delegate.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredValue4 := (recoveredValue0) createWrapper: (recoveredValue1) content: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eaa80; bytecode file offset 0x9e735c"
!SGIlNodeLookupTable methodsFor: 'recovered'!
select: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := delegate.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createWrapper: (recoveredValue1) content: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eaa98; bytecode file offset 0x9e735c"
!SGIlNodeLookupTable methodsFor: 'recovered'!
collect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := delegate.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createWrapper: (recoveredValue1) content: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eb324; bytecode file offset 0x9e7c20"
!SGIlNodeLookupTable methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := delegate.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) put: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eb338; bytecode file offset 0x9e7c20"
!SGIlNodeLookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := delegate.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsentPut: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eb34c; bytecode file offset 0x9e7c20"
!SGIlNodeLookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := delegate.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eb360; bytecode file offset 0x9e7c20"
!SGIlNodeLookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifPresent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := delegate.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifPresent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f9cdc; bytecode file offset 0x9f6678"
!SGIlNodeLookupTable methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    delegate := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2011138c; bytecode file offset 0xa0dc60"
!SGIlNodeLookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2 ifPresent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := delegate.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) at: (recoveredValue3) ifAbsentPut: (recoveredValue4) ifPresent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201113a0; bytecode file offset 0xa0dc60"
!SGIlNodeLookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := delegate.
    recoveredValue1 := (self) wrapperClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) create: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4) ifPresent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201155d4; bytecode file offset 0xa11e98"
!SGIlNodeLookupTable methodsFor: 'recovered'!
keys
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := delegate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c6af8Arg1 | 
    | block280c6af8Value0 block280c6af8Value1 |
    block280c6af8Value0 := block280c6af8Arg1.
    block280c6af8Value1 := (block280c6af8Value0) delegate.
    block280c6af8Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20186b04; bytecode file offset 0xa833c4"
!SGIlNodeLookupTable methodsFor: 'recovered'!
keysAndValuesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := delegate.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) delegate.
    recoveredBlock6Value3 := recoveredBlock6Arg2.
    recoveredBlock6Value4 := (recoveredBlock6Value0) value: (recoveredBlock6Value2) value: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    recoveredValue2 := (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a8a50; bytecode file offset 0xaa5310"
!SGIlNodeLookupTable methodsFor: 'recovered'!
detectKey: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := delegate.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) delegate.
    recoveredBlock6Value3 := (recoveredBlock6Value0) value: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detectKey: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202dd218; bytecode file offset 0xbd9af0"
!SGIlNodeLookupTable methodsFor: 'recovered'!
selectKeys: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := delegate.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
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
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) delegate.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value: (recoveredBlock12Stack3).
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg2.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := (self) wrapperClass.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue4) createWrapper: (recoveredValue5) content: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202f5ad4; bytecode file offset 0xbf23a4"
!SGIlNodeLookupTable methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    (recoveredValue1) cr.
    recoveredValue3 := [:recoveredBlock20Arg1 :recoveredBlock20Arg2 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := recoveredBlock20Value0.
    recoveredBlock20Value2 := recoveredBlock20Arg1.
    recoveredBlock20Value3 := (recoveredBlock20Value2) debugCode.
    (recoveredBlock20Value1) nextPutAll: (recoveredBlock20Value3).
    (recoveredBlock20Value0) nextPutAll: (' --> ').
    recoveredBlock20Value4 := recoveredBlock20Arg2.
    recoveredBlock20Value5 := recoveredArg1.
    (recoveredBlock20Value4) printOn: (recoveredBlock20Value5).
    recoveredBlock20Value6 := recoveredArg1.
    recoveredBlock20Value7 := (recoveredBlock20Value6) cr.
    recoveredBlock20Value7
].
    (self) keysAndValuesDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20301288; bytecode file offset 0xbfdb60"
!SGIlNodeLookupTable methodsFor: 'recovered'!
selectKeys: recoveredArg1 collect: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := delegate.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
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
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) delegate.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value: (recoveredBlock12Stack3).
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 40].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg2.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Arg2.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) value: (recoveredBlock12Stack4).
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := (self) wrapperClass.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue4) createWrapper: (recoveredValue5) content: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2049c084; bytecode file offset 0xd98968"
!SGIlNodeLookupTable methodsFor: 'recovered'!
collectWith: recoveredArg1 forCommonKeysDo: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := delegate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := delegate.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := delegate.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 :recoveredBlock32Arg2 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredArg1.
    recoveredBlock32Value1 := (recoveredBlock32Value0) delegate.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := [:recoveredBlock32Block46Arg1 | 
    | recoveredBlock32Block46Value0 recoveredBlock32Block46Value1 recoveredBlock32Block46Value2 recoveredBlock32Block46Value3 recoveredBlock32Block46Value4 recoveredBlock32Block46Value5 recoveredBlock32Block46Value6 |
    recoveredBlock32Block46Value0 := recoveredLocal1.
    recoveredBlock32Block46Value1 := recoveredBlock32Arg1.
    recoveredBlock32Block46Value2 := recoveredArg2.
    recoveredBlock32Block46Value3 := recoveredBlock32Arg2.
    recoveredBlock32Block46Value4 := recoveredBlock32Block46Arg1.
    recoveredBlock32Block46Value5 := (recoveredBlock32Block46Value2) value: (recoveredBlock32Block46Value3) value: (recoveredBlock32Block46Value4).
    recoveredBlock32Block46Value6 := (recoveredBlock32Block46Value0) at: (recoveredBlock32Block46Value1) put: (recoveredBlock32Block46Value5).
    recoveredBlock32Block46Value6
].
    recoveredBlock32Value4 := (recoveredBlock32Value1) at: (recoveredBlock32Value2) ifPresent: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) delegate.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 :recoveredBlock83Arg2 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 |
    recoveredBlock83Value0 := delegate.
    recoveredBlock83Value1 := recoveredBlock83Arg1.
    recoveredBlock83Value2 := [:recoveredBlock83Block95Arg1 | 
    | recoveredBlock83Block95Value0 recoveredBlock83Block95Value1 recoveredBlock83Block95Value2 recoveredBlock83Block95Value3 recoveredBlock83Block95Value4 recoveredBlock83Block95Value5 recoveredBlock83Block95Value6 |
    recoveredBlock83Block95Value0 := recoveredLocal1.
    recoveredBlock83Block95Value1 := recoveredBlock83Arg1.
    recoveredBlock83Block95Value2 := recoveredArg2.
    recoveredBlock83Block95Value3 := recoveredBlock83Block95Arg1.
    recoveredBlock83Block95Value4 := recoveredBlock83Arg2.
    recoveredBlock83Block95Value5 := (recoveredBlock83Block95Value2) value: (recoveredBlock83Block95Value3) value: (recoveredBlock83Block95Value4).
    recoveredBlock83Block95Value6 := (recoveredBlock83Block95Value0) at: (recoveredBlock83Block95Value1) put: (recoveredBlock83Block95Value5).
    recoveredBlock83Block95Value6
].
    recoveredBlock83Value3 := (recoveredBlock83Value0) at: (recoveredBlock83Value1) ifPresent: (recoveredBlock83Value2).
    recoveredBlock83Value3
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapperClass.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWrapper: (recoveredStack1) content: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

