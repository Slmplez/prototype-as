"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20030524; bytecode file offset 0x934580"
!OSPointerWithSize methodsFor: 'recovered'!
asUInt32Array
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asBytes.
    recoveredValue1 := (recoveredValue0) asUInt32Array.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032304; bytecode file offset 0x934580"
!OSPointerWithSize methodsFor: 'recovered'!
asDoubleArray
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asBytes.
    recoveredValue1 := (recoveredValue0) asDoubleArray.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200680d4; bytecode file offset 0x965b90"
!OSPointerWithSize methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := size.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bfe2c; bytecode file offset 0x9bd228"
!OSPointerWithSize methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    size := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20189228; bytecode file offset 0xa85afc"
!OSPointerWithSize methodsFor: 'recovered'!
asBytes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := size.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := recoveredLocal1.
    (self) memcpyFrom: (0) to: (recoveredValue4) into: (recoveredValue5) startingAt: (0).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2018923c; bytecode file offset 0xa85afc"
!OSPointerWithSize methodsFor: 'recovered'!
asString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := String.
    recoveredValue1 := size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := size.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := recoveredLocal1.
    (self) memcpyFrom: (0) to: (recoveredValue4) into: (recoveredValue5) startingAt: (0).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201da794; bytecode file offset 0xad705c"
!OSPointerWithSize methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) size.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := (self) asBytes.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2034aecc; bytecode file offset 0xc477b0"
!OSPointerWithSize methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'asString'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'asString'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'asBytes'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'asBytes'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'asDoubleArray'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'asDoubleArray'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := (self) size.
    recoveredBlock43Value1 := (recoveredBlock43Value0) \\ (8).
    recoveredBlock43Value2 := (recoveredBlock43Value1) = (0).
    recoveredBlock43Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

