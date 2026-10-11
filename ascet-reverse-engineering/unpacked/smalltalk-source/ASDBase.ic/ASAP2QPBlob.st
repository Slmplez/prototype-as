"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ca14; bytecode file offset 0x909658"
!ASAP2QPBlob methodsFor: 'recovered'!
shouldBeParsed: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20019fc4; bytecode file offset 0x92209c"
!ASAP2QPBlob methodsFor: 'recovered'!
getIFDataSetMethod
    ^'qpBlob:'
! !

"ASDBase.ic method 0x2001a1c8; bytecode file offset 0x92209c"
!ASAP2QPBlob methodsFor: 'recovered'!
assignedApplicationEnums
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (0); keyArray: (#(nil nil nil nil nil nil nil nil nil nil nil)); valueArray: (#(nil nil nil nil nil nil nil nil nil nil nil)); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074048; bytecode file offset 0x970b34"
!ASAP2QPBlob methodsFor: 'recovered'!
assignedApplication
    ^nil
! !

"ASDBase.ic method 0x20081430; bytecode file offset 0x97dd1c"
!ASAP2QPBlob methodsFor: 'recovered'!
version
    ^-1
! !

"ASDBase.ic method 0x200a47c8; bytecode file offset 0x9a1ad4"
!ASAP2QPBlob methodsFor: 'recovered'!
getRasterId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) rasterId: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b93fc; bytecode file offset 0x9b5cbc"
!ASAP2QPBlob methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    (self) logError: ('A2ML not yet supported') word: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201958e8; bytecode file offset 0xa9220c"
!ASAP2QPBlob methodsFor: 'recovered'!
putRasterIdIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rasterId.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) putNewLineIn: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) rasterId.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integer: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

