"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200005a0; bytecode file offset 0x15c04"
!EsSymbolLiteral methodsFor: 'recovered'!
asArrayElement
    inArray := true.
    ^self
! !

"parse.ic method 0x20000634; bytecode file offset 0x15c8c"
!EsSymbolLiteral methodsFor: 'recovered'!
asObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := (recoveredValue0) asReducedSymbol.
    ^recoveredValue1
! !

"parse.ic method 0x20001640; bytecode file offset 0x16cac"
!EsSymbolLiteral methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) asObject: (recoveredValue1).
    (recoveredValue0) pushSymbolLiteral: (recoveredValue2).
    ^self
! !

"parse.ic method 0x20001af8; bytecode file offset 0x1716c"
!EsSymbolLiteral methodsFor: 'recovered'!
extendedSymbol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    extendedSymbol := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001e5c; bytecode file offset 0x174b8"
!EsSymbolLiteral methodsFor: 'recovered'!
initialize
    super initialize.
    inArray := false.
    ^self
! !

"parse.ic method 0x200051f8; bytecode file offset 0x1a858"
!EsSymbolLiteral methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := extendedSymbol.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            super printOn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := extendedSymbol.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := $'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

