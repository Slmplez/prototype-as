"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000128; bytecode file offset 0x11c60"
!Number methodsFor: 'recovered'!
abtCloneWithRecursionSet: recoveredArg1
    ^self
! !

"abtdbh.ic method 0x200001ac; bytecode file offset 0x11d4c"
!Number methodsFor: 'recovered'!
abrAsCLangLong
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"abtdbh.ic method 0x200001c4; bytecode file offset 0x11d4c"
!Number methodsFor: 'recovered'!
abrAsCLangULong
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"abtdbh.ic method 0x200001dc; bytecode file offset 0x11d4c"
!Number methodsFor: 'recovered'!
abrAsCLangUShort
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"abtdbh.ic method 0x200001f4; bytecode file offset 0x11d4c"
!Number methodsFor: 'recovered'!
abtAsInteger
    | recoveredValue0 |
    recoveredValue0 := (self) truncated.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000200; bytecode file offset 0x11d4c"
!Number methodsFor: 'recovered'!
abrAsCLangShort
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000278; bytecode file offset 0x11d4c"
!Number methodsFor: 'recovered'!
abrAsCLangChar
    | recoveredValue0 |
    recoveredValue0 := (self) rounded.
    ^recoveredValue0
! !

"abtdbh.ic method 0x2000044c; bytecode file offset 0x11f64"
!Number methodsFor: 'recovered'!
asInt32
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rounded.
    recoveredValue1 := (recoveredValue0) asInt32.
    ^recoveredValue1
! !

"abtdbh.ic method 0x2000048c; bytecode file offset 0x11f64"
!Number methodsFor: 'recovered'!
asInt16
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rounded.
    recoveredValue1 := (recoveredValue0) asInt16.
    ^recoveredValue1
! !

"abtdbh.ic method 0x200009e8; bytecode file offset 0x124ec"
!Number methodsFor: 'recovered'!
abtAsUInt16
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rounded.
    recoveredValue1 := (recoveredValue0) bitAnd: (65535).
    ^recoveredValue1
! !

"abtdbh.ic method 0x20000a10; bytecode file offset 0x124ec"
!Number methodsFor: 'recovered'!
abtAsUInt32
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) rounded.
    recoveredValue1 := (Bag new: 1) instVarAt: 1 put: (-1); at: 1 put: (nil); yourself.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbh.ic method 0x20002b28; bytecode file offset 0x145fc"
!Number methodsFor: 'recovered'!
abrTo: recoveredArg1 reverseDo: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

