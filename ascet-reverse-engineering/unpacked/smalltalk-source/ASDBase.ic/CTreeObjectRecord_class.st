"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ee54; bytecode file offset 0x92209c"
!CTreeObjectRecord class methodsFor: 'recovered'!
accessors
    ^#(#('pcId' #(1 2 3 4 5 6 7 8)) #('tsThisVersion' #(1 2 3 4 5 6 7 8 9 0)) #('thisVersionId' #(1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 0)) #('transactionId' #(1 2)) #('blobSize' 4) #('blob' #(1 2 3 4)))
! !

"ASDBase.ic method 0x200231a4; bytecode file offset 0x92209c"
!CTreeObjectRecord class methodsFor: 'recovered'!
members
    ^#('deleteFlag' 'pcId' 'tsThisVersion' 'transactionId' 'blobSize' 'blobPart')
! !

"ASDBase.ic method 0x20072308; bytecode file offset 0x96ee04"
!CTreeObjectRecord class methodsFor: 'recovered'!
numberOfKeys
    ^1
! !

"ASDBase.ic method 0x20072fe8; bytecode file offset 0x96f8bc"
!CTreeObjectRecord class methodsFor: 'recovered'!
numberOfSegments
    ^6
! !

"ASDBase.ic method 0x2007fb9c; bytecode file offset 0x97c468"
!CTreeObjectRecord class methodsFor: 'recovered'!
fixedSize
    ^26
! !

"ASDBase.ic method 0x20139044; bytecode file offset 0xa35908"
!CTreeObjectRecord class methodsFor: 'recovered'!
create: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super create: (recoveredValue0) size: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) globalId.
    (recoveredValue3) globalId: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20215a78; bytecode file offset 0xb12340"
!CTreeObjectRecord class methodsFor: 'recovered'!
create: recoveredArg1 withBytes: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := super create: (recoveredStack1) withBytes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) globalId: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalId.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) globalId: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ed86c; bytecode file offset 0xbea144"
!CTreeObjectRecord class methodsFor: 'recovered'!
createDoDaIndices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('deleteFlag') put: (0).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) at: ('pcId') put: (1).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) at: ('tsThisVersion') put: (2).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) at: ('transactionId') put: (3).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) at: ('blob') put: (4).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) at: ('end') put: (5).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20450858; bytecode file offset 0xd4d140"
!CTreeObjectRecord class methodsFor: 'recovered'!
initializeFieldOffsets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := 'pcId'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'tsThisVersion'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := 'pcId'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) pcIdLength.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'transactionId'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := 'tsThisVersion'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) timeLength.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'transactionId'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) transactionIdLength.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldOffsetAt: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'blob'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'blobPart'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := fieldOffsets.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051f32c; bytecode file offset 0xe1bc38"
!CTreeObjectRecord class methodsFor: 'recovered'!
createDoDaArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 |
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
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) fsymb: ('pcId').
    recoveredValue19 := recoveredValue17.
    recoveredValue20 := (self) pcIdLength.
    (recoveredValue19) flen: (recoveredValue20).
    recoveredValue21 := CT_ARRAY.
    (recoveredValue17) ftype: (recoveredValue21).
    recoveredValue22 := recoveredLocal3.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) at: ('pcId').
    recoveredValue25 := recoveredLocal2.
    (recoveredValue22) dodaAt: (recoveredValue24) put: (recoveredValue25).
    recoveredValue26 := CTDoDa.
    recoveredValue27 := (recoveredValue26) new.
    recoveredLocal2 := recoveredValue27.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := recoveredValue28.
    (recoveredValue29) fsymb: ('tsThisVersion').
    recoveredValue30 := recoveredValue28.
    recoveredValue31 := (self) timeLength.
    (recoveredValue30) flen: (recoveredValue31).
    recoveredValue32 := CT_ARRAY.
    (recoveredValue28) ftype: (recoveredValue32).
    recoveredValue33 := recoveredLocal3.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue34) at: ('tsThisVersion').
    recoveredValue36 := recoveredLocal2.
    (recoveredValue33) dodaAt: (recoveredValue35) put: (recoveredValue36).
    recoveredValue37 := CTDoDa.
    recoveredValue38 := (recoveredValue37) new.
    recoveredLocal2 := recoveredValue38.
    recoveredValue39 := recoveredLocal2.
    recoveredValue40 := recoveredValue39.
    (recoveredValue40) fsymb: ('transactionId').
    recoveredValue41 := recoveredValue39.
    (recoveredValue41) flen: (2).
    recoveredValue42 := CT_ARRAY.
    (recoveredValue39) ftype: (recoveredValue42).
    recoveredValue43 := recoveredLocal3.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue44) at: ('transactionId').
    recoveredValue46 := recoveredLocal2.
    (recoveredValue43) dodaAt: (recoveredValue45) put: (recoveredValue46).
    recoveredValue47 := CTDoDa.
    recoveredValue48 := (recoveredValue47) new.
    recoveredLocal2 := recoveredValue48.
    recoveredValue49 := recoveredLocal2.
    recoveredValue50 := recoveredValue49.
    (recoveredValue50) fsymb: ('blob').
    recoveredValue51 := recoveredValue49.
    (recoveredValue51) flen: (4).
    recoveredValue52 := CT_4STRING.
    (recoveredValue49) ftype: (recoveredValue52).
    recoveredValue53 := recoveredLocal3.
    recoveredValue54 := recoveredLocal1.
    recoveredValue55 := (recoveredValue54) at: ('blob').
    recoveredValue56 := recoveredLocal2.
    (recoveredValue53) dodaAt: (recoveredValue55) put: (recoveredValue56).
    recoveredValue57 := CTDoDa.
    recoveredValue58 := (recoveredValue57) new.
    recoveredLocal2 := recoveredValue58.
    recoveredValue59 := recoveredLocal2.
    recoveredValue60 := recoveredValue59.
    (recoveredValue60) flen: (0).
    recoveredValue61 := recoveredValue59.
    (recoveredValue61) ftype: (0).
    (recoveredValue59) fwhat: (-1).
    recoveredValue62 := recoveredLocal3.
    recoveredValue63 := recoveredLocal1.
    recoveredValue64 := (recoveredValue63) at: ('end').
    recoveredValue65 := recoveredLocal2.
    (recoveredValue62) dodaAt: (recoveredValue64) put: (recoveredValue65).
    recoveredValue66 := recoveredLocal3.
    ^recoveredValue66
! !

