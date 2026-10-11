"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014724; bytecode file offset 0x912098"
!DBS8Item methodsFor: 'recovered'!
BitClass
    | recoveredValue0 |
    recoveredValue0 := DB8BitItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200153a8; bytecode file offset 0x912098"
!DBS8Item methodsFor: 'recovered'!
MaskClass
    | recoveredValue0 |
    recoveredValue0 := DB8BitFieldItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cbd4; bytecode file offset 0x92209c"
!DBS8Item methodsFor: 'recovered'!
asap2DataType
    ^'SBYTE'
! !

"ASDBase.ic method 0x2003cea8; bytecode file offset 0x93bf94"
!DBS8Item methodsFor: 'recovered'!
createImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt8Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072aa0; bytecode file offset 0x96f3cc"
!DBS8Item methodsFor: 'recovered'!
floatDigits
    ^3
! !

"ASDBase.ic method 0x200832b8; bytecode file offset 0x97fb7c"
!DBS8Item methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) int8At: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aceb8; bytecode file offset 0x9a9794"
!DBS8Item methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := offset.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) int8At: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20124268; bytecode file offset 0xa20b34"
!DBS8Item methodsFor: 'recovered'!
calculateLinearArray: recoveredArg1 y: recoveredArg2 dim: recoveredArg3 m: recoveredArg4 offset: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    (recoveredValue0) apiCalculateLinearArrayInt8: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017cfb4; bytecode file offset 0xa798a8"
!DBS8Item methodsFor: 'recovered'!
castToS32: recoveredArg1 dim: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (4) * (recoveredValue1).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := RBBcrtl32DLL.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue4) apiInteger8ToS32Array: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017d074; bytecode file offset 0xa79968"
!DBS8Item methodsFor: 'recovered'!
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
    (recoveredValue4) apiInteger8ToDoubleArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201df150; bytecode file offset 0xadba0c"
!DBS8Item methodsFor: 'recovered'!
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
            recoveredStack2 := 128.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

