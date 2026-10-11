"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d570; bytecode file offset 0x92209c"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
members
    ^#('deleteFlag' 'pseudoAddress' 'blobSize' 'blobPart')
! !

"ASDBase.ic method 0x20063628; bytecode file offset 0x95fee0"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pseudoAddressLength.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071d18; bytecode file offset 0x96e60c"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
pseudoAddressLength
    ^128
! !

"ASDBase.ic method 0x20072310; bytecode file offset 0x96ee04"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
numberOfKeys
    ^1
! !

"ASDBase.ic method 0x20072d58; bytecode file offset 0x96f6d4"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
numberOfSegments
    ^4
! !

"ASDBase.ic method 0x2017a1b8; bytecode file offset 0xa76a88"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
accessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Transcript.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue2) show: (recoveredValue4).
    (recoveredValue0) show: (' could not test globalid access, because the return value is ETPseudoAddress').
    ^#()
! !

"ASDBase.ic method 0x2025917c; bytecode file offset 0xb55a4c"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
createDoDaIndices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('deleteFlag') put: (0).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) at: ('pseudoAddress') put: (1).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) at: ('blob') put: (2).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) at: ('end') put: (3).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202cab4c; bytecode file offset 0xbc742c"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
create: recoveredArg1 withBytes: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CTError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := CTRecordCouldNotCreate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super create: (recoveredStack1) withBytes: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) globalId: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) pseudoAddress.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) pseudoAddress: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d4988; bytecode file offset 0xcd1260"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
initializeFieldOffsets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'deleteFlag'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'pseudoAddress'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'pseudoAddress'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) pseudoAddressLength.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldOffsetAt: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'blob'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'blobPart'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := fieldOffsets.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a5334; bytecode file offset 0xda1c38"
!CTreeETargetObjectRecord class methodsFor: 'recovered'!
createDoDaArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
    recoveredValue0 := CTDoDaArray.
    recoveredValue1 := (self) numberOfSegments.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal3 := recoveredValue3.
    ctreeDoDa := recoveredValue2.
    recoveredValue4 := (self) createDoDaIndices.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := CTDoDa.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) fsymb: ('deleteFlag').
    recoveredValue9 := recoveredValue7.
    (recoveredValue9) flen: (2).
    recoveredValue10 := CT_ARRAY.
    (recoveredValue7) ftype: (recoveredValue10).
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) at: ('deleteFlag').
    recoveredValue14 := recoveredLocal2.
    (recoveredValue11) dodaAt: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := CTDoDa.
    recoveredValue16 := (recoveredValue15) new.
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := CTDoDa.
    recoveredValue18 := (recoveredValue17) new.
    recoveredLocal2 := recoveredValue18.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredValue19.
    (recoveredValue20) fsymb: ('pseudoAddress').
    recoveredValue21 := recoveredValue19.
    recoveredValue22 := (self) pseudoAddressLength.
    (recoveredValue21) flen: (recoveredValue22).
    recoveredValue23 := CT_FSTRING.
    (recoveredValue19) ftype: (recoveredValue23).
    recoveredValue24 := recoveredLocal3.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue25) at: ('pseudoAddress').
    recoveredValue27 := recoveredLocal2.
    (recoveredValue24) dodaAt: (recoveredValue26) put: (recoveredValue27).
    recoveredValue28 := CTDoDa.
    recoveredValue29 := (recoveredValue28) new.
    recoveredLocal2 := recoveredValue29.
    recoveredValue30 := recoveredLocal2.
    recoveredValue31 := recoveredValue30.
    (recoveredValue31) fsymb: ('blob').
    recoveredValue32 := recoveredValue30.
    (recoveredValue32) flen: (4).
    recoveredValue33 := CT_4STRING.
    (recoveredValue30) ftype: (recoveredValue33).
    recoveredValue34 := recoveredLocal3.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (recoveredValue35) at: ('blob').
    recoveredValue37 := recoveredLocal2.
    (recoveredValue34) dodaAt: (recoveredValue36) put: (recoveredValue37).
    recoveredValue38 := CTDoDa.
    recoveredValue39 := (recoveredValue38) new.
    recoveredLocal2 := recoveredValue39.
    recoveredValue40 := recoveredLocal2.
    recoveredValue41 := recoveredValue40.
    (recoveredValue41) flen: (0).
    recoveredValue42 := recoveredValue40.
    (recoveredValue42) ftype: (0).
    (recoveredValue40) fwhat: (-1).
    recoveredValue43 := recoveredLocal3.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue44) at: ('end').
    recoveredValue46 := recoveredLocal2.
    (recoveredValue43) dodaAt: (recoveredValue45) put: (recoveredValue46).
    recoveredValue47 := recoveredLocal3.
    ^recoveredValue47
! !

