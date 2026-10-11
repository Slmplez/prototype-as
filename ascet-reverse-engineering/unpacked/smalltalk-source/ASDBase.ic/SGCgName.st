"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b930; bytecode file offset 0x908be4"
!SGCgName methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065a3c; bytecode file offset 0x963428"
!SGCgName methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := key.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c0c; bytecode file offset 0x9646f8"
!SGCgName methodsFor: 'recovered'!
ileName
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200678d4; bytecode file offset 0x9646f8"
!SGCgName methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067984; bytecode file offset 0x9646f8"
!SGCgName methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200692ac; bytecode file offset 0x965b90"
!SGCgName methodsFor: 'recovered'!
uuid
    | recoveredValue0 |
    recoveredValue0 := uuid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007806c; bytecode file offset 0x9757c8"
!SGCgName methodsFor: 'recovered'!
isMdlName
    ^true
! !

"ASDBase.ic method 0x200be83c; bytecode file offset 0x9bb178"
!SGCgName methodsFor: 'recovered'!
key: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    key := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bef30; bytecode file offset 0x9bc0b4"
!SGCgName methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c007c; bytecode file offset 0x9bd228"
!SGCgName methodsFor: 'recovered'!
uuid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uuid := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5f50; bytecode file offset 0x9e2810"
!SGCgName methodsFor: 'recovered'!
initialize
    super initialize.
    label := ''.
    ^self
! !

"ASDBase.ic method 0x2011553c; bytecode file offset 0xa11df0"
!SGCgName methodsFor: 'recovered'!
mdlKey
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := key.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := label.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := key.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132a48; bytecode file offset 0xa2f308"
!SGCgName methodsFor: 'recovered'!
equals: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlKey.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20175364; bytecode file offset 0xa71c2c"
!SGCgName methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) label.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPut: ($ ).
    recoveredValue3 := (self) key.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201b10cc; bytecode file offset 0xaad998"
!SGCgName methodsFor: 'recovered'!
allMdlKeys
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

