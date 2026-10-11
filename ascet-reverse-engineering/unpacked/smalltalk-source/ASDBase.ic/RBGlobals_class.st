"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20049154; bytecode file offset 0x945a10"
!RBGlobals class methodsFor: 'recovered'!
removeSemaphore
    singletonSemaphore := nil.
    ^self
! !

"ASDBase.ic method 0x20050760; bytecode file offset 0x94d048"
!RBGlobals class methodsFor: 'recovered'!
createInstance
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006f408; bytecode file offset 0x96bf7c"
!RBGlobals class methodsFor: 'recovered'!
theInstance
    | recoveredValue0 |
    recoveredValue0 := theInstance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20119adc; bytecode file offset 0xa16880"
!RBGlobals class methodsFor: 'recovered'!
removeInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7e3cArg1 | 
    | block280c7e3cValue0 block280c7e3cValue1 |
    block280c7e3cValue0 := block280c7e3cArg1.
    block280c7e3cValue1 := (block280c7e3cValue0) removeInstance.
    block280c7e3cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015db48; bytecode file offset 0xa5a408"
!RBGlobals class methodsFor: 'recovered'!
semaphore
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := singletonSemaphore.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Semaphore.
    recoveredBlock6Value1 := (recoveredBlock6Value0) forMutualExclusion.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    singletonSemaphore := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20161500; bytecode file offset 0xa5ddbc"
!RBGlobals class methodsFor: 'recovered'!
removeInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) semaphore.
    recoveredValue1 := [
    theInstance := nil.
    nil
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d8594; bytecode file offset 0xbd4e68"
!RBGlobals class methodsFor: 'recovered'!
instance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) theInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    ^recoveredBlock5Value0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) semaphore.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSignals.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) removeSemaphore.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) semaphore.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) theInstance.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            (recoveredBlock30Stack0 ~~ nil) ifTrue: [recoveredBlock30PC := 43] ifFalse: [recoveredBlock30PC := 40].
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack0) createInstance.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) theInstance.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            ^recoveredBlock30Stack0
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) critical: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

