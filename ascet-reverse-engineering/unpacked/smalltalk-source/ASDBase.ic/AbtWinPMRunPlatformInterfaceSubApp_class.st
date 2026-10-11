"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002268; bytecode file offset 0x8ffcfc"
!AbtWinPMRunPlatformInterfaceSubApp class methodsFor: 'recovered'!
_PRAGMA_AbtPlatformInterfaceConstants
    ^self
! !

"ASDBase.ic method 0x202eb1f0; bytecode file offset 0xbe7ad4"
!AbtWinPMRunPlatformInterfaceSubApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280e7b4cArg1 | 
    | block280e7b4cValue0 block280e7b4cValue1 block280e7b4cValue2 |
    block280e7b4cValue0 := block280e7b4cArg1.
    block280e7b4cValue1 := (block280e7b4cValue0) reductionPolicy.
    block280e7b4cValue2 := (block280e7b4cValue1) isRuntimeReductionPolicy.
    block280e7b4cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block280e7b70Arg1 | 
    | block280e7b70Value0 block280e7b70Value1 block280e7b70Value2 |
    block280e7b70Value0 := block280e7b70Arg1.
    block280e7b70Value1 := block280e7b70Value0.
    (block280e7b70Value1) ignoreNoImplementorErrorsForMessageSend: ('pageId') inMethod: ('findPage:') inClassNamed: ('AbtOSNoteBook').
    block280e7b70Value2 := (block280e7b70Value0) ignoreNoImplementorErrorsForMessageSend: ('pageWidget') inMethod: ('setFocus') inClassNamed: ('AbtOSNoteBook').
    block280e7b70Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := [:block280e7b94Arg1 | 
    nil
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) condition: (recoveredStack2) ifTrue: (recoveredStack3) ifFalse: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

