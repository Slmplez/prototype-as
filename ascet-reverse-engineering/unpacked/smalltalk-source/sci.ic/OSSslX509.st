"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x2000043c; bytecode file offset 0x134e0"
!OSSslX509 methodsFor: 'recovered'!
getSubjectName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := X509_get_subject_name.
    recoveredValue1 := (self) getStringWithCall: (recoveredValue0).
    ^recoveredValue1
! !

"sci.ic method 0x2000044c; bytecode file offset 0x134e0"
!OSSslX509 methodsFor: 'recovered'!
getIssuerName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := X509_get_issuer_name.
    recoveredValue1 := (self) getStringWithCall: (recoveredValue0).
    ^recoveredValue1
! !

"sci.ic method 0x20001094; bytecode file offset 0x1411c"
!OSSslX509 methodsFor: 'recovered'!
getCertInfoPtr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSPtr.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x200013b0; bytecode file offset 0x1443c"
!OSSslX509 methodsFor: 'recovered'!
getValidityPtr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSPtr.
    recoveredValue1 := (self) getCertInfoPtr.
    recoveredValue2 := (recoveredValue1) uint32At: (16).
    recoveredValue3 := (recoveredValue0) address: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001460; bytecode file offset 0x144fc"
!OSSslX509 methodsFor: 'recovered'!
free
    | recoveredValue0 |
    (self) removeToBeFinalized.
    recoveredValue0 := (self) dispatcher.
    (recoveredValue0) callX509_freeWith: (self).
    ^self
! !

"sci.ic method 0x2000161c; bytecode file offset 0x146a8"
!OSSslX509 methodsFor: 'recovered'!
setSerialNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) dispatcher.
    recoveredValue1 := OSSslAsn1Integer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) newWithValue: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) callX509_set_serialNumberWith: (self) with: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x200016ac; bytecode file offset 0x1473c"
!OSSslX509 methodsFor: 'recovered'!
getSerialNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSSslAsn1Integer.
    recoveredValue1 := (self) dispatcher.
    recoveredValue2 := (recoveredValue1) callX509_get_serialNumberWith: (self).
    recoveredValue3 := (recoveredValue0) address: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asInteger.
    ^recoveredValue4
! !

"sci.ic method 0x200017b4; bytecode file offset 0x14844"
!OSSslX509 methodsFor: 'recovered'!
getNotBeforeDateAndTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSSslAsn1String.
    recoveredValue1 := (self) getValidityPtr.
    recoveredValue2 := (recoveredValue1) uint32At: (0).
    recoveredValue3 := (recoveredValue0) address: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asDateAndTime.
    ^recoveredValue4
! !

"sci.ic method 0x200017e0; bytecode file offset 0x14870"
!OSSslX509 methodsFor: 'recovered'!
getNotAfterDateAndTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSSslAsn1String.
    recoveredValue1 := (self) getValidityPtr.
    recoveredValue2 := (recoveredValue1) uint32At: (4).
    recoveredValue3 := (recoveredValue0) address: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asDateAndTime.
    ^recoveredValue4
! !

"sci.ic method 0x20004ddc; bytecode file offset 0x17e7c"
!OSSslX509 methodsFor: 'recovered'!
getStringWithCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) callX509_NAME_onelineWith: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := OSStringZ.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) address: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

