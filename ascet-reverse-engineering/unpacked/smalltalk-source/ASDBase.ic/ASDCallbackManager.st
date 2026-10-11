"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066994; bytecode file offset 0x963428"
!ASDCallbackManager methodsFor: 'recovered'!
registeredCallbackTable
    | recoveredValue0 |
    recoveredValue0 := registeredCallbackTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be79c; bytecode file offset 0x9bb178"
!ASDCallbackManager methodsFor: 'recovered'!
registeredCallbackTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    registeredCallbackTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9d3c; bytecode file offset 0x9f6678"
!ASDCallbackManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    registeredCallbackTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20111918; bytecode file offset 0xa0e1d8"
!ASDCallbackManager methodsFor: 'recovered'!
addCallback: recoveredArg1 receiver: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) registeredCallbackListFor: (recoveredValue0).
    recoveredValue2 := recoveredArg3.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201464a8; bytecode file offset 0xa42f4c"
!ASDCallbackManager methodsFor: 'recovered'!
registeredCallbackListFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) registeredCallbackTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc4b0Value0 block280cc4b0Value1 |
    block280cc4b0Value0 := OrderedCollection.
    block280cc4b0Value1 := (block280cc4b0Value0) new.
    block280cc4b0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20203518; bytecode file offset 0xaffde0"
!ASDCallbackManager methodsFor: 'recovered'!
removeCallbacksFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) registeredCallbackListFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) removeCallbacksFor: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) registeredCallbackTable.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) removeKey: (recoveredValue4).
    ^self
! !

