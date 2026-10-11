"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000480; bytecode file offset 0x1350c"
!ByteArray methodsFor: 'recovered'!
asShortInteger
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (0).
    ^recoveredValue0
! !

"sci.ic method 0x20000e6c; bytecode file offset 0x13eec"
!ByteArray methodsFor: 'recovered'!
asBoolean
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (0).
    recoveredValue1 := (recoveredValue0) ~~ (0).
    ^recoveredValue1
! !

"sci.ic method 0x2000185c; bytecode file offset 0x148f0"
!ByteArray methodsFor: 'recovered'!
ntoh16At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint8At: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) bitShift: (8).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredValue5 := (self) uint8At: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"sci.ic method 0x20001ba8; bytecode file offset 0x14c2c"
!ByteArray methodsFor: 'recovered'!
ntoh32At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) ntoh16At: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) bitShift: (16).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (2).
    recoveredValue5 := (self) ntoh16At: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"sci.ic method 0x20001be0; bytecode file offset 0x14c68"
!ByteArray methodsFor: 'recovered'!
ntoh64At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) ntoh32At: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) bitShift: (32).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (4).
    recoveredValue5 := (self) ntoh32At: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) bitOr: (recoveredValue5).
    ^recoveredValue6
! !

"sci.ic method 0x20002d44; bytecode file offset 0x15dcc"
!ByteArray methodsFor: 'recovered'!
hton16At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) bitShift: (-8).
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    (self) uint8At: (recoveredValue0) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) bitAnd: (255).
    (self) uint8At: (recoveredValue5) put: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    ^recoveredValue8
! !

"sci.ic method 0x20003190; bytecode file offset 0x16224"
!ByteArray methodsFor: 'recovered'!
asLingerArray
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Invalid size'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
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
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) int32At: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~~ (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) int32At: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20003870; bytecode file offset 0x168f8"
!ByteArray methodsFor: 'recovered'!
asStringZ
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint8At: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) memcpyStringFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200051a4; bytecode file offset 0x1822c"
!ByteArray methodsFor: 'recovered'!
hton32At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) bitShift: (-24).
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    (self) uint8At: (recoveredValue0) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) bitShift: (-16).
    recoveredValue8 := (recoveredValue7) bitAnd: (255).
    (self) uint8At: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) + (2).
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) bitShift: (-8).
    recoveredValue13 := (recoveredValue12) bitAnd: (255).
    (self) uint8At: (recoveredValue10) put: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) + (3).
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) bitAnd: (255).
    (self) uint8At: (recoveredValue15) put: (recoveredValue17).
    recoveredValue18 := recoveredArg2.
    ^recoveredValue18
! !

"sci.ic method 0x20006980; bytecode file offset 0x19a1c"
!ByteArray methodsFor: 'recovered'!
hton64At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) bitShift: (-56).
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    (self) uint8At: (recoveredValue0) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) bitShift: (-48).
    recoveredValue8 := (recoveredValue7) bitAnd: (255).
    (self) uint8At: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) + (2).
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) bitShift: (-40).
    recoveredValue13 := (recoveredValue12) bitAnd: (255).
    (self) uint8At: (recoveredValue10) put: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) + (3).
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) bitShift: (-32).
    recoveredValue18 := (recoveredValue17) bitAnd: (255).
    (self) uint8At: (recoveredValue15) put: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) + (4).
    recoveredValue21 := recoveredArg2.
    recoveredValue22 := (recoveredValue21) bitShift: (-24).
    recoveredValue23 := (recoveredValue22) bitAnd: (255).
    (self) uint8At: (recoveredValue20) put: (recoveredValue23).
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) + (5).
    recoveredValue26 := recoveredArg2.
    recoveredValue27 := (recoveredValue26) bitShift: (-16).
    recoveredValue28 := (recoveredValue27) bitAnd: (255).
    (self) uint8At: (recoveredValue25) put: (recoveredValue28).
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) + (6).
    recoveredValue31 := recoveredArg2.
    recoveredValue32 := (recoveredValue31) bitShift: (-8).
    recoveredValue33 := (recoveredValue32) bitAnd: (255).
    (self) uint8At: (recoveredValue30) put: (recoveredValue33).
    recoveredValue34 := recoveredArg1.
    recoveredValue35 := (recoveredValue34) + (7).
    recoveredValue36 := recoveredArg2.
    recoveredValue37 := (recoveredValue36) bitAnd: (255).
    (self) uint8At: (recoveredValue35) put: (recoveredValue37).
    recoveredValue38 := recoveredArg2.
    ^recoveredValue38
! !

