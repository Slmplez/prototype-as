"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200000a0; bytecode file offset 0x3c100"
!EmDeclarationError methodsFor: 'recovered'!
compatibleDeclareOn: recoveredArg1
    ^self
! !

"lib.ic method 0x200000e0; bytecode file offset 0x3c100"
!EmDeclarationError methodsFor: 'recovered'!
compatibleUndeclareOn: recoveredArg1
    ^self
! !

"lib.ic method 0x20002390; bytecode file offset 0x3e3d0"
!EmDeclarationError methodsFor: 'recovered'!
contextParameters
    | recoveredValue0 |
    recoveredValue0 := contextParameters.
    ^recoveredValue0
! !

"lib.ic method 0x200023cc; bytecode file offset 0x3e42c"
!EmDeclarationError methodsFor: 'recovered'!
sourceString
    | recoveredValue0 |
    recoveredValue0 := sourceString.
    ^recoveredValue0
! !

"lib.ic method 0x20002420; bytecode file offset 0x3e480"
!EmDeclarationError methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := message.
    ^recoveredValue0
! !

"lib.ic method 0x20002474; bytecode file offset 0x3e4cc"
!EmDeclarationError methodsFor: 'recovered'!
startPosition
    | recoveredValue0 |
    recoveredValue0 := startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x200024d0; bytecode file offset 0x3e508"
!EmDeclarationError methodsFor: 'recovered'!
stopPosition
    | recoveredValue0 |
    recoveredValue0 := stopPosition.
    ^recoveredValue0
! !

"lib.ic method 0x20002724; bytecode file offset 0x3e754"
!EmDeclarationError methodsFor: 'recovered'!
severity
    ^0
! !

"lib.ic method 0x20002868; bytecode file offset 0x3e888"
!EmDeclarationError methodsFor: 'recovered'!
context
    ^nil
! !

"lib.ic method 0x20002960; bytecode file offset 0x3e998"
!EmDeclarationError methodsFor: 'recovered'!
isError
    ^true
! !

"lib.ic method 0x20004810; bytecode file offset 0x40838"
!EmDeclarationError methodsFor: 'recovered'!
contextParameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contextParameters := recoveredValue0.
    ^self
! !

"lib.ic method 0x2000485c; bytecode file offset 0x40884"
!EmDeclarationError methodsFor: 'recovered'!
sourceString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceString := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004890; bytecode file offset 0x408b8"
!EmDeclarationError methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    message := recoveredValue0.
    ^self
! !

"lib.ic method 0x200048dc; bytecode file offset 0x408fc"
!EmDeclarationError methodsFor: 'recovered'!
startPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startPosition := recoveredValue0.
    ^self
! !

"lib.ic method 0x200048f8; bytecode file offset 0x40930"
!EmDeclarationError methodsFor: 'recovered'!
stopPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stopPosition := recoveredValue0.
    ^self
! !

"lib.ic method 0x2001bdac; bytecode file offset 0x57dfc"
!EmDeclarationError methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := NlsCatESc.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 46.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ' "'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) message.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := $".
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) startPosition.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) message.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := '" --> '.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) startPosition.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) sourceString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

