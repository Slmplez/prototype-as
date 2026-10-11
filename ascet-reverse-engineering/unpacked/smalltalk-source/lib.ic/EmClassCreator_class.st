"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000049c; bytecode file offset 0x3c670"
!EmClassCreator class methodsFor: 'recovered'!
newDefinitions
    | recoveredValue0 |
    recoveredValue0 := NewDefinitions.
    ^recoveredValue0
! !

"lib.ic method 0x20000538; bytecode file offset 0x3c670"
!EmClassCreator class methodsFor: 'recovered'!
definitionDescriptorClass
    | recoveredValue0 |
    recoveredValue0 := EmClassDefinitionDescriptor.
    ^recoveredValue0
! !

"lib.ic method 0x20000628; bytecode file offset 0x3c670"
!EmClassCreator class methodsFor: 'recovered'!
orderedDefinitions
    | recoveredValue0 |
    recoveredValue0 := OrderedDefinitions.
    ^recoveredValue0
! !

"lib.ic method 0x20001acc; bytecode file offset 0x3daf0"
!EmClassCreator class methodsFor: 'recovered'!
waitingForMoreChanges
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Waiting.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"lib.ic method 0x20001c44; bytecode file offset 0x3dc6c"
!EmClassCreator class methodsFor: 'recovered'!
finishedMultipleChanges
    | recoveredValue0 |
    Waiting := false.
    recoveredValue0 := (self) createClasses.
    ^recoveredValue0
! !

"lib.ic method 0x20003d3c; bytecode file offset 0x3fd64"
!EmClassCreator class methodsFor: 'recovered'!
initialize
    (self) reset.
    Waiting := false.
    ^self
! !

"lib.ic method 0x20003d58; bytecode file offset 0x3fd80"
!EmClassCreator class methodsFor: 'recovered'!
waitForMultipleChanges
    (self) reset.
    Waiting := true.
    ^self
! !

"lib.ic method 0x20005ba0; bytecode file offset 0x41bd0"
!EmClassCreator class methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    NewDefinitions := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    OrderedDefinitions := recoveredValue3.
    ^self
! !

"lib.ic method 0x20009090; bytecode file offset 0x450cc"
!EmClassCreator class methodsFor: 'recovered'!
report: recoveredArg1 andExit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) reset.
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) errorReporter.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    (recoveredValue1) reportError: (186) withParms: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) value.
    ^recoveredValue6
! !

"lib.ic method 0x2000d174; bytecode file offset 0x491a0"
!EmClassCreator class methodsFor: 'recovered'!
createClassNamed: recoveredArg1 in: recoveredArg2 for: recoveredArg3 subclassOf: recoveredArg4 instanceShape: recoveredArg5 classInstanceVariables: recoveredArg6 instanceVariables: recoveredArg7 classVariables: recoveredArg8 sharedPoolNames: recoveredArg9
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionDescriptorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := recoveredArg6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := recoveredArg7.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := recoveredArg8.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := recoveredArg9.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) named: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20019648; bytecode file offset 0x55680"
!EmClassCreator class methodsFor: 'recovered'!
definitionNamed: recoveredArg1 in: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) newDefinitions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) environmentKey.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2 ~~ recoveredBlock5Stack3) ifTrue: [recoveredBlock5PC := 33] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) environment.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg2.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            (recoveredBlock5Stack2 ~~ recoveredBlock5Stack3) ifTrue: [recoveredBlock5PC := 33] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) orderedDefinitions.
    recoveredValue3 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) environmentKey.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack3 := recoveredArg1.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            (recoveredBlock39Stack2 ~~ recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 67] ifFalse: [recoveredBlock39PC := 56].
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) environment.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack3 := recoveredArg2.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            (recoveredBlock39Stack2 ~~ recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 67] ifFalse: [recoveredBlock39PC := 64].
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39PC := 65.
        ].
        recoveredBlock39Step = 65 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 66.
        ].
        recoveredBlock39Step = 66 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"lib.ic method 0x2001cb40; bytecode file offset 0x58ba0"
