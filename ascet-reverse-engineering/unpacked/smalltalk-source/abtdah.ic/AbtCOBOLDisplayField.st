"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000174; bytecode file offset 0x10284"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
null
    | recoveredValue0 |
    recoveredValue0 := (self) nulls.
    ^recoveredValue0
! !

"abtdah.ic method 0x200001a4; bytecode file offset 0x10284"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
zeroes
    | recoveredValue0 |
    recoveredValue0 := (self) zeros.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000210; bytecode file offset 0x10284"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
zero
    | recoveredValue0 |
    recoveredValue0 := (self) zeros.
    ^recoveredValue0
! !

"abtdah.ic method 0x20001d24; bytecode file offset 0x11d54"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    sizeInBytes := 0.
    recoveredValue0 := super initialize.
    ^recoveredValue0
! !

"abtdah.ic method 0x20001f90; bytecode file offset 0x11fcc"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
nulls
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Bag.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := PrimErrInvalidReftype.
    recoveredValue4 := (recoveredValue2) atAllPut: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20001fbc; bytecode file offset 0x11ff4"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
zeros
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Bag.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) atAllPut: ($0).
    ^recoveredValue3
! !

"abtdah.ic method 0x2000200c; bytecode file offset 0x1203c"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
makeSignSeparate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sizeInBytes.
    recoveredValue1 := (recoveredValue0) + (1).
    sizeInBytes := recoveredValue1.
    recoveredValue2 := super makeSignSeparate.
    ^recoveredValue2
! !

"abtdah.ic method 0x20002874; bytecode file offset 0x128a4"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := sizeInBytes.
    (recoveredValue1) abtCobolDisplayFieldAt: (recoveredValue4) put: (recoveredValue5) length: (recoveredValue6).
    ^self
! !

"abtdah.ic method 0x20003a44; bytecode file offset 0x13a80"
!AbtCOBOLDisplayField methodsFor: 'recovered'!
analyzePic: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) expand: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) allocatableChars: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) length: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

