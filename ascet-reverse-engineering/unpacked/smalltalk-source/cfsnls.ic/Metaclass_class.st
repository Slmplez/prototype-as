"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20002190; bytecode file offset 0x25458"
!Metaclass class methodsFor: 'recovered'!
definesInstVarReplacement
    ^true
! !

"cfsnls.ic method 0x200021c8; bytecode file offset 0x25458"
!Metaclass class methodsFor: 'recovered'!
definesLoadingReplacement
    ^true
! !

"cfsnls.ic method 0x200057d0; bytecode file offset 0x28a0c"
!Metaclass class methodsFor: 'recovered'!
dumpingReplacementForClassField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Metaclass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super dumpingReplacementForClassField.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

