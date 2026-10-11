"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbf.ic method 0x20000500; bytecode file offset 0x6a04"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('Timestamp') inClassNamed: ('AbtFileSpec').
    ^self
! !

"abtdbf.ic method 0x200009b4; bytecode file offset 0x6ec0"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtFileSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) imageEventDependent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EsImageStartUp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20000b60; bytecode file offset 0x7064"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
imageEventDependent: recoveredXArg1
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 15] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := CurrentStringClass.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) new.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredLegacyIvar29 := recoveredXStack1.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            recoveredXStack2 := recoveredXArg1.
            recoveredXPC := 18.
        ].
        recoveredXStep = 18 ifTrue: [
            (recoveredXStack1) add: (recoveredXStack2).
            recoveredXPC := 20.
        ].
        recoveredXStep = 20 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

"abtdbf.ic method 0x20001100; bytecode file offset 0x7618"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
startUp
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 == nil) ifTrue: [recoveredXPC := 30] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack2 := #(268437632 nil 28 8388611 nil nil).
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXPC := 28.
        ].
        recoveredXStep = 28 ifTrue: [
            (recoveredXStack1) do: (recoveredXStack2).
            recoveredXPC := 30.
        ].
        recoveredXStep = 30 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

"abtdbf.ic method 0x20001114; bytecode file offset 0x7618"
!AbtCFSAdditionsApp class methodsFor: 'recovered'!
saving
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 == nil) ifTrue: [recoveredXPC := 30] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack2 := #(268437642 nil 18 8388611 nil nil).
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXPC := 28.
        ].
        recoveredXStep = 28 ifTrue: [
            (recoveredXStack1) do: (recoveredXStack2).
            recoveredXPC := 30.
        ].
        recoveredXStep = 30 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

