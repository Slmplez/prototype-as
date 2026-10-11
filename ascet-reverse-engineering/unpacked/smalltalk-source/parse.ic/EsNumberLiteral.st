"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000ad8; bytecode file offset 0x1614c"
!EsNumberLiteral methodsFor: 'recovered'!
numericValue
    | recoveredValue0 |
    recoveredValue0 := numericValue.
    ^recoveredValue0
! !

"parse.ic method 0x20000c60; bytecode file offset 0x162dc"
!EsNumberLiteral methodsFor: 'recovered'!
isNumeric
    ^true
! !

"parse.ic method 0x20001060; bytecode file offset 0x166bc"
!EsNumberLiteral methodsFor: 'recovered'!
magicValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CodeStream.
    recoveredValue1 := numericValue.
    recoveredValue2 := (recoveredValue0) makeSmallInteger: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x200015f0; bytecode file offset 0x16cac"
!EsNumberLiteral methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) asObject: (recoveredValue1).
    (recoveredValue0) pushNumberLiteral: (recoveredValue2).
    ^self
! !

"parse.ic method 0x20001af0; bytecode file offset 0x1716c"
!EsNumberLiteral methodsFor: 'recovered'!
numericValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    numericValue := recoveredValue0.
    ^self
! !

"parse.ic method 0x20002248; bytecode file offset 0x178a4"
!EsNumberLiteral methodsFor: 'recovered'!
asObject: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := numericValue.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) markReadOnly: (true).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"parse.ic method 0x20002e64; bytecode file offset 0x184c8"
!EsNumberLiteral methodsFor: 'recovered'!
isMagic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numericValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) magicValue.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := -32768.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 32767.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20003178; bytecode file offset 0x187d8"
!EsNumberLiteral methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) at: (1).
    super contents: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) at: (2).
    numericValue := recoveredValue3.
    ^self
! !

"parse.ic method 0x20003378; bytecode file offset 0x189d4"
!EsNumberLiteral methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := numericValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := contents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

