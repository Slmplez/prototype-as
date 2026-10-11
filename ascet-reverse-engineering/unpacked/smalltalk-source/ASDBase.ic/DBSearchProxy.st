"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a77c; bytecode file offset 0x967a18"
!DBSearchProxy methodsFor: 'recovered'!
pathName
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a8ec; bytecode file offset 0x967a18"
!DBSearchProxy methodsFor: 'recovered'!
classNameString
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aebc; bytecode file offset 0x967a18"
!DBSearchProxy methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bae8; bytecode file offset 0x96873c"
!DBSearchProxy methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb78; bytecode file offset 0x96873c"
!DBSearchProxy methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bf5c; bytecode file offset 0x9692b0"
!DBSearchProxy methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := version.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ad11c; bytecode file offset 0x9a99d0"
!DBSearchProxy methodsFor: 'recovered'!
name: recoveredArg1 className: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    className := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c1f14; bytecode file offset 0x9beac8"
!DBSearchProxy methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    className := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2a68; bytecode file offset 0x9bf474"
!DBSearchProxy methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2cd4; bytecode file offset 0x9bfde0"
!DBSearchProxy methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    version := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ce9bc; bytecode file offset 0x9cb278"
!DBSearchProxy methodsFor: 'recovered'!
completeNameString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := className.
    recoveredValue1 := (recoveredValue0) , ('/').
    recoveredValue2 := name.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162454; bytecode file offset 0xa5ed14"
!DBSearchProxy methodsFor: 'recovered'!
initializeUndefined
    super initializeUndefined.
    name := ''.
    className := ''.
    version := 0.
    ^self
! !

"ASDBase.ic method 0x2016f69c; bytecode file offset 0xa6bf58"
!DBSearchProxy methodsFor: 'recovered'!
classNameToDetectInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := className.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isByteArray.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := className.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018ea8c; bytecode file offset 0xa8b358"
!DBSearchProxy methodsFor: 'recovered'!
recordClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) className.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CTreeSearchObjectRecord.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := CTreeSearchRecordByteArrayProxy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e7d0c; bytecode file offset 0xae45d4"
!DBSearchProxy methodsFor: 'recovered'!
updateDefaultValues: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super updateDefaultValues: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue3) asString.
    className := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) class.
    recoveredValue7 := (recoveredValue6) name.
    recoveredValue8 := (recoveredValue7) asString.
    name := recoveredValue8.
    version := 0.
    ^self
! !

"ASDBase.ic method 0x20261b64; bytecode file offset 0xb5e42c"
!DBSearchProxy methodsFor: 'recovered'!
setDefaultValues: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack0 := className.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            className := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            name := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            version := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d00a8; bytecode file offset 0xbcc96c"
!DBSearchProxy methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := className.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPut: ($/).
    recoveredValue5 := name.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPut: ($ ).
    (recoveredValue7) nextPut: ($v).
    recoveredValue9 := version.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) printOn: (recoveredValue10).
    ^self
! !

