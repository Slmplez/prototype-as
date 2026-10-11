"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f42c; bytecode file offset 0x90bd10"
!HexRecord methodsFor: 'recovered'!
write: recoveredArg1 base: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x20103768; bytecode file offset 0xa00024"
!HexRecord methodsFor: 'recovered'!
hexByteAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) hexNibbleAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) << (4).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredValue5 := (self) hexNibbleAt: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20126ca0; bytecode file offset 0xa2355c"
!HexRecord methodsFor: 'recovered'!
hexWordAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) hexByteAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) << (8).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (2).
    recoveredValue5 := (self) hexByteAt: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20126cc4; bytecode file offset 0xa23584"
!HexRecord methodsFor: 'recovered'!
hex24WordAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) hexWordAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) << (8).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (4).
    recoveredValue5 := (self) hexByteAt: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20126cec; bytecode file offset 0xa235a8"
!HexRecord methodsFor: 'recovered'!
hexDWordAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) hexWordAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) << (16).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (4).
    recoveredValue5 := (self) hexWordAt: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20287e74; bytecode file offset 0xb8472c"
!HexRecord methodsFor: 'recovered'!
hexNibbleAt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint8At: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 65.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 48.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 97.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 55.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 87.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ccb94; bytecode file offset 0xdc947c"
!HexRecord methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) space.
    (recoveredValue0) nextPut: (${).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) members.
    recoveredValue8 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack2) nextPutAll: (recoveredBlock30Stack3).
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack3 := $:.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            (recoveredBlock30Stack2) nextPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            (recoveredBlock30Stack1) space.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) perform: (recoveredBlock30Stack1).
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) class.
            recoveredBlock30PC := 60.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) isBytes.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 66] ifFalse: [recoveredBlock30PC := 84].
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 78 ifTrue: [
            (recoveredBlock30Stack0) printOn: (recoveredBlock30Stack1).
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30PC := 136.
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 87.
        ].
        recoveredBlock30Step = 87 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            recoveredBlock30Stack2 := $x.
            recoveredBlock30PC := 92.
        ].
        recoveredBlock30Step = 92 ifTrue: [
            (recoveredBlock30Stack1) nextPut: (recoveredBlock30Stack2).
            recoveredBlock30PC := 94.
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30Stack1 := $ .
            recoveredBlock30PC := 98.
        ].
        recoveredBlock30Step = 98 ifTrue: [
            (recoveredBlock30Stack0) nextPut: (recoveredBlock30Stack1).
            recoveredBlock30PC := 100.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 103.
        ].
        recoveredBlock30Step = 103 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) isNumber.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 108] ifFalse: [recoveredBlock30PC := 120].
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 114.
        ].
        recoveredBlock30Step = 114 ifTrue: [
            recoveredBlock30Stack2 := 16.
            recoveredBlock30PC := 116.
        ].
        recoveredBlock30Step = 116 ifTrue: [
            recoveredBlock30Stack3 := false.
            recoveredBlock30PC := 117.
        ].
        recoveredBlock30Step = 117 ifTrue: [
            (recoveredBlock30Stack0) printOn: (recoveredBlock30Stack1) base: (recoveredBlock30Stack2) showRadix: (recoveredBlock30Stack3).
            recoveredBlock30PC := 120.
        ].
        recoveredBlock30Step = 120 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 123.
        ].
        recoveredBlock30Step = 123 ifTrue: [
            recoveredBlock30Stack1 := $ .
            recoveredBlock30PC := 126.
        ].
        recoveredBlock30Step = 126 ifTrue: [
            (recoveredBlock30Stack0) nextPut: (recoveredBlock30Stack1).
            recoveredBlock30PC := 128.
        ].
        recoveredBlock30Step = 128 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal1.
            recoveredBlock30PC := 131.
        ].
        recoveredBlock30Step = 131 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 134.
        ].
        recoveredBlock30Step = 134 ifTrue: [
            (recoveredBlock30Stack0) printOn: (recoveredBlock30Stack1).
            recoveredBlock30PC := 136.
        ].
        recoveredBlock30Step = 136 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 139.
        ].
        recoveredBlock30Step = 139 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) cr.
            recoveredBlock30PC := 141.
        ].
        recoveredBlock30Step = 141 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPut: ($}).
    ^self
! !

