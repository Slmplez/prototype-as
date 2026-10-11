"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e4d4; bytecode file offset 0x94d048"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
canBeDragTarget
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e5e8; bytecode file offset 0x94d048"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
dragInteractionView
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004eb10; bytecode file offset 0x94d048"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
canBeDragSource
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050124; bytecode file offset 0x94d048"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
dragInteractionWidget
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200531f0; bytecode file offset 0x9505d0"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
canBeDragSource: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200538e0; bytecode file offset 0x9505d0"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
dragInteractionWidget: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053994; bytecode file offset 0x9505d0"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
canBeDragTarget: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200539dc; bytecode file offset 0x9505d0"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
dragInteractionView: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2007bbac; bytecode file offset 0x97c330"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
isImageDragDropSpec
    ^false
! !

"ASDBase.ic method 0x2007d0e4; bytecode file offset 0x97c330"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
isPlatformDragDropSpec
    ^false
! !

"ASDBase.ic method 0x200dc25c; bytecode file offset 0x9d8b80"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
callHandlers: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    (self) callHandlers: (recoveredValue0) withArguments: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20233294; bytecode file offset 0xb2fb5c"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
callHandlers: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) abtIsDependentsCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) signalEvent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block280dd538Arg1 | 
    | block280dd538Stack0 block280dd538Stack1 block280dd538Stack2 block280dd538Stack3 block280dd538PC block280dd538Step block280dd538Done block280dd538Result |
    block280dd538Stack0 := self.
    block280dd538PC := 4.
    block280dd538Done := false.
    [block280dd538Done not] whileTrue: [
        block280dd538Step := block280dd538PC.
        block280dd538Step = 4 ifTrue: [
            block280dd538Stack1 := nil.
            block280dd538PC := 5.
        ].
        block280dd538Step = 5 ifTrue: [
            block280dd538Stack2 := block280dd538Arg1.
            block280dd538PC := 6.
        ].
        block280dd538Step = 6 ifTrue: [
            (block280dd538Stack2 == nil) ifTrue: [block280dd538PC := 13] ifFalse: [block280dd538PC := 10].
        ].
        block280dd538Step = 10 ifTrue: [
            block280dd538PC := 11.
        ].
        block280dd538Step = 11 ifTrue: [
            block280dd538Stack1 := block280dd538Arg1.
            block280dd538PC := 12.
        ].
        block280dd538Step = 12 ifTrue: [
            block280dd538Stack1 := (block280dd538Stack1) abrSend.
            block280dd538PC := 13.
        ].
        block280dd538Step = 13 ifTrue: [
            block280dd538Result := block280dd538Stack1.
            block280dd538Done := true.
        ].
    ].
    block280dd538Result
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20290298; bytecode file offset 0xb8cb5c"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
callHandlers: recoveredArg1 withArguments: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtIsDependentsCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) signalEventWithArguments: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg2.
    recoveredBlock27Value2 := (recoveredBlock27Value0) abrSendWithArguments: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e2ea4; bytecode file offset 0xcdf77c"
!AbtAbstractDragDropSpec methodsFor: 'recovered'!
abtWhenPrimitive: recoveredArg1 perform: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 |
    recoveredBlock14Value0 := Processor.
    recoveredBlock14Value1 := (recoveredBlock14Value0) activeProcess.
    recoveredBlock14Value2 := recoveredLocal2.
    (recoveredBlock14Value1) errorHandler: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredArg1.
    recoveredBlock14Value4 := recoveredArg2.
    recoveredBlock14Value5 := super abtWhenPrimitive: (recoveredBlock14Value3) perform: (recoveredBlock14Value4).
    ^recoveredBlock14Value5
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) errorHandler: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcess.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) errorHandler: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtIsDependentsCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := super abtWhenPrimitive: (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

