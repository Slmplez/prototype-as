"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200669ec; bytecode file offset 0x963428"
!FileReader methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066ca4; bytecode file offset 0x9646f8"
!FileReader methodsFor: 'recovered'!
pathName
    | recoveredValue0 |
    recoveredValue0 := pathName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068294; bytecode file offset 0x965b90"
!FileReader methodsFor: 'recovered'!
buffer
    | recoveredValue0 |
    recoveredValue0 := buffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069c40; bytecode file offset 0x966bdc"
!FileReader methodsFor: 'recovered'!
lines
    | recoveredValue0 |
    recoveredValue0 := lines.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be47c; bytecode file offset 0x9bb178"
!FileReader methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf470; bytecode file offset 0x9bc0b4"
!FileReader methodsFor: 'recovered'!
pathName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pathName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf82c; bytecode file offset 0x9bd228"
!FileReader methodsFor: 'recovered'!
buffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buffer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c14d0; bytecode file offset 0x9bdf14"
!FileReader methodsFor: 'recovered'!
lines: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lines := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201184cc; bytecode file offset 0xa14d80"
!FileReader methodsFor: 'recovered'!
initialize
    fileName := nil.
    pathName := nil.
    buffer := nil.
    lines := nil.
    ^self
! !

"ASDBase.ic method 0x2022ab3c; bytecode file offset 0xb2740c"
!FileReader methodsFor: 'recovered'!
read
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            buffer := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := buffer.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023b384; bytecode file offset 0xb37c4c"
!FileReader methodsFor: 'recovered'!
createWords
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := lines.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := 1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) at: (recoveredBlock6Stack3).
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) value.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack3 := 12.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 32] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := lines.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg2.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) subStrings.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) at: (recoveredBlock6Stack2) put: (recoveredBlock6Stack3).
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2037a0c4; bytecode file offset 0xc76998"
!FileReader methodsFor: 'recovered'!
createLines
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := buffer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Cr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            lines := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := lines.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := lines.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := lines.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) subStrings.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 20] ifFalse: [recoveredLocal2 := nil. recoveredPC := 68]] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

