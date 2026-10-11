"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20078d2c; bytecode file offset 0x9757c8"
!SgmlEntityDeclaration methodsFor: 'recovered'!
isEntityDeclaration
    ^true
! !

"ASDBase.ic method 0x20153948; bytecode file offset 0xa5020c"
!SgmlEntityDeclaration methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := ERO.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) name.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := REFC.
    (recoveredValue0) nextPutAll: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201b1e48; bytecode file offset 0xaae70c"
!SgmlEntityDeclaration methodsFor: 'recovered'!
isSeparator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d40dcArg1 | 
    | block280d40dcValue0 block280d40dcValue1 block280d40dcValue2 |
    block280d40dcValue0 := block280d40dcArg1.
    block280d40dcValue1 := (block280d40dcValue0) isSeparator.
    block280d40dcValue2 := (block280d40dcValue1) not.
    block280d40dcValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

