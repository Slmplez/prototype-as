"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000018; bytecode file offset 0x232e0"
!OldObjectSwapper class methodsFor: 'recovered'!
shutDown
    ^self
! !

"cfsnls.ic method 0x20000060; bytecode file offset 0x232e0"
!OldObjectSwapper class methodsFor: 'recovered'!
initialize
    ^self
! !

"cfsnls.ic method 0x20000098; bytecode file offset 0x232e0"
!OldObjectSwapper class methodsFor: 'recovered'!
globalGC
    ^self
! !

"cfsnls.ic method 0x200000a0; bytecode file offset 0x232e0"
!OldObjectSwapper class methodsFor: 'recovered'!
startUp
    ^self
! !

"cfsnls.ic method 0x20002c1c; bytecode file offset 0x25e58"
!OldObjectSwapper class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"cfsnls.ic method 0x2000653c; bytecode file offset 0x29780"
!OldObjectSwapper class methodsFor: 'recovered'!
primitiveLibraryName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SWAPPER_PRIMITIVES'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicalName: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := PlatformLibrary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'SWAPPER_PRIMITIVES'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) mapLogicalName: (recoveredStack2) toPhysicalName: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

