"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012690; bytecode file offset 0x912098"
!DBVersionProxy methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := CTreeVersionObjectRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200696c8; bytecode file offset 0x966bdc"
!DBVersionProxy methodsFor: 'recovered'!
firstVersionId
    | recoveredValue0 |
    recoveredValue0 := firstVersionId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009d17c; bytecode file offset 0x999a38"
!DBVersionProxy methodsFor: 'recovered'!
firstVersionIdString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := interface.
    recoveredValue1 := (recoveredValue0) globalIdServer.
    recoveredValue2 := firstVersionId.
    recoveredValue3 := (recoveredValue1) asAlphaNumString: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c0dc0; bytecode file offset 0x9bdf14"
!DBVersionProxy methodsFor: 'recovered'!
firstVersionId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    firstVersionId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa5dc; bytecode file offset 0x9f6e9c"
!DBVersionProxy methodsFor: 'recovered'!
initializeUndefined
    | recoveredValue0 recoveredValue1 |
    super initializeUndefined.
    recoveredValue0 := globalId.
    recoveredValue1 := (recoveredValue0) copy.
    firstVersionId := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201330fc; bytecode file offset 0xa2f9d8"
!DBVersionProxy methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    (self) printFirstVersionIdOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20166864; bytecode file offset 0xa63124"
!DBVersionProxy methodsFor: 'recovered'!
updateDefaultValues: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super updateDefaultValues: (recoveredValue0).
    recoveredValue1 := globalId.
    recoveredValue2 := (recoveredValue1) copyFrom: (1) to: (18).
    firstVersionId := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201b4428; bytecode file offset 0xab0ce8"
!DBVersionProxy methodsFor: 'recovered'!
setDefaultValues: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super setDefaultValues: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := firstVersionId.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := globalId.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 18.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            firstVersionId := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fc1ac; bytecode file offset 0xaf8a78"
!DBVersionProxy methodsFor: 'recovered'!
copyDBObject
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := globalId.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super copyDBObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) firstVersionId: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) copyAttachedFiles.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20575da0; bytecode file offset 0xe72660"
!DBVersionProxy methodsFor: 'recovered'!
printFirstVersionIdOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 |
    recoveredValue0 := globalId.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2) base: (16) showRadix: (false).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPut: ($-).
    recoveredValue4 := globalId.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6) base: (16) showRadix: (false).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPut: ($-).
    recoveredValue8 := globalId.
    recoveredValue9 := (recoveredValue8) at: (3).
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) printOn: (recoveredValue10) base: (16) showRadix: (false).
    recoveredValue11 := globalId.
    recoveredValue12 := (recoveredValue11) at: (4).
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) printOn: (recoveredValue13) base: (16) showRadix: (false).
    recoveredValue14 := globalId.
    recoveredValue15 := (recoveredValue14) at: (5).
    recoveredValue16 := recoveredArg1.
    (recoveredValue15) printOn: (recoveredValue16) base: (16) showRadix: (false).
    recoveredValue17 := globalId.
    recoveredValue18 := (recoveredValue17) at: (6).
    recoveredValue19 := recoveredArg1.
    (recoveredValue18) printOn: (recoveredValue19) base: (16) showRadix: (false).
    recoveredValue20 := globalId.
    recoveredValue21 := (recoveredValue20) at: (7).
    recoveredValue22 := recoveredArg1.
    (recoveredValue21) printOn: (recoveredValue22) base: (16) showRadix: (false).
    recoveredValue23 := globalId.
    recoveredValue24 := (recoveredValue23) at: (8).
    recoveredValue25 := recoveredArg1.
    (recoveredValue24) printOn: (recoveredValue25) base: (16) showRadix: (false).
    recoveredValue26 := recoveredArg1.
    (recoveredValue26) nextPut: ($ ).
    recoveredValue27 := globalId.
    recoveredValue28 := (recoveredValue27) at: (9).
    recoveredValue29 := recoveredArg1.
    (recoveredValue28) printOn: (recoveredValue29) base: (16) showRadix: (false).
    recoveredValue30 := globalId.
    recoveredValue31 := (recoveredValue30) at: (10).
    recoveredValue32 := recoveredArg1.
    (recoveredValue31) printOn: (recoveredValue32) base: (16) showRadix: (false).
    recoveredValue33 := globalId.
    recoveredValue34 := (recoveredValue33) at: (11).
    recoveredValue35 := recoveredArg1.
    (recoveredValue34) printOn: (recoveredValue35) base: (16) showRadix: (false).
    recoveredValue36 := globalId.
    recoveredValue37 := (recoveredValue36) at: (12).
    recoveredValue38 := recoveredArg1.
    (recoveredValue37) printOn: (recoveredValue38) base: (16) showRadix: (false).
    recoveredValue39 := recoveredArg1.
    (recoveredValue39) nextPut: ($.).
    recoveredValue40 := globalId.
    recoveredValue41 := (recoveredValue40) at: (13).
    recoveredValue42 := recoveredArg1.
    (recoveredValue41) printOn: (recoveredValue42) base: (16) showRadix: (false).
    recoveredValue43 := globalId.
    recoveredValue44 := (recoveredValue43) at: (14).
    recoveredValue45 := recoveredArg1.
    (recoveredValue44) printOn: (recoveredValue45) base: (16) showRadix: (false).
    recoveredValue46 := globalId.
    recoveredValue47 := (recoveredValue46) at: (15).
    recoveredValue48 := recoveredArg1.
    (recoveredValue47) printOn: (recoveredValue48) base: (16) showRadix: (false).
    recoveredValue49 := globalId.
    recoveredValue50 := (recoveredValue49) at: (16).
    recoveredValue51 := recoveredArg1.
    (recoveredValue50) printOn: (recoveredValue51) base: (16) showRadix: (false).
    recoveredValue52 := recoveredArg1.
    (recoveredValue52) nextPut: ($,).
    recoveredValue53 := globalId.
    recoveredValue54 := (recoveredValue53) at: (17).
    recoveredValue55 := recoveredArg1.
    (recoveredValue54) printOn: (recoveredValue55) base: (16) showRadix: (false).
    recoveredValue56 := globalId.
    recoveredValue57 := (recoveredValue56) at: (18).
    recoveredValue58 := recoveredArg1.
    (recoveredValue57) printOn: (recoveredValue58) base: (16) showRadix: (false).
    ^self
! !

