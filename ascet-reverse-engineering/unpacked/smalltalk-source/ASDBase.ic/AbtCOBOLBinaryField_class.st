"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005480c; bytecode file offset 0x951190"
!AbtCOBOLBinaryField class methodsFor: 'recovered'!
wordStorageEnabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    WordStorage := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20114ebc; bytecode file offset 0xa11774"
!AbtCOBOLBinaryField class methodsFor: 'recovered'!
wordStorageEnabled
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WordStorage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := WordStorage.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204a11f4; bytecode file offset 0xd9dab4"
!AbtCOBOLBinaryField class methodsFor: 'recovered'!
unsignedByteStorageRepresentation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (1) put: (1).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (2) put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (3) put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (4) put: (2).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (5) put: (3).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (6) put: (3).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (7) put: (3).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (8) put: (4).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (9) put: (4).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (10) put: (5).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (11) put: (5).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (12) put: (5).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (13) put: (6).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (14) put: (6).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (15) put: (7).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (16) put: (7).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (17) put: (8).
    (recoveredValue2) at: (18) put: (8).
    recoveredValue20 := recoveredLocal1.
    ^recoveredValue20
! !

"ASDBase.ic method 0x204a1294; bytecode file offset 0xd9db54"
!AbtCOBOLBinaryField class methodsFor: 'recovered'!
signedByteStorageRepresentation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (1) put: (1).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (2) put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (3) put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (4) put: (2).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (5) put: (3).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (6) put: (3).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (7) put: (4).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (8) put: (4).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (9) put: (4).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (10) put: (5).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (11) put: (5).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (12) put: (6).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (13) put: (6).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (14) put: (6).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (15) put: (7).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (16) put: (7).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (17) put: (8).
    (recoveredValue2) at: (18) put: (8).
    recoveredValue20 := recoveredLocal1.
    ^recoveredValue20
! !

"ASDBase.ic method 0x204a1334; bytecode file offset 0xd9dc08"
!AbtCOBOLBinaryField class methodsFor: 'recovered'!
signedWordStorageRepresentation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (1) put: (2).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (2) put: (2).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (3) put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (4) put: (2).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (5) put: (4).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (6) put: (4).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (7) put: (4).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (8) put: (4).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (9) put: (4).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (10) put: (8).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (11) put: (8).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (12) put: (8).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (13) put: (8).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (14) put: (8).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (15) put: (8).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (16) put: (8).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (17) put: (8).
    (recoveredValue2) at: (18) put: (8).
    recoveredValue20 := recoveredLocal1.
    ^recoveredValue20
! !

"ASDBase.ic method 0x204a1348; bytecode file offset 0xd9dc08"
!AbtCOBOLBinaryField class methodsFor: 'recovered'!
unsignedWordStorageRepresentation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (1) put: (2).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (2) put: (2).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (3) put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (4) put: (2).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (5) put: (4).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (6) put: (4).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (7) put: (4).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (8) put: (4).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (9) put: (4).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (10) put: (8).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (11) put: (8).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (12) put: (8).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (13) put: (8).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (14) put: (8).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (15) put: (8).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (16) put: (8).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (17) put: (8).
    (recoveredValue2) at: (18) put: (8).
    recoveredValue20 := recoveredLocal1.
    ^recoveredValue20
! !

