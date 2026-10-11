"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000418; bytecode file offset 0x23760"
!CfsError class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetErrorMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000964; bytecode file offset 0x23c4c"
!CfsError class methodsFor: 'recovered'!
messageDictionary
    | recoveredValue0 |
    recoveredValue0 := MessageDictionary.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000988; bytecode file offset 0x23c4c"
!CfsError class methodsFor: 'recovered'!
identifierDictionary
    | recoveredValue0 |
    recoveredValue0 := IdentifierDictionary.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002538; bytecode file offset 0x25778"
!CfsError class methodsFor: 'recovered'!
messageDictionary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    MessageDictionary := recoveredValue1.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002544; bytecode file offset 0x25778"
!CfsError class methodsFor: 'recovered'!
identifierDictionary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    IdentifierDictionary := recoveredValue1.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20007714; bytecode file offset 0x2a958"
!CfsError class methodsFor: 'recovered'!
systemErrorDialog: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SemNoopenfileerrorbox.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SemFailcriticalerrors.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformFunctionSetErrorMode: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000ecd4; bytecode file offset 0x31f54"
!CfsError class methodsFor: 'recovered'!
initializeErrors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) identifierDictionary: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) messageDictionary: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := 1.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2).
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredLocal3 := recoveredBlock22Stack1.
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack1 := CfsConstants.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal3.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) asPoolKey.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack3 := [].
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) ifAbsent: (recoveredBlock22Stack3).
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            (recoveredBlock22Stack1 ~~ nil) ifTrue: [recoveredBlock22PC := 64] ifFalse: [recoveredBlock22PC := 56].
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Stack1 := true.
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 64 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) identifierDictionary.
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal2.
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal3.
            recoveredBlock22PC := 73.
        ].
        recoveredBlock22Step = 73 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) asString.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) put: (recoveredBlock22Stack3).
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) messageDictionary.
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal2.
            recoveredBlock22PC := 83.
        ].
        recoveredBlock22Step = 83 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Arg1.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack4 := 2.
            recoveredBlock22PC := 86.
        ].
        recoveredBlock22Step = 86 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) at: (recoveredBlock22Stack4).
            recoveredBlock22PC := 88.
        ].
        recoveredBlock22Step = 88 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) put: (recoveredBlock22Stack3).
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := NlsCatCFS.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200110ac; bytecode file offset 0x34320"
!CfsError class methodsFor: 'recovered'!
errorTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (13).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) with: ('EPERM') with: (7).
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: ('ENOENT') with: (8).
    (recoveredValue5) at: (2) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Array.
    recoveredValue10 := (recoveredValue9) with: ('EIO') with: (9).
    (recoveredValue8) at: (3) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Array.
    recoveredValue13 := (recoveredValue12) with: ('EBADF') with: (10).
    (recoveredValue11) at: (4) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := Array.
    recoveredValue16 := (recoveredValue15) with: ('EACCES') with: (11).
    (recoveredValue14) at: (5) put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := Array.
    recoveredValue19 := (recoveredValue18) with: ('EBUSY') with: (12).
    (recoveredValue17) at: (6) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := Array.
    recoveredValue22 := (recoveredValue21) with: ('EEXIST') with: (13).
    (recoveredValue20) at: (7) put: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := Array.
    recoveredValue25 := (recoveredValue24) with: ('EXDEV') with: (14).
    (recoveredValue23) at: (8) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := Array.
    recoveredValue28 := (recoveredValue27) with: ('EISDIR') with: (15).
    (recoveredValue26) at: (9) put: (recoveredValue28).
    recoveredValue29 := recoveredValue1.
    recoveredValue30 := Array.
    recoveredValue31 := (recoveredValue30) with: ('EINVAL') with: (16).
    (recoveredValue29) at: (10) put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := Array.
    recoveredValue34 := (recoveredValue33) with: ('ENFILE') with: (17).
    (recoveredValue32) at: (11) put: (recoveredValue34).
    recoveredValue35 := recoveredValue1.
    recoveredValue36 := Array.
    recoveredValue37 := (recoveredValue36) with: ('ENOSPC') with: (18).
    (recoveredValue35) at: (12) put: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := Array.
    recoveredValue40 := (recoveredValue39) with: ('EROFS') with: (19).
    (recoveredValue38) at: (13) put: (recoveredValue40).
    ^recoveredValue1
! !

