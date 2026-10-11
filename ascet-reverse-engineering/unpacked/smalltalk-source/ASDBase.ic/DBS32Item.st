"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f5b4; bytecode file offset 0x90bef8"
!DBS32Item methodsFor: 'recovered'!
castToS32: recoveredArg1 dim: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200128d0; bytecode file offset 0x912098"
!DBS32Item methodsFor: 'recovered'!
MaskClass
    | recoveredValue0 |
    recoveredValue0 := DB32BitFieldItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014dcc; bytecode file offset 0x912098"
!DBS32Item methodsFor: 'recovered'!
BitClass
    | recoveredValue0 |
    recoveredValue0 := DB32BitItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020df8; bytecode file offset 0x92209c"
!DBS32Item methodsFor: 'recovered'!
asap2DataType
    ^'SLONG'
! !

"ASDBase.ic method 0x2003de88; bytecode file offset 0x93bf94"
!DBS32Item methodsFor: 'recovered'!
createImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200746b4; bytecode file offset 0x970f98"
!DBS32Item methodsFor: 'recovered'!
floatDigits
    ^10
! !

"ASDBase.ic method 0x20083288; bytecode file offset 0x97fb7c"
!DBS32Item methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) int32At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200acec4; bytecode file offset 0x9a9794"
!DBS32Item methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) int32At: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ad978; bytecode file offset 0x9aa230"
!DBS32Item methodsFor: 'recovered'!
value: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) * (4).
    recoveredValue3 := (recoveredValue0) int32At: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ede10; bytecode file offset 0x9ea72c"
!DBS32Item methodsFor: 'recovered'!
compressArray: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 compress: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) apiCompressArrayI: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) compress: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ede40; bytecode file offset 0x9ea72c"
!DBS32Item methodsFor: 'recovered'!
expandArray: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 expand: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) apiExpandArrayI: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) expand: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20124258; bytecode file offset 0xa20b34"
!DBS32Item methodsFor: 'recovered'!
calculateLinearArray: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 m: recoveredArg4 offset: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    (recoveredValue0) apiCalculateLinearArrayInt32: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20124278; bytecode file offset 0xa20b34"
!DBS32Item methodsFor: 'recovered'!
calculateLinearInverseArrayInt: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 m: recoveredArg4 offset: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    (recoveredValue0) apiCalculateLinearInverseArrayI: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2013699c; bytecode file offset 0xa33268"
!DBS32Item methodsFor: 'recovered'!
stretchLinearArray: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 stretch: recoveredArg4 m: recoveredArg5 offset: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := (recoveredValue0) apiStretchLinearArrayI: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) stretch: (recoveredValue4) m: (recoveredValue5) offset: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20148e7c; bytecode file offset 0xa4573c"
!DBS32Item methodsFor: 'recovered'!
calculateLinearArrayInt: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 m: recoveredArg4 offset: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) asFloat.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue6) asFloat.
    (recoveredValue0) apiCalculateLinearArrayI: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue5) offset: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017a0d0; bytecode file offset 0xa7699c"
!DBS32Item methodsFor: 'recovered'!
calculateMoebiusArrayInt: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 m: recoveredArg4 offset: recoveredArg5 n0: recoveredArg6 n1: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    (recoveredValue0) apiCalculateMoebiusArrayI: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5) n0: (recoveredValue6) n1: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017d044; bytecode file offset 0xa79968"
!DBS32Item methodsFor: 'recovered'!
castToDouble: recoveredArg1 dim: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (8) * (recoveredValue1).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := RBBcrtl32DLL.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue4) apiInteger32ToDoubleArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201abdec; bytecode file offset 0xaa86e0"
!DBS32Item methodsFor: 'recovered'!
getItemFromString: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) asIntegerFromHex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 2147483648.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 4294967296.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

