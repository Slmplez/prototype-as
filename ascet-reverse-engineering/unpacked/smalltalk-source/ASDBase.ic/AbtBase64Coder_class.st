"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048c18; bytecode file offset 0x945728"
!AbtBase64Coder class methodsFor: 'recovered'!
reset
    Current := nil.
    ^self
! !

"ASDBase.ic method 0x2004f32c; bytecode file offset 0x94d048"
!AbtBase64Coder class methodsFor: 'recovered'!
initializeAfterLoad
    (self) initializeTables.
    ^self
! !

"ASDBase.ic method 0x20114f30; bytecode file offset 0xa1183c"
!AbtBase64Coder class methodsFor: 'recovered'!
current
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Current.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            Current := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Current.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030b204; bytecode file offset 0xc07ae0"
!AbtBase64Coder class methodsFor: 'recovered'!
initializeTables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            EncodingTable := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280ea168Arg1 :block280ea168Arg2 | 
    | block280ea168Value0 block280ea168Value1 block280ea168Value2 block280ea168Value3 block280ea168Value4 |
    block280ea168Value0 := EncodingTable.
    block280ea168Value1 := block280ea168Arg2.
    block280ea168Value2 := (block280ea168Value1) + (-1).
    block280ea168Value3 := block280ea168Arg1.
    block280ea168Value4 := (block280ea168Value0) at: (block280ea168Value2) put: (block280ea168Value3).
    block280ea168Value4
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            DecodingTable := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := EncodingTable.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:block280ea18cArg1 :block280ea18cArg2 | 
    | block280ea18cValue0 block280ea18cValue1 block280ea18cValue2 block280ea18cValue3 |
    block280ea18cValue0 := DecodingTable.
    block280ea18cValue1 := block280ea18cArg2.
    block280ea18cValue2 := block280ea18cArg1.
    block280ea18cValue3 := (block280ea18cValue0) at: (block280ea18cValue1) put: (block280ea18cValue2).
    block280ea18cValue3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

