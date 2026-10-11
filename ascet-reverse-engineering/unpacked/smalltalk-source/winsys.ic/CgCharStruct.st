"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002a68; bytecode file offset 0x7ed00"
!CgCharStruct methodsFor: 'recovered'!
lbearing
    | recoveredValue0 |
    recoveredValue0 := lbearing.
    ^recoveredValue0
! !

"winsys.ic method 0x20002d08; bytecode file offset 0x7efc0"
!CgCharStruct methodsFor: 'recovered'!
rbearing
    | recoveredValue0 |
    recoveredValue0 := rbearing.
    ^recoveredValue0
! !

"winsys.ic method 0x20002e48; bytecode file offset 0x7f220"
!CgCharStruct methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"winsys.ic method 0x200031b0; bytecode file offset 0x7f418"
!CgCharStruct methodsFor: 'recovered'!
ascent
    | recoveredValue0 |
    recoveredValue0 := ascent.
    ^recoveredValue0
! !

"winsys.ic method 0x200032b8; bytecode file offset 0x7f5b8"
!CgCharStruct methodsFor: 'recovered'!
descent
    | recoveredValue0 |
    recoveredValue0 := descent.
    ^recoveredValue0
! !

"winsys.ic method 0x20003518; bytecode file offset 0x7f720"
!CgCharStruct methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"winsys.ic method 0x20004fb4; bytecode file offset 0x81174"
!CgCharStruct methodsFor: 'recovered'!
bearing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := rbearing.
    recoveredValue1 := lbearing.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20005028; bytecode file offset 0x811e8"
!CgCharStruct methodsFor: 'recovered'!
height
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ascent.
    recoveredValue1 := descent.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20005f90; bytecode file offset 0x82158"
!CgCharStruct methodsFor: 'recovered'!
origin
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := lbearing.
    recoveredValue1 := ascent.
    recoveredValue2 := (recoveredValue1) negated.
    recoveredValue3 := (recoveredValue0) @ (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x2000714c; bytecode file offset 0x8346c"
!CgCharStruct methodsFor: 'recovered'!
lbearing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lbearing := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007474; bytecode file offset 0x836b4"
!CgCharStruct methodsFor: 'recovered'!
rbearing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rbearing := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007544; bytecode file offset 0x838d4"
!CgCharStruct methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200077f4; bytecode file offset 0x83a6c"
!CgCharStruct methodsFor: 'recovered'!
ascent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200079b8; bytecode file offset 0x83bb0"
!CgCharStruct methodsFor: 'recovered'!
descent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    descent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007a38; bytecode file offset 0x83ce8"
!CgCharStruct methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200090c0; bytecode file offset 0x85284"
!CgCharStruct methodsFor: 'recovered'!
extent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := width.
    recoveredValue1 := ascent.
    recoveredValue2 := descent.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (recoveredValue0) @ (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x2000bf04; bytecode file offset 0x880d0"
!CgCharStruct methodsFor: 'recovered'!
rectangle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := lbearing.
    recoveredValue1 := ascent.
    recoveredValue2 := (recoveredValue1) negated.
    recoveredValue3 := (recoveredValue0) @ (recoveredValue2).
    recoveredValue4 := rbearing.
    recoveredValue5 := descent.
    recoveredValue6 := (recoveredValue4) @ (recoveredValue5).
    recoveredValue7 := (recoveredValue3) corner: (recoveredValue6).
    ^recoveredValue7
! !

"winsys.ic method 0x20013c30; bytecode file offset 0x8fdf8"
!CgCharStruct methodsFor: 'recovered'!
lbearing: recoveredArg1 rbearing: recoveredArg2 width: recoveredArg3 ascent: recoveredArg4 descent: recoveredArg5 attributes: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    lbearing := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    rbearing := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    width := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    ascent := recoveredValue3.
    recoveredValue4 := recoveredArg5.
    descent := recoveredValue4.
    recoveredValue5 := recoveredArg6.
    attributes := recoveredValue5.
    ^self
! !

"winsys.ic method 0x200222ac; bytecode file offset 0x9e46c"
!CgCharStruct methodsFor: 'recovered'!
exists
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := rbearing.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := lbearing.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := ascent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := descent.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20028be0; bytecode file offset 0xa4de0"
!CgCharStruct methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) lbearing.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := ('(lbearing: ') , (recoveredValue4).
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) rbearing.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (' rbearing: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) width.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := (' width: ') , (recoveredValue12).
    (recoveredValue10) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) ascent.
    recoveredValue16 := (recoveredValue15) printString.
    recoveredValue17 := (' ascent: ') , (recoveredValue16).
    (recoveredValue14) nextPutAll: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) descent.
    recoveredValue20 := (recoveredValue19) printString.
    recoveredValue21 := (' descent: ') , (recoveredValue20).
    (recoveredValue18) nextPutAll: (recoveredValue21).
    (recoveredValue1) nextPut: ($)).
    ^self
! !

