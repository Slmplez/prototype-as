"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000105c; bytecode file offset 0x4bf84"
!Process class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
installBreakHandler: recoveredArg1 selector: recoveredArg2
    ^false
! !

"kernel.ic method 0x20001074; bytecode file offset 0x4bf84"
!Process class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
installTerminateHandler: recoveredArg1 selector: recoveredArg2
    ^false
! !

"kernel.ic method 0x20001340; bytecode file offset 0x4c250"
!Process class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
installBreakHandler: recoveredArg1 selector: recoveredArg2 scan: recoveredArg3 period: recoveredArg4
    ^false
! !

"kernel.ic method 0x20002d08; bytecode file offset 0x4dce4"
!Process class methodsFor: 'recovered'!
defaultStackSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultStackSize := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20002d2c; bytecode file offset 0x4dce4"
!Process class methodsFor: 'recovered'!
stackOverflowWarningSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    StackOverflowWarningSize := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200056e0; bytecode file offset 0x5065c"
!Process class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"kernel.ic method 0x20005df0; bytecode file offset 0x50d54"
!Process class methodsFor: 'recovered'!
newProcessOn: recoveredArg1 stackSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) newProcessOn: (recoveredValue1) stackSize: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000678c; bytecode file offset 0x516a4"
!Process class methodsFor: 'recovered'!
newProcessOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) defaultStackSize.
    recoveredValue3 := (recoveredValue0) newProcessOn: (recoveredValue1) stackSize: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20007f18; bytecode file offset 0x52e3c"
!Process class methodsFor: 'recovered'!
newProcessOn: recoveredArg1 stackSize: recoveredArg2 withArguments: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) newProcessOn: (recoveredValue1) stackSize: (recoveredValue2) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20008a14; bytecode file offset 0x5392c"
!Process class methodsFor: 'recovered'!
newProcessOn: recoveredArg1 withArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) defaultStackSize.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) newProcessOn: (recoveredValue1) stackSize: (recoveredValue2) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20008af8; bytecode file offset 0x53a0c"
!Process class methodsFor: 'recovered'!
newProcessOn: recoveredArg1 withArguments: recoveredArg2 named: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defaultStackSize.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) newProcessOn: (recoveredValue0) stackSize: (recoveredValue1) withArguments: (recoveredValue2) named: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20008bc8; bytecode file offset 0x53adc"
!Process class methodsFor: 'recovered'!
newProcessOn: recoveredArg1 stackSize: recoveredArg2 withArguments: recoveredArg3 named: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) newProcessOn: (recoveredValue1) stackSize: (recoveredValue2) withArguments: (recoveredValue3) named: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x200096f4; bytecode file offset 0x5460c"
!Process class methodsFor: 'recovered'!
newProcessOn: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defaultStackSize.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) newProcessOn: (recoveredValue0) stackSize: (recoveredValue1) withArguments: (#()) named: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000ac58; bytecode file offset 0x55b9c"
!Process class methodsFor: 'recovered'!
stackOverflowWarningSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := StackOverflowWarningSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 16384.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            StackOverflowWarningSize := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := StackOverflowWarningSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000afa0; bytecode file offset 0x55eb8"
!Process class methodsFor: 'recovered'!
initializeAfterLoad
    (self) defaultStackSize: (1024).
    (self) stackOverflowWarningSize: (16384).
    ^self
! !

"kernel.ic method 0x2000b88c; bytecode file offset 0x567a4"
!Process class methodsFor: 'recovered'!
gcEventHandlers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GCEventHandlers.
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
            GCEventHandlers := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := GCEventHandlers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000c210; bytecode file offset 0x57120"
!Process class methodsFor: 'recovered'!
defaultStackSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultStackSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 2048.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            DefaultStackSize := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := DefaultStackSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000e3bc; bytecode file offset 0x592d0"
!Process class methodsFor: 'recovered'!
defaultName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultNameCounter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            DefaultNameCounter := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := DefaultNameCounter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            DefaultNameCounter := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20011b38; bytecode file offset 0x5ca5c"
!Process class methodsFor: 'recovered'!
basicAllInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MethodContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicAllInstances.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28008c14Arg1 | 
    | block28008c14Stack0 block28008c14Stack1 block28008c14Stack2 block28008c14Stack3 block28008c14PC block28008c14Step block28008c14Done block28008c14Result |
    block28008c14Stack0 := self.
    block28008c14PC := 4.
    block28008c14Done := false.
    [block28008c14Done not] whileTrue: [
        block28008c14Step := block28008c14PC.
        block28008c14Step = 4 ifTrue: [
            block28008c14Stack1 := nil.
            block28008c14PC := 5.
        ].
        block28008c14Step = 5 ifTrue: [
            block28008c14Stack2 := block28008c14Arg1.
            block28008c14PC := 6.
        ].
        block28008c14Step = 6 ifTrue: [
            (block28008c14Stack2 == nil) ifTrue: [block28008c14PC := 13] ifFalse: [block28008c14PC := 10].
        ].
        block28008c14Step = 10 ifTrue: [
            block28008c14PC := 11.
        ].
        block28008c14Step = 11 ifTrue: [
            block28008c14Stack1 := block28008c14Arg1.
            block28008c14PC := 12.
        ].
        block28008c14Step = 12 ifTrue: [
            block28008c14Stack1 := (block28008c14Stack1) unlinkDeadProcess.
            block28008c14PC := 13.
        ].
        block28008c14Step = 13 ifTrue: [
            block28008c14Result := block28008c14Stack1.
            block28008c14Done := true.
        ].
    ].
    block28008c14Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := super basicAllInstances.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20015adc; bytecode file offset 0x60a04"
!Process class methodsFor: 'recovered'!
removeGCEventHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) gcEventHandlers.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := [].
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack0) remove: (recoveredBlock4Stack1) ifAbsent: (recoveredBlock4Stack2).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) gcEventHandlers.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isEmpty.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 33].
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := System.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) gcEventMask: (recoveredBlock4Stack1).
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"kernel.ic method 0x20015fa0; bytecode file offset 0x60ef4"
!Process class methodsFor: 'recovered'!
initializeTerminateHandler
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := System.
    recoveredBlock4Value1 := (recoveredBlock4Value0) makeFixed.
    recoveredBlock4Local2 := recoveredBlock4Value1.
    recoveredBlock4Value2 := ('terminate') makeFixed.
    recoveredBlock4Local1 := recoveredBlock4Value2.
    recoveredBlock4Value3 := recoveredBlock4Local2.
    recoveredBlock4Value4 := recoveredBlock4Local1.
    recoveredBlock4Value5 := (self) installTerminateHandler: (recoveredBlock4Value3) selector: (recoveredBlock4Value4).
    recoveredBlock4Value5
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:block28008f00Arg1 | 
    | block28008f00Value0 block28008f00Value1 |
    block28008f00Value0 := block28008f00Arg1.
    block28008f00Value1 := (block28008f00Value0) exitWith: (false).
    block28008f00Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20015fc8; bytecode file offset 0x60ef4"
