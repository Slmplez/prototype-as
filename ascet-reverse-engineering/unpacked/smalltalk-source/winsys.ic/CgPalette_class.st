"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200008f0; bytecode file offset 0x7cc7c"
!CgPalette class methodsFor: 'recovered'!
selectedPalettes
    | recoveredValue0 |
    recoveredValue0 := SelectedPalettes.
    ^recoveredValue0
! !

"winsys.ic method 0x20001bec; bytecode file offset 0x7de10"
!CgPalette class methodsFor: 'recovered'!
finalizeSystem
    (self) releaseSelectedPalettes.
    ^self
! !

"winsys.ic method 0x20001d40; bytecode file offset 0x7e054"
!CgPalette class methodsFor: 'recovered'!
selectedPalettes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SelectedPalettes := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000c368; bytecode file offset 0x88538"
!CgPalette class methodsFor: 'recovered'!
cleanHandles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicAllInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28008a34Arg1 | 
    | block28008a34Value0 block28008a34Value1 |
    block28008a34Value0 := block28008a34Arg1.
    block28008a34Value1 := (block28008a34Value0) cleanHandle.
    block28008a34Value1
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

"winsys.ic method 0x200133bc; bytecode file offset 0x8f59c"
!CgPalette class methodsFor: 'recovered'!
initializeSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) selectedPalettes: (recoveredValue1).
    recoveredValue2 := CgIndexedPalette.
    (recoveredValue2) cleanHandles.
    recoveredValue3 := CgDirectPalette.
    (recoveredValue3) cleanHandles.
    recoveredValue4 := CgIndexedPalette.
    recoveredValue5 := (recoveredValue4) default.
    (recoveredValue5) resetDefaultColors.
    ^self
! !

"winsys.ic method 0x2001a950; bytecode file offset 0x96b30"
!CgPalette class methodsFor: 'recovered'!
releaseSelectedPalettes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedPalettes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedPalettes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block28008e48Arg1 | 
    | block28008e48Value0 block28008e48Value1 |
    block28008e48Value0 := block28008e48Arg1.
    block28008e48Value1 := (block28008e48Value0) osRelease.
    block28008e48Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) selectedPalettes: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

