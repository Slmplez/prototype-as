"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002cc0; bytecode file offset 0x8ffcfc"
!RBFloat methodsFor: 'recovered'!
asRedundantModelType
    ^self
! !

"ASDBase.ic method 0x2000d6ec; bytecode file offset 0x90a4b8"
!RBFloat methodsFor: 'recovered'!
convertFast: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a288; bytecode file offset 0x92209c"
!RBFloat methodsFor: 'recovered'!
getDefaultValue
    ^#[0 0 0 0 0 0 0 0]
! !

"ASDBase.ic method 0x2001c10c; bytecode file offset 0x92209c"
!RBFloat methodsFor: 'recovered'!
asModelType
    ^'cont'
! !

"ASDBase.ic method 0x2001d96c; bytecode file offset 0x92209c"
!RBFloat methodsFor: 'recovered'!
modelLabel
    ^'cont'
! !

"ASDBase.ic method 0x20024e60; bytecode file offset 0x92209c"
!RBFloat methodsFor: 'recovered'!
asASAP2DataType
    ^'FLOAT64_IEEE'
! !

"ASDBase.ic method 0x20026248; bytecode file offset 0x923928"
!RBFloat methodsFor: 'recovered'!
getCharacterFilter
    ^'checkFloat:'
! !

"ASDBase.ic method 0x20026578; bytecode file offset 0x923928"
!RBFloat methodsFor: 'recovered'!
maxValue
    ^#[118 59 119 48 209 66 238 127]
! !

"ASDBase.ic method 0x2002d424; bytecode file offset 0x934580"
!RBFloat methodsFor: 'recovered'!
asRTEEncoding
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) asRTEEncoding.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038f04; bytecode file offset 0x935c54"
!RBFloat methodsFor: 'recovered'!
convert: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asFloat.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ebc8; bytecode file offset 0x93bf94"
!RBFloat methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGReal.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071af4; bytecode file offset 0x96e578"
!RBFloat methodsFor: 'recovered'!
getQuantization
    ^0
! !

"ASDBase.ic method 0x200726d0; bytecode file offset 0x96f1c4"
!RBFloat methodsFor: 'recovered'!
getBasicLogType
    ^2
! !

"ASDBase.ic method 0x20074344; bytecode file offset 0x970de8"
!RBFloat methodsFor: 'recovered'!
famosType
    ^8
! !

"ASDBase.ic method 0x200744fc; bytecode file offset 0x970de8"
!RBFloat methodsFor: 'recovered'!
byteSize
    ^8
! !

"ASDBase.ic method 0x2007509c; bytecode file offset 0x9757c8"
!RBFloat methodsFor: 'recovered'!
isRBFloat
    ^true
! !

"ASDBase.ic method 0x2007581c; bytecode file offset 0x9757c8"
!RBFloat methodsFor: 'recovered'!
isIleScalarType
    ^true
! !

"ASDBase.ic method 0x200762fc; bytecode file offset 0x9757c8"
!RBFloat methodsFor: 'recovered'!
isIleFloatType
    ^true
! !

"ASDBase.ic method 0x200778a4; bytecode file offset 0x9757c8"
!RBFloat methodsFor: 'recovered'!
isIleFloat64Type
    ^true
! !

"ASDBase.ic method 0x20078594; bytecode file offset 0x9757c8"
!RBFloat methodsFor: 'recovered'!
isIleArithmeticType
    ^true
! !

"ASDBase.ic method 0x20078c94; bytecode file offset 0x9757c8"
!RBFloat methodsFor: 'recovered'!
isCgTypeForCommonSubexpressionElimination
    ^true
! !

"ASDBase.ic method 0x2007e16c; bytecode file offset 0x97c330"
!RBFloat methodsFor: 'recovered'!
isIleArithmeticArrayedType
    ^false
! !

"ASDBase.ic method 0x2007e9e4; bytecode file offset 0x97c330"
!RBFloat methodsFor: 'recovered'!
isIleFloat32Type
    ^false
! !

"ASDBase.ic method 0x20088224; bytecode file offset 0x984bc0"
!RBFloat methodsFor: 'recovered'!
onlineDLLDataType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBOnlineDLLConstants.
    recoveredValue1 := (recoveredValue0) at: ('Ddouble').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d8f88; bytecode file offset 0x9d5844"
!RBFloat methodsFor: 'recovered'!
byteArrayFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteArrayFrom: (recoveredValue0) byteSize: (8) putMethod: ('real64At:put:').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e1d20; bytecode file offset 0x9de5fc"
!RBFloat methodsFor: 'recovered'!
asShortCType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) byteSize.
    recoveredValue1 := (recoveredValue0) * (8).
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('r') , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201537f8; bytecode file offset 0xa500b8"
!RBFloat methodsFor: 'recovered'!
equalsType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFloatType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFloat32Type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleQuantFloatType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

