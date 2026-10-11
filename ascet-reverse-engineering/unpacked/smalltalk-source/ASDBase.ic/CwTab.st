"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003868; bytecode file offset 0x90206c"
!CwTab methodsFor: 'recovered'!
restoreResourcesFromSnapshots: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20038094; bytecode file offset 0x934b68"
!CwTab methodsFor: 'recovered'!
getResourceSnapshots: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x200520a0; bytecode file offset 0x94f0e0"
!CwTab methodsFor: 'recovered'!
tabStrip
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osWidget.
    recoveredValue1 := (recoveredValue0) parent.
    recoveredValue2 := (recoveredValue1) owner.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200718fc; bytecode file offset 0x96e578"
!CwTab methodsFor: 'recovered'!
height
    ^0
! !

"ASDBase.ic method 0x20075f74; bytecode file offset 0x9757c8"
!CwTab methodsFor: 'recovered'!
isCwTab
    ^true
! !

"ASDBase.ic method 0x20079d74; bytecode file offset 0x97c330"
!CwTab methodsFor: 'recovered'!
hasFocus
    ^false
! !

"ASDBase.ic method 0x2007acc4; bytecode file offset 0x97c330"
!CwTab methodsFor: 'recovered'!
isPushButton
    ^false
! !

"ASDBase.ic method 0x2007bffc; bytecode file offset 0x97c330"
!CwTab methodsFor: 'recovered'!
isText
    ^false
! !

"ASDBase.ic method 0x201bd1bc; bytecode file offset 0xab9a80"
!CwTab methodsFor: 'recovered'!
removeFromParent: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) osWidget.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) destroy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

