"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20015458; bytecode file offset 0x60370"
!EsWeakList methodsFor: 'recovered'!
removeToBeFinalized: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := finalizeList.
    recoveredBlock4Value1 := [:recoveredBlock4Block12Arg1 :recoveredBlock4Block12Arg2 | 
    | recoveredBlock4Block12Stack0 recoveredBlock4Block12Stack1 recoveredBlock4Block12Stack2 recoveredBlock4Block12Stack3 recoveredBlock4Block12Stack4 recoveredBlock4Block12PC recoveredBlock4Block12Step recoveredBlock4Block12Done recoveredBlock4Block12Result |
    recoveredBlock4Block12Stack0 := self.
    recoveredBlock4Block12PC := 18.
    recoveredBlock4Block12Done := false.
    [recoveredBlock4Block12Done not] whileTrue: [
        recoveredBlock4Block12Step := recoveredBlock4Block12PC.
        recoveredBlock4Block12Step = 18 ifTrue: [
            recoveredBlock4Block12Stack1 := nil.
            recoveredBlock4Block12PC := 19.
        ].
        recoveredBlock4Block12Step = 19 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Arg1.
            recoveredBlock4Block12PC := 20.
        ].
        recoveredBlock4Block12Step = 20 ifTrue: [
            recoveredBlock4Block12Stack3 := recoveredArg1.
            recoveredBlock4Block12PC := 23.
        ].
        recoveredBlock4Block12Step = 23 ifTrue: [
            (recoveredBlock4Block12Stack2 ~~ recoveredBlock4Block12Stack3) ifTrue: [recoveredBlock4Block12PC := 30] ifFalse: [recoveredBlock4Block12PC := 26].
        ].
        recoveredBlock4Block12Step = 26 ifTrue: [
            recoveredBlock4Block12PC := 27.
        ].
        recoveredBlock4Block12Step = 27 ifTrue: [
            recoveredBlock4Block12Stack1 := self.
            recoveredBlock4Block12PC := 28.
        ].
        recoveredBlock4Block12Step = 28 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Arg2.
            recoveredBlock4Block12PC := 29.
        ].
        recoveredBlock4Block12Step = 29 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) deallocateSlot: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 30.
        ].
        recoveredBlock4Block12Step = 30 ifTrue: [
            recoveredBlock4Block12Result := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12Done := true.
        ].
    ].
    recoveredBlock4Block12Result
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) doWithIndex: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (recoveredValue0) critical.
    ^self
! !

"kernel.ic method 0x20016600; bytecode file offset 0x61520"
!EsWeakList methodsFor: 'recovered'!
finalizedSlot: recoveredArg1 removedObject: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) deallocateSlot: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) finalize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSymbol.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) sendTo: (recoveredStack1).
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

"kernel.ic method 0x2001a00c; bytecode file offset 0x64f24"
!EsWeakList methodsFor: 'recovered'!
deallocateSlot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 |
    recoveredBlock4Value0 := finalizeList.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := freeHead.
    (recoveredBlock4Value0) at: (recoveredBlock4Value1) put: (recoveredBlock4Value2).
    recoveredBlock4Value3 := recoveredArg1.
    freeHead := recoveredBlock4Value3.
    recoveredBlock4Value4 := weakCount.
    recoveredBlock4Value5 := (recoveredBlock4Value4) + (-1).
    weakCount := recoveredBlock4Value5.
    recoveredBlock4Value6 := actions.
    recoveredBlock4Value7 := recoveredArg1.
    recoveredBlock4Value8 := (recoveredBlock4Value6) at: (recoveredBlock4Value7).
    recoveredBlock4Local1 := recoveredBlock4Value8.
    recoveredBlock4Value9 := actions.
    recoveredBlock4Value10 := recoveredArg1.
    (recoveredBlock4Value9) at: (recoveredBlock4Value10) put: (nil).
    recoveredBlock4Value11 := recoveredBlock4Local1.
    ^recoveredBlock4Value11
].
    (recoveredValue0) critical.
    ^self
! !

