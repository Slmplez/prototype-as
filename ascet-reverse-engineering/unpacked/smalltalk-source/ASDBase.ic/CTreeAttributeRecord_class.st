"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ef2c; bytecode file offset 0x92209c"
!CTreeAttributeRecord class methodsFor: 'recovered'!
members
    ^#('deleteFlag' 'pcId' 'tsThisVersion' 'transactionId' 'attributeName' 'blobSize' 'blob')
! !

"ASDBase.ic method 0x20072650; bytecode file offset 0x96f1c4"
!CTreeAttributeRecord class methodsFor: 'recovered'!
numberOfKeys
    ^2
! !

"ASDBase.ic method 0x200742ec; bytecode file offset 0x970bc8"
!CTreeAttributeRecord class methodsFor: 'recovered'!
numberOfSegments
    ^7
! !

"ASDBase.ic method 0x2007ff34; bytecode file offset 0x97c7f0"
!CTreeAttributeRecord class methodsFor: 'recovered'!
attributeNameLength
    ^33
! !

"ASDBase.ic method 0x200b61e8; bytecode file offset 0x9b39ac"
!CTreeAttributeRecord class methodsFor: 'recovered'!
accessors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super accessors.
    recoveredValue1 := (recoveredValue0) , (#(#('attributeName' 'testAccessAttribute'))).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013902c; bytecode file offset 0xa35908"
!CTreeAttributeRecord class methodsFor: 'recovered'!
create: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super create: (recoveredValue0) size: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) attributeName.
    (recoveredValue3) attributeName: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2018bbe4; bytecode file offset 0xa884ac"
!CTreeAttributeRecord class methodsFor: 'recovered'!
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
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
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
            recoveredStack1 := (recoveredStack1) attributeName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) attributeName: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20325c9c; bytecode file offset 0xc22578"
!CTreeAttributeRecord class methodsFor: 'recovered'!
createDoDaIndices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
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
    (recoveredValue6) at: ('attributeName') put: (4).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) at: ('blob') put: (5).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) at: ('end') put: (6).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20481558; bytecode file offset 0xd7de44"
!CTreeAttributeRecord class methodsFor: 'recovered'!
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'attributeName'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := 'transactionId'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) transactionIdLength.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'transactionId'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) transactionIdLength.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldOffsetAt: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'blob'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'blobPart'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := fieldOffsets.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20551170; bytecode file offset 0xe4da90"
!CTreeAttributeRecord class methodsFor: 'recovered'!
createDoDaArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 |
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
    recoveredValue42 := CT_INT2U.
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
    (recoveredValue50) fsymb: ('attributeName').
    recoveredValue51 := recoveredValue49.
    recoveredValue52 := (self) attributeNameLength.
    (recoveredValue51) flen: (recoveredValue52).
    recoveredValue53 := CT_FSTRING.
    (recoveredValue49) ftype: (recoveredValue53).
    recoveredValue54 := recoveredLocal3.
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (recoveredValue55) at: ('attributeName').
    recoveredValue57 := recoveredLocal2.
    (recoveredValue54) dodaAt: (recoveredValue56) put: (recoveredValue57).
    recoveredValue58 := CTDoDa.
    recoveredValue59 := (recoveredValue58) new.
    recoveredLocal2 := recoveredValue59.
    recoveredValue60 := recoveredLocal2.
    recoveredValue61 := recoveredValue60.
    (recoveredValue61) fsymb: ('blob').
    recoveredValue62 := recoveredValue60.
    recoveredValue63 := (self) nameLength.
    recoveredValue64 := (4) + (recoveredValue63).
    (recoveredValue62) flen: (recoveredValue64).
    recoveredValue65 := CT_4STRING.
    (recoveredValue60) ftype: (recoveredValue65).
    recoveredValue66 := recoveredLocal3.
    recoveredValue67 := recoveredLocal1.
    recoveredValue68 := (recoveredValue67) at: ('end').
    recoveredValue69 := recoveredLocal2.
    (recoveredValue66) dodaAt: (recoveredValue68) put: (recoveredValue69).
    recoveredValue70 := CTDoDa.
    recoveredValue71 := (recoveredValue70) new.
    recoveredLocal2 := recoveredValue71.
    recoveredValue72 := recoveredLocal2.
    recoveredValue73 := recoveredValue72.
    (recoveredValue73) flen: (0).
    recoveredValue74 := recoveredValue72.
    (recoveredValue74) ftype: (0).
    (recoveredValue72) fwhat: (-1).
    recoveredValue75 := recoveredLocal3.
    recoveredValue76 := recoveredLocal2.
    (recoveredValue75) dodaAt: (6) put: (recoveredValue76).
    recoveredValue77 := recoveredLocal3.
    ^recoveredValue77
! !

