"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022c88; bytecode file offset 0x92209c"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
accessors
    ^#(#('className' 42) #('name' 'labelName') #('function' 'functioName') #('globalId' #(1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0)))
! !

"ASDBase.ic method 0x20024c98; bytecode file offset 0x92209c"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
members
    ^#('deleteFlag' 'className' 'name' 'function' 'globalId' 'baseName' 'hashName')
! !

"ASDBase.ic method 0x20061fa8; bytecode file offset 0x95e8c4"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
completeNameLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) nameLength.
    recoveredValue1 := (self) classNameLength.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062008; bytecode file offset 0x95e8c4"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
completeNameFunctionLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) completeNameLength.
    recoveredValue1 := (self) functionLength.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200728b8; bytecode file offset 0x96f1c4"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
classNameLength
    ^2
! !

"ASDBase.ic method 0x20072f88; bytecode file offset 0x96f8bc"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
numberOfKeys
    ^6
! !

"ASDBase.ic method 0x20072fb8; bytecode file offset 0x96f8bc"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
numberOfSegments
    ^6
! !

"ASDBase.ic method 0x2007922c; bytecode file offset 0x975b38"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
globalIdLength
    ^20
! !

"ASDBase.ic method 0x2007f06c; bytecode file offset 0x97c330"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
isVariable
    ^false
! !

"ASDBase.ic method 0x2007ff1c; bytecode file offset 0x97c7f0"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
functionLength
    ^33
! !

"ASDBase.ic method 0x20080d5c; bytecode file offset 0x97d610"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
fixedSize
    ^95
! !

"ASDBase.ic method 0x201272d8; bytecode file offset 0xa23bac"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201be2a8; bytecode file offset 0xabab84"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x202ed840; bytecode file offset 0xbea144"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
createDoDaIndices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
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
    (recoveredValue5) at: ('function') put: (3).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) at: ('globalId') put: (4).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) at: ('end') put: (5).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20339884; bytecode file offset 0xc36160"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
initializeFieldOffsets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) fieldOffsetAt: ('deleteFlag') put: (0).
    (self) fieldOffsetAt: ('className') put: (2).
    recoveredValue0 := (self) fieldOffsetAt: ('className').
    recoveredValue1 := (self) classNameLength.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    (self) fieldOffsetAt: ('name') put: (recoveredValue2).
    recoveredValue3 := (self) fieldOffsetAt: ('name').
    recoveredValue4 := (self) nameLength.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    (self) fieldOffsetAt: ('function') put: (recoveredValue5).
    recoveredValue6 := (self) fieldOffsetAt: ('function').
    recoveredValue7 := (self) functionLength.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    (self) fieldOffsetAt: ('globalId') put: (recoveredValue8).
    recoveredValue9 := fieldOffsets.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2052bcdc; bytecode file offset 0xe285f4"
!CTreeLabelObjectRecord class methodsFor: 'recovered'!
createDoDaArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 |
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
    (recoveredValue42) fsymb: ('function').
    recoveredValue43 := recoveredValue41.
    recoveredValue44 := (self) functionLength.
    (recoveredValue43) flen: (recoveredValue44).
    recoveredValue45 := CT_FSTRING.
    (recoveredValue41) ftype: (recoveredValue45).
    recoveredValue46 := recoveredLocal3.
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := (recoveredValue47) at: ('function').
    recoveredValue49 := recoveredLocal2.
    (recoveredValue46) dodaAt: (recoveredValue48) put: (recoveredValue49).
    recoveredValue50 := CTDoDa.
    recoveredValue51 := (recoveredValue50) new.
    recoveredLocal2 := recoveredValue51.
    recoveredValue52 := recoveredLocal2.
    recoveredValue53 := recoveredValue52.
    (recoveredValue53) fsymb: ('globalId').
    recoveredValue54 := recoveredValue52.
    recoveredValue55 := (self) globalIdLength.
    (recoveredValue54) flen: (recoveredValue55).
    recoveredValue56 := CT_ARRAY.
    (recoveredValue52) ftype: (recoveredValue56).
    recoveredValue57 := recoveredLocal3.
    recoveredValue58 := recoveredLocal1.
    recoveredValue59 := (recoveredValue58) at: ('globalId').
    recoveredValue60 := recoveredLocal2.
    (recoveredValue57) dodaAt: (recoveredValue59) put: (recoveredValue60).
    recoveredValue61 := CTDoDa.
    recoveredValue62 := (recoveredValue61) new.
    recoveredLocal2 := recoveredValue62.
    recoveredValue63 := recoveredLocal2.
    recoveredValue64 := recoveredValue63.
    (recoveredValue64) flen: (0).
    recoveredValue65 := recoveredValue63.
    (recoveredValue65) ftype: (0).
    (recoveredValue63) fwhat: (-1).
    recoveredValue66 := recoveredLocal3.
    recoveredValue67 := recoveredLocal1.
    recoveredValue68 := (recoveredValue67) at: ('end').
    recoveredValue69 := recoveredLocal2.
    (recoveredValue66) dodaAt: (recoveredValue68) put: (recoveredValue69).
    recoveredValue70 := recoveredLocal3.
    ^recoveredValue70
! !

