"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007a90; bytecode file offset 0x908be4"
!SGCgBuilder methodsFor: 'recovered'!
logic
    | recoveredValue0 |
    recoveredValue0 := (self) popStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200082dc; bytecode file offset 0x908be4"
!SGCgBuilder methodsFor: 'recovered'!
tableStack
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d7fc; bytecode file offset 0x90a4b8"
!SGCgBuilder methodsFor: 'recovered'!
addStapledSourceTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dafc; bytecode file offset 0x90a4b8"
!SGCgBuilder methodsFor: 'recovered'!
addSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20034874; bytecode file offset 0x934580"
!SGCgBuilder methodsFor: 'recovered'!
table
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableStack.
    recoveredValue1 := (recoveredValue0) peek.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037164; bytecode file offset 0x934580"
!SGCgBuilder methodsFor: 'recovered'!
hasCurrentMethodErrors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := (recoveredValue0) hasCurrentErrors.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a520; bytecode file offset 0x938608"
!SGCgBuilder methodsFor: 'recovered'!
makeNewNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addSource: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e21c; bytecode file offset 0x94d048"
!SGCgBuilder methodsFor: 'recovered'!
reset
    (self) baseInitialize.
    ^self
! !

"ASDBase.ic method 0x20058458; bytecode file offset 0x956284"
!SGCgBuilder methodsFor: 'recovered'!
peekStack: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stack.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) peek: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059078; bytecode file offset 0x956284"
!SGCgBuilder methodsFor: 'recovered'!
pushStack: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stack.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) push: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006624c; bytecode file offset 0x963428"
!SGCgBuilder methodsFor: 'recovered'!
stackStack
    | recoveredValue0 |
    recoveredValue0 := stack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066534; bytecode file offset 0x963428"
!SGCgBuilder methodsFor: 'recovered'!
stack
    | recoveredValue0 |
    recoveredValue0 := stack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a074; bytecode file offset 0x97c330"
!SGCgBuilder methodsFor: 'recovered'!
isLmBlockAnalyzer
    ^false
! !

"ASDBase.ic method 0x200894ac; bytecode file offset 0x985ef8"
!SGCgBuilder methodsFor: 'recovered'!
baseInitialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgStack.
    recoveredValue1 := (recoveredValue0) create.
    stack := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20098f34; bytecode file offset 0x995850"
!SGCgBuilder methodsFor: 'recovered'!
reserveTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableStack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) push: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6694; bytecode file offset 0x9d3134"
!SGCgBuilder methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reset.
    ^self
! !

"ASDBase.ic method 0x20161ac0; bytecode file offset 0xa5e39c"
!SGCgBuilder methodsFor: 'recovered'!
peekStack
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) fatalNo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161ad8; bytecode file offset 0xa5e39c"
!SGCgBuilder methodsFor: 'recovered'!
popStack
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) fatalNo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) pop.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20167c38; bytecode file offset 0xa644fc"
!SGCgBuilder methodsFor: 'recovered'!
freeTableIfFail: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
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
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) pop.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