!Process class methodsFor: 'recovered'!
initializeBreakHandler
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := System.
    recoveredBlock4Value1 := (recoveredBlock4Value0) makeFixed.
    recoveredBlock4Local2 := recoveredBlock4Value1.
    recoveredBlock4Value2 := ('break') makeFixed.
    recoveredBlock4Local1 := recoveredBlock4Value2.
    recoveredBlock4Value3 := recoveredBlock4Local2.
    recoveredBlock4Value4 := recoveredBlock4Local1.
    recoveredBlock4Value5 := (self) installBreakHandler: (recoveredBlock4Value3) selector: (recoveredBlock4Value4).
    recoveredBlock4Value5
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:block28008f24Arg1 | 
    | block28008f24Value0 block28008f24Value1 |
    block28008f24Value0 := block28008f24Arg1.
    block28008f24Value1 := (block28008f24Value0) exitWith: (false).
    block28008f24Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20016178; bytecode file offset 0x610a8"
!Process class methodsFor: 'recovered'!
addGCEventHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 |
    recoveredBlock4Value0 := System.
    recoveredBlock4Value1 := System.
    recoveredBlock4Value2 := (recoveredBlock4Value1) gcEventMask.
    recoveredBlock4Value3 := EsEventScavenge.
    recoveredBlock4Value4 := (recoveredBlock4Value2) bitOr: (recoveredBlock4Value3).
    recoveredBlock4Value5 := System.
    recoveredBlock4Value6 := (recoveredBlock4Value5) gcEventMask.
    recoveredBlock4Value7 := EsEventGGC.
    recoveredBlock4Value8 := (recoveredBlock4Value6) bitOr: (recoveredBlock4Value7).
    recoveredBlock4Value9 := (recoveredBlock4Value4) bitOr: (recoveredBlock4Value8).
    (recoveredBlock4Value0) gcEventMask: (recoveredBlock4Value9).
    recoveredBlock4Value10 := (self) gcEventHandlers.
    recoveredBlock4Value11 := recoveredArg1.
    recoveredBlock4Value12 := (recoveredBlock4Value10) add: (recoveredBlock4Value11).
    recoveredBlock4Value12
].
    (recoveredValue0) critical.
    ^self
! !

"kernel.ic method 0x20019840; bytecode file offset 0x64760"
!Process class methodsFor: 'recovered'!
gcEvent: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := GCEventHandlers.
    recoveredBlock4Value1 := (recoveredBlock4Value0) copy.
    recoveredBlock4Value2 := recoveredBlock4Value1.
    recoveredLocal1 := recoveredBlock4Value2.
    recoveredBlock4Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredArg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) gcEvent: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

