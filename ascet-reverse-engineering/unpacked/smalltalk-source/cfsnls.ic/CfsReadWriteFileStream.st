"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000dac; bytecode file offset 0x2401c"
!CfsReadWriteFileStream methodsFor: 'recovered'!
nextPut: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) privateNextPut: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x2000276c; bytecode file offset 0x259a0"
!CfsReadWriteFileStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) nextReplace: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20002878; bytecode file offset 0x25ae0"
!CfsReadWriteFileStream methodsFor: 'recovered'!
tab
    | recoveredValue0 |
    recoveredValue0 := Tab.
    (self) nextPut: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20002888; bytecode file offset 0x25ae0"
!CfsReadWriteFileStream methodsFor: 'recovered'!
space
    | recoveredValue0 |
    recoveredValue0 := Space.
    (self) nextPut: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20002a28; bytecode file offset 0x25c68"
!CfsReadWriteFileStream methodsFor: 'recovered'!
cr
    | recoveredValue0 |
    recoveredValue0 := lineDelimiter.
    (self) nextPutAll: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003008; bytecode file offset 0x2623c"
!CfsReadWriteFileStream methodsFor: 'recovered'!
next: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) next: (recoveredValue0) replaceWith: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    ^recoveredValue2
! !

"cfsnls.ic method 0x20004e88; bytecode file offset 0x280bc"
!CfsReadWriteFileStream methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := size.
    recoveredValue1 := filePosition.
    recoveredValue2 := bytes.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue0) max: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    size := recoveredValue5.
    ^recoveredValue4
! !

"cfsnls.ic method 0x200098ac; bytecode file offset 0x2cb0c"
!CfsReadWriteFileStream methodsFor: 'recovered'!
writeBuffer
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := writeOn.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := fileDescriptor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := filePosition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := SEEKSET.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) lseek: (recoveredStack3) whence: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) checkError: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := fileDescriptor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := collection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := bytes.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) write: (recoveredStack3) startingAt: (recoveredStack4) nbyte: (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkError: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := filePosition.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := bytes.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            size := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            writeOn := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

