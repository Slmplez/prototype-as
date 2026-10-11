"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a120; bytecode file offset 0x92209c"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
accessors
    ^#(#('className' 42) #('name' 'labelName'))
! !

"ASDBase.ic method 0x20026e00; bytecode file offset 0x923928"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
members
    ^#('deleteFlag' 'className' 'name' 'blobSize' 'blob')
! !

"ASDBase.ic method 0x20061f98; bytecode file offset 0x95e8c4"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
completeNameLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) nameLength.
    recoveredValue1 := (self) classNameLength.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20072648; bytecode file offset 0x96f1c4"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
classNameLength
    ^2
! !

"ASDBase.ic method 0x20072670; bytecode file offset 0x96f1c4"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
numberOfKeys
    ^2
! !

"ASDBase.ic method 0x20072ed0; bytecode file offset 0x96f7ac"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
numberOfSegments
    ^5
! !

"ASDBase.ic method 0x20078724; bytecode file offset 0x9757c8"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
isVariable
    ^true
! !

"ASDBase.ic method 0x2008023c; bytecode file offset 0x97cb00"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
fixedSize
    ^46
! !

"ASDBase.ic method 0x201272ec; bytecode file offset 0xa23bac"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
create: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super create: (recoveredValue0) size: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) fillFrom: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201be2c0; bytecode file offset 0xabab84"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
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
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) fillFrom: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a3b94; bytecode file offset 0xba0468"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
createDoDaIndices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('deleteFlag') put: (0).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) at: ('className') put: (1).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) at: ('name') put: (2).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) at: ('blob') put: (3).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) at: ('end') put: (4).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20418258; bytecode file offset 0xd14b38"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
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
            recoveredStack2 := 'className'.
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
            recoveredStack2 := 'name'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := 'className'.
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
            recoveredStack4 := (recoveredStack4) classNameLength.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) nameLength.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldOffsetAt: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'blob'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'blobPart'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := fieldOffsets.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f13dc; bytecode file offset 0xdedcec"
!CTreeASAP2LabelObjectRecord class methodsFor: 'recovered'!
createDoDaArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 |
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
    (recoveredValue20) fsymb: ('className').
    recoveredValue21 := recoveredValue19.
    recoveredValue22 := (self) classNameLength.
    (recoveredValue21) flen: (recoveredValue22).
    recoveredValue23 := CT_INT2U.
    (recoveredValue19) ftype: (recoveredValue23).
    recoveredValue24 := recoveredLocal3.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue25) at: ('className').
    recoveredValue27 := recoveredLocal2.
    (recoveredValue24) dodaAt: (recoveredValue26) put: (recoveredValue27).
    recoveredValue28 := CTDoDa.
    recoveredValue29 := (recoveredValue28) new.
    recoveredLocal2 := recoveredValue29.
    recoveredValue30 := recoveredLocal2.
    recoveredValue31 := recoveredValue30.
    (recoveredValue31) fsymb: ('name').
    recoveredValue32 := recoveredValue30.
    recoveredValue33 := (self) nameLength.
    (recoveredValue32) flen: (recoveredValue33).
    recoveredValue34 := CT_FSTRING.
    (recoveredValue30) ftype: (recoveredValue34).
    recoveredValue35 := recoveredLocal3.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (recoveredValue36) at: ('name').
    recoveredValue38 := recoveredLocal2.
    (recoveredValue35) dodaAt: (recoveredValue37) put: (recoveredValue38).
    recoveredValue39 := CTDoDa.
    recoveredValue40 := (recoveredValue39) new.
    recoveredLocal2 := recoveredValue40.
    recoveredValue41 := recoveredLocal2.
    recoveredValue42 := recoveredValue41.
    (recoveredValue42) fsymb: ('blob').
    recoveredValue43 := recoveredValue41.
    (recoveredValue43) flen: (4).
    recoveredValue44 := CT_4STRING.
    (recoveredValue41) ftype: (recoveredValue44).
    recoveredValue45 := recoveredLocal3.
    recoveredValue46 := recoveredLocal1.
    recoveredValue47 := (recoveredValue46) at: ('blob').
    recoveredValue48 := recoveredLocal2.
    (recoveredValue45) dodaAt: (recoveredValue47) put: (recoveredValue48).
    recoveredValue49 := CTDoDa.
    recoveredValue50 := (recoveredValue49) new.
    recoveredLocal2 := recoveredValue50.
    recoveredValue51 := recoveredLocal2.
    recoveredValue52 := recoveredValue51.
    (recoveredValue52) flen: (0).
    recoveredValue53 := recoveredValue51.
    (recoveredValue53) ftype: (0).
    (recoveredValue51) fwhat: (-1).
    recoveredValue54 := recoveredLocal3.
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (recoveredValue55) at: ('end').
    recoveredValue57 := recoveredLocal2.
    (recoveredValue54) dodaAt: (recoveredValue56) put: (recoveredValue57).
    recoveredValue58 := recoveredLocal3.
    ^recoveredValue58
! !

