"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200001a0; bytecode file offset 0x23404"
!CfsError methodsFor: 'recovered'!
errno
    | recoveredValue0 |
    recoveredValue0 := (self) errorCode.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001b5c; bytecode file offset 0x24dac"
!CfsError methodsFor: 'recovered'!
platformErrno
    | recoveredValue0 |
    recoveredValue0 := platformErrno.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001be0; bytecode file offset 0x24e10"
!CfsError methodsFor: 'recovered'!
platformErrorClass
    | recoveredValue0 |
    recoveredValue0 := platformErrorClass.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001c1c; bytecode file offset 0x24e64"
!CfsError methodsFor: 'recovered'!
platformErrorLocation
    | recoveredValue0 |
    recoveredValue0 := platformErrorLocation.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001c60; bytecode file offset 0x24ea8"
!CfsError methodsFor: 'recovered'!
platformRecommendedAction
    | recoveredValue0 |
    recoveredValue0 := platformRecommendedAction.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200021c0; bytecode file offset 0x25458"
!CfsError methodsFor: 'recovered'!
isCfsError
    ^true
! !

"cfsnls.ic method 0x20002748; bytecode file offset 0x2597c"
!CfsError methodsFor: 'recovered'!
errno: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) errorCode: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003f30; bytecode file offset 0x27170"
!CfsError methodsFor: 'recovered'!
platformErrno: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platformErrno := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003f8c; bytecode file offset 0x271c4"
!CfsError methodsFor: 'recovered'!
platformErrorClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platformErrorClass := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003fb0; bytecode file offset 0x27210"
!CfsError methodsFor: 'recovered'!
platformErrorLocation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platformErrorLocation := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20004004; bytecode file offset 0x2723c"
!CfsError methodsFor: 'recovered'!
platformRecommendedAction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platformRecommendedAction := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20006500; bytecode file offset 0x2974c"
!CfsError methodsFor: 'recovered'!
identifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifierDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280046acValue0 block280046acValue1 |
    block280046acValue0 := NlsCatCFS.
    block280046acValue1 := (block280046acValue0) indexedMsg: (2).
    block280046acValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20006b90; bytecode file offset 0x29ddc"
!CfsError methodsFor: 'recovered'!
message
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := NlsCatCFS.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexedMsg: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000c73c; bytecode file offset 0x2f9a8"
!CfsError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := MxCFS1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifier.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := (recoveredStack4) errno.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := (recoveredStack5) message.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrno.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrorClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformRecommendedAction.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrorLocation.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := MxCFS2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) platformErrno.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := MxCFS3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) platformErrno.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) platformErrorClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) platformRecommendedAction.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := (recoveredStack5) platformErrorLocation.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

