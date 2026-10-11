"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002748; bytecode file offset 0x8ffcfc"
!SGCgResourceType methodsFor: 'recovered'!
asBaseClassType
    ^self
! !

"ASDBase.ic method 0x200028d0; bytecode file offset 0x8ffcfc"
!SGCgResourceType methodsFor: 'recovered'!
mdlComponentClassType
    ^self
! !

"ASDBase.ic method 0x20003db8; bytecode file offset 0x90206c"
!SGCgResourceType methodsFor: 'recovered'!
setOptimizations: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004148; bytecode file offset 0x90206c"
!SGCgResourceType methodsFor: 'recovered'!
optimizations: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000a808; bytecode file offset 0x908be4"
!SGCgResourceType methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ab98; bytecode file offset 0x908be4"
!SGCgResourceType methodsFor: 'recovered'!
errLabelWithImpl
    | recoveredValue0 |
    recoveredValue0 := (self) errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bb58; bytecode file offset 0x908be4"
!SGCgResourceType methodsFor: 'recovered'!
asModelType
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d91c; bytecode file offset 0x90a4b8"
!SGCgResourceType methodsFor: 'recovered'!
createWithImplFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016b68; bytecode file offset 0x92209c"
!SGCgResourceType methodsFor: 'recovered'!
mdlTypeLabel
    ^'resource'
! !

"ASDBase.ic method 0x2001d030; bytecode file offset 0x92209c"
!SGCgResourceType methodsFor: 'recovered'!
modelTypeClassName
    ^'SGResource'
! !

"ASDBase.ic method 0x2001d450; bytecode file offset 0x92209c"
!SGCgResourceType methodsFor: 'recovered'!
errLabel
    ^'resource'
! !

"ASDBase.ic method 0x200203cc; bytecode file offset 0x92209c"
!SGCgResourceType methodsFor: 'recovered'!
mdlLabel
    ^'resource'
! !

"ASDBase.ic method 0x200259a8; bytecode file offset 0x923928"
!SGCgResourceType methodsFor: 'recovered'!
errLabelNonCopyType
    ^'resource type'
! !

"ASDBase.ic method 0x20025d14; bytecode file offset 0x923928"
!SGCgResourceType methodsFor: 'recovered'!
label
    ^'resource'
! !

