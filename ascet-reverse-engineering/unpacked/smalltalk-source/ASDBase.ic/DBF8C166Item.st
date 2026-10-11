"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2022f18c; bytecode file offset 0xb2ba54"
!DBF8C166Item methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) swap166ToWin: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRangeInBytes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) real64At: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            offset := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030a3f4; bytecode file offset 0xc06cc4"
!DBF8C166Item methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRange: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRange: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorNumber.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) real64At: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) real64At: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) swapWinTo166: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20418b2c; bytecode file offset 0xd153e8"
!DBF8C166Item methodsFor: 'recovered'!
swapWinTo166: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) at: (7).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := offset.
    recoveredValue7 := (recoveredValue6) + (2).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) at: (8).
    (recoveredValue5) at: (recoveredValue7) put: (recoveredValue9).
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := offset.
    recoveredValue12 := (recoveredValue11) + (3).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) at: (5).
    (recoveredValue10) at: (recoveredValue12) put: (recoveredValue14).
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := offset.
    recoveredValue17 := (recoveredValue16) + (4).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) at: (6).
    (recoveredValue15) at: (recoveredValue17) put: (recoveredValue19).
    recoveredValue20 := recoveredArg2.
    recoveredValue21 := offset.
    recoveredValue22 := (recoveredValue21) + (5).
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) at: (3).
    (recoveredValue20) at: (recoveredValue22) put: (recoveredValue24).
    recoveredValue25 := recoveredArg2.
    recoveredValue26 := offset.
    recoveredValue27 := (recoveredValue26) + (6).
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) at: (4).
    (recoveredValue25) at: (recoveredValue27) put: (recoveredValue29).
    recoveredValue30 := recoveredArg2.
    recoveredValue31 := offset.
    recoveredValue32 := (recoveredValue31) + (7).
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) at: (1).
    (recoveredValue30) at: (recoveredValue32) put: (recoveredValue34).
    recoveredValue35 := recoveredArg2.
    recoveredValue36 := offset.
    recoveredValue37 := (recoveredValue36) + (8).
    recoveredValue38 := recoveredArg1.
    recoveredValue39 := (recoveredValue38) at: (2).
    (recoveredValue35) at: (recoveredValue37) put: (recoveredValue39).
    recoveredValue40 := recoveredArg1.
    ^recoveredValue40
! !

"ASDBase.ic method 0x20442a70; bytecode file offset 0xd3f334"
!DBF8C166Item methodsFor: 'recovered'!
swap166ToWin: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := offset.
    recoveredValue5 := (recoveredValue4) + (7).
    recoveredValue6 := (recoveredValue3) at: (recoveredValue5).
    (recoveredValue2) at: (1) put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := offset.
    recoveredValue10 := (recoveredValue9) + (8).
    recoveredValue11 := (recoveredValue8) at: (recoveredValue10).
    (recoveredValue7) at: (2) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := offset.
    recoveredValue15 := (recoveredValue14) + (5).
    recoveredValue16 := (recoveredValue13) at: (recoveredValue15).
    (recoveredValue12) at: (3) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := offset.
    recoveredValue20 := (recoveredValue19) + (6).
    recoveredValue21 := (recoveredValue18) at: (recoveredValue20).
    (recoveredValue17) at: (4) put: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := offset.
    recoveredValue25 := (recoveredValue24) + (3).
    recoveredValue26 := (recoveredValue23) at: (recoveredValue25).
    (recoveredValue22) at: (5) put: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := offset.
    recoveredValue30 := (recoveredValue29) + (4).
    recoveredValue31 := (recoveredValue28) at: (recoveredValue30).
    (recoveredValue27) at: (6) put: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := offset.
    recoveredValue35 := (recoveredValue34) + (1).
    recoveredValue36 := (recoveredValue33) at: (recoveredValue35).
    (recoveredValue32) at: (7) put: (recoveredValue36).
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := recoveredArg1.
    recoveredValue39 := offset.
    recoveredValue40 := (recoveredValue39) + (2).
    recoveredValue41 := (recoveredValue38) at: (recoveredValue40).
    (recoveredValue37) at: (8) put: (recoveredValue41).
    offset := 0.
    recoveredValue42 := recoveredLocal1.
    ^recoveredValue42
! !

