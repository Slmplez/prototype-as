"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200130e0; bytecode file offset 0x912098"
!CTStructure class methodsFor: 'recovered'!
OSMemoryPointers
    | recoveredValue0 |
    recoveredValue0 := OSMemoryPointers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b064; bytecode file offset 0x947a60"
!CTStructure class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) new: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200548a8; bytecode file offset 0x951190"
!CTStructure class methodsFor: 'recovered'!
OSMemoryPointers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    OSMemoryPointers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011dc80; bytecode file offset 0xa1a548"
!CTStructure class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := (self) variableSize.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredValue7 := (self) reference: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201477e8; bytecode file offset 0xa440ac"
!CTStructure class methodsFor: 'recovered'!
fromPointer: recoveredArg1 entries: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (self) variableSize.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) * (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    recoveredValue7 := (recoveredValue0) memcpyFrom: (0) to: (recoveredValue6).
    recoveredValue8 := (self) reference: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2014ca78; bytecode file offset 0xa49348"
!CTStructure class methodsFor: 'recovered'!
initializeClassVars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) OSMemoryPointers: (recoveredValue1).
    recoveredValue2 := (self) OSMemoryPointers.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) at: ('current') put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2016bb94; bytecode file offset 0xa68464"
!CTStructure class methodsFor: 'recovered'!
registerName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) collection.
    recoveredValue7 := (recoveredValue6) asPSZ.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20293878; bytecode file offset 0xb90144"
!CTStructure class methodsFor: 'recovered'!
unRegister: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) OSMemoryPointers.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    (recoveredBlock14Value0) at: ('current') put: (recoveredBlock14Value1).
    (self) cleanupCurrentOSMemory.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := recoveredArg1.
    recoveredBlock14Value4 := (recoveredBlock14Value2) removeKey: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (recoveredValue1) at: (recoveredValue2) ifPresent: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2029e4d4; bytecode file offset 0xb9adb0"
!CTStructure class methodsFor: 'recovered'!
register: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) OSMemoryPointers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) initializeClassVars.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) OSMemoryPointers.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    | block280e39a0Value0 block280e39a0Value1 |
    block280e39a0Value0 := OrderedCollection.
    block280e39a0Value1 := (block280e39a0Value0) new.
    block280e39a0Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'current'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029fd70; bytecode file offset 0xb9c648"
!CTStructure class methodsFor: 'recovered'!
cleanupCurrentOSMemory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) OSMemoryPointers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'current'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e3b2cArg1 | 
    | block280e3b2cValue0 block280e3b2cValue1 block280e3b2cValue2 block280e3b2cValue3 |
    block280e3b2cValue0 := block280e3b2cArg1.
    block280e3b2cValue1 := (block280e3b2cValue0) copy.
    block280e3b2cValue2 := [:block280e3b2cBlock8Arg1 | 
    | block280e3b2cBlock8Stack0 block280e3b2cBlock8Stack1 block280e3b2cBlock8Stack2 block280e3b2cBlock8Stack3 block280e3b2cBlock8PC block280e3b2cBlock8Step block280e3b2cBlock8Done block280e3b2cBlock8Result |
    block280e3b2cBlock8Stack0 := nil.
    block280e3b2cBlock8PC := 14.
    block280e3b2cBlock8Done := false.
    [block280e3b2cBlock8Done not] whileTrue: [
        block280e3b2cBlock8Step := block280e3b2cBlock8PC.
        block280e3b2cBlock8Step = 14 ifTrue: [
            block280e3b2cBlock8Stack1 := block280e3b2cBlock8Arg1.
            block280e3b2cBlock8PC := 15.
        ].
        block280e3b2cBlock8Step = 15 ifTrue: [
            block280e3b2cBlock8Stack1 := (block280e3b2cBlock8Stack1) reference.
            block280e3b2cBlock8PC := 17.
        ].
        block280e3b2cBlock8Step = 17 ifTrue: [
            (block280e3b2cBlock8Stack1 == nil) ifTrue: [block280e3b2cBlock8PC := 23] ifFalse: [block280e3b2cBlock8PC := 20].
        ].
        block280e3b2cBlock8Step = 20 ifTrue: [
            block280e3b2cBlock8Stack1 := block280e3b2cBlock8Arg1.
            block280e3b2cBlock8PC := 21.
        ].
        block280e3b2cBlock8Step = 21 ifTrue: [
            (block280e3b2cBlock8Stack1) free.
            block280e3b2cBlock8PC := 23.
        ].
        block280e3b2cBlock8Step = 23 ifTrue: [
            block280e3b2cBlock8Stack1 := block280e3b2cArg1.
            block280e3b2cBlock8PC := 26.
        ].
        block280e3b2cBlock8Step = 26 ifTrue: [
            block280e3b2cBlock8Stack2 := block280e3b2cBlock8Arg1.
            block280e3b2cBlock8PC := 27.
        ].
        block280e3b2cBlock8Step = 27 ifTrue: [
            block280e3b2cBlock8Stack1 := (block280e3b2cBlock8Stack1) remove: (block280e3b2cBlock8Stack2).
            block280e3b2cBlock8PC := 29.
        ].
        block280e3b2cBlock8Step = 29 ifTrue: [
            block280e3b2cBlock8Result := block280e3b2cBlock8Stack1.
            block280e3b2cBlock8Done := true.
        ].
    ].
    block280e3b2cBlock8Result
].
    block280e3b2cValue3 := (block280e3b2cValue1) do: (block280e3b2cValue2).
    block280e3b2cValue3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038ac94; bytecode file offset 0xc87570"
