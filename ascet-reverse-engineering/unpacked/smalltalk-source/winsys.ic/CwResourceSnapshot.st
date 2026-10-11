"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002b20; bytecode file offset 0x7ed00"
!CwResourceSnapshot methodsFor: 'recovered'!
getSelector
    | recoveredValue0 |
    recoveredValue0 := getSelector.
    ^recoveredValue0
! !

"winsys.ic method 0x20002e00; bytecode file offset 0x7efc0"
!CwResourceSnapshot methodsFor: 'recovered'!
setSelector
    | recoveredValue0 |
    recoveredValue0 := setSelector.
    ^recoveredValue0
! !

"winsys.ic method 0x20002fa0; bytecode file offset 0x7f220"
!CwResourceSnapshot methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"winsys.ic method 0x200071ac; bytecode file offset 0x8346c"
!CwResourceSnapshot methodsFor: 'recovered'!
getSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    getSelector := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000735c; bytecode file offset 0x836b4"
!CwResourceSnapshot methodsFor: 'recovered'!
setSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    setSelector := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007624; bytecode file offset 0x838d4"
!CwResourceSnapshot methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20014eb8; bytecode file offset 0x91094"
!CwResourceSnapshot methodsFor: 'recovered'!
relocalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBLocale.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPackedString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200223b8; bytecode file offset 0x9e5ac"
!CwResourceSnapshot methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) getSelector.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := ('(getSelector: ') , (recoveredValue4).
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) setSelector.
    recoveredValue8 := (recoveredValue7) asString.
    recoveredValue9 := (' setSelector: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) value.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := (' value: ') , (recoveredValue12).
    (recoveredValue10) nextPutAll: (recoveredValue13).
    (recoveredValue1) nextPut: ($)).
    ^self
! !

