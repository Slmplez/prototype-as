"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000298; bytecode file offset 0x510b4"
!EwTargetAdapter methodsFor: 'recovered'!
insertionEmphasisFrom: recoveredArg1 to: recoveredArg2
    ^self
! !

"extwid.ic method 0x200002e0; bytecode file offset 0x510b4"
!EwTargetAdapter methodsFor: 'recovered'!
targetEmphasisFrom: recoveredArg1 to: recoveredArg2
    ^self
! !

"extwid.ic method 0x200043d4; bytecode file offset 0x55268"
!EwTargetAdapter methodsFor: 'recovered'!
supportsInsertionEmphasis
    ^false
! !

"extwid.ic method 0x200043f4; bytecode file offset 0x55268"
!EwTargetAdapter methodsFor: 'recovered'!
supportsTargetEmphasis
    ^false
! !

"extwid.ic method 0x200047fc; bytecode file offset 0x5561c"
!EwTargetAdapter methodsFor: 'recovered'!
isRegistered
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) isTargetAdapterRegistered: (self).
    ^recoveredValue2
! !

"extwid.ic method 0x20006550; bytecode file offset 0x57404"
!EwTargetAdapter methodsFor: 'recovered'!
dragOverCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dragOverCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200066f4; bytecode file offset 0x57568"
!EwTargetAdapter methodsFor: 'recovered'!
dragLeaveCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dragLeaveCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200068a4; bytecode file offset 0x576a8"
!EwTargetAdapter methodsFor: 'recovered'!
dropCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dropCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007abc; bytecode file offset 0x588d8"
!EwTargetAdapter methodsFor: 'recovered'!
deregister
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) widget.
    (recoveredValue1) deregisterTargetAdapter: (self) from: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20007b04; bytecode file offset 0x588d8"
!EwTargetAdapter methodsFor: 'recovered'!
register
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) widget.
    (recoveredValue1) registerTargetAdapter: (self) on: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x200083e0; bytecode file offset 0x591ac"
!EwTargetAdapter methodsFor: 'recovered'!
setTargetInfoOn: recoveredArg1 atX: recoveredArg2 y: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) itemUnderCursor: (nil).
    (recoveredValue0) insertionIndex: (nil).
    ^self
! !

"extwid.ic method 0x2000c9a8; bytecode file offset 0x5d774"
!EwTargetAdapter methodsFor: 'recovered'!
dragOverCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dragOverCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dragOverCallback := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dragOverCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000c9cc; bytecode file offset 0x5d7a8"
!EwTargetAdapter methodsFor: 'recovered'!
dragLeaveCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dragLeaveCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dragLeaveCallback := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dragLeaveCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000ca00; bytecode file offset 0x5d7dc"
!EwTargetAdapter methodsFor: 'recovered'!
dropCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dropCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dropCallback := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dropCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