!EmClassCreator class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitingForMoreChanges.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDefinitions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) newDefinitions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := MxEMb8.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) newDefinitions.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 70]] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDefinitions.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) environmentKey.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDefinitions.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClasses.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20022138; bytecode file offset 0x5e194"
!EmClassCreator class methodsFor: 'recovered'!
createDefinition: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) waitingToBeCreated.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) canBeCreated.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) orderedDefinitions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := (recoveredBlock51Value0) environmentKey.
    recoveredBlock51Value2 := recoveredArg1.
    recoveredBlock51Value3 := (recoveredBlock51Value2) environment.
    recoveredBlock51Value4 := [
    | recoveredBlock51Block68Stack0 recoveredBlock51Block68Stack1 recoveredBlock51Block68Stack2 recoveredBlock51Block68Stack3 recoveredBlock51Block68Stack4 recoveredBlock51Block68Stack5 recoveredBlock51Block68PC recoveredBlock51Block68Step recoveredBlock51Block68Done recoveredBlock51Block68Result |
    recoveredBlock51Block68Stack0 := self.
    recoveredBlock51Block68PC := 74.
    recoveredBlock51Block68Done := false.
    [recoveredBlock51Block68Done not] whileTrue: [
        recoveredBlock51Block68Step := recoveredBlock51Block68PC.
        recoveredBlock51Block68Step = 74 ifTrue: [
            recoveredBlock51Block68Stack0 := (recoveredBlock51Block68Stack0) definitionDescriptorClass.
            recoveredBlock51Block68PC := 76.
        ].
        recoveredBlock51Block68Step = 76 ifTrue: [
            recoveredBlock51Block68Stack1 := recoveredBlock51Arg1.
            recoveredBlock51Block68PC := 79.
        ].
        recoveredBlock51Block68Step = 79 ifTrue: [
            recoveredBlock51Block68Stack2 := recoveredArg1.
            recoveredBlock51Block68PC := 82.
        ].
        recoveredBlock51Block68Step = 82 ifTrue: [
            recoveredBlock51Block68Stack2 := (recoveredBlock51Block68Stack2) environment.
            recoveredBlock51Block68PC := 84.
        ].
        recoveredBlock51Block68Step = 84 ifTrue: [
            recoveredBlock51Block68Stack3 := recoveredBlock51Arg1.
            recoveredBlock51Block68PC := 87.
        ].
        recoveredBlock51Block68Step = 87 ifTrue: [
            recoveredBlock51Block68Stack3 := (recoveredBlock51Block68Stack3) hasController.
            recoveredBlock51Block68PC := 89.
        ].
        recoveredBlock51Block68Step = 89 ifTrue: [
            (recoveredBlock51Block68Stack3) ifTrue: [recoveredBlock51Block68PC := 92] ifFalse: [recoveredBlock51Block68PC := 100].
        ].
        recoveredBlock51Block68Step = 92 ifTrue: [
            recoveredBlock51Block68Stack3 := recoveredBlock51Arg1.
            recoveredBlock51Block68PC := 95.
        ].
        recoveredBlock51Block68Step = 95 ifTrue: [
            recoveredBlock51Block68Stack3 := (recoveredBlock51Block68Stack3) controller.
            recoveredBlock51Block68PC := 97.
        ].
        recoveredBlock51Block68Step = 97 ifTrue: [
            recoveredBlock51Block68PC := 101.
        ].
        recoveredBlock51Block68Step = 100 ifTrue: [
            recoveredBlock51Block68Stack3 := nil.
            recoveredBlock51Block68PC := 101.
        ].
        recoveredBlock51Block68Step = 101 ifTrue: [
            recoveredBlock51Block68Stack4 := recoveredArg1.
            recoveredBlock51Block68PC := 104.
        ].
        recoveredBlock51Block68Step = 104 ifTrue: [
            recoveredBlock51Block68Stack0 := (recoveredBlock51Block68Stack0) copy: (recoveredBlock51Block68Stack1) in: (recoveredBlock51Block68Stack2) for: (recoveredBlock51Block68Stack3) subclassOf: (recoveredBlock51Block68Stack4).
            recoveredBlock51Block68PC := 107.
        ].
        recoveredBlock51Block68Step = 107 ifTrue: [
            recoveredLocal1 := recoveredBlock51Block68Stack0.
            recoveredBlock51Block68PC := 110.
        ].
        recoveredBlock51Block68Step = 110 ifTrue: [
            recoveredBlock51Block68Stack0 := recoveredLocal1.
            recoveredBlock51Block68PC := 113.
        ].
        recoveredBlock51Block68Step = 113 ifTrue: [
            (recoveredBlock51Block68Stack0 ~~ nil) ifTrue: [recoveredBlock51Block68PC := 122] ifFalse: [recoveredBlock51Block68PC := 116].
        ].
        recoveredBlock51Block68Step = 116 ifTrue: [
            recoveredBlock51Block68Stack0 := recoveredArg2.
            recoveredBlock51Block68PC := 119.
        ].
        recoveredBlock51Block68Step = 119 ifTrue: [
            recoveredBlock51Block68Stack0 := (recoveredBlock51Block68Stack0) value.
            recoveredBlock51Block68PC := 121.
        ].
        recoveredBlock51Block68Step = 121 ifTrue: [
            ^recoveredBlock51Block68Stack0
        ].
        recoveredBlock51Block68Step = 122 ifTrue: [
            recoveredBlock51Block68Stack0 := self.
            recoveredBlock51Block68PC := 123.
        ].
        recoveredBlock51Block68Step = 123 ifTrue: [
            recoveredBlock51Block68Stack1 := recoveredLocal1.
            recoveredBlock51Block68PC := 126.
        ].
        recoveredBlock51Block68Step = 126 ifTrue: [
            recoveredBlock51Block68Stack2 := recoveredArg2.
            recoveredBlock51Block68PC := 129.
        ].
        recoveredBlock51Block68Step = 129 ifTrue: [
            recoveredBlock51Block68Stack0 := (recoveredBlock51Block68Stack0) createDefinition: (recoveredBlock51Block68Stack1) ifUnable: (recoveredBlock51Block68Stack2).
            recoveredBlock51Block68PC := 131.
        ].
        recoveredBlock51Block68Step = 131 ifTrue: [
            recoveredBlock51Block68Result := recoveredBlock51Block68Stack0.
            recoveredBlock51Block68Done := true.
        ].
    ].
    recoveredBlock51Block68Result
].
    recoveredBlock51Value5 := (self) definitionNamed: (recoveredBlock51Value1) in: (recoveredBlock51Value3) ifAbsent: (recoveredBlock51Value4).
    recoveredBlock51Value5
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) visibleSubclassesDo: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20025494; bytecode file offset 0x61504"
!EmClassCreator class methodsFor: 'recovered'!
checkApplicationRulesFor: recoveredArg1 ifFail: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInstalled.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) defineSubclassOf: (recoveredStack2) named: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 175.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) canBeRedefined.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifFalse: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) existingClass.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) superclass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadedSubApplications.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredArg1.
    recoveredBlock90Value2 := (recoveredBlock90Value1) existingClass.
    recoveredBlock90Value3 := (recoveredBlock90Value0) == (recoveredBlock90Value2).
    recoveredBlock90Value3
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := MxEMb6.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) report: (recoveredStack2) andExit: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassVisible: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := MxEMb7.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack5 := (recoveredStack5) existingClass.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack5 := (recoveredStack5) controller.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) report: (recoveredStack2) andExit: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20026120; bytecode file offset 0x621a4"
!EmClassCreator class methodsFor: 'recovered'!
createClasses
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDefinitions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := [
    ^nil
].
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack0) createDefinition: (recoveredBlock5Stack1) ifUnable: (recoveredBlock5Stack2).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack0 := nil.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) application.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 44] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack2 := [
    ^nil
].
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) checkApplicationRulesFor: (recoveredBlock5Stack1) ifFail: (recoveredBlock5Stack2).
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) orderedDefinitions.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:block280052e4Arg1 | 
    | block280052e4Value0 block280052e4Value1 |
    block280052e4Value0 := block280052e4Arg1.
    block280052e4Value1 := (block280052e4Value0) createClass.
    block280052e4Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) installClasses.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) orderedDefinitions.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:block28005308Arg1 | 
    | block28005308Stack0 block28005308Stack1 block28005308Stack2 block28005308Stack3 block28005308PC block28005308Step block28005308Done block28005308Result |
    block28005308Stack0 := self.
    block28005308PC := 4.
    block28005308Done := false.
    [block28005308Done not] whileTrue: [
        block28005308Step := block28005308PC.
        block28005308Step = 4 ifTrue: [
            block28005308Stack1 := nil.
            block28005308PC := 5.
        ].
        block28005308Step = 5 ifTrue: [
            block28005308Stack2 := block28005308Arg1.
            block28005308PC := 6.
        ].
        block28005308Step = 6 ifTrue: [
            block28005308Stack2 := (block28005308Stack2) application.
            block28005308PC := 7.
        ].
        block28005308Step = 7 ifTrue: [
            (block28005308Stack2 == nil) ifTrue: [block28005308PC := 47] ifFalse: [block28005308PC := 10].
        ].
        block28005308Step = 10 ifTrue: [
            block28005308PC := 11.
        ].
        block28005308Step = 11 ifTrue: [
            block28005308Stack1 := block28005308Arg1.
            block28005308PC := 12.
        ].
        block28005308Step = 12 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) requestedChange.
            block28005308PC := 14.
        ].
        block28005308Step = 14 ifTrue: [
            (block28005308Stack1) ifTrue: [block28005308PC := 18] ifFalse: [block28005308PC := 42].
        ].
        block28005308Step = 18 ifTrue: [
            block28005308Stack1 := block28005308Arg1.
            block28005308PC := 19.
        ].
        block28005308Step = 19 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) existingClass.
            block28005308PC := 21.
        ].
        block28005308Step = 21 ifTrue: [
            (block28005308Stack1 ~~ nil) ifTrue: [block28005308PC := 34] ifFalse: [block28005308PC := 24].
        ].
        block28005308Step = 24 ifTrue: [
            block28005308Stack1 := block28005308Arg1.
            block28005308PC := 25.
        ].
        block28005308Step = 25 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) application.
            block28005308PC := 26.
        ].
        block28005308Step = 26 ifTrue: [
            block28005308Stack2 := block28005308Arg1.
            block28005308PC := 27.
        ].
        block28005308Step = 27 ifTrue: [
            block28005308Stack2 := (block28005308Stack2) newClass.
            block28005308PC := 29.
        ].
        block28005308Step = 29 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) createInitialEditionFor: (block28005308Stack2).
            block28005308PC := 31.
        ].
        block28005308Step = 31 ifTrue: [
            block28005308PC := 39.
        ].
        block28005308Step = 34 ifTrue: [
            block28005308Stack1 := block28005308Arg1.
            block28005308PC := 35.
        ].
        block28005308Step = 35 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) newClass.
            block28005308PC := 37.
        ].
        block28005308Step = 37 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) definitionWasChanged.
            block28005308PC := 39.
        ].
        block28005308Step = 39 ifTrue: [
            block28005308PC := 47.
        ].
        block28005308Step = 42 ifTrue: [
            block28005308Stack1 := block28005308Arg1.
            block28005308PC := 43.
        ].
        block28005308Step = 43 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) newClass.
            block28005308PC := 45.
        ].
        block28005308Step = 45 ifTrue: [
            block28005308Stack1 := (block28005308Stack1) superclassWasChanged.
            block28005308PC := 47.
        ].
        block28005308Step = 47 ifTrue: [
            block28005308Result := block28005308Stack1.
            block28005308Done := true.
        ].
    ].
    block28005308Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDefinitions.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 |
    recoveredBlock129Value0 := recoveredLocal1.
    recoveredBlock129Value1 := recoveredBlock129Arg1.
    recoveredBlock129Value2 := (recoveredBlock129Value1) newClass.
    recoveredBlock129Value3 := (recoveredBlock129Value0) add: (recoveredBlock129Value2).
    recoveredBlock129Value3
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) callDeferredCallbacks.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002b94c; bytecode file offset 0x679b0"
!EmClassCreator class methodsFor: 'recovered'!
superclassFor: recoveredArg1 in: recoveredArg2 toMatch: recoveredArg3 ifUndefined: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) environmentKey.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock40Value0 |
    recoveredBlock40Value0 := recoveredArg3.
    recoveredBlock40Value0
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionNamed: (recoveredStack2) in: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := recoveredArg2.
    recoveredBlock67Value1 := recoveredArg3.
    recoveredBlock67Value2 := [
    | recoveredBlock67Block80Value0 recoveredBlock67Block80Value1 recoveredBlock67Block80Value2 recoveredBlock67Block80Value3 recoveredBlock67Block80Value4 recoveredBlock67Block80Value5 recoveredBlock67Block80Value6 recoveredBlock67Block80Value7 |
    recoveredBlock67Block80Value0 := MxEMb9.
    recoveredBlock67Block80Value1 := recoveredArg1.
    recoveredBlock67Block80Value2 := (recoveredBlock67Block80Value1) name.
    recoveredBlock67Block80Value3 := recoveredArg3.
    recoveredBlock67Block80Value4 := (recoveredBlock67Block80Value3) storeString.
    recoveredBlock67Block80Value5 := (recoveredBlock67Block80Value0) bindWith: (recoveredBlock67Block80Value2) with: (recoveredBlock67Block80Value4).
    recoveredBlock67Block80Value6 := recoveredArg4.
    recoveredBlock67Block80Value7 := (self) report: (recoveredBlock67Block80Value5) andExit: (recoveredBlock67Block80Value6).
    recoveredBlock67Block80Value7
].
    recoveredBlock67Value3 := (recoveredBlock67Value0) classAt: (recoveredBlock67Value1) ifAbsent: (recoveredBlock67Value2).
    recoveredBlock67Value3
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionNamed: (recoveredStack2) in: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInstalled.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclassFor: (recoveredStack2) in: (recoveredStack3) toMatch: (recoveredStack4) ifUndefined: (recoveredStack5).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInstalled.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) environmentKey.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock168Value0 |
    recoveredBlock168Value0 := recoveredLocal2.
    recoveredBlock168Value0
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionNamed: (recoveredStack2) in: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := MxEMb10.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) report: (recoveredStack2) andExit: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInstalled.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 255] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) waitingForSuperclass.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := MxEMb11.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) report: (recoveredStack2) andExit: (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) createDefinition: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20032520; bytecode file offset 0x6e600"
!EmClassCreator class methodsFor: 'recovered'!
installClasses
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1ERYJVN'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) orderedDefinitions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) existingClass.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) newClass.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            (recoveredBlock18Stack2 == recoveredBlock18Stack3) ifTrue: [recoveredBlock18PC := 205] ifFalse: [recoveredBlock18PC := 38].
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) existingClass.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 63] ifFalse: [recoveredBlock18PC := 48].
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal7.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) existingClass.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            (recoveredBlock18Stack1) disconnectFromSuper.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 66.
        ].
        recoveredBlock18Step = 66 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) newClass.
            recoveredBlock18PC := 68.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            (recoveredBlock18Stack1) connectToSuper.
            recoveredBlock18PC := 70.
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) environmentKey.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 205] ifFalse: [recoveredBlock18PC := 80].
        ].
        recoveredBlock18Step = 80 ifTrue: [
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 84.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) existingClass.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 122] ifFalse: [recoveredBlock18PC := 90].
        ].
        recoveredBlock18Step = 90 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 93.
        ].
        recoveredBlock18Step = 93 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) newClass.
            recoveredBlock18PC := 95.
        ].
        recoveredBlock18Step = 95 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 98.
        ].
        recoveredBlock18Step = 98 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) existingClass.
            recoveredBlock18PC := 100.
        ].
        recoveredBlock18Step = 100 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) basicHash.
            recoveredBlock18PC := 102.
        ].
        recoveredBlock18Step = 102 ifTrue: [
            (recoveredBlock18Stack1) basicHash: (recoveredBlock18Stack2).
            recoveredBlock18PC := 104.
        ].
        recoveredBlock18Step = 104 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 107.
        ].
        recoveredBlock18Step = 107 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) newClass.
            recoveredBlock18PC := 109.
        ].
        recoveredBlock18Step = 109 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) class.
            recoveredBlock18PC := 111.
        ].
        recoveredBlock18Step = 111 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 114.
        ].
        recoveredBlock18Step = 114 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) existingClass.
            recoveredBlock18PC := 116.
        ].
        recoveredBlock18Step = 116 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) class.
            recoveredBlock18PC := 118.
        ].
        recoveredBlock18Step = 118 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) basicHash.
            recoveredBlock18PC := 120.
        ].
        recoveredBlock18Step = 120 ifTrue: [
            (recoveredBlock18Stack1) basicHash: (recoveredBlock18Stack2).
            recoveredBlock18PC := 122.
        ].
        recoveredBlock18Step = 122 ifTrue: [
            recoveredBlock18Stack1 := System.
            recoveredBlock18PC := 124.
        ].
        recoveredBlock18Step = 124 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) image.
            recoveredBlock18PC := 126.
        ].
        recoveredBlock18Step = 126 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 129.
        ].
        recoveredBlock18Step = 129 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) newClass.
            recoveredBlock18PC := 131.
        ].
        recoveredBlock18Step = 131 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 134.
        ].
        recoveredBlock18Step = 134 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) environment.
            recoveredBlock18PC := 136.
        ].
        recoveredBlock18Step = 136 ifTrue: [
            (recoveredBlock18Stack1) installClass: (recoveredBlock18Stack2) in: (recoveredBlock18Stack3).
            recoveredBlock18PC := 138.
        ].
        recoveredBlock18Step = 138 ifTrue: [
            recoveredBlock18Stack1 := System.
            recoveredBlock18PC := 140.
        ].
        recoveredBlock18Step = 140 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) image.
            recoveredBlock18PC := 142.
        ].
        recoveredBlock18Step = 142 ifTrue: [
            recoveredBlock18Stack2 := EmConstants.
            recoveredBlock18PC := 144.
        ].
        recoveredBlock18Step = 144 ifTrue: [
            recoveredBlock18Stack3 := 'EmNclassChangedCallback'.
            recoveredBlock18PC := 146.
        ].
        recoveredBlock18Step = 146 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) asPoolKey.
            recoveredBlock18PC := 148.
        ].
        recoveredBlock18Step = 148 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) at: (recoveredBlock18Stack3).
            recoveredBlock18PC := 150.
        ].
        recoveredBlock18Step = 150 ifTrue: [
            recoveredBlock18Stack3 := [
    | recoveredBlock18Block150Value0 recoveredBlock18Block150Value1 recoveredBlock18Block150Value2 recoveredBlock18Block150Value3 recoveredBlock18Block150Value4 recoveredBlock18Block150Value5 recoveredBlock18Block150Value6 recoveredBlock18Block150Value7 recoveredBlock18Block150Value8 recoveredBlock18Block150Value9 recoveredBlock18Block150Value10 recoveredBlock18Block150Value11 recoveredBlock18Block150Value12 recoveredBlock18Block150Value13 recoveredBlock18Block150Value14 recoveredBlock18Block150Value15 recoveredBlock18Block150Value16 recoveredBlock18Block150Value17 recoveredBlock18Block150Value18 |
    recoveredBlock18Block150Value0 := EmClassChangeCallbackData.
    recoveredBlock18Block150Value1 := (recoveredBlock18Block150Value0) new.
    recoveredBlock18Block150Value2 := recoveredBlock18Block150Value1.
    recoveredBlock18Block150Value3 := recoveredBlock18Arg1.
    recoveredBlock18Block150Value4 := (recoveredBlock18Block150Value3) newClass.
    recoveredBlock18Block150Value5 := (recoveredBlock18Block150Value4) name.
    (recoveredBlock18Block150Value2) className: (recoveredBlock18Block150Value5).
    recoveredBlock18Block150Value6 := recoveredBlock18Block150Value1.
    recoveredBlock18Block150Value7 := recoveredBlock18Arg1.
    recoveredBlock18Block150Value8 := (recoveredBlock18Block150Value7) newClass.
    recoveredBlock18Block150Value9 := (recoveredBlock18Block150Value8) controller.
    recoveredBlock18Block150Value10 := (recoveredBlock18Block150Value9) name.
    (recoveredBlock18Block150Value6) applicationName: (recoveredBlock18Block150Value10).
    recoveredBlock18Block150Value11 := recoveredBlock18Block150Value1.
    recoveredBlock18Block150Value12 := EmConstants.
    recoveredBlock18Block150Value13 := ('EMCDirectDefinitionChange') asPoolKey.
    recoveredBlock18Block150Value14 := (recoveredBlock18Block150Value12) at: (recoveredBlock18Block150Value13).
    recoveredBlock18Block150Value15 := EmConstants.
    recoveredBlock18Block150Value16 := ('EMCAdded') asPoolKey.
    recoveredBlock18Block150Value17 := (recoveredBlock18Block150Value15) at: (recoveredBlock18Block150Value16).
    recoveredBlock18Block150Value18 := (recoveredBlock18Block150Value14) | (recoveredBlock18Block150Value17).
    (recoveredBlock18Block150Value11) changeType: (recoveredBlock18Block150Value18).
    recoveredBlock18Block150Value1
].
            recoveredBlock18PC := 203.
        ].
        recoveredBlock18Step = 203 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) deferCallbacks: (recoveredBlock18Stack2) computedCallData: (recoveredBlock18Stack3).
            recoveredBlock18PC := 205.
        ].
        recoveredBlock18Step = 205 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := [:recoveredBlock227Arg1 | 
    | recoveredBlock227Value0 recoveredBlock227Value1 recoveredBlock227Value2 recoveredBlock227Value3 recoveredBlock227Value4 recoveredBlock227Value5 recoveredBlock227Value6 recoveredBlock227Value7 |
    recoveredBlock227Value0 := recoveredLocal6.
    recoveredBlock227Value1 := recoveredBlock227Arg1.
    recoveredBlock227Value2 := (recoveredBlock227Value1) existingClass.
    (recoveredBlock227Value0) add: (recoveredBlock227Value2).
    recoveredBlock227Value3 := recoveredLocal6.
    recoveredBlock227Value4 := recoveredBlock227Arg1.
    recoveredBlock227Value5 := (recoveredBlock227Value4) existingClass.
    recoveredBlock227Value6 := (recoveredBlock227Value5) class.
    recoveredBlock227Value7 := (recoveredBlock227Value3) add: (recoveredBlock227Value6).
    recoveredBlock227Value7
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicMultiAllInstances.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 317].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := [:recoveredBlock297Arg1 | 
    | recoveredBlock297Value0 recoveredBlock297Value1 recoveredBlock297Value2 recoveredBlock297Value3 recoveredBlock297Value4 |
    recoveredBlock297Value0 := recoveredLocal5.
    recoveredBlock297Value1 := recoveredBlock297Arg1.
    recoveredBlock297Value2 := (recoveredBlock297Value1) existingClass.
    recoveredBlock297Value3 := [].
    recoveredBlock297Value4 := (recoveredBlock297Value0) remove: (recoveredBlock297Value2) ifAbsent: (recoveredBlock297Value3).
    recoveredBlock297Value4
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 367].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) globalGarbageCollect.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicMultiAllInstances.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := [:recoveredBlock347Arg1 | 
    | recoveredBlock347Value0 recoveredBlock347Value1 recoveredBlock347Value2 recoveredBlock347Value3 recoveredBlock347Value4 |
    recoveredBlock347Value0 := recoveredLocal5.
    recoveredBlock347Value1 := recoveredBlock347Arg1.
    recoveredBlock347Value2 := (recoveredBlock347Value1) existingClass.
    recoveredBlock347Value3 := [].
    recoveredBlock347Value4 := (recoveredBlock347Value0) remove: (recoveredBlock347Value2) ifAbsent: (recoveredBlock347Value3).
    recoveredBlock347Value4
].
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := [:recoveredBlock382Arg1 | 
    | recoveredBlock382Value0 recoveredBlock382Value1 recoveredBlock382Value2 recoveredBlock382Value3 recoveredBlock382Value4 recoveredBlock382Value5 recoveredBlock382Value6 recoveredBlock382Value7 recoveredBlock382Value8 recoveredBlock382Value9 recoveredBlock382Value10 recoveredBlock382Value11 recoveredBlock382Value12 recoveredBlock382Value13 recoveredBlock382Value14 recoveredBlock382Value15 recoveredBlock382Value16 recoveredBlock382Value17 recoveredBlock382Value18 recoveredBlock382Value19 recoveredBlock382Value20 recoveredBlock382Value21 recoveredBlock382Value22 recoveredBlock382Value23 recoveredBlock382Value24 recoveredBlock382Value25 recoveredBlock382Value26 recoveredBlock382Value27 recoveredBlock382Value28 recoveredBlock382Value29 recoveredBlock382Value30 recoveredBlock382Value31 recoveredBlock382Value32 recoveredBlock382Value33 |
    recoveredBlock382Value0 := recoveredBlock382Arg1.
    recoveredBlock382Value1 := (recoveredBlock382Value0) newClass.
    recoveredLocal2 := recoveredBlock382Value1.
    recoveredBlock382Value2 := recoveredBlock382Arg1.
    recoveredBlock382Value3 := (recoveredBlock382Value2) existingClass.
    recoveredLocal1 := recoveredBlock382Value3.
    recoveredBlock382Value4 := recoveredLocal2.
    recoveredBlock382Value5 := (recoveredBlock382Value4) class.
    recoveredBlock382Value6 := recoveredLocal5.
    recoveredBlock382Value7 := [:recoveredBlock382Block408Arg1 | 
    | recoveredBlock382Block408Value0 recoveredBlock382Block408Value1 recoveredBlock382Block408Value2 recoveredBlock382Block408Value3 recoveredBlock382Block408Value4 |
    recoveredBlock382Block408Value0 := recoveredBlock382Block408Arg1.
    recoveredBlock382Block408Value1 := (recoveredBlock382Block408Value0) class.
    recoveredBlock382Block408Value2 := recoveredLocal1.
    recoveredBlock382Block408Value3 := (recoveredBlock382Block408Value2) class.
    recoveredBlock382Block408Value4 := (recoveredBlock382Block408Value1) == (recoveredBlock382Block408Value3).
    recoveredBlock382Block408Value4
].
    recoveredBlock382Value8 := (recoveredBlock382Value6) select: (recoveredBlock382Value7).
    recoveredBlock382Value9 := recoveredLocal1.
    recoveredBlock382Value10 := (recoveredBlock382Value9) class.
    recoveredBlock382Value11 := (recoveredBlock382Value10) allInstVarNames.
    recoveredBlock382Value12 := recoveredLocal4.
    recoveredBlock382Value13 := recoveredLocal3.
    (recoveredBlock382Value5) copyAll: (recoveredBlock382Value8) mappingFrom: (recoveredBlock382Value11) addingOldTo: (recoveredBlock382Value12) andNewTo: (recoveredBlock382Value13).
    recoveredBlock382Value14 := recoveredLocal4.
    recoveredBlock382Value15 := recoveredLocal1.
    recoveredBlock382Value16 := (recoveredBlock382Value15) class.
    (recoveredBlock382Value14) addLast: (recoveredBlock382Value16).
    recoveredBlock382Value17 := recoveredLocal3.
    recoveredBlock382Value18 := recoveredLocal2.
    recoveredBlock382Value19 := (recoveredBlock382Value18) class.
    (recoveredBlock382Value17) addLast: (recoveredBlock382Value19).
    recoveredBlock382Value20 := recoveredLocal2.
    recoveredBlock382Value21 := recoveredLocal5.
    recoveredBlock382Value22 := [:recoveredBlock382Block468Arg1 | 
    | recoveredBlock382Block468Value0 recoveredBlock382Block468Value1 recoveredBlock382Block468Value2 recoveredBlock382Block468Value3 |
    recoveredBlock382Block468Value0 := recoveredBlock382Block468Arg1.
    recoveredBlock382Block468Value1 := (recoveredBlock382Block468Value0) class.
    recoveredBlock382Block468Value2 := recoveredLocal1.
    recoveredBlock382Block468Value3 := (recoveredBlock382Block468Value1) == (recoveredBlock382Block468Value2).
    recoveredBlock382Block468Value3
].
    recoveredBlock382Value23 := (recoveredBlock382Value21) select: (recoveredBlock382Value22).
    recoveredBlock382Value24 := recoveredLocal1.
    recoveredBlock382Value25 := (recoveredBlock382Value24) allInstVarNames.
    recoveredBlock382Value26 := recoveredLocal4.
    recoveredBlock382Value27 := recoveredLocal3.
    (recoveredBlock382Value20) copyAll: (recoveredBlock382Value23) mappingFrom: (recoveredBlock382Value25) addingOldTo: (recoveredBlock382Value26) andNewTo: (recoveredBlock382Value27).
    recoveredBlock382Value28 := recoveredLocal4.
    recoveredBlock382Value29 := recoveredLocal1.
    (recoveredBlock382Value28) addLast: (recoveredBlock382Value29).
    recoveredBlock382Value30 := recoveredLocal3.
    recoveredBlock382Value31 := recoveredLocal2.
    (recoveredBlock382Value30) addLast: (recoveredBlock382Value31).
    recoveredBlock382Value32 := recoveredLocal1.
    recoveredBlock382Value33 := (recoveredBlock382Value32) wasReplaced.
    recoveredBlock382Value33
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack0) multiBecome: (recoveredStack1).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

