"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20077d1c; bytecode file offset 0x9757c8"
!MotorolSDataRecord methodsFor: 'recovered'!
hasDataBytes
    ^true
! !

"ASDBase.ic method 0x200994c0; bytecode file offset 0x995e2c"
!MotorolSDataRecord methodsFor: 'recovered'!
write: recoveredArg1 base: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) writeRecord: (self) base: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200afabc; bytecode file offset 0x9ac378"
!MotorolSDataRecord methodsFor: 'recovered'!
checksumOffset
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) numberOfHexDataBytes.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) dataOffset.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e2c9c; bytecode file offset 0x9df558"
!MotorolSDataRecord methodsFor: 'recovered'!
numberOfHexDataBytes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) numberOfBytes.
    recoveredValue1 := (2) * (recoveredValue0).
    recoveredValue2 := (self) addressSize.
    recoveredValue3 := (recoveredValue1) - (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (-2).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20118d48; bytecode file offset 0xa15608"
!MotorolSDataRecord methodsFor: 'recovered'!
numberOfDataBytes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) numberOfBytes.
    recoveredValue1 := (2) * (recoveredValue0).
    recoveredValue2 := (self) addressSize.
    recoveredValue3 := (recoveredValue1) - (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (-2).
    recoveredValue5 := (recoveredValue4) / (2).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201467b4; bytecode file offset 0xa43090"
!MotorolSDataRecord methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asBinary.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredArg1.
    super printOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2017afb0; bytecode file offset 0xa77870"
!MotorolSDataRecord methodsFor: 'recovered'!
checksum
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) checksumOffset.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) checksumOffset.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexByteAt: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fc9ec; bytecode file offset 0xaf92c0"
!MotorolSDataRecord methodsFor: 'recovered'!
asBinary
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) numberOfHexDataBytes.
    recoveredValue2 := (recoveredValue1) / (2).
    recoveredValue3 := recoveredValue2.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := (self) dataOffset.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := RBBcrtl32DLL.
    recoveredValue7 := (self) size.
    recoveredValue8 := (recoveredValue7) + (-2).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue6) hexBufferAsBinary: (self) size: (recoveredValue8) offset: (recoveredValue9).
    ^recoveredValue10
! !

