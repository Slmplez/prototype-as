"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066324; bytecode file offset 0x963428"
!ETASDefaultByteOrder methodsFor: 'recovered'!
byteOrder
    | recoveredValue0 |
    recoveredValue0 := byteOrder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071bd4; bytecode file offset 0x96e578"
!ETASDefaultByteOrder methodsFor: 'recovered'!
asInteger
    ^0
! !

"ASDBase.ic method 0x200780b4; bytecode file offset 0x9757c8"
!ETASDefaultByteOrder methodsFor: 'recovered'!
isDefault
    ^true
! !

"ASDBase.ic method 0x200bda8c; bytecode file offset 0x9bb178"
!ETASDefaultByteOrder methodsFor: 'recovered'!
byteOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    byteOrder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20115558; bytecode file offset 0xa11e14"
!ETASDefaultByteOrder methodsFor: 'recovered'!
asMSRSWString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := byteOrder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'MOST-SIGNIFICANT-BYTE-LAST'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := byteOrder.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMSRSWString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017ed24; bytecode file offset 0xa7b5ec"
!ETASDefaultByteOrder methodsFor: 'recovered'!
asString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := byteOrder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Default(MSB_LAST)'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Default('.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := byteOrder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

