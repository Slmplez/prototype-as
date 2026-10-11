"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x2000186c; bytecode file offset 0x148f0"
!OSPtr methodsFor: 'recovered'!
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

"sci.ic method 0x20001b98; bytecode file offset 0x14c2c"
!OSPtr methodsFor: 'recovered'!
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

"sci.ic method 0x20001bcc; bytecode file offset 0x14c68"
!OSPtr methodsFor: 'recovered'!
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

"sci.ic method 0x2000281c; bytecode file offset 0x158a8"
!OSPtr methodsFor: 'recovered'!
isFixedMemory
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAddress.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) isReference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInFixedSpace.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002aec; bytecode file offset 0x15b70"
!OSPtr methodsFor: 'recovered'!
asStringZ
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint8At: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) memcpyStringFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002d30; bytecode file offset 0x15dcc"
!OSPtr methodsFor: 'recovered'!
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

"sci.ic method 0x20005190; bytecode file offset 0x1822c"
!OSPtr methodsFor: 'recovered'!
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

"sci.ic method 0x20006994; bytecode file offset 0x19a1c"
!OSPtr methodsFor: 'recovered'!
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