"kernel.ic method 0x2001c180; bytecode file offset 0x6709c"
!EsWeakList methodsFor: 'recovered'!
addToBeFinalized: recoveredArg1 action: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := finalizeList.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := freeHead.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 21] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1) grow.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := freeHead.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := finalizeList.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            freeHead := recoveredBlock4Stack1.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := weakCount.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (1).
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            weakCount := recoveredBlock4Stack1.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack1 := finalizeList.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            (recoveredBlock4Stack1) at: (recoveredBlock4Stack2) put: (recoveredBlock4Stack3).
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack1 := actions.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg2.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2) put: (recoveredBlock4Stack3).
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"kernel.ic method 0x20020a04; bytecode file offset 0x6b928"
!EsWeakList methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsWeakArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            finalizeList := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := finalizeList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            actions := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            weakCount := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            freeHead := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := finalizeList.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := finalizeList.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 42] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := finalizeList.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := finalizeList.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20029eb8; bytecode file offset 0x74df0"
!EsWeakList methodsFor: 'recovered'!
grow
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := Processor.
    recoveredBlock4Value1 := [
    | recoveredBlock4Block12Local1 recoveredBlock4Block12Stack0 recoveredBlock4Block12Stack1 recoveredBlock4Block12Stack2 recoveredBlock4Block12Stack3 recoveredBlock4Block12Stack4 recoveredBlock4Block12Stack5 recoveredBlock4Block12PC recoveredBlock4Block12Step recoveredBlock4Block12Done recoveredBlock4Block12Result |
    recoveredBlock4Block12Stack0 := self.
    recoveredBlock4Block12PC := 18.
    recoveredBlock4Block12Done := false.
    [recoveredBlock4Block12Done not] whileTrue: [
        recoveredBlock4Block12Step := recoveredBlock4Block12PC.
        recoveredBlock4Block12Step = 18 ifTrue: [
            recoveredBlock4Block12Stack1 := finalizeList.
            recoveredBlock4Block12PC := 20.
        ].
        recoveredBlock4Block12Step = 20 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 23.
        ].
        recoveredBlock4Block12Step = 23 ifTrue: [
            recoveredBlock4Block12Stack1 := actions.
            recoveredBlock4Block12PC := 25.
        ].
        recoveredBlock4Block12Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 28.
        ].
        recoveredBlock4Block12Step = 28 ifTrue: [
            recoveredBlock4Block12Stack1 := EsWeakArray.
            recoveredBlock4Block12PC := 30.
        ].
        recoveredBlock4Block12Step = 30 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredLocal2.
            recoveredBlock4Block12PC := 33.
        ].
        recoveredBlock4Block12Step = 33 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) size.
            recoveredBlock4Block12PC := 34.
        ].
        recoveredBlock4Block12Step = 34 ifTrue: [
            recoveredBlock4Block12Stack3 := 3.
            recoveredBlock4Block12PC := 36.
        ].
        recoveredBlock4Block12Step = 36 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) * (recoveredBlock4Block12Stack3).
            recoveredBlock4Block12PC := 37.
        ].
        recoveredBlock4Block12Step = 37 ifTrue: [
            recoveredBlock4Block12Stack3 := 2.
            recoveredBlock4Block12PC := 39.
        ].
        recoveredBlock4Block12Step = 39 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) // (recoveredBlock4Block12Stack3).
            recoveredBlock4Block12PC := 40.
        ].
        recoveredBlock4Block12Step = 40 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) new: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 41.
        ].
        recoveredBlock4Block12Step = 41 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 42.
        ].
        recoveredBlock4Block12Step = 42 ifTrue: [
            finalizeList := recoveredBlock4Block12Stack2.
            recoveredBlock4Block12PC := 44.
        ].
        recoveredBlock4Block12Step = 44 ifTrue: [
            recoveredBlock4Block12Stack2 := self.
            recoveredBlock4Block12PC := 45.
        ].
        recoveredBlock4Block12Step = 45 ifTrue: [
            (recoveredBlock4Block12Stack1) owner: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 47.
        ].
        recoveredBlock4Block12Step = 47 ifTrue: [
            recoveredBlock4Block12Stack1 := Array.
            recoveredBlock4Block12PC := 49.
        ].
        recoveredBlock4Block12Step = 49 ifTrue: [
            recoveredBlock4Block12Stack2 := finalizeList.
            recoveredBlock4Block12PC := 51.
        ].
        recoveredBlock4Block12Step = 51 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) size.
            recoveredBlock4Block12PC := 52.
        ].
        recoveredBlock4Block12Step = 52 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) new: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 53.
        ].
        recoveredBlock4Block12Step = 53 ifTrue: [
            actions := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 55.
        ].
        recoveredBlock4Block12Step = 55 ifTrue: [
            recoveredBlock4Block12Stack1 := finalizeList.
            recoveredBlock4Block12PC := 57.
        ].
        recoveredBlock4Block12Step = 57 ifTrue: [
            recoveredBlock4Block12Stack2 := 1.
            recoveredBlock4Block12PC := 59.
        ].
        recoveredBlock4Block12Step = 59 ifTrue: [
            recoveredBlock4Block12Stack3 := recoveredLocal2.
            recoveredBlock4Block12PC := 62.
        ].
        recoveredBlock4Block12Step = 62 ifTrue: [
            recoveredBlock4Block12Stack3 := (recoveredBlock4Block12Stack3) size.
            recoveredBlock4Block12PC := 63.
        ].
        recoveredBlock4Block12Step = 63 ifTrue: [
            recoveredBlock4Block12Stack4 := recoveredLocal2.
            recoveredBlock4Block12PC := 66.
        ].
        recoveredBlock4Block12Step = 66 ifTrue: [
            (recoveredBlock4Block12Stack1) replaceFrom: (recoveredBlock4Block12Stack2) to: (recoveredBlock4Block12Stack3) with: (recoveredBlock4Block12Stack4).
            recoveredBlock4Block12PC := 69.
        ].
        recoveredBlock4Block12Step = 69 ifTrue: [
            recoveredBlock4Block12Stack1 := actions.
            recoveredBlock4Block12PC := 71.
        ].
        recoveredBlock4Block12Step = 71 ifTrue: [
            recoveredBlock4Block12Stack2 := 1.
            recoveredBlock4Block12PC := 73.
        ].
        recoveredBlock4Block12Step = 73 ifTrue: [
            recoveredBlock4Block12Stack3 := recoveredLocal1.
            recoveredBlock4Block12PC := 76.
        ].
        recoveredBlock4Block12Step = 76 ifTrue: [
            recoveredBlock4Block12Stack3 := (recoveredBlock4Block12Stack3) size.
            recoveredBlock4Block12PC := 77.
        ].
        recoveredBlock4Block12Step = 77 ifTrue: [
            recoveredBlock4Block12Stack4 := recoveredLocal1.
            recoveredBlock4Block12PC := 80.
        ].
        recoveredBlock4Block12Step = 80 ifTrue: [
            (recoveredBlock4Block12Stack1) replaceFrom: (recoveredBlock4Block12Stack2) to: (recoveredBlock4Block12Stack3) with: (recoveredBlock4Block12Stack4).
            recoveredBlock4Block12PC := 83.
        ].
        recoveredBlock4Block12Step = 83 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredLocal2.
            recoveredBlock4Block12PC := 86.
        ].
        recoveredBlock4Block12Step = 86 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) size.
            recoveredBlock4Block12PC := 87.
        ].
        recoveredBlock4Block12Step = 87 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) + (1).
            recoveredBlock4Block12PC := 88.
        ].
        recoveredBlock4Block12Step = 88 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) + (-1).
            recoveredBlock4Block12PC := 89.
        ].
        recoveredBlock4Block12Step = 89 ifTrue: [
            recoveredBlock4Block12Local1 := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 90.
        ].
        recoveredBlock4Block12Step = 90 ifTrue: [
            recoveredBlock4Block12Stack1 := finalizeList.
            recoveredBlock4Block12PC := 92.
        ].
        recoveredBlock4Block12Step = 92 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) size.
            recoveredBlock4Block12PC := 93.
        ].
        recoveredBlock4Block12Step = 93 ifTrue: [
            recoveredBlock4Block12PC := 106.
        ].
        recoveredBlock4Block12Step = 96 ifTrue: [
            recoveredBlock4Block12Stack2 := finalizeList.
            recoveredBlock4Block12PC := 98.
        ].
        recoveredBlock4Block12Step = 98 ifTrue: [
            recoveredBlock4Block12Stack3 := recoveredBlock4Block12Local1.
            recoveredBlock4Block12PC := 99.
        ].
        recoveredBlock4Block12Step = 99 ifTrue: [
            recoveredBlock4Block12Stack4 := freeHead.
            recoveredBlock4Block12PC := 101.
        ].
        recoveredBlock4Block12Step = 101 ifTrue: [
            (recoveredBlock4Block12Stack2) at: (recoveredBlock4Block12Stack3) put: (recoveredBlock4Block12Stack4).
            recoveredBlock4Block12PC := 103.
        ].
        recoveredBlock4Block12Step = 103 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Local1.
            recoveredBlock4Block12PC := 104.
        ].
        recoveredBlock4Block12Step = 104 ifTrue: [
            freeHead := recoveredBlock4Block12Stack2.
            recoveredBlock4Block12PC := 106.
        ].
        recoveredBlock4Block12Step = 106 ifTrue: [
            (recoveredBlock4Block12Stack1 isInteger and: [recoveredBlock4Block12Local1 isInteger]) ifTrue: [(recoveredBlock4Block12Local1 + 1 <= recoveredBlock4Block12Stack1) ifTrue: [recoveredBlock4Block12Local1 := recoveredBlock4Block12Local1 + 1. recoveredBlock4Block12PC := 96] ifFalse: [recoveredBlock4Block12Local1 := nil. recoveredBlock4Block12PC := 120]] ifFalse: [recoveredBlock4Block12PC := 110].
        ].
        recoveredBlock4Block12Step = 110 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 111.
        ].
        recoveredBlock4Block12Step = 111 ifTrue: [
            recoveredBlock4Block12Stack3 := recoveredBlock4Block12Local1.
            recoveredBlock4Block12PC := 112.
        ].
        recoveredBlock4Block12Step = 112 ifTrue: [
            recoveredBlock4Block12Stack3 := (recoveredBlock4Block12Stack3) + (1).
            recoveredBlock4Block12PC := 113.
        ].
        recoveredBlock4Block12Step = 113 ifTrue: [
            recoveredBlock4Block12Stack4 := recoveredBlock4Block12Stack3.
            recoveredBlock4Block12PC := 114.
        ].
        recoveredBlock4Block12Step = 114 ifTrue: [
            recoveredBlock4Block12Local1 := recoveredBlock4Block12Stack4.
            recoveredBlock4Block12PC := 115.
        ].
        recoveredBlock4Block12Step = 115 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) < (recoveredBlock4Block12Stack3).
            recoveredBlock4Block12PC := 116.
        ].
        recoveredBlock4Block12Step = 116 ifTrue: [
            (recoveredBlock4Block12Stack2) ifTrue: [recoveredBlock4Block12PC := 118] ifFalse: [recoveredBlock4Block12PC := 96].
        ].
        recoveredBlock4Block12Step = 118 ifTrue: [
            recoveredBlock4Block12Stack2 := nil.
            recoveredBlock4Block12PC := 119.
        ].
        recoveredBlock4Block12Step = 119 ifTrue: [
            recoveredBlock4Block12Local1 := recoveredBlock4Block12Stack2.
            recoveredBlock4Block12PC := 120.
        ].
        recoveredBlock4Block12Step = 120 ifTrue: [
            recoveredBlock4Block12PC := 121.
        ].
        recoveredBlock4Block12Step = 121 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredLocal2.
            recoveredBlock4Block12PC := 124.
        ].
        recoveredBlock4Block12Step = 124 ifTrue: [
            recoveredBlock4Block12Stack2 := nil.
            recoveredBlock4Block12PC := 125.
        ].
        recoveredBlock4Block12Step = 125 ifTrue: [
            (recoveredBlock4Block12Stack1) atAllPut: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 127.
        ].
        recoveredBlock4Block12Step = 127 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredLocal2.
            recoveredBlock4Block12PC := 130.
        ].
        recoveredBlock4Block12Step = 130 ifTrue: [
            recoveredBlock4Block12Stack2 := nil.
            recoveredBlock4Block12PC := 131.
        ].
        recoveredBlock4Block12Step = 131 ifTrue: [
            (recoveredBlock4Block12Stack1) owner: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 133.
        ].
        recoveredBlock4Block12Step = 133 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredLocal1.
            recoveredBlock4Block12PC := 136.
        ].
        recoveredBlock4Block12Step = 136 ifTrue: [
            recoveredBlock4Block12Stack2 := nil.
            recoveredBlock4Block12PC := 137.
        ].
        recoveredBlock4Block12Step = 137 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) atAllPut: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 139.
        ].
        recoveredBlock4Block12Step = 139 ifTrue: [
            recoveredBlock4Block12Result := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12Done := true.
        ].
    ].
    recoveredBlock4Block12Result
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) finalizeProtect: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (recoveredValue0) critical.
    ^self
! !

