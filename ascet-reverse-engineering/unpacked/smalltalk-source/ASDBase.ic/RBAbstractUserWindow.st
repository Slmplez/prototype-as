"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004f59c; bytecode file offset 0x94d048"
!RBAbstractUserWindow methodsFor: 'recovered'!
createWidgetHierarchy
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006fd90; bytecode file offset 0x96c6ac"
!RBAbstractUserWindow methodsFor: 'recovered'!
isVisible
    | recoveredValue0 |
    recoveredValue0 := isVisible.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d2590; bytecode file offset 0x9cee4c"
!RBAbstractUserWindow methodsFor: 'recovered'!
close
    isVisible := false.
    super close.
    ^self
! !

"ASDBase.ic method 0x200d3494; bytecode file offset 0x9cfd50"
!RBAbstractUserWindow methodsFor: 'recovered'!
open
    isVisible := true.
    super open.
    ^self
! !

"ASDBase.ic method 0x200d5b20; bytecode file offset 0x9d23dc"
!RBAbstractUserWindow methodsFor: 'recovered'!
initialize
    super initialize.
    isVisible := false.
    ^self
! !

"ASDBase.ic method 0x2012dfbc; bytecode file offset 0xa2a880"
!RBAbstractUserWindow methodsFor: 'recovered'!
isDestroyed
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
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
            recoveredStack0 := super isDestroyed.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

