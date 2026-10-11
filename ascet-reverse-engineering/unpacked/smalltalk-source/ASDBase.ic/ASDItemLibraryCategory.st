"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200664c4; bytecode file offset 0x963428"
!ASDItemLibraryCategory methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006796c; bytecode file offset 0x9646f8"
!ASDItemLibraryCategory methodsFor: 'recovered'!
loadPath
    | recoveredValue0 |
    recoveredValue0 := loadPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be654; bytecode file offset 0x9bb178"
!ASDItemLibraryCategory methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be9c8; bytecode file offset 0x9bc0b4"
!ASDItemLibraryCategory methodsFor: 'recovered'!
loadPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loadPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf93c; bytecode file offset 0x9bd228"
!ASDItemLibraryCategory methodsFor: 'recovered'!
readOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20146030; bytecode file offset 0xa428f4"
!ASDItemLibraryCategory methodsFor: 'recovered'!
removeItem: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20155350; bytecode file offset 0xa51c18"
!ASDItemLibraryCategory methodsFor: 'recovered'!
addItem: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016f438; bytecode file offset 0xa6bcf0"
!ASDItemLibraryCategory methodsFor: 'recovered'!
readOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := readOnly.
    recoveredValue1 := [
    readOnly := false.
    false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := readOnly.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018dc7c; bytecode file offset 0xa8a53c"
!ASDItemLibraryCategory methodsFor: 'recovered'!
items
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := items.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Dictionary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    items := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := items.
    ^recoveredValue2
! !