!CTStructure class methodsFor: 'recovered'!
cleanupOSMemory
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) OSMemoryPointers.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [].
    (recoveredValue1) removeKey: ('current') ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) copy.
    recoveredValue5 := [:recoveredBlock22Arg1 :recoveredBlock22Arg2 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 |
    recoveredBlock22Value0 := recoveredBlock22Arg2.
    recoveredBlock22Value1 := (recoveredBlock22Value0) copy.
    recoveredBlock22Value2 := [:recoveredBlock22Block33Arg1 | 
    | recoveredBlock22Block33Stack0 recoveredBlock22Block33Stack1 recoveredBlock22Block33Stack2 recoveredBlock22Block33Stack3 recoveredBlock22Block33PC recoveredBlock22Block33Step recoveredBlock22Block33Done recoveredBlock22Block33Result |
    recoveredBlock22Block33Stack0 := nil.
    recoveredBlock22Block33PC := 40.
    recoveredBlock22Block33Done := false.
    [recoveredBlock22Block33Done not] whileTrue: [
        recoveredBlock22Block33Step := recoveredBlock22Block33PC.
        recoveredBlock22Block33Step = 40 ifTrue: [
            recoveredBlock22Block33Stack1 := recoveredBlock22Block33Arg1.
            recoveredBlock22Block33PC := 41.
        ].
        recoveredBlock22Block33Step = 41 ifTrue: [
            recoveredBlock22Block33Stack1 := (recoveredBlock22Block33Stack1) reference.
            recoveredBlock22Block33PC := 43.
        ].
        recoveredBlock22Block33Step = 43 ifTrue: [
            (recoveredBlock22Block33Stack1 == nil) ifTrue: [recoveredBlock22Block33PC := 49] ifFalse: [recoveredBlock22Block33PC := 46].
        ].
        recoveredBlock22Block33Step = 46 ifTrue: [
            recoveredBlock22Block33Stack1 := recoveredBlock22Block33Arg1.
            recoveredBlock22Block33PC := 47.
        ].
        recoveredBlock22Block33Step = 47 ifTrue: [
            (recoveredBlock22Block33Stack1) free.
            recoveredBlock22Block33PC := 49.
        ].
        recoveredBlock22Block33Step = 49 ifTrue: [
            recoveredBlock22Block33Stack1 := recoveredBlock22Arg2.
            recoveredBlock22Block33PC := 52.
        ].
        recoveredBlock22Block33Step = 52 ifTrue: [
            recoveredBlock22Block33Stack2 := recoveredBlock22Block33Arg1.
            recoveredBlock22Block33PC := 53.
        ].
        recoveredBlock22Block33Step = 53 ifTrue: [
            recoveredBlock22Block33Stack1 := (recoveredBlock22Block33Stack1) remove: (recoveredBlock22Block33Stack2).
            recoveredBlock22Block33PC := 55.
        ].
        recoveredBlock22Block33Step = 55 ifTrue: [
            recoveredBlock22Block33Result := recoveredBlock22Block33Stack1.
            recoveredBlock22Block33Done := true.
        ].
    ].
    recoveredBlock22Block33Result
].
    (recoveredBlock22Value1) do: (recoveredBlock22Value2).
    recoveredBlock22Value3 := recoveredLocal1.
    recoveredBlock22Value4 := recoveredBlock22Arg1.
    recoveredBlock22Value5 := [].
    recoveredBlock22Value6 := (recoveredBlock22Value3) removeKey: (recoveredBlock22Value4) ifAbsent: (recoveredBlock22Value5).
    recoveredBlock22Value6
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    ^self
! !

