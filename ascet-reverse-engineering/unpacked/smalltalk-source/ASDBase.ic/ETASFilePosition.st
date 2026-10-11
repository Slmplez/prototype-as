"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005d154; bytecode file offset 0x959a08"
!ETASFilePosition methodsFor: 'recovered'!
resetPosition
    | recoveredValue0 |
    recoveredValue0 := startingPosition.
    currentPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20066114; bytecode file offset 0x963428"
!ETASFilePosition methodsFor: 'recovered'!
startingPosition
    | recoveredValue0 |
    recoveredValue0 := startingPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066bd4; bytecode file offset 0x9646f8"
!ETASFilePosition methodsFor: 'recovered'!
endingPosition
    | recoveredValue0 |
    recoveredValue0 := endingPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006898c; bytecode file offset 0x965b90"
!ETASFilePosition methodsFor: 'recovered'!
currentPosition
    | recoveredValue0 |
    recoveredValue0 := currentPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a0d8; bytecode file offset 0x966bdc"
!ETASFilePosition methodsFor: 'recovered'!
fHandle
    | recoveredValue0 |
    recoveredValue0 := fHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a56c; bytecode file offset 0x967a18"
!ETASFilePosition methodsFor: 'recovered'!
currentFile
    | recoveredValue0 |
    recoveredValue0 := currentFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008ae24; bytecode file offset 0x9876d8"
!ETASFilePosition methodsFor: 'recovered'!
atStart
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentPosition.
    recoveredValue1 := startingPosition.
    recoveredValue2 := (recoveredValue0) <= (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a2eec; bytecode file offset 0x99f7a0"
!ETASFilePosition methodsFor: 'recovered'!
incPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentPosition.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    currentPosition := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200be204; bytecode file offset 0x9bb178"
!ETASFilePosition methodsFor: 'recovered'!
startingPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startingPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf0a8; bytecode file offset 0x9bc0b4"
!ETASFilePosition methodsFor: 'recovered'!
endingPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endingPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfecc; bytecode file offset 0x9bd228"
!ETASFilePosition methodsFor: 'recovered'!
currentPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentPosition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c14b8; bytecode file offset 0x9bdf14"
!ETASFilePosition methodsFor: 'recovered'!
fHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c19fc; bytecode file offset 0x9beac8"
!ETASFilePosition methodsFor: 'recovered'!
currentFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201e6894; bytecode file offset 0xae3148"
!ETASFilePosition methodsFor: 'recovered'!
outOfBounds: recoveredArg1
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
            recoveredStack2 := startingPosition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := endingPosition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := endingPosition.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20376934; bytecode file offset 0xc73208"
!ETASFilePosition methodsFor: 'recovered'!
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
            super printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := currentFile.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := currentFile.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'start '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := startingPosition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'end   '.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := endingPosition.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'cur   '.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := currentPosition.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

