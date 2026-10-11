"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001950; bytecode file offset 0x8ffcfc"
!SGCgVoidType methodsFor: 'recovered'!
mdlComponentClassType
    ^self
! !

"ASDBase.ic method 0x20003298; bytecode file offset 0x8ffcfc"
!SGCgVoidType methodsFor: 'recovered'!
asBaseClassType
    ^self
! !

"ASDBase.ic method 0x20004388; bytecode file offset 0x90206c"
!SGCgVoidType methodsFor: 'recovered'!
optimizations: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004638; bytecode file offset 0x90206c"
!SGCgVoidType methodsFor: 'recovered'!
setOptimizations: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004dd8; bytecode file offset 0x90206c"
!SGCgVoidType methodsFor: 'recovered'!
implementation: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005390; bytecode file offset 0x90206c"
!SGCgVoidType methodsFor: 'recovered'!
originalImplementationIsNil: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200071cc; bytecode file offset 0x908be4"
!SGCgVoidType methodsFor: 'recovered'!
asModelType
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200079b8; bytecode file offset 0x908be4"
!SGCgVoidType methodsFor: 'recovered'!
mdlKey
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200083b4; bytecode file offset 0x908be4"
!SGCgVoidType methodsFor: 'recovered'!
errLabelWithImpl
    | recoveredValue0 |
    recoveredValue0 := (self) errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008d44; bytecode file offset 0x908be4"
!SGCgVoidType methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200090f8; bytecode file offset 0x908be4"
!SGCgVoidType methodsFor: 'recovered'!
asTempVarType
    | recoveredValue0 |
    recoveredValue0 := (self) copyImplementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b0b4; bytecode file offset 0x908be4"
!SGCgVoidType methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d5ec; bytecode file offset 0x90a4b8"
!SGCgVoidType methodsFor: 'recovered'!
createWithImplFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017528; bytecode file offset 0x92209c"
!SGCgVoidType methodsFor: 'recovered'!
errLabel
    ^'void'
! !

"ASDBase.ic method 0x200191a8; bytecode file offset 0x92209c"
!SGCgVoidType methodsFor: 'recovered'!
errLabelNonCopyType
    ^'void type'
! !

"ASDBase.ic method 0x20020dbc; bytecode file offset 0x92209c"
!SGCgVoidType methodsFor: 'recovered'!
modelTypeClassName
    ^'SGVoid'
! !

"ASDBase.ic method 0x200225e0; bytecode file offset 0x92209c"
!SGCgVoidType methodsFor: 'recovered'!
label
    ^'void'
! !

"ASDBase.ic method 0x20023c00; bytecode file offset 0x92209c"
!SGCgVoidType methodsFor: 'recovered'!
mdlTypeLabel
    ^'void'
! !

"ASDBase.ic method 0x20031884; bytecode file offset 0x934580"
!SGCgVoidType methodsFor: 'recovered'!
asCType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) asCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038e98; bytecode file offset 0x935c54"
!SGCgVoidType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgVoidType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039030; bytecode file offset 0x935c54"
!SGCgVoidType methodsFor: 'recovered'!
isCgTypeIdenticalNoImpl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgVoidType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c1c4; bytecode file offset 0x938b78"
!SGCgVoidType methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) isCgTypeIdentical: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cad8; bytecode file offset 0x93bf94"
!SGCgVoidType methodsFor: 'recovered'!
getImplInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dbc8; bytecode file offset 0x93bf94"
!SGCgVoidType methodsFor: 'recovered'!
getImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBVoid.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e5a8; bytecode file offset 0x93bf94"
!SGCgVoidType methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGVoid.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074b9c; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isCgVoidType
    ^true
! !

"ASDBase.ic method 0x2007531c; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isMdlSystemConstantPermitted
    ^true
! !

"ASDBase.ic method 0x20075814; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isIleScalarType
    ^true
! !

"ASDBase.ic method 0x20076334; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isMdlBaseClassType
    ^true
! !

"ASDBase.ic method 0x20076c64; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isMdlVoid
    ^true
! !

"ASDBase.ic method 0x20076dfc; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isCgBaseType
    ^true
! !

"ASDBase.ic method 0x20076f64; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isMdlPrimitiveBaseClassType
    ^true
! !

"ASDBase.ic method 0x20078664; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isRBVoid
    ^true
! !

"ASDBase.ic method 0x20078c74; bytecode file offset 0x9757c8"
!SGCgVoidType methodsFor: 'recovered'!
isIleBaseType
    ^true
! !

"ASDBase.ic method 0x2007966c; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlGroupCharTable
    ^false
! !

"ASDBase.ic method 0x2007b23c; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isCgCopyableType
    ^false
! !

"ASDBase.ic method 0x2007b55c; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
needsIntegerCode
    ^false
! !

"ASDBase.ic method 0x2007bdcc; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlMatrix
    ^false
! !

"ASDBase.ic method 0x2007c0ec; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlCharTable
    ^false
! !

"ASDBase.ic method 0x2007c9ac; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
originalImplementationIsNil
    ^false
! !

"ASDBase.ic method 0x2007d654; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlOneDCharTable
    ^false
! !

"ASDBase.ic method 0x2007db84; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlDistribution
    ^false
! !

"ASDBase.ic method 0x2007e0f4; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isCgAllowedEmbeddedRecordElementType
    ^false
! !

"ASDBase.ic method 0x2007ea1c; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
needsIntegerType
    ^false
! !

"ASDBase.ic method 0x2007f1c4; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlTypeNeedsReference
    ^false
! !

"ASDBase.ic method 0x2007f27c; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlSInt
    ^false
! !

"ASDBase.ic method 0x2007f9f4; bytecode file offset 0x97c330"
!SGCgVoidType methodsFor: 'recovered'!
isMdlTwoDCharTable
    ^false
! !

"ASDBase.ic method 0x200813e8; bytecode file offset 0x97dd1c"
!SGCgVoidType methodsFor: 'recovered'!
byteSize
    ^-1
! !

"ASDBase.ic method 0x20081420; bytecode file offset 0x97dd1c"
!SGCgVoidType methodsFor: 'recovered'!
mdlMaxSize
    ^-1
! !

"ASDBase.ic method 0x2010e710; bytecode file offset 0xa0afd0"
!SGCgVoidType methodsFor: 'recovered'!
equalsType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVoidType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBVoid.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a8ecc; bytecode file offset 0xaa5790"
!SGCgVoidType methodsFor: 'recovered'!
buildMdlInitValue: recoveredArg1 of: recoveredArg2 with: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'buildMdlInitValue: should not be called for Void type.'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022a7e8; bytecode file offset 0xb270a8"
!SGCgVoidType methodsFor: 'recovered'!
checkForSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3 mdBuilder: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := super checkForSpecialCall: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForSpecialCallRteMacro: (recoveredStack1) receiver: (recoveredStack2) args: (recoveredStack3) mdBuilder: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

