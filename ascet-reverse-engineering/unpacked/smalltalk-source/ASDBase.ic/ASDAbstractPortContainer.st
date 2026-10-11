"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004cc0; bytecode file offset 0x90206c"
!ASDAbstractPortContainer methodsFor: 'recovered'!
toggleEnablement: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001a6a8; bytecode file offset 0x92209c"
!ASDAbstractPortContainer methodsFor: 'recovered'!
getAllMethods
    ^#()
! !

"ASDBase.ic method 0x20021da0; bytecode file offset 0x92209c"
!ASDAbstractPortContainer methodsFor: 'recovered'!
getChildren
    ^#()
! !

"ASDBase.ic method 0x20024d64; bytecode file offset 0x92209c"
!ASDAbstractPortContainer methodsFor: 'recovered'!
getMethods
    ^#()
! !

"ASDBase.ic method 0x20065c5c; bytecode file offset 0x963428"
!ASDAbstractPortContainer methodsFor: 'recovered'!
parentNode
    | recoveredValue0 |
    recoveredValue0 := parentNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20099348; bytecode file offset 0x995c04"
!ASDAbstractPortContainer methodsFor: 'recovered'!
doChildrenWidget: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) getChildren.
    (recoveredValue0) children: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be55c; bytecode file offset 0x9bb178"
!ASDAbstractPortContainer methodsFor: 'recovered'!
parentNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e56c4; bytecode file offset 0x9e1f80"
!ASDAbstractPortContainer methodsFor: 'recovered'!
getRootNode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRootNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