"ASDBase.ic method 0x20029f34; bytecode file offset 0x934580"
!SGCgResourceType methodsFor: 'recovered'!
createUniqueBaseTypeIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) cgUniqueTypeIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002da74; bytecode file offset 0x934580"
!SGCgResourceType methodsFor: 'recovered'!
asCType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) asCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f774; bytecode file offset 0x934580"
!SGCgResourceType methodsFor: 'recovered'!
typeAndImplHash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200376c4; bytecode file offset 0x934580"
!SGCgResourceType methodsFor: 'recovered'!
cgUniqueTypeIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) cgUniqueTypeIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038b44; bytecode file offset 0x935c54"
!SGCgResourceType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgResourceType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200391bc; bytecode file offset 0x935c54"
!SGCgResourceType methodsFor: 'recovered'!
isCgTypeIdenticalNoImpl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgResourceType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eb28; bytecode file offset 0x93bf94"
!SGCgResourceType methodsFor: 'recovered'!
getImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt8Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005a1d8; bytecode file offset 0x956ac4"
!SGCgResourceType methodsFor: 'recovered'!
computeImplDataFor: recoveredArg1 withImpl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) appliedToNumber: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d4f8; bytecode file offset 0x959dac"
!SGCgResourceType methodsFor: 'recovered'!
originalImplementationIsNil
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := originalImplementationIsNil.
    recoveredValue1 := (recoveredValue0) = (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200660d4; bytecode file offset 0x963428"
!SGCgResourceType methodsFor: 'recovered'!
formula
    | recoveredValue0 |
    recoveredValue0 := formula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007539c; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isMdlResource
    ^true
! !

"ASDBase.ic method 0x20075504; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isMdlSystemConstantPermitted
    ^true
! !

"ASDBase.ic method 0x200762dc; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isIleScalarType
    ^true
! !

"ASDBase.ic method 0x2007632c; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isMdlBaseClassType
    ^true
! !

"ASDBase.ic method 0x200774c4; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isMdlPrimitiveBaseClassType
    ^true
! !

"ASDBase.ic method 0x20077be4; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isCgResourceType
    ^true
! !

"ASDBase.ic method 0x20077f94; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isCgBaseType
    ^true
! !

"ASDBase.ic method 0x2007868c; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isCgAllowedEmbeddedRecordElementType
    ^true
! !

"ASDBase.ic method 0x20078c64; bytecode file offset 0x9757c8"
!SGCgResourceType methodsFor: 'recovered'!
isIleBaseType
    ^true
! !

"ASDBase.ic method 0x200796ec; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
needsIntegerCode
    ^false
! !

"ASDBase.ic method 0x2007a2e4; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlDistribution
    ^false
! !

"ASDBase.ic method 0x2007a324; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isImplementationType
    ^false
! !

"ASDBase.ic method 0x2007ad4c; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlSInt
    ^false
! !

"ASDBase.ic method 0x2007b22c; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isCgCopyableType
    ^false
! !

"ASDBase.ic method 0x2007c0dc; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlCharTable
    ^false
! !

"ASDBase.ic method 0x2007d30c; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isArithmeticElement
    ^false
! !

"ASDBase.ic method 0x2007e57c; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
hasLinearFormula
    ^false
! !

"ASDBase.ic method 0x2007e904; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlOneDCharTable
    ^false
! !

"ASDBase.ic method 0x2007ed54; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlMatrix
    ^false
! !

"ASDBase.ic method 0x2007eedc; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlGroupCharTable
    ^false
! !

"ASDBase.ic method 0x2007f1bc; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlTypeNeedsReference
    ^false
! !

"ASDBase.ic method 0x2007f91c; bytecode file offset 0x97c330"
!SGCgResourceType methodsFor: 'recovered'!
isMdlTwoDCharTable
    ^false
! !

"ASDBase.ic method 0x20081410; bytecode file offset 0x97dd1c"
!SGCgResourceType methodsFor: 'recovered'!
byteSize
    ^-1
! !

"ASDBase.ic method 0x20081418; bytecode file offset 0x97dd1c"
!SGCgResourceType methodsFor: 'recovered'!
mdlMaxSize
    ^-1
! !

"ASDBase.ic method 0x200854bc; bytecode file offset 0x981da4"
!SGCgResourceType methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) formula.
    formula := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200be51c; bytecode file offset 0x9bb178"
!SGCgResourceType methodsFor: 'recovered'!
formula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formula := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf080; bytecode file offset 0x9bc0b4"
!SGCgResourceType methodsFor: 'recovered'!
originalImplementationIsNil: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalImplementationIsNil := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9d88; bytecode file offset 0x9c6648"
!SGCgResourceType methodsFor: 'recovered'!
buildMdlInitValue: recoveredArg1 of: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) asMdlIdentifier.
    (recoveredValue0) unusedInitValue: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) popInitValueExpr.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200cc9b4; bytecode file offset 0x9c92b0"
!SGCgResourceType methodsFor: 'recovered'!
getImplInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cc9f4; bytecode file offset 0x9c92b0"
!SGCgResourceType methodsFor: 'recovered'!
getPhysInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fcbd0; bytecode file offset 0x9f9494"
!SGCgResourceType methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) attribute: ('type') with: ('enumeration').
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20132a20; bytecode file offset 0xa2f308"
!SGCgResourceType methodsFor: 'recovered'!
equalsType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalsType: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017685c; bytecode file offset 0xa73124"
!SGCgResourceType methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) modelTypeClassName.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue1) cr.
    ^self
! !

"ASDBase.ic method 0x203354d8; bytecode file offset 0xc31db0"
!SGCgResourceType methodsFor: 'recovered'!
checkForSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3 mdBuilder: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'release'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) specialCallReleaseRes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) endStmnt.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'reserve'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) specialCallReserveRes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) endStmnt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrUndefinedMethod: (recoveredStack2) receiver: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

