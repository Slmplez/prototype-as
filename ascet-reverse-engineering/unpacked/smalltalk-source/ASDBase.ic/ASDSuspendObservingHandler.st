"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20081b1c; bytecode file offset 0x97e554"
!ASDSuspendObservingHandler methodsFor: 'recovered'!
entriesForObjectExists: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := suspendObservingTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f9d6c; bytecode file offset 0x9f6678"
!ASDSuspendObservingHandler methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    suspendObservingTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20178308; bytecode file offset 0xa74bd0"
!ASDSuspendObservingHandler methodsFor: 'recovered'!
addSuspendNotifyBlock: recoveredArg1 forObject: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := suspendObservingTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block280cf2acValue0 block280cf2acValue1 |
    block280cf2acValue0 := OrderedCollection.
    block280cf2acValue1 := (block280cf2acValue0) new.
    block280cf2acValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202501fc; bytecode file offset 0xb4cac0"
!ASDSuspendObservingHandler methodsFor: 'recovered'!
getSuspendNotifyValueForObject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := suspendObservingTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block280dedf8Arg1 | 
    | block280dedf8Value0 block280dedf8Value1 |
    block280dedf8Value0 := block280dedf8Arg1.
    block280dedf8Value1 := (block280dedf8Value0) value.
    block280dedf8Value1
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

