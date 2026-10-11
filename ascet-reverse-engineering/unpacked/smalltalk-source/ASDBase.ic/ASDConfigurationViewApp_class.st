"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001980; bytecode file offset 0x8ffcfc"
!ASDConfigurationViewApp class methodsFor: 'recovered'!
_PRAGMA_ASDConfigurationViewConstants
    ^self
! !

"ASDBase.ic method 0x20002120; bytecode file offset 0x8ffcfc"
!ASDConfigurationViewApp class methodsFor: 'recovered'!
loaded
    ^self
! !

"ASDBase.ic method 0x200023c0; bytecode file offset 0x8ffcfc"
!ASDConfigurationViewApp class methodsFor: 'recovered'!
_PRAGMA_SGGlobalImplementationBuffer
    ^self
! !

"ASDBase.ic method 0x20128afc; bytecode file offset 0xa253c4"
!ASDConfigurationViewApp class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGConfigDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c942cArg1 | 
    | block280c942cValue0 block280c942cValue1 |
    block280c942cValue0 := block280c942cArg1.
    block280c942cValue1 := (block280c942cValue0) initializeClass.
    block280c942cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

